set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME fft_16k_ssr2_i14_c16_t18_top_entry_proc}
  {SRCNAME dma_in_Pipeline_VITIS_LOOP_61_1 MODELNAME dma_in_Pipeline_VITIS_LOOP_61_1 RTLNAME fft_16k_ssr2_i14_c16_t18_top_dma_in_Pipeline_VITIS_LOOP_61_1
    SUBMODULES {
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_flow_control_loop_pipe_sequential_init RTLNAME fft_16k_ssr2_i14_c16_t18_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fft_16k_ssr2_i14_c16_t18_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dma_in MODELNAME dma_in RTLNAME fft_16k_ssr2_i14_c16_t18_top_dma_in}
  {SRCNAME reorder_Pipeline_pipeup_l1_pipeup_l2 MODELNAME reorder_Pipeline_pipeup_l1_pipeup_l2 RTLNAME fft_16k_ssr2_i14_c16_t18_top_reorder_Pipeline_pipeup_l1_pipeup_l2}
  {SRCNAME reorder MODELNAME reorder RTLNAME fft_16k_ssr2_i14_c16_t18_top_reorder
    SUBMODULES {
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_reorder_buff_0_0_RAM_AUTO_1R1W RTLNAME fft_16k_ssr2_i14_c16_t18_top_reorder_buff_0_0_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2 MODELNAME radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2 RTLNAME fft_16k_ssr2_i14_c16_t18_top_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2}
  {SRCNAME radix2p MODELNAME radix2p RTLNAME fft_16k_ssr2_i14_c16_t18_top_radix2p}
  {SRCNAME get_phase_factor MODELNAME get_phase_factor RTLNAME fft_16k_ssr2_i14_c16_t18_top_get_phase_factor
    SUBMODULES {
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_get_phase_factor_w_lut_ROM_AUTO_1R RTLNAME fft_16k_ssr2_i14_c16_t18_top_get_phase_factor_w_lut_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2 MODELNAME twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2 RTLNAME fft_16k_ssr2_i14_c16_t18_top_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2
    SUBMODULES {
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_mul_18s_16s_32_1_1 RTLNAME fft_16k_ssr2_i14_c16_t18_top_mul_18s_16s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_mac_mulsub_18s_16s_32s_32_4_1 RTLNAME fft_16k_ssr2_i14_c16_t18_top_mac_mulsub_18s_16s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_mac_muladd_18s_16s_32s_32_4_1 RTLNAME fft_16k_ssr2_i14_c16_t18_top_mac_muladd_18s_16s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME twiddle MODELNAME twiddle RTLNAME fft_16k_ssr2_i14_c16_t18_top_twiddle}
  {SRCNAME entry_proc74 MODELNAME entry_proc74 RTLNAME fft_16k_ssr2_i14_c16_t18_top_entry_proc74}
  {SRCNAME Block_newFuncRoot_proc_proc MODELNAME Block_newFuncRoot_proc_proc RTLNAME fft_16k_ssr2_i14_c16_t18_top_Block_newFuncRoot_proc_proc}
  {SRCNAME Block_newFuncRoot_proc_proc15 MODELNAME Block_newFuncRoot_proc_proc15 RTLNAME fft_16k_ssr2_i14_c16_t18_top_Block_newFuncRoot_proc_proc15}
  {SRCNAME fft_syn<fft_params> MODELNAME fft_syn_fft_params_s RTLNAME fft_16k_ssr2_i14_c16_t18_top_fft_syn_fft_params_s
    SUBMODULES {
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fft_syn_fft_params_s RTLNAME fft_16k_ssr2_i14_c16_t18_top_fft_syn_fft_params_s BINDTYPE op TYPE ip_block_Vivado_FFT}
    }
  }
  {SRCNAME fft<fft_params>.2 MODELNAME fft_fft_params_2 RTLNAME fft_16k_ssr2_i14_c16_t18_top_fft_fft_params_2}
  {SRCNAME Block_newFuncRoot_proc_proc16 MODELNAME Block_newFuncRoot_proc_proc16 RTLNAME fft_16k_ssr2_i14_c16_t18_top_Block_newFuncRoot_proc_proc16}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_310_1 MODELNAME dataflow_in_loop_VITIS_LOOP_310_1 RTLNAME fft_16k_ssr2_i14_c16_t18_top_dataflow_in_loop_VITIS_LOOP_310_1
    SUBMODULES {
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w16_d2_S RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w16_d2_S RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fft_config_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w8_d2_S RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fft_status_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_start_for_Block_newFuncRoot_proc_proc16_U0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_start_for_Block_newFuncRoot_proc_proc16_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Block_newFuncRoot_proc_proc16_U0_U}
    }
  }
  {SRCNAME fft_serial_kernel.1 MODELNAME fft_serial_kernel_1 RTLNAME fft_16k_ssr2_i14_c16_t18_top_fft_serial_kernel_1}
  {SRCNAME fft_serial_kernel.1.wrapper MODELNAME fft_serial_kernel_1_wrapper RTLNAME fft_16k_ssr2_i14_c16_t18_top_fft_serial_kernel_1_wrapper
    SUBMODULES {
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_channel_U}
    }
  }
  {SRCNAME entry_proc107 MODELNAME entry_proc107 RTLNAME fft_16k_ssr2_i14_c16_t18_top_entry_proc107}
  {SRCNAME Block_newFuncRoot_proc_proc17 MODELNAME Block_newFuncRoot_proc_proc17 RTLNAME fft_16k_ssr2_i14_c16_t18_top_Block_newFuncRoot_proc_proc17}
  {SRCNAME Block_newFuncRoot_proc_proc18 MODELNAME Block_newFuncRoot_proc_proc18 RTLNAME fft_16k_ssr2_i14_c16_t18_top_Block_newFuncRoot_proc_proc18}
  {SRCNAME fft_syn<fft_params>.3 MODELNAME fft_syn_fft_params_3 RTLNAME fft_16k_ssr2_i14_c16_t18_top_fft_syn_fft_params_3
    SUBMODULES {
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fft_syn_fft_params_3 RTLNAME fft_16k_ssr2_i14_c16_t18_top_fft_syn_fft_params_3 BINDTYPE op TYPE ip_block_Vivado_FFT}
    }
  }
  {SRCNAME fft<fft_params> MODELNAME fft_fft_params_s RTLNAME fft_16k_ssr2_i14_c16_t18_top_fft_fft_params_s}
  {SRCNAME Block_newFuncRoot_proc_proc19 MODELNAME Block_newFuncRoot_proc_proc19 RTLNAME fft_16k_ssr2_i14_c16_t18_top_Block_newFuncRoot_proc_proc19}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_310_1.133 MODELNAME dataflow_in_loop_VITIS_LOOP_310_1_133 RTLNAME fft_16k_ssr2_i14_c16_t18_top_dataflow_in_loop_VITIS_LOOP_310_1_133
    SUBMODULES {
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w16_d2_S_x RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w16_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w16_d2_S_x RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w16_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fft_config_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w8_d2_S_x RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fft_status_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_start_for_Block_newFuncRoot_proc_proc19_U0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_start_for_Block_newFuncRoot_proc_proc19_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Block_newFuncRoot_proc_proc19_U0_U}
    }
  }
  {SRCNAME fft_serial_kernel MODELNAME fft_serial_kernel RTLNAME fft_16k_ssr2_i14_c16_t18_top_fft_serial_kernel}
  {SRCNAME fft_serial_kernel.wrapper MODELNAME fft_serial_kernel_wrapper RTLNAME fft_16k_ssr2_i14_c16_t18_top_fft_serial_kernel_wrapper
    SUBMODULES {
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_channel_U}
    }
  }
  {SRCNAME joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2 MODELNAME joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2 RTLNAME fft_16k_ssr2_i14_c16_t18_top_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2}
  {SRCNAME joiner MODELNAME joiner RTLNAME fft_16k_ssr2_i14_c16_t18_top_joiner}
  {SRCNAME dma_out_Pipeline_VITIS_LOOP_90_1 MODELNAME dma_out_Pipeline_VITIS_LOOP_90_1 RTLNAME fft_16k_ssr2_i14_c16_t18_top_dma_out_Pipeline_VITIS_LOOP_90_1}
  {SRCNAME dma_out MODELNAME dma_out RTLNAME fft_16k_ssr2_i14_c16_t18_top_dma_out}
  {SRCNAME fft_core MODELNAME fft_core RTLNAME fft_16k_ssr2_i14_c16_t18_top_fft_core
    SUBMODULES {
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w64_d8_S RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w64_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dout_c_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w64_d2_S RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME input_stream_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME iter_c25_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w64_d2_S RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME reorder_out_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME iter_c24_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w64_d2_S RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fft1_out_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME iter_c23_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME twiddle_out0_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME twiddle_out1_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME iter_c21_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME iter_c22_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fft2_out0_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME iter_c20_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w32_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fft2_out1_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w64_d2_S RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME joiner_out_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w18_d2_S RTLNAME fft_16k_ssr2_i14_c16_t18_top_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME iter_c_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_start_for_dma_out_U0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_start_for_dma_out_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dma_out_U0_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_start_for_reorder_U0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_start_for_reorder_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_reorder_U0_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_start_for_radix2p_U0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_start_for_radix2p_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_radix2p_U0_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_start_for_twiddle_U0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_start_for_twiddle_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_twiddle_U0_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_start_for_fft_serial_kernel_1_wrapper_U0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_start_for_fft_serial_kernel_1_wrapper_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_fft_serial_kernel_1_wrapper_U0_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_start_for_fft_serial_kernel_wrapper_U0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_start_for_fft_serial_kernel_wrapper_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_fft_serial_kernel_wrapper_U0_U}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_start_for_joiner_U0 RTLNAME fft_16k_ssr2_i14_c16_t18_top_start_for_joiner_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_joiner_U0_U}
    }
  }
  {SRCNAME fft_16k_ssr2_i14_c16_t18_top MODELNAME fft_16k_ssr2_i14_c16_t18_top RTLNAME fft_16k_ssr2_i14_c16_t18_top IS_TOP 1
    SUBMODULES {
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_gmem1_m_axi RTLNAME fft_16k_ssr2_i14_c16_t18_top_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_gmem2_m_axi RTLNAME fft_16k_ssr2_i14_c16_t18_top_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME fft_16k_ssr2_i14_c16_t18_top_control_s_axi RTLNAME fft_16k_ssr2_i14_c16_t18_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
