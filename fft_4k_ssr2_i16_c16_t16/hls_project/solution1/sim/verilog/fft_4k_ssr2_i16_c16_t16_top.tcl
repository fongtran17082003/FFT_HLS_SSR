
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set din__dout__iter__return_group [add_wave_group din__dout__iter__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/interrupt -into $din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_BRESP -into $din__dout__iter__return_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_BREADY -into $din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_BVALID -into $din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_RRESP -into $din__dout__iter__return_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_RDATA -into $din__dout__iter__return_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_RREADY -into $din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_RVALID -into $din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_ARREADY -into $din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_ARVALID -into $din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_ARADDR -into $din__dout__iter__return_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_WSTRB -into $din__dout__iter__return_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_WDATA -into $din__dout__iter__return_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_WREADY -into $din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_WVALID -into $din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_AWREADY -into $din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_AWVALID -into $din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/s_axi_control_AWADDR -into $din__dout__iter__return_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set dout_group [add_wave_group dout(axi_master) -into $coutputgroup]
set rdata_group [add_wave_group "Read Channel" -into $dout_group]
set wdata_group [add_wave_group "Write Channel" -into $dout_group]
set ctrl_group [add_wave_group "Handshakes" -into $dout_group]
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_BUSER -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_BID -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_BRESP -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_RRESP -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_RUSER -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_RID -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_RDATA -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_ARUSER -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_ARREGION -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_ARQOS -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_ARPROT -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_ARBURST -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_ARLEN -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_ARID -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_ARADDR -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_WUSER -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_WID -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_WSTRB -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_WDATA -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_AWUSER -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_AWREGION -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_AWQOS -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_AWPROT -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_AWBURST -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_AWLEN -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_AWID -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_AWADDR -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem2_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set din_group [add_wave_group din(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $din_group]
set wdata_group [add_wave_group "Write Channel" -into $din_group]
set ctrl_group [add_wave_group "Handshakes" -into $din_group]
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_BUSER -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_BID -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_BRESP -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_RRESP -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_RUSER -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_RID -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_RDATA -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_ARID -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_WUSER -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_WID -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_WDATA -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_AWID -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/m_axi_gmem1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/ap_done -into $blocksiggroup
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/ap_idle -into $blocksiggroup
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/ap_ready -into $blocksiggroup
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AESL_inst_fft_4k_ssr2_i16_c16_t16_top/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/LENGTH_din -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/LENGTH_dout -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/LENGTH_gmem1 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/LENGTH_gmem2 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/LENGTH_iter -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_din__dout__iter__return_group [add_wave_group din__dout__iter__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_INTERRUPT -into $tb_din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_BRESP -into $tb_din__dout__iter__return_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_BREADY -into $tb_din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_BVALID -into $tb_din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_RRESP -into $tb_din__dout__iter__return_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_RDATA -into $tb_din__dout__iter__return_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_RREADY -into $tb_din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_RVALID -into $tb_din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_ARREADY -into $tb_din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_ARVALID -into $tb_din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_ARADDR -into $tb_din__dout__iter__return_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_WSTRB -into $tb_din__dout__iter__return_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_WDATA -into $tb_din__dout__iter__return_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_WREADY -into $tb_din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_WVALID -into $tb_din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_AWREADY -into $tb_din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_AWVALID -into $tb_din__dout__iter__return_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/control_AWADDR -into $tb_din__dout__iter__return_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_dout_group [add_wave_group dout(axi_master) -into $tbcoutputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_dout_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_dout_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_dout_group]
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_BUSER -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_BID -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_BRESP -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_RRESP -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_RUSER -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_RID -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_RDATA -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_ARUSER -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_ARREGION -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_ARQOS -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_ARPROT -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_ARBURST -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_ARLEN -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_ARID -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_ARADDR -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_WUSER -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_WID -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_WSTRB -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_WDATA -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_AWUSER -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_AWREGION -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_AWQOS -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_AWPROT -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_AWBURST -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_AWLEN -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_AWID -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_AWADDR -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem2_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_din_group [add_wave_group din(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_din_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_din_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_din_group]
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_BUSER -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_BID -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_BRESP -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_RRESP -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_RUSER -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_RID -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_RDATA -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_ARID -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_WUSER -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_WID -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_WDATA -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_AWID -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_fft_4k_ssr2_i16_c16_t16_top_top/gmem1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
save_wave_config fft_4k_ssr2_i16_c16_t16_top.wcfg
run all
quit

