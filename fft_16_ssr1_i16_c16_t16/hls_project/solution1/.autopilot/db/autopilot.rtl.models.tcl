set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME fft_16_ssr1_i16_c16_t16_top_entry_proc}
  {SRCNAME dma_in_Pipeline_VITIS_LOOP_53_1 MODELNAME dma_in_Pipeline_VITIS_LOOP_53_1 RTLNAME fft_16_ssr1_i16_c16_t16_top_dma_in_Pipeline_VITIS_LOOP_53_1
    SUBMODULES {
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_flow_control_loop_pipe_sequential_init RTLNAME fft_16_ssr1_i16_c16_t16_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fft_16_ssr1_i16_c16_t16_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dma_in MODELNAME dma_in RTLNAME fft_16_ssr1_i16_c16_t16_top_dma_in}
  {SRCNAME entry_proc42 MODELNAME entry_proc42 RTLNAME fft_16_ssr1_i16_c16_t16_top_entry_proc42}
  {SRCNAME Block_newFuncRoot_proc_proc MODELNAME Block_newFuncRoot_proc_proc RTLNAME fft_16_ssr1_i16_c16_t16_top_Block_newFuncRoot_proc_proc}
  {SRCNAME Block_newFuncRoot_proc_proc5 MODELNAME Block_newFuncRoot_proc_proc5 RTLNAME fft_16_ssr1_i16_c16_t16_top_Block_newFuncRoot_proc_proc5}
  {SRCNAME fft_syn<fft_params> MODELNAME fft_syn_fft_params_s RTLNAME fft_16_ssr1_i16_c16_t16_top_fft_syn_fft_params_s
    SUBMODULES {
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_fft_syn_fft_params_s RTLNAME fft_16_ssr1_i16_c16_t16_top_fft_syn_fft_params_s BINDTYPE op TYPE ip_block_Vivado_FFT}
    }
  }
  {SRCNAME fft<fft_params> MODELNAME fft_fft_params_s RTLNAME fft_16_ssr1_i16_c16_t16_top_fft_fft_params_s}
  {SRCNAME Block_newFuncRoot_proc_proc6 MODELNAME Block_newFuncRoot_proc_proc6 RTLNAME fft_16_ssr1_i16_c16_t16_top_Block_newFuncRoot_proc_proc6}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_158_1 MODELNAME dataflow_in_loop_VITIS_LOOP_158_1 RTLNAME fft_16_ssr1_i16_c16_t16_top_dataflow_in_loop_VITIS_LOOP_158_1
    SUBMODULES {
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_fifo_w8_d2_S RTLNAME fft_16_ssr1_i16_c16_t16_top_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_U}
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_fifo_w8_d2_S RTLNAME fft_16_ssr1_i16_c16_t16_top_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fft_config_U}
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_fifo_w8_d2_S RTLNAME fft_16_ssr1_i16_c16_t16_top_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fft_status_U}
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_start_for_Block_newFuncRoot_proc_proc6_U0 RTLNAME fft_16_ssr1_i16_c16_t16_top_start_for_Block_newFuncRoot_proc_proc6_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Block_newFuncRoot_proc_proc6_U0_U}
    }
  }
  {SRCNAME fft_serial_kernel MODELNAME fft_serial_kernel RTLNAME fft_16_ssr1_i16_c16_t16_top_fft_serial_kernel}
  {SRCNAME fft_serial_kernel.wrapper MODELNAME fft_serial_kernel_wrapper RTLNAME fft_16_ssr1_i16_c16_t16_top_fft_serial_kernel_wrapper
    SUBMODULES {
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_fifo_w32_d2_S RTLNAME fft_16_ssr1_i16_c16_t16_top_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_channel_U}
    }
  }
  {SRCNAME dma_out_Pipeline_VITIS_LOOP_78_1 MODELNAME dma_out_Pipeline_VITIS_LOOP_78_1 RTLNAME fft_16_ssr1_i16_c16_t16_top_dma_out_Pipeline_VITIS_LOOP_78_1}
  {SRCNAME dma_out MODELNAME dma_out RTLNAME fft_16_ssr1_i16_c16_t16_top_dma_out}
  {SRCNAME fft_core MODELNAME fft_core RTLNAME fft_16_ssr1_i16_c16_t16_top_fft_core
    SUBMODULES {
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_fifo_w64_d4_S RTLNAME fft_16_ssr1_i16_c16_t16_top_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dout_c_U}
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_fifo_w32_d2_S_x RTLNAME fft_16_ssr1_i16_c16_t16_top_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME input_stream_U}
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_fifo_w32_d2_S_x RTLNAME fft_16_ssr1_i16_c16_t16_top_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME iter_c10_U}
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_fifo_w32_d2_S_x RTLNAME fft_16_ssr1_i16_c16_t16_top_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fft_out_U}
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_fifo_w28_d2_S RTLNAME fft_16_ssr1_i16_c16_t16_top_fifo_w28_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME iter_c_U}
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_start_for_dma_out_U0 RTLNAME fft_16_ssr1_i16_c16_t16_top_start_for_dma_out_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dma_out_U0_U}
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_start_for_fft_serial_kernel_wrapper_U0 RTLNAME fft_16_ssr1_i16_c16_t16_top_start_for_fft_serial_kernel_wrapper_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_fft_serial_kernel_wrapper_U0_U}
    }
  }
  {SRCNAME fft_16_ssr1_i16_c16_t16_top MODELNAME fft_16_ssr1_i16_c16_t16_top RTLNAME fft_16_ssr1_i16_c16_t16_top IS_TOP 1
    SUBMODULES {
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_gmem1_m_axi RTLNAME fft_16_ssr1_i16_c16_t16_top_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_gmem2_m_axi RTLNAME fft_16_ssr1_i16_c16_t16_top_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME fft_16_ssr1_i16_c16_t16_top_control_s_axi RTLNAME fft_16_ssr1_i16_c16_t16_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
