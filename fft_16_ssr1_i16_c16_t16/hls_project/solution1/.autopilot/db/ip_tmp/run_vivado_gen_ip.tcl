create_project prj -part xck26-sfvc784-2LV-c -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/phongtran/Downloads/ssr-fft-main/fft_16_ssr1_i16_c16_t16/hls_project/solution1/syn/verilog/fft_16_ssr1_i16_c16_t16_top_fft_syn_fft_params_s_core_ip.tcl"
