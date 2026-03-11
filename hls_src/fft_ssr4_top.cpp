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
** File Name:           fft_ssr4_top.cpp
**
** Author:              Tom Simpson
**
** Description:         Top-level HLS template for SSR4 architecture
**
** Revision:            September 26, 2023: 1.00 Initial version
**
**----------------------------------------------------------------------------*/

#include <iostream>
#include <complex>
#include "fft_placeholder.hpp"
#include "ap_int.h"
#include "hls_stream.h"
#include "hls_fft.h"
#include "hls_math.h"

namespace fft_placeholder
{
  cfixed_cmul_res_type cmul(cfixed_intern_type data, cfixed_twid_type w)
  {
    cfixed_cmul_res_type val =
    {
        data.real() * w.real() - data.imag() * w.imag(),
        data.real() * w.imag() + data.imag() * w.real()
    };

    return val;
  }

  void dma_in( ap_int<8*input_width> *din,
               hls::stream<par_data> &dout,
               int                    iter)
  {
    for (int i = 0; i < iter*FFT_SIZE/4; i++)
    {
#pragma HLS LOOP_TRIPCOUNT max=FFT_ITER*FFT_SIZE/4

      // Load input data
      ap_int<8*input_width> temp_in = din[i];
      par_data temp_out;

      temp_out.data3.imag().range(internal_width-1, internal_width-input_width) = temp_in.range(8*input_width-1, 7*input_width);
      temp_out.data3.real().range(internal_width-1, internal_width-input_width) = temp_in.range(7*input_width-1, 6*input_width);
      temp_out.data2.imag().range(internal_width-1, internal_width-input_width) = temp_in.range(6*input_width-1, 5*input_width);
      temp_out.data2.real().range(internal_width-1, internal_width-input_width) = temp_in.range(5*input_width-1, 4*input_width);
      temp_out.data1.imag().range(internal_width-1, internal_width-input_width) = temp_in.range(4*input_width-1, 3*input_width);
      temp_out.data1.real().range(internal_width-1, internal_width-input_width) = temp_in.range(3*input_width-1, 2*input_width);
      temp_out.data0.imag().range(internal_width-1, internal_width-input_width) = temp_in.range(2*input_width-1, input_width);
      temp_out.data0.real().range(internal_width-1, internal_width-input_width) = temp_in.range(  input_width-1, 0);

      if (internal_width > input_width)
      {
        temp_out.data3.imag().range(internal_width-input_width-1, 0) = 0;
        temp_out.data3.real().range(internal_width-input_width-1, 0) = 0;
        temp_out.data2.imag().range(internal_width-input_width-1, 0) = 0;
        temp_out.data2.real().range(internal_width-input_width-1, 0) = 0;
        temp_out.data1.imag().range(internal_width-input_width-1, 0) = 0;
        temp_out.data1.real().range(internal_width-input_width-1, 0) = 0;
        temp_out.data0.imag().range(internal_width-input_width-1, 0) = 0;
        temp_out.data0.real().range(internal_width-input_width-1, 0) = 0;
      }

      dout << temp_out;
    }
  }

  void dma_out( hls::stream<par_data>    &din,
                ap_int<8*internal_width> *dout,
                int                       iter)
  {
    for (int i = 0; i < iter*FFT_SIZE/4; i++)
    {
#pragma HLS LOOP_TRIPCOUNT max=FFT_ITER*FFT_SIZE/4
      par_data temp_in = din.read();
      ap_int<8*internal_width> temp_out;

      temp_out.range(8*internal_width-1, 7*internal_width) = temp_in.data3.imag().range(internal_width-1, 0);
      temp_out.range(7*internal_width-1, 6*internal_width) = temp_in.data3.real().range(internal_width-1, 0);
      temp_out.range(6*internal_width-1, 5*internal_width) = temp_in.data2.imag().range(internal_width-1, 0);
      temp_out.range(5*internal_width-1, 4*internal_width) = temp_in.data2.real().range(internal_width-1, 0);
      temp_out.range(4*internal_width-1, 3*internal_width) = temp_in.data1.imag().range(internal_width-1, 0);
      temp_out.range(3*internal_width-1, 2*internal_width) = temp_in.data1.real().range(internal_width-1, 0);
      temp_out.range(2*internal_width-1, internal_width)   = temp_in.data0.imag().range(internal_width-1, 0);
      temp_out.range(  internal_width-1, 0)                = temp_in.data0.real().range(internal_width-1, 0);
      dout[i] = temp_out;
    }
  }

  /* Parallel reorder of input data */
  void reorder( hls::stream<par_data> &din,
                hls::stream<par_data> &dout,
                int                    iter)
  {
    cfixed_intern_type buff[2][4][FFT_SIZE/4];
    ap_uint<1> wr = 1;
    ap_uint<1> rd = 0;
    par_data temp_rd;
    par_data temp_wr;

#pragma HLS AGGREGATE compact=auto variable=buff
#pragma HLS ARRAY_PARTITION dim=2 type=complete variable=buff
#pragma HLS ARRAY_PARTITION dim=3 type=cyclic factor=4 variable=buff

    pipeup_l1: for (int i = 0; i < 4; i++)
    {
      pipeup_l2 : for (int k = 0; k < FFT_SIZE/4; k+=4)
      {
        temp_rd = din.read();
        buff[0][i][k]   = temp_rd.data0;
        buff[0][i][k+1] = temp_rd.data1;
        buff[0][i][k+2] = temp_rd.data2;
        buff[0][i][k+3] = temp_rd.data3;
      }
    }

    iter_loop: for (int j = 0; j < iter; j++)
    {
#pragma HLS LOOP_TRIPCOUNT max=FFT_ITER

      int r = 0;
      int c = 0;
      inner_loop: for (int k = 0; k < FFT_SIZE/4; k++)
      {
#pragma HLS PIPELINE II=1 rewind
        if (j < (iter - 1))
        {
          temp_rd = din.read();
          buff[wr][r][c]   = temp_rd.data0;
          buff[wr][r][c+1] = temp_rd.data1;
          buff[wr][r][c+2] = temp_rd.data2;
          buff[wr][r][c+3] = temp_rd.data3;

          if (c == FFT_SIZE/4-4)
          {
            r++;
            c = 0;
          }
          else
          {
            c += 4;
          }
        }

        temp_wr.data0 = buff[rd][0][k];
        temp_wr.data1 = buff[rd][1][k];
        temp_wr.data2 = buff[rd][2][k];
        temp_wr.data3 = buff[rd][3][k];
        dout << temp_wr;
      }

      wr = wr + 1;
      rd = rd + 1;
    }
  }

  /* Parallel 4-point DFT */
  void radix4p ( hls::stream<par_data> &din,
                 hls::stream<par_data> &dout,
                 int                    iter)
  {
    par_data din_temp, dout_temp;

    for (int n = 0; n < iter; n++)
    {
#pragma HLS LOOP_TRIPCOUNT max=FFT_ITER
      for (int i = 0; i < FFT_SIZE/4; i++)
      {
#pragma HLS PIPELINE II=1

        /* Compute partial sums */
        din_temp = din.read();
        ap_fixed<internal_width+2,3> a = din_temp.data0.real() + din_temp.data2.real();
        ap_fixed<internal_width+2,3> b = din_temp.data1.real() + din_temp.data3.real();
        ap_fixed<internal_width+2,3> c = din_temp.data0.imag() + din_temp.data2.imag();
        ap_fixed<internal_width+2,3> d = din_temp.data1.imag() + din_temp.data3.imag();
        ap_fixed<internal_width+2,3> e = din_temp.data0.real() - din_temp.data2.real();
        ap_fixed<internal_width+2,3> f = din_temp.data1.imag() - din_temp.data3.imag();
        ap_fixed<internal_width+2,3> g = din_temp.data0.imag() - din_temp.data2.imag();
        ap_fixed<internal_width+2,3> h = din_temp.data1.real() - din_temp.data3.real();

        /* Compute final sums */
        dout_temp.data0.real( (a + b) >> 2 );
        dout_temp.data0.imag( (c + d) >> 2 );
        dout_temp.data1.real( (e + f) >> 2 );
        dout_temp.data1.imag( (g - h) >> 2 );
        dout_temp.data2.real( (a - b) >> 2 );
        dout_temp.data2.imag( (c - d) >> 2 );
        dout_temp.data3.real( (e - f) >> 2 );
        dout_temp.data3.imag( (g + h) >> 2 );
        dout << dout_temp;
      }
    }
  }

  /* Serial 4-point DFT */
  void radix4s ( hls::stream<cfixed_intern_type> &din,
                 hls::stream<cfixed_intern_type> &dout,
                 int                              iter)
  {
    cfixed_intern_type temp;
    ap_fixed<internal_width+2,3> a, b, c, d, e, f, g, h;

    for (int i = 0; i < iter; i++)
    {
#pragma HLS LOOP_TRIPCOUNT max=FFT_ITER
#pragma HLS PIPELINE II=4

      // x0
      temp = din.read();
      a = e = temp.real();
      c = g = temp.imag();

      // x1
      temp = din.read();
      b = h = temp.real();
      d = f = temp.imag();

      // x2
      temp = din.read();
      a += temp.real();
      e -= temp.real();
      c += temp.imag();
      g -= temp.imag();

      // x3
      temp = din.read();
      b += temp.real();
      h -= temp.real();
      d += temp.imag();
      f -= temp.imag();

      // y0
      temp.real( (a + b) >> 2 );
      temp.imag( (c + d) >> 2 );
      dout << temp;

      // y1
      temp.real( (e + f) >> 2 );
      temp.imag( (g - h) >> 2 );
      dout << temp;

      // y2
      temp.real( (a - b) >> 2 );
      temp.imag( (c - d) >> 2 );
      dout << temp;

      // y3
      temp.real( (e - f) >> 2 );
      temp.imag( (g + h) >> 2 );
      dout << temp;
    }
  }

  void twiddle( hls::stream<par_data>           &data,
                hls::stream<cfixed_intern_type> &dout0,
                hls::stream<cfixed_intern_type> &dout1,
                hls::stream<cfixed_intern_type> &dout2,
                hls::stream<cfixed_intern_type> &dout3,
                int                              iter)
  {
    cfixed_intern_type mul0;
    cfixed_cmul_res_type mul1, mul2, mul3;
    cfixed_twid_type w[3];

    for (int n = 0; n < iter; n++)
    {
#pragma HLS LOOP_TRIPCOUNT max=FFT_ITER
      for (int i = 0; i < FFT_SIZE/4; i++)
      {
#pragma HLS PIPELINE II=1
        par_data temp = data.read();
        get_phase_factor(i, w);
        mul0 = temp.data0;
        mul1 = cmul(temp.data1, w[0]);
        mul2 = cmul(temp.data2, w[1]);
        mul3 = cmul(temp.data3, w[2]);

        dout0 << mul0;
        dout1 << mul1;
        dout2 << mul2;
        dout3 << mul3;
      }
    }
  }

  void joiner( hls::stream<cfixed_intern_type> &din0,
               hls::stream<cfixed_intern_type> &din1,
               hls::stream<cfixed_intern_type> &din2,
               hls::stream<cfixed_intern_type> &din3,
               hls::stream<par_data>           &data_out,
               int                              iter)
  {
    for (int n = 0; n < iter; n++)
    {
#pragma HLS LOOP_TRIPCOUNT max=FFT_ITER
      for (int i = 0; i < FFT_SIZE/4; i++)
      {
#pragma HLS PIPELINE II=1
        par_data temp;
        temp.data0 = din0.read();
        temp.data1 = din1.read();
        temp.data2 = din2.read();
        temp.data3 = din3.read();
        data_out << temp;
      }
    }
  }

  void fft_serial_kernel( hls::stream<cfixed_intern_type> &data_in,
                          hls::stream<cfixed_intern_type> &data_out,
                          int                              iter )
  {
    // Set up the FFT configuration and status
    hls::stream<status_t> fft_status;
    hls::stream<config_t> fft_config;
    config_t temp_config;
    temp_config.setDir(1);           // Forward FFT
    temp_config.setSch(SCALE_SCHED); // Scale to prevent overflow

    for (int i = 0; i < iter; i++)
    {
#pragma HLS LOOP_TRIPCOUNT max=FFT_ITER
#pragma HLS DATAFLOW
      fft_config.write(temp_config);
      hls::fft<fft_params>(data_in, data_out, fft_status, fft_config);
      status_t temp_status = fft_status.read();
    }
  }

  void fft_core( ap_int<8*input_width>    *din,
                 ap_int<8*internal_width> *dout,
                 int                       iter)

  {
  #pragma HLS DATAFLOW

    hls::stream<par_data> input_stream;
    hls::stream<par_data> reorder_out;
    hls::stream<par_data> fft1_out;
    hls::stream<cfixed_intern_type> twiddle_out0;
    hls::stream<cfixed_intern_type> twiddle_out1;
    hls::stream<cfixed_intern_type> twiddle_out2;
    hls::stream<cfixed_intern_type> twiddle_out3;
    hls::stream<cfixed_intern_type> fft2_out0;
    hls::stream<cfixed_intern_type> fft2_out1;
    hls::stream<cfixed_intern_type> fft2_out2;
    hls::stream<cfixed_intern_type> fft2_out3;
    hls::stream<par_data> joiner_out;

    dma_in(din, input_stream, iter);
    reorder(input_stream, reorder_out, iter);
    radix4p(reorder_out, fft1_out, iter);
    twiddle(fft1_out, twiddle_out0, twiddle_out1, twiddle_out2, twiddle_out3, iter);

    if (FFT_SIZE == 16)
    {
      radix4s(twiddle_out0, fft2_out0, iter);
      radix4s(twiddle_out1, fft2_out1, iter);
      radix4s(twiddle_out2, fft2_out2, iter);
      radix4s(twiddle_out3, fft2_out3, iter);
    }
    else
    {
      fft_serial_kernel(twiddle_out0, fft2_out0, iter);
      fft_serial_kernel(twiddle_out1, fft2_out1, iter);
      fft_serial_kernel(twiddle_out2, fft2_out2, iter);
      fft_serial_kernel(twiddle_out3, fft2_out3, iter);
    }

    joiner(fft2_out0, fft2_out1, fft2_out2, fft2_out3, joiner_out, iter);
    dma_out(joiner_out, dout, iter);
  }
};

extern "C"
{
  void fft_placeholder_top( ap_int<8*fft_placeholder::input_width> *din,
                            ap_int<8*fft_placeholder::internal_width> *dout,
                            int iter )
  {
    const int sim_depth = fft_placeholder::FFT_ITER * fft_placeholder::FFT_SIZE / 4;
#pragma HLS INTERFACE mode=s_axilite port=iter
#pragma HLS INTERFACE mode=s_axilite port=return
#pragma HLS INTERFACE mode=m_axi bundle=gmem2 depth=sim_depth max_widen_bitwidth=512 port=dout
#pragma HLS INTERFACE mode=m_axi bundle=gmem1 depth=sim_depth max_widen_bitwidth=512 port=din

    fft_placeholder::fft_core(din, dout, iter);
  }
}
