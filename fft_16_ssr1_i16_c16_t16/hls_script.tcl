open_project hls_project
set_top fft_16_ssr1_i16_c16_t16_top
add_files fft_16_ssr1_i16_c16_t16.cpp
add_files -tb fft_model.cpp
add_files -tb testbench.cpp
open_solution solution1 -flow_target vitis
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 3 -name default
exit
