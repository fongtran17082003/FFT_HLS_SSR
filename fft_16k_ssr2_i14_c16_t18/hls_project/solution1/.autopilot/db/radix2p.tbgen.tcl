set moduleName radix2p
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {radix2p}
set C_modelType { void 0 }
set C_modelArgList {
	{ reorder_out int 64 regular {fifo 0 volatile }  }
	{ fft1_out int 64 regular {fifo 1 volatile }  }
	{ iter int 32 regular {fifo 0}  }
	{ iter_c23 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "reorder_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fft1_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iter", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "iter_c23", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ reorder_out_dout sc_in sc_lv 64 signal 0 } 
	{ reorder_out_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ reorder_out_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ reorder_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ reorder_out_read sc_out sc_logic 1 signal 0 } 
	{ fft1_out_din sc_out sc_lv 64 signal 1 } 
	{ fft1_out_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ fft1_out_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ fft1_out_full_n sc_in sc_logic 1 signal 1 } 
	{ fft1_out_write sc_out sc_logic 1 signal 1 } 
	{ iter_dout sc_in sc_lv 32 signal 2 } 
	{ iter_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ iter_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ iter_empty_n sc_in sc_logic 1 signal 2 } 
	{ iter_read sc_out sc_logic 1 signal 2 } 
	{ iter_c23_din sc_out sc_lv 32 signal 3 } 
	{ iter_c23_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ iter_c23_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ iter_c23_full_n sc_in sc_logic 1 signal 3 } 
	{ iter_c23_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "reorder_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "reorder_out", "role": "dout" }} , 
 	{ "name": "reorder_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "reorder_out", "role": "num_data_valid" }} , 
 	{ "name": "reorder_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "reorder_out", "role": "fifo_cap" }} , 
 	{ "name": "reorder_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reorder_out", "role": "empty_n" }} , 
 	{ "name": "reorder_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reorder_out", "role": "read" }} , 
 	{ "name": "fft1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fft1_out", "role": "din" }} , 
 	{ "name": "fft1_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fft1_out", "role": "num_data_valid" }} , 
 	{ "name": "fft1_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fft1_out", "role": "fifo_cap" }} , 
 	{ "name": "fft1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft1_out", "role": "full_n" }} , 
 	{ "name": "fft1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft1_out", "role": "write" }} , 
 	{ "name": "iter_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iter", "role": "dout" }} , 
 	{ "name": "iter_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "iter", "role": "num_data_valid" }} , 
 	{ "name": "iter_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "iter", "role": "fifo_cap" }} , 
 	{ "name": "iter_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iter", "role": "empty_n" }} , 
 	{ "name": "iter_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iter", "role": "read" }} , 
 	{ "name": "iter_c23_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iter_c23", "role": "din" }} , 
 	{ "name": "iter_c23_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "iter_c23", "role": "num_data_valid" }} , 
 	{ "name": "iter_c23_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "iter_c23", "role": "fifo_cap" }} , 
 	{ "name": "iter_c23_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iter_c23", "role": "full_n" }} , 
 	{ "name": "iter_c23_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iter_c23", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "radix2p",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "8196",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reorder_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72", "Port" : "reorder_out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72", "Port" : "fft1_out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "iter_c23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_c23_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "8194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "reorder_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "reorder_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fft1_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fft1_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_172_1_VITIS_LOOP_175_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	radix2p {
		reorder_out {Type I LastRead 2 FirstWrite -1}
		fft1_out {Type O LastRead -1 FirstWrite 2}
		iter {Type I LastRead 0 FirstWrite -1}
		iter_c23 {Type O LastRead -1 FirstWrite 0}}
	radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2 {
		bound {Type I LastRead 0 FirstWrite -1}
		reorder_out {Type I LastRead 2 FirstWrite -1}
		fft1_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "8196"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "8196"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reorder_out { ap_fifo {  { reorder_out_dout fifo_data_in 0 64 }  { reorder_out_num_data_valid fifo_status_num_data_valid 0 3 }  { reorder_out_fifo_cap fifo_update 0 3 }  { reorder_out_empty_n fifo_status 0 1 }  { reorder_out_read fifo_port_we 1 1 } } }
	fft1_out { ap_fifo {  { fft1_out_din fifo_data_in 1 64 }  { fft1_out_num_data_valid fifo_status_num_data_valid 0 3 }  { fft1_out_fifo_cap fifo_update 0 3 }  { fft1_out_full_n fifo_status 0 1 }  { fft1_out_write fifo_port_we 1 1 } } }
	iter { ap_fifo {  { iter_dout fifo_data_in 0 32 }  { iter_num_data_valid fifo_status_num_data_valid 0 3 }  { iter_fifo_cap fifo_update 0 3 }  { iter_empty_n fifo_status 0 1 }  { iter_read fifo_port_we 1 1 } } }
	iter_c23 { ap_fifo {  { iter_c23_din fifo_data_in 1 32 }  { iter_c23_num_data_valid fifo_status_num_data_valid 0 3 }  { iter_c23_fifo_cap fifo_update 0 3 }  { iter_c23_full_n fifo_status 0 1 }  { iter_c23_write fifo_port_we 1 1 } } }
}
