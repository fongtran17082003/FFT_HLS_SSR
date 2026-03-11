############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project hls_project
set_top fft_4k_ssr2_i16_c16_t16_top
add_files fft_4k_ssr2_i16_c16_t16.cpp
add_files -tb testbench.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb fft_model.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 200 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
config_cosim -tool xsim -trace_level all
config_export -format ip_catalog -rtl verilog
source "./hls_project/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -tool xsim
export_design -rtl verilog -format ip_catalog
