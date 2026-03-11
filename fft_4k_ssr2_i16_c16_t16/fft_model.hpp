#ifndef __FFT_MODEL_HPP__
#define __FFT_MODEL_HPP__

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
** File Name:           fft_model.hpp
**
** Author:              Tom Simpson
**
** Description:         Header file for FFT model
**
** Revision:            September 26, 2023: 1.00 Initial version
**
**----------------------------------------------------------------------------*/

#include <iostream>
#include <complex>

using namespace std;

#define REAL_DATA_SIZE (2)     // Real (not complex) word size in bytes
#define MODEL_SCALE    (0.50f) // scale factor for comparing against HLS implementation

// Do not modify below
#if REAL_DATA_SIZE == 1
  typedef int8_t dtype;
  typedef int16_t mtype;
#elif REAL_DATA_SIZE == 2
  typedef int16_t dtype;
  typedef int32_t mtype;
#elif REAL_DATA_SIZE == 4
  typedef int32_t dtype;
  typedef int64_t mtype;
#else
  #error "Data word size (REAL_DATA_SIZE) must 1, 2, or 4 bytes"
  typedef int16_t dtype;
  typedef int32_t mtype;
#endif
typedef complex<dtype> cdtype;
typedef complex<mtype> cmtype;

void fft_model( cdtype *data_in, cdtype *data_out, int fft_size, int samples, bool scale );

#endif
