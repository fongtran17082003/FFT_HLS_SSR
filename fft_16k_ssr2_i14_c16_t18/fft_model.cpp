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
** File Name:           fft_model.cpp
**
** Author:              Tom Simpson
**
** Description:         FFT model for comparison with HLS implementation
**                      Compile with command:
**                        g++ fft_model.cpp -o fft_model_test.exe -DFFT_MODEL_TEST
**
** Revision:            September 26, 2023: 1.00 Initial version
**
**----------------------------------------------------------------------------*/

#include <iostream>
#include <complex>
#include "fft_model.hpp"

using namespace std;

// 2-point FFT
void fft_2( cdtype *data_in, cdtype *data_out, int samples)
{
  for (int i = 0; i < samples; i+=2)
  {
    cmtype x0 = data_in[i];
    cmtype x1 = data_in[i+1];
    cmtype y0 = x0 + x1;
    cmtype y1 = x0 - x1;
    data_out[i]   = cdtype({(dtype)(y0.real() >> 1), (dtype)(y0.imag() >> 1)});
    data_out[i+1] = cdtype({(dtype)(y1.real() >> 1), (dtype)(y1.imag() >> 1)});
  }
}

// 4-point FFT
void fft_4( cdtype *data_in, cdtype *data_out, int samples)
{
  mtype a, b, c, d, e, f, g, h;
  for (int i = 0; i < samples; i+=4)
  {
      cmtype temp = data_in[i];
      a = e = temp.real();
      c = g = temp.imag();

      temp = data_in[i+1];
      b = h = temp.real();
      d = f = temp.imag();

      temp = data_in[i+2];
      a += temp.real();
      e -= temp.real();
      c += temp.imag();
      g -= temp.imag();

      temp = data_in[i+3];
      b += temp.real();
      h -= temp.real();
      d += temp.imag();
      f -= temp.imag();

      temp.real( (a + b) >> 2);
      temp.imag( (c + d) >> 2);
      data_out[i] = temp;

      temp.real( (e + f) >> 2);
      temp.imag( (g - h) >> 2);
      data_out[i+1] = temp;

      temp.real( (a - b) >> 2);
      temp.imag( (c - d) >> 2);
      data_out[i+2] = temp;

      temp.real( (e - f) >> 2);
      temp.imag( (g + h) >> 2);
      data_out[i+3] = temp;
  }
}

void fft_divide_conquer( cdtype *data_in, cdtype *data_out, int fft2_size, int samples)
{
  // Local variables
  const int fft1_size = 4;
  int fft_size = fft1_size * fft2_size;
  int iter = samples / fft_size;

  // Work buffers
  cdtype *wb1 = new cdtype[fft_size];
  cdtype *wb2 = new cdtype[fft_size];

  // Compute twiddle factors
  cdtype *w = new cdtype[fft_size];
  const double pi = 3.141592653589793;
  const double phase_factor = 2.0 * pi / (double)fft_size;
  const int qpt = sizeof(dtype)*8 - 2;

  for (int i = 0; i < fft1_size; i++)
  {
    for (int k = 0; k < fft2_size; k++)
    {
      w[i*fft2_size+k].real( cosf(phase_factor * (double)(i*k))  * powf(2.0, qpt) ); // fixed-point format
      w[i*fft2_size+k].imag(-sinf(phase_factor * (double)(i*k))  * powf(2.0, qpt) );
    }
  }

  // Compute FFT using the divide & conquer approach
  for (int i = 0; i < iter; i++)
  {
    // Reorder input
    cdtype *din_ptr = &data_in[i*fft_size];
    for (int r = 0; r < fft1_size; r++)
    {
      for (int c = 0; c < fft2_size; c++)
      {
         wb1[r + c*fft1_size] = din_ptr[r*fft2_size + c];
      }
    }

    // FFT #1 is always a 4-point FFT
    fft_4(wb1, wb2, fft_size);
    for (int j = 0; j < fft_size; j++)

#ifdef DEBUG
    {
      printf("    FFT_1[%d] = {%d, %d}\n", j, wb2[j].real(), wb2[j].imag());
    }
#endif

    // Twiddle & corner-turn
    for (int r = 0; r < fft1_size; r++)
    {
      for (int c = 0; c < fft2_size; c++)
      {
         cmtype temp = (cmtype)wb2[r + fft1_size*c] * (cmtype)w[r*fft2_size+c];
         wb1[r*fft2_size+c] = {(dtype)(temp.real() >> qpt), (dtype)(temp.imag() >> qpt)};
      }
    }

#ifdef DEBUG
    for (int j = 0; j < fft_size; j++)
    {
      printf("    TW[%d] = {%d, %d}\n", j, wb1[j].real(), wb1[j].imag());
    }
#endif

    // FFT #2
    switch(fft2_size)
    {
      case 2      : fft_2(wb1, wb2, fft_size); break;
      case 4      : fft_4(wb1, wb2, fft_size); break;
      case 8      : fft_divide_conquer(wb1, wb2, 2, fft_size); break;
      case 16     : fft_divide_conquer(wb1, wb2, 4, fft_size); break;
      case 32     : fft_divide_conquer(wb1, wb2, 8, fft_size); break;
      case 64     : fft_divide_conquer(wb1, wb2, 16, fft_size); break;
      case 128    : fft_divide_conquer(wb1, wb2, 32, fft_size); break;
      case 256    : fft_divide_conquer(wb1, wb2, 64, fft_size); break;
      case 512    : fft_divide_conquer(wb1, wb2, 128, fft_size); break;
      case 1024   : fft_divide_conquer(wb1, wb2, 256, fft_size); break;
      case 2048   : fft_divide_conquer(wb1, wb2, 512, fft_size); break;
      case 4096   : fft_divide_conquer(wb1, wb2, 1024, fft_size); break;
      case 8192   : fft_divide_conquer(wb1, wb2, 2048, fft_size); break;
      case 16384  : fft_divide_conquer(wb1, wb2, 4096, fft_size); break;
      case 32768  : fft_divide_conquer(wb1, wb2, 8192, fft_size); break;
      case 65536  : fft_divide_conquer(wb1, wb2, 16384, fft_size); break;
      default:
        cout << "ERROR: unknown FFT configuration; fft2_size = " << fft2_size << endl;
    }

#ifdef DEBUG
    for (int j = 0; j < fft_size; j++)
    {
      printf("    FFT_2[%d] = {%d, %d}\n", j, wb2[j].real(), wb2[j].imag());
    }

    for (int r = 0; r < fft1_size; r++)
    {
      for (int c = 0; c < fft2_size; c++)
      {
        int t = c + fft2_size*r;
        printf("    FFT_OUT[%d] = {%d, %d}\n", t, wb2[t].real(), wb2[t].imag());
      }
    }
#endif

    // Reorder output
    cdtype *dout_ptr = &data_out[i*fft_size];
    for (int r = 0; r < fft1_size; r++)
    {
      for (int c = 0; c < fft2_size; c++)
      {
         dout_ptr[r + c*fft1_size] = wb2[r*fft2_size + c];
      }
    }
  }

  delete [] wb1;
  delete [] wb2;
  delete [] w;

}

// FFT top
void fft_model( cdtype *data_in, cdtype *data_out, int fft_size, int samples, bool scale )
{
  // Determine the FFT structure
  switch(fft_size)
  {
    case 262144: fft_divide_conquer(data_in, data_out, 65536, samples); break;
    case 131072: fft_divide_conquer(data_in, data_out, 32768, samples); break;
    case  65536: fft_divide_conquer(data_in, data_out, 16384, samples); break;
    case  32768: fft_divide_conquer(data_in, data_out, 8192, samples); break;
    case  16384: fft_divide_conquer(data_in, data_out, 4096, samples); break;
    case   8192: fft_divide_conquer(data_in, data_out, 2048, samples); break;
    case   4096: fft_divide_conquer(data_in, data_out, 1024, samples); break;
    case   2048: fft_divide_conquer(data_in, data_out, 512, samples); break;
    case   1024: fft_divide_conquer(data_in, data_out, 256, samples); break;
    case    512: fft_divide_conquer(data_in, data_out, 128, samples); break;
    case    256: fft_divide_conquer(data_in, data_out, 64, samples); break;
    case    128: fft_divide_conquer(data_in, data_out, 32, samples); break;
    case     64: fft_divide_conquer(data_in, data_out, 16, samples); break;
    case     32: fft_divide_conquer(data_in, data_out, 8, samples); break;
    case     16: fft_divide_conquer(data_in, data_out, 4, samples); break;
    case      8: fft_divide_conquer(data_in, data_out, 2, samples); break;
    case      4: fft_4(data_in, data_out, samples); break;
    default:
      cout << "Unknown FFT configuration with size " << fft_size << endl;
  }

  if (scale)
  {
    for (int i = 0; i < samples; i++)
    {
      data_out[i] = cdtype({ (dtype)(data_out[i].real() >> 1), (dtype)(data_out[i].imag() >> 1) });
    }
  }
}

#ifdef FFT_MODEL_TEST
int main(int argc, char **argv)
{
  int fft_size = 16;

  if (argc > 1)
  {
    fft_size = atoi(argv[1]);
  }

  int samples = fft_size;
  if (argc > 2)
  {
    samples = atoi(argv[2]) * fft_size;
  }

  cout << "Testing FFT of size " << fft_size << " with constant input of value {256, 256}." << endl;

  cdtype *data_in = new cdtype[samples];
  cdtype *data_out = new cdtype[samples];

  for (int i = 0; i < samples; i++)
  {
    data_in[i] = {256, 256};
    data_out[i] = {0, 0};
  }

  fft_model(data_in, data_out, fft_size, samples);

  cout << "data_out = \n{" << endl;
  for (int i = 0; i < samples; i++)
  {
      cout << "  " << data_out[i] << endl;
  }
  cout << "}" << endl;

  cout << "Testing data with sin-wave data" << endl;
  // Generate test data by creating a single complex tone and stepping 1 bin per test
  cdtype *data = new cdtype[fft_size*fft_size];
  cdtype *model = new cdtype[fft_size*fft_size];
  for (int i = 0; i < fft_size; i++)
  {
     const double pi = 3.141592653589793;
     const int qpt = sizeof(dtype)*8 - 2;
     int step = 1;
     double phase_factor = 2.0 * pi * i * step / fft_size;

     for (int k = 0; k < fft_size; k ++)
     {
       float re = cosf(phase_factor * k);
       float im = sinf(phase_factor * k);
       data[i*fft_size+k] = { (dtype)(re * powf(2.0, qpt)), (dtype)(im * powf(2.0, qpt)) };
     }
  }

  fft_model(data, model, fft_size, fft_size*fft_size, 0);

  for (int i = 0; i < fft_size; i++)
  {
    cout << "fft[" << i << "] = \n{" << endl;
    for (int k = 0; k < fft_size; k++)
    {
        cout << "  " << model[i*fft_size+k] << endl;
    }
    cout << "}" << endl;
  }

  delete [] data_in;
  delete [] data_out;
  delete [] data;
  delete [] model;

}
#endif