#!/bin/bash
##----------------------------------------------------------------------------
##      _____
##     *     *
##    *____   *____
##   * *===*   *==*
##  *___*===*___##  AVNET
##       *======*
##        *====*
##----------------------------------------------------------------------------
##
## This design is the property of Avnet.  Publication of this
## design is not authorized without written consent from Avnet.
##
## Disclaimer:
##    Avnet, Inc. makes no warranty for the use of this code or design.
##    This code is provided  "As Is". Avnet, Inc assumes no responsibility for
##    any errors, which may appear in this code, nor does it make a commitment
##    to update the information contained herein. Avnet, Inc specifically
##    disclaims any implied warranties of fitness for a particular purpose.
##                     Copyright(c) 2024 Avnet, Inc.
##                             All rights reserved.
##
##----------------------------------------------------------------------------
##
## Create Date:         September 26, 2023
## File Name:           generate_fft.sh
##
## Author:              Tom Simpson
##
## Description:         HLS SSR FFT generation script
##
## Revision:            September 26, 2023: 1.00 Initial version
##
##----------------------------------------------------------------------------

function print_help () {
  echo "Usage:"
  echo "  ./generate_fft.sh -[flag] [value]"
  echo "   flags: -size, -ssr, -input_width, -internal_width, -twiddle_width, -help"
  echo "   defautls:"
  echo "     - size           = 16"
  echo "     - ssr            = 1"
  echo "     - input_width    = 16"
  echo "     - internal_width = 16"
  echo "     - twiddle_width  = 16"
  echo "Examples:"
  echo "  - print help               : ./generate_fft.sh -help"
  echo "  - create 8K FFT            : ./generate_fft.sh -size 8192"
  echo "  - create 8K FFT with SSR 4 : ./generate_fft.sh -size 8192 -ssr 4"
  echo "  - full options             : ./generate_fft.sh -size 8192 -ssr 2 -input_width 14 -internal_width 16 -twiddle_width 18"
  echo ""
  exit
}

# Set default values
fft_size=16
ssr=1
in_width=16
int_width_temp=16
twid_width=16

# Process user inputs
i=$(($# - 1))
while [ $i -ge 0 ]
do
  if [[ ${BASH_ARGV[$i]} == "-size" ]]; then
    fft_size=${BASH_ARGV[$i-1]}
  elif [[ ${BASH_ARGV[$i]} == "-ssr" ]]; then
    ssr=${BASH_ARGV[$i-1]}
  elif [[ ${BASH_ARGV[$i]} == "-input_width" ]]; then
    in_width=${BASH_ARGV[$i-1]}
  elif [[ ${BASH_ARGV[$i]} == "-internal_width" ]]; then
    int_width_temp=${BASH_ARGV[$i-1]}
  elif [[ ${BASH_ARGV[$i]} == "-twiddle_width" ]]; then
    twid_width=${BASH_ARGV[$i-1]}
  elif [[ ${BASH_ARGV[$i]} == "-help" ]]; then
    print_help
  else
    echo "ERORR: unknown option $i"
    print_help
  fi
  i=$((i-2))
done

int_width=$(( ((int_width_temp + 7) / 8) * 8 ))

if [[ $int_width -lt $in_width ]]; then
  echo "ERROR: internal (computational) width of $int_width_temp-bits cannot be less than input width of $in_width-bits"
  exit
fi

echo "FFT CONFIGURATION:"
echo "  fft_size       = $fft_size"
echo "  ssr            = $ssr"
echo "  input_width    = $in_width"
echo "  internal_width = $int_width (rounded up to 8-bit boundary from requested $int_width_temp-bits)"
echo "  twiddle_width  = $twid_width"

if [[ $fft_size -ge 1024 ]]; then
  fft_short=$(expr $fft_size / 1024)
  name="fft_${fft_short}k_ssr${ssr}"
else
  name="fft_${fft_size}_ssr${ssr}"
fi

dir_name="${name}_i${in_width}_c${int_width}_t${twid_width}"

# Generate header file
if [ ! -f "create_fft_header.exe" ]; then
  echo "Compiling header-file generator code"
  g++ create_fft_header.cpp -o create_fft_header.exe
fi
./create_fft_header.exe $fft_size $ssr $in_width $int_width $twid_width

if [[ $? -ne 0 ]]; then
  exit 1
fi

# Copy source to new directory
mkdir -p $dir_name
mv $dir_name.hpp $dir_name/.
cp hls_src/fft_ssr${ssr}_top.cpp $dir_name/$dir_name.cpp
cp hls_src/fft_model* $dir_name/.
cp hls_src/testbench.cpp $dir_name/.

# Modify the source code with appropriate FFT name
cd $dir_name
sed -i "s/fft_placeholder(/${dir_name}_top(/g" testbench.cpp
sed -i "s/fft_placeholder/$dir_name/g" testbench.cpp
sed -i "s/fft_placeholder/$dir_name/g" $dir_name.cpp

if [[ $int_width -le 8 ]]; then
  sed -i 's/#define REAL_DATA_SIZE (2)/#define REAL_DATA_SIZE (1)/g' fft_model.hpp
elif [[ $int_width -le 16 ]]; then
  sed -i 's/#define REAL_DATA_SIZE (2)/#define REAL_DATA_SIZE (2)/g' fft_model.hpp
elif [[ $int_width -le 32 ]]; then
  sed -i 's/#define REAL_DATA_SIZE (2)/#define REAL_DATA_SIZE (4)/g' fft_model.hpp
fi

# Create the Vitis-HLS project script
echo "open_project hls_project" > hls_script.tcl
echo "set_top ${dir_name}_top" >> hls_script.tcl
echo "add_files $dir_name.cpp" >> hls_script.tcl
echo "add_files -tb fft_model.cpp" >> hls_script.tcl
echo "add_files -tb testbench.cpp" >> hls_script.tcl
echo "open_solution "solution1" -flow_target vitis" >> hls_script.tcl
echo "set_part {xczu7ev-ffvc1156-2-e}" >> hls_script.tcl
echo "create_clock -period 3 -name default" >> hls_script.tcl
echo "exit" >> hls_script.tcl

# Done

echo "FFT code generated in directory $dir_name"
