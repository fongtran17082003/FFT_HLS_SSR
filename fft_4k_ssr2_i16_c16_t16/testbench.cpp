/*----------------------------------------------------------------------------
**      _____
**     *     *
**    *____   *____
**   * *===*   *==*
**  *___*===*___**  AVNET
**       *======*
**        *====*
**----------------------------------------------------------------------------
**
** This design is the property of Avnet.  Publication of this
** design is not authorized without written consent from Avnet.
**
** Disclaimer:
**    Avnet, Inc. makes no warranty for the use of this code or design.
**    This code is provided  "As Is". Avnet, Inc assumes no responsibility for
**    any errors, which may appear in this code, nor does it make a commitment
**    to update the information contained herein. Avnet, Inc specifically
**    disclaims any implied warranties of fitness for a particular purpose.
**                     Copyright(c) 2024 Avnet, Inc.
**                             All rights reserved.
**
**----------------------------------------------------------------------------
**
** Create Date:         September 26, 2023
** File Name:           testbench.cpp
**
** Author:              Tom Simpson
**
** Description:         Vitis HLS SSR FFT testbench
**
** Revision:            September 26, 2023: 1.00 Initial version
**
**----------------------------------------------------------------------------*/

#include <iostream>
#include <cmath>
#include <complex>
#include "fft_4k_ssr2_i16_c16_t16.hpp"
#include "fft_model.hpp"
#include "ap_int.h"

#define SQR(x) ((x) * (x))

using namespace std;
using namespace fft_4k_ssr2_i16_c16_t16;

void generate_test_data ( cdtype *data, int fft_size, int iter)
{
  // Generate test data by creating a single complex tone and stepping by fft_size/iter bins per iteration
  for (int i = 0; i < iter; i++)
  {
     const double pi = 3.141592653589793;
     const int qpt = sizeof(dtype)*8 - 2;
     int step = (fft_size < FFT_ITER) ? 1 : fft_size / iter;
     double phase_factor = 2.0 * pi * 1 * step / fft_size;

     for (int k = 0; k < fft_size; k ++)
     {
       float re = cosf(phase_factor * k);
       float im = sinf(phase_factor * k);
       data[i*fft_size+k] = { (dtype)(re * powf(2.0, qpt)), (dtype)(im * powf(2.0, qpt)) };
     }
  }
}


//void generate_test_data (cdtype *data, int fft_size, int iter)
//{
//  const int qpt = sizeof(dtype)*8 - 2;
//
//  srand(time(NULL));   // seed random
//
//  for (int i = 0; i < iter; i++)
//  {
//    for (int k = 0; k < fft_size; k++)
//    {
//      // random float từ -1 -> 1
//      float re = ((float)rand() / RAND_MAX) * 2.0f - 1.0f;
//      float im = ((float)rand() / RAND_MAX) * 2.0f - 1.0f;
//
//      data[i*fft_size + k] =
//      {
//        (dtype)(re * powf(2.0, qpt)),
//        (dtype)(im * powf(2.0, qpt))
//      };
//    }
//  }
//}

static void pack_input( cdtype *din, ap_int<2*input_width*SSR> *dout, int iter )
{
  const int qpt_in  = sizeof(dtype)*8 - 2;
  const int qpt_out = input_width-2;
  const float conv_factor = powf( 2.0f, qpt_out-qpt_in );

  // convert input of type int to cfixed_in_type and pack to HLS input bit structure
  for (int i = 0; i < FFT_SIZE/SSR*iter; i++)
  {
    ap_int<2*input_width*SSR> temp;
    for (int k = 0; k < SSR; k++)
    {
      temp.range((2*k+1)*input_width-1, (2*k)*input_width)   = din[SSR*i+k].real() * conv_factor;
      temp.range((2*k+2)*input_width-1, (2*k+1)*input_width) = din[SSR*i+k].imag() * conv_factor;
    }
    dout[i] = temp;
  }
}

int main()
{
  const int iter = FFT_ITER;

  ap_int<2*SSR*input_width> *data_in = new ap_int<2*SSR*input_width>[iter*FFT_SIZE/SSR];
  ap_int<2*SSR*internal_width> *data_out = new ap_int<2*SSR*internal_width>[iter*FFT_SIZE/SSR];
  cdtype *model_in  = new cdtype[iter*FFT_SIZE];
  cdtype *model_out = new cdtype[iter*FFT_SIZE];

  // Generate test data
  cout << "Generating test data" << endl;
  generate_test_data(model_in, FFT_SIZE, iter);
  cout << "\n=== PRINT GENERATED DATA ===" << endl;
  for (int i = 0; i < 8; i++)  // in 8 sample đầu
  {
    cout << "model_in[" << i << "] = ("
         << model_in[i].real() << ", "
         << model_in[i].imag() << ")" << endl;
  }

  // Generate truth data
  cout << "Generating truth data" << endl;
  fft_model(model_in, model_out, FFT_SIZE, FFT_SIZE*iter, FFT_SIZE/SSR > 4);

  // Load up the HLS function input buffer


  cout << "Loading the HLS input buffer" << endl;
  pack_input( model_in, data_in, iter );
  cout << "\n=== PRINT PACKED INPUT ===" << endl;
  for (int i = 0; i < 4; i++)  // in vài phần tử
  {
    cout << "data_in[" << i << "] = " << data_in[i] << endl;
  }

  // Test the HLS FFT
  cout << "Running the HLS component" << endl;
  fft_4k_ssr2_i16_c16_t16_top(data_in, data_out, iter);
  cout << "\n=== FULL FFT OUTPUT ===" << endl;
  cout << "\n=== RAW DATA_OUT ===" << endl;

  for (int i = 0; i < FFT_SIZE/SSR*iter; i++)
  {
      cout << "data_out[" << i << "] = " << data_out[i] << endl;
  }


  // Verify the HLS FFT is correct
  cout << "Checking results" << endl;
  double mse = 0.0f;
  double max_err = 0.0f;
  double err = 0.0f;
  double qpt = pow(2.0, sizeof(dtype)*8 - 2);
  int idx = 0;

  for (int i = 0; i < FFT_SIZE/SSR*iter; i++)
  {
    complex<float> data;
    complex<float> model;
    ap_int<2*SSR*internal_width> temp = data_out[i];
    cfixed_intern_type temp_fx;

    for (int k = 0; k < SSR; k++)
    {
      temp_fx.real().range(internal_width-1, 0) = temp.range((2*k+1)*internal_width-1, (2*k)*internal_width);
      temp_fx.imag().range(internal_width-1, 0) = temp.range((2*k+2)*internal_width-1, (2*k+1)*internal_width);
      data = temp_fx;
      model.real( (float)model_out[SSR*i+k].real() / qpt * MODEL_SCALE);
      model.imag( (float)model_out[SSR*i+k].imag() / qpt * MODEL_SCALE);
      err = fabs( model - data );
      max_err = err > max_err ? err : max_err;
      mse += SQR(err);
//      printf("BIN %d ", idx);
//      printf("MODEL_R=%f MODEL_I=%f ", model.real(), model.imag());
//      printf("HLS_R=%f HLS_I=%f ", data.real(), data.imag());
//      printf("ERR=%f\n", err);


    }
  }

  mse /= (FFT_SIZE*iter);

  cout << "The mean square error is " << mse << endl;
  cout << "The maximum absolute error is " << max_err << endl;

  delete [] data_in;
  delete [] data_out;
  delete [] model_in;
  delete [] model_out;

  return (mse > 1.0e-2);
}
