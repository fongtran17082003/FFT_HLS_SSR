
`include "dump_file_agent.svh"
`include "csv_file_dump.svh"
`include "sample_agent.svh"
`include "loop_sample_agent.svh"
`include "sample_manager.svh"
`include "nodf_module_interface.svh"
`include "nodf_module_monitor.svh"
`include "df_fifo_interface.svh"
`include "df_fifo_monitor.svh"
`include "df_process_interface.svh"
`include "df_process_monitor.svh"
`include "pp_loop_interface.svh"
`include "pp_loop_monitor.svh"
`include "df_loop_interface.svh"
`include "df_loop_monitor.svh"
`include "upc_loop_interface.svh"
`include "upc_loop_monitor.svh"
`timescale 1ns/1ps

// top module for dataflow related monitors
module dataflow_monitor(
input logic clock,
input logic reset,
input logic finish
);

    df_fifo_intf fifo_intf_1(clock,reset);
    assign fifo_intf_1.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dout_c_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dout_c_U.if_empty_n;
    assign fifo_intf_1.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dout_c_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dout_c_U.if_full_n;
    assign fifo_intf_1.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.dout_blk_n);
    assign fifo_intf_1.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.entry_proc_U0.dout_c_blk_n);
    assign fifo_intf_1.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_1;
    csv_file_dump cstatus_csv_dumper_1;
    df_fifo_monitor fifo_monitor_1;
    df_fifo_intf fifo_intf_2(clock,reset);
    assign fifo_intf_2.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.input_stream_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.input_stream_U.if_empty_n;
    assign fifo_intf_2.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.input_stream_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.input_stream_U.if_full_n;
    assign fifo_intf_2.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.input_stream_blk_n & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.input_stream_blk_n);
    assign fifo_intf_2.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.input_stream_blk_n);
    assign fifo_intf_2.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_2;
    csv_file_dump cstatus_csv_dumper_2;
    df_fifo_monitor fifo_monitor_2;
    df_fifo_intf fifo_intf_3(clock,reset);
    assign fifo_intf_3.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c25_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c25_U.if_empty_n;
    assign fifo_intf_3.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c25_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c25_U.if_full_n;
    assign fifo_intf_3.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.iter_blk_n);
    assign fifo_intf_3.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.iter_c25_blk_n);
    assign fifo_intf_3.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_3;
    csv_file_dump cstatus_csv_dumper_3;
    df_fifo_monitor fifo_monitor_3;
    df_fifo_intf fifo_intf_4(clock,reset);
    assign fifo_intf_4.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_out_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_out_U.if_empty_n;
    assign fifo_intf_4.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_out_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_out_U.if_full_n;
    assign fifo_intf_4.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.reorder_out_blk_n);
    assign fifo_intf_4.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.reorder_out_blk_n);
    assign fifo_intf_4.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_4;
    csv_file_dump cstatus_csv_dumper_4;
    df_fifo_monitor fifo_monitor_4;
    df_fifo_intf fifo_intf_5(clock,reset);
    assign fifo_intf_5.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c24_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c24_U.if_empty_n;
    assign fifo_intf_5.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c24_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c24_U.if_full_n;
    assign fifo_intf_5.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.iter_blk_n);
    assign fifo_intf_5.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.iter_c24_blk_n);
    assign fifo_intf_5.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_5;
    csv_file_dump cstatus_csv_dumper_5;
    df_fifo_monitor fifo_monitor_5;
    df_fifo_intf fifo_intf_6(clock,reset);
    assign fifo_intf_6.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft1_out_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft1_out_U.if_empty_n;
    assign fifo_intf_6.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft1_out_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft1_out_U.if_full_n;
    assign fifo_intf_6.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.fft1_out_blk_n);
    assign fifo_intf_6.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.fft1_out_blk_n);
    assign fifo_intf_6.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_6;
    csv_file_dump cstatus_csv_dumper_6;
    df_fifo_monitor fifo_monitor_6;
    df_fifo_intf fifo_intf_7(clock,reset);
    assign fifo_intf_7.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c23_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c23_U.if_empty_n;
    assign fifo_intf_7.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c23_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c23_U.if_full_n;
    assign fifo_intf_7.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.iter_blk_n);
    assign fifo_intf_7.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.iter_c23_blk_n);
    assign fifo_intf_7.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_7;
    csv_file_dump cstatus_csv_dumper_7;
    df_fifo_monitor fifo_monitor_7;
    df_fifo_intf fifo_intf_8(clock,reset);
    assign fifo_intf_8.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_out0_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_out0_U.if_empty_n;
    assign fifo_intf_8.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_out0_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_out0_U.if_full_n;
    assign fifo_intf_8.fifo_rd_block = 0;
    assign fifo_intf_8.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.twiddle_out0_blk_n);
    assign fifo_intf_8.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_8;
    csv_file_dump cstatus_csv_dumper_8;
    df_fifo_monitor fifo_monitor_8;
    df_fifo_intf fifo_intf_9(clock,reset);
    assign fifo_intf_9.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_out1_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_out1_U.if_empty_n;
    assign fifo_intf_9.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_out1_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_out1_U.if_full_n;
    assign fifo_intf_9.fifo_rd_block = 0;
    assign fifo_intf_9.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.twiddle_out1_blk_n);
    assign fifo_intf_9.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_9;
    csv_file_dump cstatus_csv_dumper_9;
    df_fifo_monitor fifo_monitor_9;
    df_fifo_intf fifo_intf_10(clock,reset);
    assign fifo_intf_10.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c21_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c21_U.if_empty_n;
    assign fifo_intf_10.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c21_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c21_U.if_full_n;
    assign fifo_intf_10.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.entry_proc107_U0.iter_blk_n);
    assign fifo_intf_10.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.iter_c21_blk_n);
    assign fifo_intf_10.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_10;
    csv_file_dump cstatus_csv_dumper_10;
    df_fifo_monitor fifo_monitor_10;
    df_fifo_intf fifo_intf_11(clock,reset);
    assign fifo_intf_11.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c22_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c22_U.if_empty_n;
    assign fifo_intf_11.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c22_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c22_U.if_full_n;
    assign fifo_intf_11.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.entry_proc74_U0.iter_blk_n);
    assign fifo_intf_11.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.iter_c22_blk_n);
    assign fifo_intf_11.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_11;
    csv_file_dump cstatus_csv_dumper_11;
    df_fifo_monitor fifo_monitor_11;
    df_fifo_intf fifo_intf_12(clock,reset);
    assign fifo_intf_12.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft2_out0_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft2_out0_U.if_empty_n;
    assign fifo_intf_12.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft2_out0_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft2_out0_U.if_full_n;
    assign fifo_intf_12.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.fft2_out0_blk_n);
    assign fifo_intf_12.fifo_wr_block = 0;
    assign fifo_intf_12.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_12;
    csv_file_dump cstatus_csv_dumper_12;
    df_fifo_monitor fifo_monitor_12;
    df_fifo_intf fifo_intf_13(clock,reset);
    assign fifo_intf_13.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c20_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c20_U.if_empty_n;
    assign fifo_intf_13.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c20_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c20_U.if_full_n;
    assign fifo_intf_13.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.iter_blk_n);
    assign fifo_intf_13.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.entry_proc74_U0.iter_c20_blk_n);
    assign fifo_intf_13.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_13;
    csv_file_dump cstatus_csv_dumper_13;
    df_fifo_monitor fifo_monitor_13;
    df_fifo_intf fifo_intf_14(clock,reset);
    assign fifo_intf_14.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.p_channel_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.p_channel_U.if_empty_n;
    assign fifo_intf_14.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.p_channel_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.p_channel_U.if_full_n;
    assign fifo_intf_14.fifo_rd_block = 0;
    assign fifo_intf_14.fifo_wr_block = 0;
    assign fifo_intf_14.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_14;
    csv_file_dump cstatus_csv_dumper_14;
    df_fifo_monitor fifo_monitor_14;
    df_fifo_intf fifo_intf_15(clock,reset);
    assign fifo_intf_15.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.empty_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.empty_U.if_empty_n;
    assign fifo_intf_15.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.empty_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.empty_U.if_full_n;
    assign fifo_intf_15.fifo_rd_block = 0;
    assign fifo_intf_15.fifo_wr_block = 0;
    assign fifo_intf_15.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_15;
    csv_file_dump cstatus_csv_dumper_15;
    df_fifo_monitor fifo_monitor_15;
    df_fifo_intf fifo_intf_16(clock,reset);
    assign fifo_intf_16.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_config_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_config_U.if_empty_n;
    assign fifo_intf_16.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_config_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_config_U.if_full_n;
    assign fifo_intf_16.fifo_rd_block = 0;
    assign fifo_intf_16.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc15_U0.fft_config_blk_n);
    assign fifo_intf_16.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_16;
    csv_file_dump cstatus_csv_dumper_16;
    df_fifo_monitor fifo_monitor_16;
    df_fifo_intf fifo_intf_17(clock,reset);
    assign fifo_intf_17.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_status_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_status_U.if_empty_n;
    assign fifo_intf_17.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_status_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_status_U.if_full_n;
    assign fifo_intf_17.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc16_U0.fft_status_blk_n);
    assign fifo_intf_17.fifo_wr_block = 0;
    assign fifo_intf_17.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_17;
    csv_file_dump cstatus_csv_dumper_17;
    df_fifo_monitor fifo_monitor_17;
    df_fifo_intf fifo_intf_18(clock,reset);
    assign fifo_intf_18.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft2_out1_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft2_out1_U.if_empty_n;
    assign fifo_intf_18.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft2_out1_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft2_out1_U.if_full_n;
    assign fifo_intf_18.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.fft2_out1_blk_n);
    assign fifo_intf_18.fifo_wr_block = 0;
    assign fifo_intf_18.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_18;
    csv_file_dump cstatus_csv_dumper_18;
    df_fifo_monitor fifo_monitor_18;
    df_fifo_intf fifo_intf_19(clock,reset);
    assign fifo_intf_19.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.p_channel_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.p_channel_U.if_empty_n;
    assign fifo_intf_19.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.p_channel_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.p_channel_U.if_full_n;
    assign fifo_intf_19.fifo_rd_block = 0;
    assign fifo_intf_19.fifo_wr_block = 0;
    assign fifo_intf_19.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_19;
    csv_file_dump cstatus_csv_dumper_19;
    df_fifo_monitor fifo_monitor_19;
    df_fifo_intf fifo_intf_20(clock,reset);
    assign fifo_intf_20.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.empty_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.empty_U.if_empty_n;
    assign fifo_intf_20.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.empty_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.empty_U.if_full_n;
    assign fifo_intf_20.fifo_rd_block = 0;
    assign fifo_intf_20.fifo_wr_block = 0;
    assign fifo_intf_20.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_20;
    csv_file_dump cstatus_csv_dumper_20;
    df_fifo_monitor fifo_monitor_20;
    df_fifo_intf fifo_intf_21(clock,reset);
    assign fifo_intf_21.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_config_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_config_U.if_empty_n;
    assign fifo_intf_21.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_config_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_config_U.if_full_n;
    assign fifo_intf_21.fifo_rd_block = 0;
    assign fifo_intf_21.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc18_U0.fft_config_blk_n);
    assign fifo_intf_21.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_21;
    csv_file_dump cstatus_csv_dumper_21;
    df_fifo_monitor fifo_monitor_21;
    df_fifo_intf fifo_intf_22(clock,reset);
    assign fifo_intf_22.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_status_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_status_U.if_empty_n;
    assign fifo_intf_22.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_status_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_status_U.if_full_n;
    assign fifo_intf_22.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc19_U0.fft_status_blk_n);
    assign fifo_intf_22.fifo_wr_block = 0;
    assign fifo_intf_22.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_22;
    csv_file_dump cstatus_csv_dumper_22;
    df_fifo_monitor fifo_monitor_22;
    df_fifo_intf fifo_intf_23(clock,reset);
    assign fifo_intf_23.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_out_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_out_U.if_empty_n;
    assign fifo_intf_23.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_out_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_out_U.if_full_n;
    assign fifo_intf_23.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.joiner_out_blk_n);
    assign fifo_intf_23.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.joiner_out_blk_n);
    assign fifo_intf_23.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_23;
    csv_file_dump cstatus_csv_dumper_23;
    df_fifo_monitor fifo_monitor_23;
    df_fifo_intf fifo_intf_24(clock,reset);
    assign fifo_intf_24.rd_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c_U.if_read & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c_U.if_empty_n;
    assign fifo_intf_24.wr_en = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c_U.if_write & AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.iter_c_U.if_full_n;
    assign fifo_intf_24.fifo_rd_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.iter_blk_n);
    assign fifo_intf_24.fifo_wr_block = ~(AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.iter_c_blk_n);
    assign fifo_intf_24.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_24;
    csv_file_dump cstatus_csv_dumper_24;
    df_fifo_monitor fifo_monitor_24;

logic region_0_idle;
logic [31:0] region_0_start_cnt;
logic [31:0] region_0_done_cnt;
assign region_0_idle = (region_0_start_cnt == region_0_done_cnt) && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.ap_start == 1'b0 ;
always @(posedge clock) begin
    if (reset == 1'b1)
        region_0_start_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.ap_start == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.ap_ready == 1'b1)
        region_0_start_cnt <= region_0_start_cnt + 32'h1;
    else;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        region_0_done_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.ap_done == 1'b1)
        region_0_done_cnt <= region_0_done_cnt + 32'h1;
    else;
end

logic region_1_idle;
logic [31:0] region_1_start_cnt;
logic [31:0] region_1_done_cnt;
assign region_1_idle = (region_1_start_cnt == region_1_done_cnt) && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.ap_start == 1'b0 ;
always @(posedge clock) begin
    if (reset == 1'b1)
        region_1_start_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.ap_start == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.ap_ready == 1'b1)
        region_1_start_cnt <= region_1_start_cnt + 32'h1;
    else;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        region_1_done_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.ap_done == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.ap_continue == 1'b1)
        region_1_done_cnt <= region_1_done_cnt + 32'h1;
    else;
end

logic region_2_idle;
logic [31:0] region_2_start_cnt;
logic [31:0] region_2_done_cnt;
assign region_2_idle = (region_2_start_cnt == region_2_done_cnt) && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.ap_start == 1'b0 ;
always @(posedge clock) begin
    if (reset == 1'b1)
        region_2_start_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.ap_start == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.ap_ready == 1'b1)
        region_2_start_cnt <= region_2_start_cnt + 32'h1;
    else;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        region_2_done_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.ap_done == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.ap_continue == 1'b1)
        region_2_done_cnt <= region_2_done_cnt + 32'h1;
    else;
end

logic region_3_idle;
logic [31:0] region_3_start_cnt;
logic [31:0] region_3_done_cnt;
assign region_3_idle = (region_3_start_cnt == region_3_done_cnt) && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.ap_start == 1'b0 ;
always @(posedge clock) begin
    if (reset == 1'b1)
        region_3_start_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.ap_start == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.ap_ready == 1'b1)
        region_3_start_cnt <= region_3_start_cnt + 32'h1;
    else;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        region_3_done_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.ap_done == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.ap_continue == 1'b1)
        region_3_done_cnt <= region_3_done_cnt + 32'h1;
    else;
end

logic region_4_idle;
logic [31:0] region_4_start_cnt;
logic [31:0] region_4_done_cnt;
assign region_4_idle = (region_4_start_cnt == region_4_done_cnt) && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.ap_start == 1'b0 ;
always @(posedge clock) begin
    if (reset == 1'b1)
        region_4_start_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.ap_start == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.ap_ready == 1'b1)
        region_4_start_cnt <= region_4_start_cnt + 32'h1;
    else;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        region_4_done_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.ap_done == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.ap_continue == 1'b1)
        region_4_done_cnt <= region_4_done_cnt + 32'h1;
    else;
end

logic region_5_idle;
assign region_5_idle = 1'b0;

logic region_6_idle;
logic [31:0] region_6_start_cnt;
logic [31:0] region_6_done_cnt;
assign region_6_idle = (region_6_start_cnt == region_6_done_cnt) && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.ap_start == 1'b0 ;
always @(posedge clock) begin
    if (reset == 1'b1)
        region_6_start_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.ap_start == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.ap_ready == 1'b1)
        region_6_start_cnt <= region_6_start_cnt + 32'h1;
    else;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        region_6_done_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.ap_done == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.ap_continue == 1'b1)
        region_6_done_cnt <= region_6_done_cnt + 32'h1;
    else;
end

logic region_7_idle;
logic [31:0] region_7_start_cnt;
logic [31:0] region_7_done_cnt;
assign region_7_idle = (region_7_start_cnt == region_7_done_cnt) && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.ap_start == 1'b0 ;
always @(posedge clock) begin
    if (reset == 1'b1)
        region_7_start_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.ap_start == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.ap_ready == 1'b1)
        region_7_start_cnt <= region_7_start_cnt + 32'h1;
    else;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        region_7_done_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.ap_done == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.ap_continue == 1'b1)
        region_7_done_cnt <= region_7_done_cnt + 32'h1;
    else;
end

logic region_8_idle;
logic [31:0] region_8_start_cnt;
logic [31:0] region_8_done_cnt;
assign region_8_idle = (region_8_start_cnt == region_8_done_cnt) && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.ap_start == 1'b0 ;
always @(posedge clock) begin
    if (reset == 1'b1)
        region_8_start_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.ap_start == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.ap_ready == 1'b1)
        region_8_start_cnt <= region_8_start_cnt + 32'h1;
    else;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        region_8_done_cnt <= 32'h0;
    else if (AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.ap_done == 1'b1 && AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.ap_continue == 1'b1)
        region_8_done_cnt <= region_8_done_cnt + 32'h1;
    else;
end

logic region_9_idle;
assign region_9_idle = 1'b0;


    df_process_intf process_intf_1(clock,reset);
    assign process_intf_1.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.entry_proc_U0.ap_start;
    assign process_intf_1.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.entry_proc_U0.ap_ready;
    assign process_intf_1.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.entry_proc_U0.ap_done;
    assign process_intf_1.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.entry_proc_U0.ap_continue;
    assign process_intf_1.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.entry_proc_U0.real_start;
    assign process_intf_1.pin_stall = 1'b0;
    assign process_intf_1.pout_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.entry_proc_U0.dout_c_blk_n;
    assign process_intf_1.cin_stall = 1'b0;
    assign process_intf_1.cout_stall = 1'b0;
    assign process_intf_1.region_idle = region_1_idle;
    assign process_intf_1.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_1;
    csv_file_dump pstatus_csv_dumper_1;
    df_process_monitor process_monitor_1;
    df_process_intf process_intf_2(clock,reset);
    assign process_intf_2.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.ap_start;
    assign process_intf_2.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.ap_ready;
    assign process_intf_2.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.ap_done;
    assign process_intf_2.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.ap_continue;
    assign process_intf_2.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.real_start;
    assign process_intf_2.pin_stall = 1'b0;
    assign process_intf_2.pout_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.input_stream_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.iter_c25_blk_n;
    assign process_intf_2.cin_stall = 1'b0;
    assign process_intf_2.cout_stall = 1'b0;
    assign process_intf_2.region_idle = region_1_idle;
    assign process_intf_2.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_2;
    csv_file_dump pstatus_csv_dumper_2;
    df_process_monitor process_monitor_2;
    df_process_intf process_intf_3(clock,reset);
    assign process_intf_3.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.ap_start;
    assign process_intf_3.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.ap_ready;
    assign process_intf_3.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.ap_done;
    assign process_intf_3.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.ap_continue;
    assign process_intf_3.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.real_start;
    assign process_intf_3.pin_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.input_stream_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.input_stream_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.iter_blk_n;
    assign process_intf_3.pout_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.reorder_out_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.iter_c24_blk_n;
    assign process_intf_3.cin_stall = 1'b0;
    assign process_intf_3.cout_stall = 1'b0;
    assign process_intf_3.region_idle = region_1_idle;
    assign process_intf_3.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_3;
    csv_file_dump pstatus_csv_dumper_3;
    df_process_monitor process_monitor_3;
    df_process_intf process_intf_4(clock,reset);
    assign process_intf_4.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.ap_start;
    assign process_intf_4.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.ap_ready;
    assign process_intf_4.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.ap_done;
    assign process_intf_4.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.ap_continue;
    assign process_intf_4.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.real_start;
    assign process_intf_4.pin_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.reorder_out_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.iter_blk_n;
    assign process_intf_4.pout_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.fft1_out_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.iter_c23_blk_n;
    assign process_intf_4.cin_stall = 1'b0;
    assign process_intf_4.cout_stall = 1'b0;
    assign process_intf_4.region_idle = region_1_idle;
    assign process_intf_4.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_4;
    csv_file_dump pstatus_csv_dumper_4;
    df_process_monitor process_monitor_4;
    df_process_intf process_intf_5(clock,reset);
    assign process_intf_5.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.ap_start;
    assign process_intf_5.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.ap_ready;
    assign process_intf_5.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.ap_done;
    assign process_intf_5.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.ap_continue;
    assign process_intf_5.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.real_start;
    assign process_intf_5.pin_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.fft1_out_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.iter_blk_n;
    assign process_intf_5.pout_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.twiddle_out0_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.twiddle_out1_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.iter_c21_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.iter_c22_blk_n;
    assign process_intf_5.cin_stall = 1'b0;
    assign process_intf_5.cout_stall = 1'b0;
    assign process_intf_5.region_idle = region_1_idle;
    assign process_intf_5.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_5;
    csv_file_dump pstatus_csv_dumper_5;
    df_process_monitor process_monitor_5;
    df_process_intf process_intf_6(clock,reset);
    assign process_intf_6.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.ap_start;
    assign process_intf_6.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.ap_ready;
    assign process_intf_6.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.ap_done;
    assign process_intf_6.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.ap_continue;
    assign process_intf_6.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.real_start;
    assign process_intf_6.pin_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.entry_proc74_U0.iter_blk_n;
    assign process_intf_6.pout_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.entry_proc74_U0.iter_c20_blk_n;
    assign process_intf_6.cin_stall = 1'b0;
    assign process_intf_6.cout_stall = 1'b0;
    assign process_intf_6.region_idle = region_1_idle;
    assign process_intf_6.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_6;
    csv_file_dump pstatus_csv_dumper_6;
    df_process_monitor process_monitor_6;
    df_process_intf process_intf_7(clock,reset);
    assign process_intf_7.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.entry_proc74_U0.ap_start;
    assign process_intf_7.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.entry_proc74_U0.ap_ready;
    assign process_intf_7.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.entry_proc74_U0.ap_done;
    assign process_intf_7.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.entry_proc74_U0.ap_continue;
    assign process_intf_7.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.entry_proc74_U0.ap_start;
    assign process_intf_7.pin_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.entry_proc74_U0.iter_blk_n;
    assign process_intf_7.pout_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.entry_proc74_U0.iter_c20_blk_n;
    assign process_intf_7.cin_stall = 1'b0;
    assign process_intf_7.cout_stall = 1'b0;
    assign process_intf_7.region_idle = region_2_idle;
    assign process_intf_7.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_7;
    csv_file_dump pstatus_csv_dumper_7;
    df_process_monitor process_monitor_7;
    df_process_intf process_intf_8(clock,reset);
    assign process_intf_8.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.ap_start;
    assign process_intf_8.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.ap_ready;
    assign process_intf_8.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.ap_done;
    assign process_intf_8.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.ap_continue;
    assign process_intf_8.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.ap_start;
    assign process_intf_8.pin_stall = 1'b0;
    assign process_intf_8.pout_stall = 1'b0;
    assign process_intf_8.cin_stall = 1'b0;
    assign process_intf_8.cout_stall = 1'b0;
    assign process_intf_8.region_idle = region_2_idle;
    assign process_intf_8.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_8;
    csv_file_dump pstatus_csv_dumper_8;
    df_process_monitor process_monitor_8;
    df_process_intf process_intf_9(clock,reset);
    assign process_intf_9.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.ap_start;
    assign process_intf_9.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.ap_ready;
    assign process_intf_9.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.ap_done;
    assign process_intf_9.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.ap_continue;
    assign process_intf_9.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.ap_start;
    assign process_intf_9.pin_stall = 1'b0;
    assign process_intf_9.pout_stall = 1'b0;
    assign process_intf_9.cin_stall = 1'b0;
    assign process_intf_9.cout_stall = 1'b0;
    assign process_intf_9.region_idle = region_3_idle;
    assign process_intf_9.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_9;
    csv_file_dump pstatus_csv_dumper_9;
    df_process_monitor process_monitor_9;
    df_process_intf process_intf_10(clock,reset);
    assign process_intf_10.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc_U0.ap_start;
    assign process_intf_10.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc_U0.ap_ready;
    assign process_intf_10.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc_U0.ap_done;
    assign process_intf_10.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc_U0.ap_continue;
    assign process_intf_10.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc_U0.ap_start;
    assign process_intf_10.pin_stall = 1'b0;
    assign process_intf_10.pout_stall = 1'b0;
    assign process_intf_10.cin_stall = 1'b0;
    assign process_intf_10.cout_stall = 1'b0;
    assign process_intf_10.region_idle = region_4_idle;
    assign process_intf_10.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_10;
    csv_file_dump pstatus_csv_dumper_10;
    df_process_monitor process_monitor_10;
    df_process_intf process_intf_11(clock,reset);
    assign process_intf_11.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc15_U0.ap_start;
    assign process_intf_11.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc15_U0.ap_ready;
    assign process_intf_11.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc15_U0.ap_done;
    assign process_intf_11.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc15_U0.ap_continue;
    assign process_intf_11.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc15_U0.real_start;
    assign process_intf_11.pin_stall = 1'b0;
    assign process_intf_11.pout_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc15_U0.fft_config_blk_n;
    assign process_intf_11.cin_stall = 1'b0;
    assign process_intf_11.cout_stall = 1'b0;
    assign process_intf_11.region_idle = region_4_idle;
    assign process_intf_11.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_11;
    csv_file_dump pstatus_csv_dumper_11;
    df_process_monitor process_monitor_11;
    df_process_intf process_intf_12(clock,reset);
    assign process_intf_12.ap_start = 1'b0;
    assign process_intf_12.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_fft_params_2_U0.ap_ready;
    assign process_intf_12.ap_done = 1'b0;
    assign process_intf_12.ap_continue = 1'b0;
    assign process_intf_12.real_start = 1'b0;
    assign process_intf_12.pin_stall = 1'b0;
    assign process_intf_12.pout_stall = 1'b0;
    assign process_intf_12.cin_stall = 1'b0;
    assign process_intf_12.cout_stall = 1'b0;
    assign process_intf_12.region_idle = region_4_idle;
    assign process_intf_12.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_12;
    csv_file_dump pstatus_csv_dumper_12;
    df_process_monitor process_monitor_12;
    df_process_intf process_intf_13(clock,reset);
    assign process_intf_13.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_fft_params_2_U0.fft_syn_fft_params_U0.ap_start;
    assign process_intf_13.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_fft_params_2_U0.fft_syn_fft_params_U0.ap_ready;
    assign process_intf_13.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_fft_params_2_U0.fft_syn_fft_params_U0.ap_done;
    assign process_intf_13.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_fft_params_2_U0.fft_syn_fft_params_U0.ap_continue;
    assign process_intf_13.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_fft_params_2_U0.fft_syn_fft_params_U0.ap_start;
    assign process_intf_13.pin_stall = 1'b0;
    assign process_intf_13.pout_stall = 1'b0;
    assign process_intf_13.cin_stall = 1'b0;
    assign process_intf_13.cout_stall = 1'b0;
    assign process_intf_13.region_idle = region_5_idle;
    assign process_intf_13.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_13;
    csv_file_dump pstatus_csv_dumper_13;
    df_process_monitor process_monitor_13;
    df_process_intf process_intf_14(clock,reset);
    assign process_intf_14.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc16_U0.ap_start;
    assign process_intf_14.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc16_U0.ap_ready;
    assign process_intf_14.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc16_U0.ap_done;
    assign process_intf_14.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc16_U0.ap_continue;
    assign process_intf_14.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc16_U0.ap_start;
    assign process_intf_14.pin_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc16_U0.fft_status_blk_n;
    assign process_intf_14.pout_stall = 1'b0;
    assign process_intf_14.cin_stall = 1'b0;
    assign process_intf_14.cout_stall = 1'b0;
    assign process_intf_14.region_idle = region_4_idle;
    assign process_intf_14.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_14;
    csv_file_dump pstatus_csv_dumper_14;
    df_process_monitor process_monitor_14;
    df_process_intf process_intf_15(clock,reset);
    assign process_intf_15.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.ap_start;
    assign process_intf_15.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.ap_ready;
    assign process_intf_15.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.ap_done;
    assign process_intf_15.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.ap_continue;
    assign process_intf_15.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.ap_start;
    assign process_intf_15.pin_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.entry_proc107_U0.iter_blk_n;
    assign process_intf_15.pout_stall = 1'b0;
    assign process_intf_15.cin_stall = 1'b0;
    assign process_intf_15.cout_stall = 1'b0;
    assign process_intf_15.region_idle = region_1_idle;
    assign process_intf_15.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_15;
    csv_file_dump pstatus_csv_dumper_15;
    df_process_monitor process_monitor_15;
    df_process_intf process_intf_16(clock,reset);
    assign process_intf_16.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.entry_proc107_U0.ap_start;
    assign process_intf_16.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.entry_proc107_U0.ap_ready;
    assign process_intf_16.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.entry_proc107_U0.ap_done;
    assign process_intf_16.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.entry_proc107_U0.ap_continue;
    assign process_intf_16.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.entry_proc107_U0.ap_start;
    assign process_intf_16.pin_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.entry_proc107_U0.iter_blk_n;
    assign process_intf_16.pout_stall = 1'b0;
    assign process_intf_16.cin_stall = 1'b0;
    assign process_intf_16.cout_stall = 1'b0;
    assign process_intf_16.region_idle = region_6_idle;
    assign process_intf_16.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_16;
    csv_file_dump pstatus_csv_dumper_16;
    df_process_monitor process_monitor_16;
    df_process_intf process_intf_17(clock,reset);
    assign process_intf_17.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.ap_start;
    assign process_intf_17.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.ap_ready;
    assign process_intf_17.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.ap_done;
    assign process_intf_17.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.ap_continue;
    assign process_intf_17.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.ap_start;
    assign process_intf_17.pin_stall = 1'b0;
    assign process_intf_17.pout_stall = 1'b0;
    assign process_intf_17.cin_stall = 1'b0;
    assign process_intf_17.cout_stall = 1'b0;
    assign process_intf_17.region_idle = region_6_idle;
    assign process_intf_17.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_17;
    csv_file_dump pstatus_csv_dumper_17;
    df_process_monitor process_monitor_17;
    df_process_intf process_intf_18(clock,reset);
    assign process_intf_18.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.ap_start;
    assign process_intf_18.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.ap_ready;
    assign process_intf_18.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.ap_done;
    assign process_intf_18.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.ap_continue;
    assign process_intf_18.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.ap_start;
    assign process_intf_18.pin_stall = 1'b0;
    assign process_intf_18.pout_stall = 1'b0;
    assign process_intf_18.cin_stall = 1'b0;
    assign process_intf_18.cout_stall = 1'b0;
    assign process_intf_18.region_idle = region_7_idle;
    assign process_intf_18.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_18;
    csv_file_dump pstatus_csv_dumper_18;
    df_process_monitor process_monitor_18;
    df_process_intf process_intf_19(clock,reset);
    assign process_intf_19.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc17_U0.ap_start;
    assign process_intf_19.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc17_U0.ap_ready;
    assign process_intf_19.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc17_U0.ap_done;
    assign process_intf_19.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc17_U0.ap_continue;
    assign process_intf_19.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc17_U0.ap_start;
    assign process_intf_19.pin_stall = 1'b0;
    assign process_intf_19.pout_stall = 1'b0;
    assign process_intf_19.cin_stall = 1'b0;
    assign process_intf_19.cout_stall = 1'b0;
    assign process_intf_19.region_idle = region_8_idle;
    assign process_intf_19.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_19;
    csv_file_dump pstatus_csv_dumper_19;
    df_process_monitor process_monitor_19;
    df_process_intf process_intf_20(clock,reset);
    assign process_intf_20.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc18_U0.ap_start;
    assign process_intf_20.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc18_U0.ap_ready;
    assign process_intf_20.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc18_U0.ap_done;
    assign process_intf_20.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc18_U0.ap_continue;
    assign process_intf_20.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc18_U0.real_start;
    assign process_intf_20.pin_stall = 1'b0;
    assign process_intf_20.pout_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc18_U0.fft_config_blk_n;
    assign process_intf_20.cin_stall = 1'b0;
    assign process_intf_20.cout_stall = 1'b0;
    assign process_intf_20.region_idle = region_8_idle;
    assign process_intf_20.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_20;
    csv_file_dump pstatus_csv_dumper_20;
    df_process_monitor process_monitor_20;
    df_process_intf process_intf_21(clock,reset);
    assign process_intf_21.ap_start = 1'b0;
    assign process_intf_21.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_fft_params_U0.ap_ready;
    assign process_intf_21.ap_done = 1'b0;
    assign process_intf_21.ap_continue = 1'b0;
    assign process_intf_21.real_start = 1'b0;
    assign process_intf_21.pin_stall = 1'b0;
    assign process_intf_21.pout_stall = 1'b0;
    assign process_intf_21.cin_stall = 1'b0;
    assign process_intf_21.cout_stall = 1'b0;
    assign process_intf_21.region_idle = region_8_idle;
    assign process_intf_21.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_21;
    csv_file_dump pstatus_csv_dumper_21;
    df_process_monitor process_monitor_21;
    df_process_intf process_intf_22(clock,reset);
    assign process_intf_22.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_fft_params_U0.fft_syn_fft_params_3_U0.ap_start;
    assign process_intf_22.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_fft_params_U0.fft_syn_fft_params_3_U0.ap_ready;
    assign process_intf_22.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_fft_params_U0.fft_syn_fft_params_3_U0.ap_done;
    assign process_intf_22.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_fft_params_U0.fft_syn_fft_params_3_U0.ap_continue;
    assign process_intf_22.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_fft_params_U0.fft_syn_fft_params_3_U0.ap_start;
    assign process_intf_22.pin_stall = 1'b0;
    assign process_intf_22.pout_stall = 1'b0;
    assign process_intf_22.cin_stall = 1'b0;
    assign process_intf_22.cout_stall = 1'b0;
    assign process_intf_22.region_idle = region_9_idle;
    assign process_intf_22.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_22;
    csv_file_dump pstatus_csv_dumper_22;
    df_process_monitor process_monitor_22;
    df_process_intf process_intf_23(clock,reset);
    assign process_intf_23.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc19_U0.ap_start;
    assign process_intf_23.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc19_U0.ap_ready;
    assign process_intf_23.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc19_U0.ap_done;
    assign process_intf_23.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc19_U0.ap_continue;
    assign process_intf_23.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc19_U0.ap_start;
    assign process_intf_23.pin_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc19_U0.fft_status_blk_n;
    assign process_intf_23.pout_stall = 1'b0;
    assign process_intf_23.cin_stall = 1'b0;
    assign process_intf_23.cout_stall = 1'b0;
    assign process_intf_23.region_idle = region_8_idle;
    assign process_intf_23.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_23;
    csv_file_dump pstatus_csv_dumper_23;
    df_process_monitor process_monitor_23;
    df_process_intf process_intf_24(clock,reset);
    assign process_intf_24.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.ap_start;
    assign process_intf_24.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.ap_ready;
    assign process_intf_24.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.ap_done;
    assign process_intf_24.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.ap_continue;
    assign process_intf_24.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.ap_start;
    assign process_intf_24.pin_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.fft2_out0_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.fft2_out1_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.iter_blk_n;
    assign process_intf_24.pout_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.joiner_out_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.iter_c_blk_n;
    assign process_intf_24.cin_stall = 1'b0;
    assign process_intf_24.cout_stall = 1'b0;
    assign process_intf_24.region_idle = region_1_idle;
    assign process_intf_24.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_24;
    csv_file_dump pstatus_csv_dumper_24;
    df_process_monitor process_monitor_24;
    df_process_intf process_intf_25(clock,reset);
    assign process_intf_25.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.ap_start;
    assign process_intf_25.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.ap_ready;
    assign process_intf_25.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.ap_done;
    assign process_intf_25.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.ap_continue;
    assign process_intf_25.real_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.ap_start;
    assign process_intf_25.pin_stall = 1'b0 | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.joiner_out_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.dout_blk_n | ~AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.iter_blk_n;
    assign process_intf_25.pout_stall = 1'b0;
    assign process_intf_25.cin_stall = 1'b0;
    assign process_intf_25.cout_stall = 1'b0;
    assign process_intf_25.region_idle = region_1_idle;
    assign process_intf_25.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_25;
    csv_file_dump pstatus_csv_dumper_25;
    df_process_monitor process_monitor_25;

    nodf_module_intf module_intf_1(clock,reset);
    assign module_intf_1.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.ap_start;
    assign module_intf_1.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.ap_ready;
    assign module_intf_1.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.ap_done;
    assign module_intf_1.ap_continue = 1'b1;
    assign module_intf_1.finish = finish;
    csv_file_dump mstatus_csv_dumper_1;
    nodf_module_monitor module_monitor_1;
    nodf_module_intf module_intf_2(clock,reset);
    assign module_intf_2.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.ap_start;
    assign module_intf_2.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.ap_ready;
    assign module_intf_2.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.ap_done;
    assign module_intf_2.ap_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.ap_continue;
    assign module_intf_2.finish = finish;
    csv_file_dump mstatus_csv_dumper_2;
    nodf_module_monitor module_monitor_2;
    nodf_module_intf module_intf_3(clock,reset);
    assign module_intf_3.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_start;
    assign module_intf_3.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_ready;
    assign module_intf_3.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_done;
    assign module_intf_3.ap_continue = 1'b1;
    assign module_intf_3.finish = finish;
    csv_file_dump mstatus_csv_dumper_3;
    nodf_module_monitor module_monitor_3;
    nodf_module_intf module_intf_4(clock,reset);
    assign module_intf_4.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_start;
    assign module_intf_4.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_ready;
    assign module_intf_4.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_done;
    assign module_intf_4.ap_continue = 1'b1;
    assign module_intf_4.finish = finish;
    csv_file_dump mstatus_csv_dumper_4;
    nodf_module_monitor module_monitor_4;
    nodf_module_intf module_intf_5(clock,reset);
    assign module_intf_5.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_start;
    assign module_intf_5.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_ready;
    assign module_intf_5.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_done;
    assign module_intf_5.ap_continue = 1'b1;
    assign module_intf_5.finish = finish;
    csv_file_dump mstatus_csv_dumper_5;
    nodf_module_monitor module_monitor_5;
    nodf_module_intf module_intf_6(clock,reset);
    assign module_intf_6.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_start;
    assign module_intf_6.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_ready;
    assign module_intf_6.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_done;
    assign module_intf_6.ap_continue = 1'b1;
    assign module_intf_6.finish = finish;
    csv_file_dump mstatus_csv_dumper_6;
    nodf_module_monitor module_monitor_6;
    nodf_module_intf module_intf_7(clock,reset);
    assign module_intf_7.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.grp_get_phase_factor_fu_106.ap_start;
    assign module_intf_7.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.grp_get_phase_factor_fu_106.ap_ready;
    assign module_intf_7.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.grp_get_phase_factor_fu_106.ap_done;
    assign module_intf_7.ap_continue = 1'b1;
    assign module_intf_7.finish = finish;
    csv_file_dump mstatus_csv_dumper_7;
    nodf_module_monitor module_monitor_7;
    nodf_module_intf module_intf_8(clock,reset);
    assign module_intf_8.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_start;
    assign module_intf_8.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_ready;
    assign module_intf_8.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_done;
    assign module_intf_8.ap_continue = 1'b1;
    assign module_intf_8.finish = finish;
    csv_file_dump mstatus_csv_dumper_8;
    nodf_module_monitor module_monitor_8;
    nodf_module_intf module_intf_9(clock,reset);
    assign module_intf_9.ap_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_start;
    assign module_intf_9.ap_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_ready;
    assign module_intf_9.ap_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_done;
    assign module_intf_9.ap_continue = 1'b1;
    assign module_intf_9.finish = finish;
    csv_file_dump mstatus_csv_dumper_9;
    nodf_module_monitor module_monitor_9;

    pp_loop_intf #(6) pp_loop_intf_1(clock,reset);
    assign pp_loop_intf_1.pre_loop_state0 = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.ap_ST_fsm_state4;
    assign pp_loop_intf_1.pre_states_valid = 1'b1;
    assign pp_loop_intf_1.post_loop_state0 = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.ap_ST_fsm_state8;
    assign pp_loop_intf_1.post_states_valid = 1'b1;
    assign pp_loop_intf_1.iter_start_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.ap_ST_fsm_pp0_stage0;
    assign pp_loop_intf_1.iter_start_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.ap_enable_reg_pp0_iter0;
    assign pp_loop_intf_1.iter_start_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.ap_block_pp0_stage0_subdone;
    assign pp_loop_intf_1.iter_end_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.ap_ST_fsm_pp0_stage0;
    assign pp_loop_intf_1.iter_end_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.ap_enable_reg_pp0_iter2;
    assign pp_loop_intf_1.iter_end_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.ap_block_pp0_stage0_subdone;
    assign pp_loop_intf_1.loop_quit_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.ap_ST_fsm_pp0_stage0;
    assign pp_loop_intf_1.quit_at_end = 1'b1;
    assign pp_loop_intf_1.cur_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.ap_CS_fsm;
    assign pp_loop_intf_1.finish = finish;
    csv_file_dump pp_loop_csv_dumper_1;
    pp_loop_monitor #(6) pp_loop_monitor_1;
    df_loop_intf df_loop_intf_1(clock,reset);
    assign df_loop_intf_1.body_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.ap_start;
    assign df_loop_intf_1.body_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.ap_ready;
    assign df_loop_intf_1.body_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.ap_done;
    assign df_loop_intf_1.body_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.ap_continue;
    assign df_loop_intf_1.loop_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.ap_start;
    assign df_loop_intf_1.loop_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.ap_ready;
    assign df_loop_intf_1.loop_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.ap_done;
    assign df_loop_intf_1.loop_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.ap_continue;
    csv_file_dump df_loop_csv_dumper_1;
    df_loop_monitor df_loop_monitor_1;
    df_loop_intf df_loop_intf_2(clock,reset);
    assign df_loop_intf_2.body_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.ap_start;
    assign df_loop_intf_2.body_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.ap_ready;
    assign df_loop_intf_2.body_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.ap_done;
    assign df_loop_intf_2.body_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.ap_continue;
    assign df_loop_intf_2.loop_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.ap_start;
    assign df_loop_intf_2.loop_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.ap_ready;
    assign df_loop_intf_2.loop_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.ap_done;
    assign df_loop_intf_2.loop_continue = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.ap_continue;
    csv_file_dump df_loop_csv_dumper_2;
    df_loop_monitor df_loop_monitor_2;
    upc_loop_intf#(1) upc_loop_intf_1(clock,reset);
    assign upc_loop_intf_1.cur_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_CS_fsm;
    assign upc_loop_intf_1.iter_start_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.iter_end_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.quit_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.iter_start_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.iter_end_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.quit_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.iter_start_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_1.iter_end_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_1.quit_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_1.loop_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_start;
    assign upc_loop_intf_1.loop_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_ready;
    assign upc_loop_intf_1.loop_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.ap_done_int;
    assign upc_loop_intf_1.loop_continue = 1'b1;
    assign upc_loop_intf_1.quit_at_end = 1'b1;
    assign upc_loop_intf_1.finish = finish;
    csv_file_dump upc_loop_csv_dumper_1;
    upc_loop_monitor #(1) upc_loop_monitor_1;
    upc_loop_intf#(1) upc_loop_intf_2(clock,reset);
    assign upc_loop_intf_2.cur_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_CS_fsm;
    assign upc_loop_intf_2.iter_start_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_2.iter_end_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_2.quit_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_2.iter_start_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_2.iter_end_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_2.quit_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_2.iter_start_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_2.iter_end_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_enable_reg_pp0_iter1;
    assign upc_loop_intf_2.quit_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_enable_reg_pp0_iter1;
    assign upc_loop_intf_2.loop_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_start;
    assign upc_loop_intf_2.loop_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_ready;
    assign upc_loop_intf_2.loop_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.ap_done_int;
    assign upc_loop_intf_2.loop_continue = 1'b1;
    assign upc_loop_intf_2.quit_at_end = 1'b1;
    assign upc_loop_intf_2.finish = finish;
    csv_file_dump upc_loop_csv_dumper_2;
    upc_loop_monitor #(1) upc_loop_monitor_2;
    upc_loop_intf#(1) upc_loop_intf_3(clock,reset);
    assign upc_loop_intf_3.cur_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_CS_fsm;
    assign upc_loop_intf_3.iter_start_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_3.iter_end_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_3.quit_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_3.iter_start_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_3.iter_end_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_3.quit_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_3.iter_start_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_3.iter_end_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_3.quit_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_3.loop_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_start;
    assign upc_loop_intf_3.loop_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_ready;
    assign upc_loop_intf_3.loop_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.ap_done_int;
    assign upc_loop_intf_3.loop_continue = 1'b1;
    assign upc_loop_intf_3.quit_at_end = 1'b1;
    assign upc_loop_intf_3.finish = finish;
    csv_file_dump upc_loop_csv_dumper_3;
    upc_loop_monitor #(1) upc_loop_monitor_3;
    upc_loop_intf#(1) upc_loop_intf_4(clock,reset);
    assign upc_loop_intf_4.cur_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_CS_fsm;
    assign upc_loop_intf_4.iter_start_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_4.iter_end_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_4.quit_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_4.iter_start_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_4.iter_end_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_4.quit_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_4.iter_start_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_4.iter_end_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_enable_reg_pp0_iter6;
    assign upc_loop_intf_4.quit_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_enable_reg_pp0_iter6;
    assign upc_loop_intf_4.loop_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_start;
    assign upc_loop_intf_4.loop_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_ready;
    assign upc_loop_intf_4.loop_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.ap_done_int;
    assign upc_loop_intf_4.loop_continue = 1'b1;
    assign upc_loop_intf_4.quit_at_end = 1'b1;
    assign upc_loop_intf_4.finish = finish;
    csv_file_dump upc_loop_csv_dumper_4;
    upc_loop_monitor #(1) upc_loop_monitor_4;
    upc_loop_intf#(1) upc_loop_intf_5(clock,reset);
    assign upc_loop_intf_5.cur_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_CS_fsm;
    assign upc_loop_intf_5.iter_start_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_5.iter_end_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_5.quit_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_5.iter_start_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_5.iter_end_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_5.quit_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_5.iter_start_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_5.iter_end_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_5.quit_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_5.loop_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_start;
    assign upc_loop_intf_5.loop_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_ready;
    assign upc_loop_intf_5.loop_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.ap_done_int;
    assign upc_loop_intf_5.loop_continue = 1'b1;
    assign upc_loop_intf_5.quit_at_end = 1'b1;
    assign upc_loop_intf_5.finish = finish;
    csv_file_dump upc_loop_csv_dumper_5;
    upc_loop_monitor #(1) upc_loop_monitor_5;
    upc_loop_intf#(1) upc_loop_intf_6(clock,reset);
    assign upc_loop_intf_6.cur_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_CS_fsm;
    assign upc_loop_intf_6.iter_start_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_6.iter_end_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_6.quit_state = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_6.iter_start_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_6.iter_end_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_6.quit_block = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_6.iter_start_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_6.iter_end_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_6.quit_enable = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_enable_reg_pp0_iter2;
    assign upc_loop_intf_6.loop_start = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_start;
    assign upc_loop_intf_6.loop_ready = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_ready;
    assign upc_loop_intf_6.loop_done = AESL_inst_fft_4k_ssr2_i16_c16_t16_top.grp_fft_core_fu_78.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.ap_done_int;
    assign upc_loop_intf_6.loop_continue = 1'b1;
    assign upc_loop_intf_6.quit_at_end = 1'b1;
    assign upc_loop_intf_6.finish = finish;
    csv_file_dump upc_loop_csv_dumper_6;
    upc_loop_monitor #(1) upc_loop_monitor_6;

    sample_manager sample_manager_inst;

initial begin
    sample_manager_inst = new;

    fifo_csv_dumper_1 = new("./depth1.csv");
    cstatus_csv_dumper_1 = new("./chan_status1.csv");
    fifo_monitor_1 = new(fifo_csv_dumper_1,fifo_intf_1,cstatus_csv_dumper_1);
    fifo_csv_dumper_2 = new("./depth2.csv");
    cstatus_csv_dumper_2 = new("./chan_status2.csv");
    fifo_monitor_2 = new(fifo_csv_dumper_2,fifo_intf_2,cstatus_csv_dumper_2);
    fifo_csv_dumper_3 = new("./depth3.csv");
    cstatus_csv_dumper_3 = new("./chan_status3.csv");
    fifo_monitor_3 = new(fifo_csv_dumper_3,fifo_intf_3,cstatus_csv_dumper_3);
    fifo_csv_dumper_4 = new("./depth4.csv");
    cstatus_csv_dumper_4 = new("./chan_status4.csv");
    fifo_monitor_4 = new(fifo_csv_dumper_4,fifo_intf_4,cstatus_csv_dumper_4);
    fifo_csv_dumper_5 = new("./depth5.csv");
    cstatus_csv_dumper_5 = new("./chan_status5.csv");
    fifo_monitor_5 = new(fifo_csv_dumper_5,fifo_intf_5,cstatus_csv_dumper_5);
    fifo_csv_dumper_6 = new("./depth6.csv");
    cstatus_csv_dumper_6 = new("./chan_status6.csv");
    fifo_monitor_6 = new(fifo_csv_dumper_6,fifo_intf_6,cstatus_csv_dumper_6);
    fifo_csv_dumper_7 = new("./depth7.csv");
    cstatus_csv_dumper_7 = new("./chan_status7.csv");
    fifo_monitor_7 = new(fifo_csv_dumper_7,fifo_intf_7,cstatus_csv_dumper_7);
    fifo_csv_dumper_8 = new("./depth8.csv");
    cstatus_csv_dumper_8 = new("./chan_status8.csv");
    fifo_monitor_8 = new(fifo_csv_dumper_8,fifo_intf_8,cstatus_csv_dumper_8);
    fifo_csv_dumper_9 = new("./depth9.csv");
    cstatus_csv_dumper_9 = new("./chan_status9.csv");
    fifo_monitor_9 = new(fifo_csv_dumper_9,fifo_intf_9,cstatus_csv_dumper_9);
    fifo_csv_dumper_10 = new("./depth10.csv");
    cstatus_csv_dumper_10 = new("./chan_status10.csv");
    fifo_monitor_10 = new(fifo_csv_dumper_10,fifo_intf_10,cstatus_csv_dumper_10);
    fifo_csv_dumper_11 = new("./depth11.csv");
    cstatus_csv_dumper_11 = new("./chan_status11.csv");
    fifo_monitor_11 = new(fifo_csv_dumper_11,fifo_intf_11,cstatus_csv_dumper_11);
    fifo_csv_dumper_12 = new("./depth12.csv");
    cstatus_csv_dumper_12 = new("./chan_status12.csv");
    fifo_monitor_12 = new(fifo_csv_dumper_12,fifo_intf_12,cstatus_csv_dumper_12);
    fifo_csv_dumper_13 = new("./depth13.csv");
    cstatus_csv_dumper_13 = new("./chan_status13.csv");
    fifo_monitor_13 = new(fifo_csv_dumper_13,fifo_intf_13,cstatus_csv_dumper_13);
    fifo_csv_dumper_14 = new("./depth14.csv");
    cstatus_csv_dumper_14 = new("./chan_status14.csv");
    fifo_monitor_14 = new(fifo_csv_dumper_14,fifo_intf_14,cstatus_csv_dumper_14);
    fifo_csv_dumper_15 = new("./depth15.csv");
    cstatus_csv_dumper_15 = new("./chan_status15.csv");
    fifo_monitor_15 = new(fifo_csv_dumper_15,fifo_intf_15,cstatus_csv_dumper_15);
    fifo_csv_dumper_16 = new("./depth16.csv");
    cstatus_csv_dumper_16 = new("./chan_status16.csv");
    fifo_monitor_16 = new(fifo_csv_dumper_16,fifo_intf_16,cstatus_csv_dumper_16);
    fifo_csv_dumper_17 = new("./depth17.csv");
    cstatus_csv_dumper_17 = new("./chan_status17.csv");
    fifo_monitor_17 = new(fifo_csv_dumper_17,fifo_intf_17,cstatus_csv_dumper_17);
    fifo_csv_dumper_18 = new("./depth18.csv");
    cstatus_csv_dumper_18 = new("./chan_status18.csv");
    fifo_monitor_18 = new(fifo_csv_dumper_18,fifo_intf_18,cstatus_csv_dumper_18);
    fifo_csv_dumper_19 = new("./depth19.csv");
    cstatus_csv_dumper_19 = new("./chan_status19.csv");
    fifo_monitor_19 = new(fifo_csv_dumper_19,fifo_intf_19,cstatus_csv_dumper_19);
    fifo_csv_dumper_20 = new("./depth20.csv");
    cstatus_csv_dumper_20 = new("./chan_status20.csv");
    fifo_monitor_20 = new(fifo_csv_dumper_20,fifo_intf_20,cstatus_csv_dumper_20);
    fifo_csv_dumper_21 = new("./depth21.csv");
    cstatus_csv_dumper_21 = new("./chan_status21.csv");
    fifo_monitor_21 = new(fifo_csv_dumper_21,fifo_intf_21,cstatus_csv_dumper_21);
    fifo_csv_dumper_22 = new("./depth22.csv");
    cstatus_csv_dumper_22 = new("./chan_status22.csv");
    fifo_monitor_22 = new(fifo_csv_dumper_22,fifo_intf_22,cstatus_csv_dumper_22);
    fifo_csv_dumper_23 = new("./depth23.csv");
    cstatus_csv_dumper_23 = new("./chan_status23.csv");
    fifo_monitor_23 = new(fifo_csv_dumper_23,fifo_intf_23,cstatus_csv_dumper_23);
    fifo_csv_dumper_24 = new("./depth24.csv");
    cstatus_csv_dumper_24 = new("./chan_status24.csv");
    fifo_monitor_24 = new(fifo_csv_dumper_24,fifo_intf_24,cstatus_csv_dumper_24);

    pstall_csv_dumper_1 = new("./stalling1.csv");
    pstatus_csv_dumper_1 = new("./status1.csv");
    process_monitor_1 = new(pstall_csv_dumper_1,process_intf_1,pstatus_csv_dumper_1);
    pstall_csv_dumper_2 = new("./stalling2.csv");
    pstatus_csv_dumper_2 = new("./status2.csv");
    process_monitor_2 = new(pstall_csv_dumper_2,process_intf_2,pstatus_csv_dumper_2);
    pstall_csv_dumper_3 = new("./stalling3.csv");
    pstatus_csv_dumper_3 = new("./status3.csv");
    process_monitor_3 = new(pstall_csv_dumper_3,process_intf_3,pstatus_csv_dumper_3);
    pstall_csv_dumper_4 = new("./stalling4.csv");
    pstatus_csv_dumper_4 = new("./status4.csv");
    process_monitor_4 = new(pstall_csv_dumper_4,process_intf_4,pstatus_csv_dumper_4);
    pstall_csv_dumper_5 = new("./stalling5.csv");
    pstatus_csv_dumper_5 = new("./status5.csv");
    process_monitor_5 = new(pstall_csv_dumper_5,process_intf_5,pstatus_csv_dumper_5);
    pstall_csv_dumper_6 = new("./stalling6.csv");
    pstatus_csv_dumper_6 = new("./status6.csv");
    process_monitor_6 = new(pstall_csv_dumper_6,process_intf_6,pstatus_csv_dumper_6);
    pstall_csv_dumper_7 = new("./stalling7.csv");
    pstatus_csv_dumper_7 = new("./status7.csv");
    process_monitor_7 = new(pstall_csv_dumper_7,process_intf_7,pstatus_csv_dumper_7);
    pstall_csv_dumper_8 = new("./stalling8.csv");
    pstatus_csv_dumper_8 = new("./status8.csv");
    process_monitor_8 = new(pstall_csv_dumper_8,process_intf_8,pstatus_csv_dumper_8);
    pstall_csv_dumper_9 = new("./stalling9.csv");
    pstatus_csv_dumper_9 = new("./status9.csv");
    process_monitor_9 = new(pstall_csv_dumper_9,process_intf_9,pstatus_csv_dumper_9);
    pstall_csv_dumper_10 = new("./stalling10.csv");
    pstatus_csv_dumper_10 = new("./status10.csv");
    process_monitor_10 = new(pstall_csv_dumper_10,process_intf_10,pstatus_csv_dumper_10);
    pstall_csv_dumper_11 = new("./stalling11.csv");
    pstatus_csv_dumper_11 = new("./status11.csv");
    process_monitor_11 = new(pstall_csv_dumper_11,process_intf_11,pstatus_csv_dumper_11);
    pstall_csv_dumper_12 = new("./stalling12.csv");
    pstatus_csv_dumper_12 = new("./status12.csv");
    process_monitor_12 = new(pstall_csv_dumper_12,process_intf_12,pstatus_csv_dumper_12);
    pstall_csv_dumper_13 = new("./stalling13.csv");
    pstatus_csv_dumper_13 = new("./status13.csv");
    process_monitor_13 = new(pstall_csv_dumper_13,process_intf_13,pstatus_csv_dumper_13);
    pstall_csv_dumper_14 = new("./stalling14.csv");
    pstatus_csv_dumper_14 = new("./status14.csv");
    process_monitor_14 = new(pstall_csv_dumper_14,process_intf_14,pstatus_csv_dumper_14);
    pstall_csv_dumper_15 = new("./stalling15.csv");
    pstatus_csv_dumper_15 = new("./status15.csv");
    process_monitor_15 = new(pstall_csv_dumper_15,process_intf_15,pstatus_csv_dumper_15);
    pstall_csv_dumper_16 = new("./stalling16.csv");
    pstatus_csv_dumper_16 = new("./status16.csv");
    process_monitor_16 = new(pstall_csv_dumper_16,process_intf_16,pstatus_csv_dumper_16);
    pstall_csv_dumper_17 = new("./stalling17.csv");
    pstatus_csv_dumper_17 = new("./status17.csv");
    process_monitor_17 = new(pstall_csv_dumper_17,process_intf_17,pstatus_csv_dumper_17);
    pstall_csv_dumper_18 = new("./stalling18.csv");
    pstatus_csv_dumper_18 = new("./status18.csv");
    process_monitor_18 = new(pstall_csv_dumper_18,process_intf_18,pstatus_csv_dumper_18);
    pstall_csv_dumper_19 = new("./stalling19.csv");
    pstatus_csv_dumper_19 = new("./status19.csv");
    process_monitor_19 = new(pstall_csv_dumper_19,process_intf_19,pstatus_csv_dumper_19);
    pstall_csv_dumper_20 = new("./stalling20.csv");
    pstatus_csv_dumper_20 = new("./status20.csv");
    process_monitor_20 = new(pstall_csv_dumper_20,process_intf_20,pstatus_csv_dumper_20);
    pstall_csv_dumper_21 = new("./stalling21.csv");
    pstatus_csv_dumper_21 = new("./status21.csv");
    process_monitor_21 = new(pstall_csv_dumper_21,process_intf_21,pstatus_csv_dumper_21);
    pstall_csv_dumper_22 = new("./stalling22.csv");
    pstatus_csv_dumper_22 = new("./status22.csv");
    process_monitor_22 = new(pstall_csv_dumper_22,process_intf_22,pstatus_csv_dumper_22);
    pstall_csv_dumper_23 = new("./stalling23.csv");
    pstatus_csv_dumper_23 = new("./status23.csv");
    process_monitor_23 = new(pstall_csv_dumper_23,process_intf_23,pstatus_csv_dumper_23);
    pstall_csv_dumper_24 = new("./stalling24.csv");
    pstatus_csv_dumper_24 = new("./status24.csv");
    process_monitor_24 = new(pstall_csv_dumper_24,process_intf_24,pstatus_csv_dumper_24);
    pstall_csv_dumper_25 = new("./stalling25.csv");
    pstatus_csv_dumper_25 = new("./status25.csv");
    process_monitor_25 = new(pstall_csv_dumper_25,process_intf_25,pstatus_csv_dumper_25);

    mstatus_csv_dumper_1 = new("./module_status1.csv");
    module_monitor_1 = new(module_intf_1,mstatus_csv_dumper_1);
    mstatus_csv_dumper_2 = new("./module_status2.csv");
    module_monitor_2 = new(module_intf_2,mstatus_csv_dumper_2);
    mstatus_csv_dumper_3 = new("./module_status3.csv");
    module_monitor_3 = new(module_intf_3,mstatus_csv_dumper_3);
    mstatus_csv_dumper_4 = new("./module_status4.csv");
    module_monitor_4 = new(module_intf_4,mstatus_csv_dumper_4);
    mstatus_csv_dumper_5 = new("./module_status5.csv");
    module_monitor_5 = new(module_intf_5,mstatus_csv_dumper_5);
    mstatus_csv_dumper_6 = new("./module_status6.csv");
    module_monitor_6 = new(module_intf_6,mstatus_csv_dumper_6);
    mstatus_csv_dumper_7 = new("./module_status7.csv");
    module_monitor_7 = new(module_intf_7,mstatus_csv_dumper_7);
    mstatus_csv_dumper_8 = new("./module_status8.csv");
    module_monitor_8 = new(module_intf_8,mstatus_csv_dumper_8);
    mstatus_csv_dumper_9 = new("./module_status9.csv");
    module_monitor_9 = new(module_intf_9,mstatus_csv_dumper_9);

    pp_loop_csv_dumper_1 = new("./pp_loop_status1.csv");
    pp_loop_monitor_1 = new(pp_loop_intf_1,pp_loop_csv_dumper_1);
    df_loop_csv_dumper_1 = new("./df_loop_status1.csv");
    df_loop_monitor_1 = new(df_loop_intf_1,df_loop_csv_dumper_1);
    df_loop_csv_dumper_2 = new("./df_loop_status2.csv");
    df_loop_monitor_2 = new(df_loop_intf_2,df_loop_csv_dumper_2);



    upc_loop_csv_dumper_1 = new("./upc_loop_status1.csv");
    upc_loop_monitor_1 = new(upc_loop_intf_1,upc_loop_csv_dumper_1);
    upc_loop_csv_dumper_2 = new("./upc_loop_status2.csv");
    upc_loop_monitor_2 = new(upc_loop_intf_2,upc_loop_csv_dumper_2);
    upc_loop_csv_dumper_3 = new("./upc_loop_status3.csv");
    upc_loop_monitor_3 = new(upc_loop_intf_3,upc_loop_csv_dumper_3);
    upc_loop_csv_dumper_4 = new("./upc_loop_status4.csv");
    upc_loop_monitor_4 = new(upc_loop_intf_4,upc_loop_csv_dumper_4);
    upc_loop_csv_dumper_5 = new("./upc_loop_status5.csv");
    upc_loop_monitor_5 = new(upc_loop_intf_5,upc_loop_csv_dumper_5);
    upc_loop_csv_dumper_6 = new("./upc_loop_status6.csv");
    upc_loop_monitor_6 = new(upc_loop_intf_6,upc_loop_csv_dumper_6);

    sample_manager_inst.add_one_monitor(fifo_monitor_1);
    sample_manager_inst.add_one_monitor(fifo_monitor_2);
    sample_manager_inst.add_one_monitor(fifo_monitor_3);
    sample_manager_inst.add_one_monitor(fifo_monitor_4);
    sample_manager_inst.add_one_monitor(fifo_monitor_5);
    sample_manager_inst.add_one_monitor(fifo_monitor_6);
    sample_manager_inst.add_one_monitor(fifo_monitor_7);
    sample_manager_inst.add_one_monitor(fifo_monitor_8);
    sample_manager_inst.add_one_monitor(fifo_monitor_9);
    sample_manager_inst.add_one_monitor(fifo_monitor_10);
    sample_manager_inst.add_one_monitor(fifo_monitor_11);
    sample_manager_inst.add_one_monitor(fifo_monitor_12);
    sample_manager_inst.add_one_monitor(fifo_monitor_13);
    sample_manager_inst.add_one_monitor(fifo_monitor_14);
    sample_manager_inst.add_one_monitor(fifo_monitor_15);
    sample_manager_inst.add_one_monitor(fifo_monitor_16);
    sample_manager_inst.add_one_monitor(fifo_monitor_17);
    sample_manager_inst.add_one_monitor(fifo_monitor_18);
    sample_manager_inst.add_one_monitor(fifo_monitor_19);
    sample_manager_inst.add_one_monitor(fifo_monitor_20);
    sample_manager_inst.add_one_monitor(fifo_monitor_21);
    sample_manager_inst.add_one_monitor(fifo_monitor_22);
    sample_manager_inst.add_one_monitor(fifo_monitor_23);
    sample_manager_inst.add_one_monitor(fifo_monitor_24);
    sample_manager_inst.add_one_monitor(process_monitor_1);
    sample_manager_inst.add_one_monitor(process_monitor_2);
    sample_manager_inst.add_one_monitor(process_monitor_3);
    sample_manager_inst.add_one_monitor(process_monitor_4);
    sample_manager_inst.add_one_monitor(process_monitor_5);
    sample_manager_inst.add_one_monitor(process_monitor_6);
    sample_manager_inst.add_one_monitor(process_monitor_7);
    sample_manager_inst.add_one_monitor(process_monitor_8);
    sample_manager_inst.add_one_monitor(process_monitor_9);
    sample_manager_inst.add_one_monitor(process_monitor_10);
    sample_manager_inst.add_one_monitor(process_monitor_11);
    sample_manager_inst.add_one_monitor(process_monitor_12);
    sample_manager_inst.add_one_monitor(process_monitor_13);
    sample_manager_inst.add_one_monitor(process_monitor_14);
    sample_manager_inst.add_one_monitor(process_monitor_15);
    sample_manager_inst.add_one_monitor(process_monitor_16);
    sample_manager_inst.add_one_monitor(process_monitor_17);
    sample_manager_inst.add_one_monitor(process_monitor_18);
    sample_manager_inst.add_one_monitor(process_monitor_19);
    sample_manager_inst.add_one_monitor(process_monitor_20);
    sample_manager_inst.add_one_monitor(process_monitor_21);
    sample_manager_inst.add_one_monitor(process_monitor_22);
    sample_manager_inst.add_one_monitor(process_monitor_23);
    sample_manager_inst.add_one_monitor(process_monitor_24);
    sample_manager_inst.add_one_monitor(process_monitor_25);
    sample_manager_inst.add_one_monitor(module_monitor_1);
    sample_manager_inst.add_one_monitor(module_monitor_2);
    sample_manager_inst.add_one_monitor(module_monitor_3);
    sample_manager_inst.add_one_monitor(module_monitor_4);
    sample_manager_inst.add_one_monitor(module_monitor_5);
    sample_manager_inst.add_one_monitor(module_monitor_6);
    sample_manager_inst.add_one_monitor(module_monitor_7);
    sample_manager_inst.add_one_monitor(module_monitor_8);
    sample_manager_inst.add_one_monitor(module_monitor_9);
    sample_manager_inst.add_one_monitor(pp_loop_monitor_1);
    sample_manager_inst.add_one_monitor(df_loop_monitor_1);
    sample_manager_inst.add_one_monitor(df_loop_monitor_2);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_1);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_2);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_3);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_4);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_5);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_6);
    
    fork
        sample_manager_inst.start_monitor();
        last_transaction_done;
    join
    disable fork;

    sample_manager_inst.start_dump();
end

    task last_transaction_done();
        wait(reset == 0);
        while(1) begin
            if (finish == 1'b1 || deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock == 1'b1) begin
                @(negedge clock);
                break;
            end
            else
                @(posedge clock);
        end
    endtask


endmodule
