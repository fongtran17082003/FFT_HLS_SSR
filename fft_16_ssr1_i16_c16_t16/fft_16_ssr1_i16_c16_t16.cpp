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
** File Name:           fft_ssr1_top.cpp
**
** Author:              Tom Simpson
**
** Description:         Top-level HLS template for SSR1 architecture
**
** Revision:            September 26, 2023: 1.00 Initial version
**
**----------------------------------------------------------------------------*/

#include <iostream>
#include <complex>
#include "fft_16_ssr1_i16_c16_t16.hpp"
#include "ap_int.h"
#include "hls_stream.h"
#include "hls_fft.h"
#include "hls_math.h"

namespace fft_16_ssr1_i16_c16_t16
{

  void dma_in( ap_int<2*input_width>           *din,
               hls::stream<cfixed_intern_type> &dout,
               int                              iter)
  {
    cfixed_intern_type temp_out;

    for (int i = 0; i < iter*FFT_SIZE; i++)
    {
#pragma HLS LOOP_TRIPCOUNT max=FFT_ITER*FFT_SIZE

      // Load input data
      ap_int<2*input_width> temp_in = din[i];
      temp_out.imag().range(internal_width-1,internal_width-input_width) = temp_in.range(2*input_width-1, input_width);
      temp_out.real().range(internal_width-1,internal_width-input_width) = temp_in.range(input_width-1, 0);

      if (internal_width > input_width)
      {
        temp_out.imag().range(internal_width-input_width-1,0) = 0;
        temp_out.real().range(internal_width-input_width-1,0) = 0;
      }

      dout << temp_out;
    }
  }

  void dma_out( hls::stream<cfixed_intern_type> &din,
                ap_int<2*internal_width>        *dout,
                int                              iter)
  {
    ap_int<2*internal_width> temp_out;

    for (int i = 0; i < iter*FFT_SIZE; i++)
    {
#pragma HLS LOOP_TRIPCOUNT max=FFT_ITER*FFT_SIZE
      cfixed_intern_type temp_in = din.read();
      temp_out.range(2*internal_width-1, internal_width) = temp_in.imag().range(internal_width-1,0);
      temp_out.range(internal_width-1, 0)                = temp_in.real().range(internal_width-1,0);
      dout[i] = temp_out;
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

  void fft_core( ap_int<2*input_width>    *din,
                 ap_int<2*internal_width> *dout,
                 int                       iter)

  {
#pragma HLS DATAFLOW

    hls::stream<cfixed_intern_type> input_stream;
    hls::stream<cfixed_intern_type> fft_out;

    dma_in(din, input_stream, iter);

    if (FFT_SIZE == 4)
    {
      radix4s(input_stream, fft_out, iter);
    }
    else
    {
      fft_serial_kernel(input_stream, fft_out, iter);
    }

    dma_out(fft_out, dout, iter);
  }
};

extern "C"
{
  void fft_16_ssr1_i16_c16_t16_top( ap_int<2*fft_16_ssr1_i16_c16_t16::input_width> *din,
                            ap_int<2*fft_16_ssr1_i16_c16_t16::internal_width> *dout,
                            int iter )
  {
    const int sim_depth = fft_16_ssr1_i16_c16_t16::FFT_ITER * fft_16_ssr1_i16_c16_t16::FFT_SIZE;
#pragma HLS INTERFACE mode=s_axilite port=iter
#pragma HLS INTERFACE mode=s_axilite port=return
#pragma HLS INTERFACE mode=m_axi bundle=gmem2 depth=sim_depth max_widen_bitwidth=512 port=dout
#pragma HLS INTERFACE mode=m_axi bundle=gmem1 depth=sim_depth max_widen_bitwidth=512 port=din

    fft_16_ssr1_i16_c16_t16::fft_core(din, dout, iter);
  }
}
