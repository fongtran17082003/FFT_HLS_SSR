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
**                     Copyright(c) 2025 Avnet, Inc.
**                             All rights reserved.
**
**----------------------------------------------------------------------------
**
** Create Date:         September 26, 2023
** File Name:           create_fft_header.cpp
**
** Author:              Tom Simpson
**
** Description:         Generates header files for HLS FFT
**                      Compile with command:
**                        g++ create_fft_header.cpp -o create_fft_header.exe
**
** Revision:            September 26, 2023 : Initial version
**                      March     19, 2025 : Fixed header file name issue with
**                                           input_width != internal_width
**
**----------------------------------------------------------------------------*/

#include <iostream>
#include <iomanip>
#include <fstream>
#include <complex>
#include <cmath>
#include <string>

using namespace std;

void fft_twiddle_factors(int fft_size, int ssr, std::complex<float> *w)
{
  const double pi = 3.141592653589793;
  const double phase_factor = 2.0 * pi / (double)fft_size;

  for (int i = 0; i < ssr; i++)
  {
    for (int k = 0; k < fft_size/ssr; k++)
    {
      w[i*fft_size/ssr+k].real( cosf(phase_factor * (double)(i*k)) );
      w[i*fft_size/ssr+k].imag(-sinf(phase_factor * (double)(i*k)) );
    }
  }
}

string fft_scale_schedule( int fft_size )
{
  int    n = log2(fft_size);
  int    ibits = (int)((float)(n + 1) / 2.0f);
  string scale;

  if ( n % 2 == 0)
  {
    scale = "10";
  }
  else
  {
    scale = "01";
  }

  for (int i = 1; i < ibits-1; i++)
  {
    scale += "10";
  }

  scale += "11";

  return scale;
}

string string_to_spaces( string input )
{
  string temp = " ";
  for (int i = 1; i < input.length(); i++) temp += " ";
  return temp;
}

int main( int argc, char** argv)
{
  // Change to loop that processes flags with arguments following
  if (argc != 6)
  {
    cout << "Incorrect number of arguments.  Please provide the FFT size and SSR factor as the input argument" << endl;
    cout << "  USAGE: ./generate_radix4_params <fft_size> <SSR> <input width> <internal width> <twiddle width>" << endl;
    cout << "  Example: ./generate_radix4_params 16384 4 12 16 18" << endl;
    return -1;
  }

  int fft_size = atoi(argv[1]);
  int ssr = atoi(argv[2]);
  int input_width = atoi(argv[3]);
  int internal_width = atoi(argv[4]);
  int twiddle_width = atoi(argv[5]);

  // Check to make sure the SSR is 1, 2, or 4
  if ( !((ssr == 1) || (ssr == 2) || (ssr == 4)))
  {
    cout << "ERROR: SSR must be equal to 1, 2, or 4.  Your requested SSR was " << ssr << "." << endl;
    cout << "Exiting." << endl;
    return -1;
  }

  // Make sure the FFT is divisible by the SSR factor
  if (fft_size % ssr != 0)
  {
    cout << "ERROR: FFT size must be divisible by the SSR factor.  Your requested FFT size was " << fft_size
         << ", and SSR was " << ssr << "." << endl;
    cout << "Exiting." << endl;
    return -1;
  }

  // Range check FFT size
  if (fft_size < (4*ssr) || fft_size > (ssr*65536))
  {
    cout << "ERROR: FFT size must be in the range (SSR x 4) to (SSR x 65536). Your requested FFT size was " << fft_size
         << ", and SSR was " << ssr << "." << endl;
    cout << "Exiting." << endl;
    return -1;
  }

  // Make sure the FFT size is a power-of-2
  double temp;
  if (modf(log2(fft_size), &temp) != 0.0)
  {
    cout << "ERROR: FFT size must be a power of 2. Your requested FFT size was " << fft_size << "." << endl;
    cout << "Exiting." << endl;
    return -1;
  }

  string scale = fft_scale_schedule(fft_size/ssr);

  std::complex<float> w[fft_size];
  if ((ssr > 1) && (fft_size < 32768))
  {
    fft_twiddle_factors(fft_size, ssr, w);
  }

  // Create the output file name based on the FFT size
  string fft_name = "fft_";
  if ( (fft_size / 1024) >= 1 )
  {
    fft_name += (to_string((int)(fft_size/1024)) + "k");
  }
  else
  {
    fft_name += to_string(fft_size);
  }
  fft_name += "_ssr" + to_string(ssr) + "_i" + to_string(input_width) + "_c" + to_string(internal_width) + "_t" + to_string(twiddle_width);;
  string filename = fft_name + ".hpp";

  ofstream outfile(filename);

  if (!outfile.is_open())
  {
    cout << "ERROR: could not open file " << filename << " for writing." << endl;
  }

  int config_width = 2 * (int)((log2(fft_size/ssr) + 1.0f) / 2.0f) + 1; // 1 bit for FFT direction, the rest for scaling
  config_width = (int)((config_width + 7) / 8) * 8; // Pad up to the nearest 8-bit boundary
  int max_nfft = (int)log2(fft_size/ssr);
  int stages_block_ram = (max_nfft < 10) ? 0 : max_nfft-9;
  string fft_tag = "FFT_" + to_string(fft_size) +
                   "_SSR" + to_string(ssr) +
                   "_I" + to_string(input_width) +
                   "_C" + to_string(internal_width) +
                   "_T" + to_string(twiddle_width);

  outfile << "/*\n";
  outfile << "** This file is auto-generated and contains parameters for a " << fft_size << "-point SSR" << ssr << " FFT. \n";
  outfile << "** Do not modify this file. Modifying this file may break the design. Proceed at your own risk.\n";
  outfile << "*/\n";
  outfile << "\n#ifndef " << fft_tag << "\n";
  outfile << "#define "<< fft_tag << "\n";
  outfile << "\n";
  outfile << "#include <iostream>\n";
  outfile << "#include \"hls_fft.h\"\n";
  outfile << "#include \"hls_math.h\"\n";
  outfile << "#include \"ap_fixed.h\"\n";
  outfile << "\n";
  outfile << "namespace " << fft_name << "\n";
  outfile << "{\n";
  outfile << "  static const int FFT_SIZE = " << fft_size << ";\n";
  outfile << "  static const int SSR = " << ssr << ";\n";
  outfile << "  static const int FFT_ITER = 32; // simulation parameter: number of FFTs to compute\n";

  outfile << "  static const int SCALE_SCHED = " << stoi(scale, nullptr, 2) << "; // b'" << scale << "\n";
  outfile << "\n";
  if (ssr == 1)
  {
    outfile << "  /* LogiCORE (hls::fft) FFT parameters for " << fft_size << "-point FFT */\n";
  }
  else
  {
    outfile << "  /* LogiCORE (hls::fft) FFT parameters for the second-stage serial " << fft_size/ssr << "-point FFTs */\n";
  }
  outfile << "  struct fft_params : hls::ip_fft::params_t \n";
  outfile << "  {\n";
  outfile << "    static const unsigned ordering_opt       = hls::ip_fft::natural_order;\n";
  outfile << "    static const unsigned max_nfft           = " << max_nfft << ";\n";
  outfile << "    static const unsigned input_width        = " << internal_width << ";\n";
  outfile << "    static const unsigned output_width       = " << internal_width << ";\n";
  outfile << "    static const unsigned status_width       = 8;\n";
  outfile << "    static const unsigned config_width       = " << config_width << ";\n";
  outfile << "    static const unsigned phase_factor_width = " << twiddle_width << ";\n";
  outfile << "    static const unsigned stages_block_ram   = " << stages_block_ram << ";\n";
  outfile << "  };\n";
  outfile << "\n";
  outfile << "  typedef hls::ip_fft::config_t<fft_params> config_t;\n";
  outfile << "  typedef hls::ip_fft::status_t<fft_params> status_t;\n";

  outfile << "\n";
  outfile << "  const int input_width = " << input_width << ";\n";
  outfile << "  const int internal_width = " << internal_width << ";\n";
  outfile << "  const int twiddle_width = " << twiddle_width << ";\n";

  outfile << "\n";
  outfile << "  typedef std::complex<ap_fixed<input_width,1>> cfixed_in_type;\n";
  outfile << "  typedef std::complex<ap_fixed<internal_width,1>> cfixed_intern_type;\n";
  outfile << "  typedef std::complex<ap_fixed<twiddle_width,2>> cfixed_twid_type;\n";
  outfile << "  typedef std::complex<ap_fixed<internal_width+twiddle_width+1,4>> cfixed_cmul_res_type;\n";
  outfile << "\n";

  if (ssr > 1)
  {
    outfile << "  typedef struct\n";
    outfile << "  {\n";
    outfile << "    cfixed_intern_type data0;\n";
    outfile << "    cfixed_intern_type data1;\n";
    if (ssr == 4)
    {
      outfile << "    cfixed_intern_type data2;\n";
      outfile << "    cfixed_intern_type data3;\n";
    }
    outfile << "  } par_data;\n";
    outfile << "\n";
  }

  outfile << "};\n\n";

  outfile << "extern \"C\" \n{\n";
  outfile << "  void " << fft_name << "_top( ap_int<2*" << fft_name << "::input_width*" << fft_name << "::SSR> *din, \n";
  outfile << string_to_spaces(fft_name) << "             ap_int<2*" << fft_name << "::internal_width*" << fft_name << "::SSR> *dout, \n";
  outfile << string_to_spaces(fft_name) << "             int iter );\n";
  outfile << "}\n\n";

  if (ssr > 1)
  {
    outfile << "namespace " << fft_name << "\n";
    outfile << "{\n";

    if (fft_size < 32768)
    {
      outfile << "  static const cfixed_twid_type w_lut[" << ssr-1 << "][FFT_SIZE/" << ssr << "] = \n";
      outfile << "  {\n";

      for (int i = 1; i < ssr; i++)
      {
        outfile << "    {\n";
        for (int k = 0; k < fft_size/ssr; k++)
        {
          if (k%8 == 0) outfile << "      ";
          outfile << "{" << std::fixed << w[i*fft_size/ssr+k].real() << ", " << w[i*fft_size/ssr+k].imag() << "}";

          if (k < fft_size/ssr-1) outfile << ", ";
          if (k % 8 == 7) outfile << "\n";
        }

        if (fft_size/ssr < 8) outfile << "\n";
        outfile << "    }";
        if (i < 3 && ssr > 2) outfile << ",\n";
      }
      outfile << "\n  };\n\n";

      outfile << "  static void get_phase_factor( int i, cfixed_twid_type *w )\n";
      outfile << "  {\n";
      outfile << "#pragma HLS ARRAY_RESHAPE dim=1 type=complete variable=w_lut\n";
      outfile << "#pragma HLS AGGREGATE compact=auto variable=w_lut\n";
      outfile << "#pragma HLS INLINE off\n";
      for (int i = 0; i < ssr-1; i++)
      {
        outfile << "    w[" << i << "] = w_lut[" << i << "][i];\n";
      }
      outfile << "  }\n";
    }
    else
    {
      outfile << "  static void get_phase_factor( int i, cfixed_twid_type *w )\n";
      outfile << "  {\n";
      outfile << "#pragma HLS INLINE off\n";
      outfile << "    const ap_fixed<24,1,AP_RND> phase_const = 2.0f * M_PI / FFT_SIZE;\n";
      outfile << "    for (ap_fixed<3,3> k = 1; k < SSR; k++)\n";
      outfile << "    {\n";
      outfile << "      ap_fixed<24,3> phase = (ap_fixed<16,16>)i * k * phase_const;\n";
      outfile << "      cfixed_twid_type temp;\n";
      outfile << "      temp.real(  hls::cos(phase) );\n";
      outfile << "      temp.imag( -hls::sin(phase) );\n";
      outfile << "      w[k-1] = temp;\n";
      outfile << "    }\n";
      outfile << "  }\n";
    }
    outfile << "};\n";
  }

  outfile << "\n#endif\n";
  outfile.close();

  return 0;
}
