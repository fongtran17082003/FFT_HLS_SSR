/*
** This file is auto-generated and contains parameters for a 16-point SSR1 FFT. 
** Do not modify this file. Modifying this file may break the design. Proceed at your own risk.
*/

#ifndef FFT_16_SSR1_I16_C16_T16
#define FFT_16_SSR1_I16_C16_T16

#include <iostream>
#include "hls_fft.h"
#include "hls_math.h"
#include "ap_fixed.h"

namespace fft_16_ssr1_i16_c16_t16
{
  static const int FFT_SIZE = 16384;
  static const int SSR = 1;
  static const int FFT_ITER = 2; // simulation parameter: number of FFTs to compute
  static const int SCALE_SCHED = 11; // b'1011

  /* LogiCORE (hls::fft) FFT parameters for 16-point FFT */
  struct fft_params : hls::ip_fft::params_t 
  {
    static const unsigned ordering_opt       = hls::ip_fft::natural_order;
    static const unsigned max_nfft           = 11;
    static const unsigned input_width        = 16;
    static const unsigned output_width       = 16;
    static const unsigned status_width       = 8;
    static const unsigned config_width       = 8;
    static const unsigned phase_factor_width = 16;
    static const unsigned stages_block_ram   = 0;
  };

  typedef hls::ip_fft::config_t<fft_params> config_t;
  typedef hls::ip_fft::status_t<fft_params> status_t;

  const int input_width = 16;
  const int internal_width = 16;
  const int twiddle_width = 16;

  typedef std::complex<ap_fixed<input_width,1>> cfixed_in_type;
  typedef std::complex<ap_fixed<internal_width,1>> cfixed_intern_type;
  typedef std::complex<ap_fixed<twiddle_width,2>> cfixed_twid_type;
  typedef std::complex<ap_fixed<internal_width+twiddle_width+1,4>> cfixed_cmul_res_type;

};

extern "C" 
{
  void fft_16_ssr1_i16_c16_t16_top( ap_int<2*fft_16_ssr1_i16_c16_t16::input_width*fft_16_ssr1_i16_c16_t16::SSR> *din, 
                                    ap_int<2*fft_16_ssr1_i16_c16_t16::internal_width*fft_16_ssr1_i16_c16_t16::SSR> *dout, 
                                    int iter );
}


#endif
