# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler fft_4k_ssr2_i16_c16_t16_top_reorder_buff_0_0_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name input_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_stream \
    op interface \
    ports { input_stream_dout { I 64 vector } input_stream_num_data_valid { I 3 vector } input_stream_fifo_cap { I 3 vector } input_stream_empty_n { I 1 bit } input_stream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name reorder_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_reorder_out \
    op interface \
    ports { reorder_out_din { O 64 vector } reorder_out_num_data_valid { I 3 vector } reorder_out_fifo_cap { I 3 vector } reorder_out_full_n { I 1 bit } reorder_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name iter \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_iter \
    op interface \
    ports { iter_dout { I 32 vector } iter_num_data_valid { I 3 vector } iter_fifo_cap { I 3 vector } iter_empty_n { I 1 bit } iter_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name iter_c24 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_iter_c24 \
    op interface \
    ports { iter_c24_din { O 32 vector } iter_c24_num_data_valid { I 3 vector } iter_c24_fifo_cap { I 3 vector } iter_c24_full_n { I 1 bit } iter_c24_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


