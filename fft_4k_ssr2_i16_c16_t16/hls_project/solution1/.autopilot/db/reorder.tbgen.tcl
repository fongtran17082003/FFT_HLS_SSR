set moduleName reorder
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
set C_modelName {reorder}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_stream int 64 regular {fifo 0 volatile }  }
	{ reorder_out int 64 regular {fifo 1 volatile }  }
	{ iter int 32 regular {fifo 0}  }
	{ iter_c24 int 32 regular {fifo 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "input_stream", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "reorder_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iter", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "iter_c24", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
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
	{ input_stream_dout sc_in sc_lv 64 signal 0 } 
	{ input_stream_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ input_stream_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ input_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ input_stream_read sc_out sc_logic 1 signal 0 } 
	{ reorder_out_din sc_out sc_lv 64 signal 1 } 
	{ reorder_out_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ reorder_out_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ reorder_out_full_n sc_in sc_logic 1 signal 1 } 
	{ reorder_out_write sc_out sc_logic 1 signal 1 } 
	{ iter_dout sc_in sc_lv 32 signal 2 } 
	{ iter_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ iter_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ iter_empty_n sc_in sc_logic 1 signal 2 } 
	{ iter_read sc_out sc_logic 1 signal 2 } 
	{ iter_c24_din sc_out sc_lv 32 signal 3 } 
	{ iter_c24_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ iter_c24_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ iter_c24_full_n sc_in sc_logic 1 signal 3 } 
	{ iter_c24_write sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "input_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_stream", "role": "dout" }} , 
 	{ "name": "input_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_stream", "role": "num_data_valid" }} , 
 	{ "name": "input_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_stream", "role": "fifo_cap" }} , 
 	{ "name": "input_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream", "role": "empty_n" }} , 
 	{ "name": "input_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream", "role": "read" }} , 
 	{ "name": "reorder_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "reorder_out", "role": "din" }} , 
 	{ "name": "reorder_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "reorder_out", "role": "num_data_valid" }} , 
 	{ "name": "reorder_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "reorder_out", "role": "fifo_cap" }} , 
 	{ "name": "reorder_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reorder_out", "role": "full_n" }} , 
 	{ "name": "reorder_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reorder_out", "role": "write" }} , 
 	{ "name": "iter_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iter", "role": "dout" }} , 
 	{ "name": "iter_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "iter", "role": "num_data_valid" }} , 
 	{ "name": "iter_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "iter", "role": "fifo_cap" }} , 
 	{ "name": "iter_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iter", "role": "empty_n" }} , 
 	{ "name": "iter_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iter", "role": "read" }} , 
 	{ "name": "iter_c24_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iter_c24", "role": "din" }} , 
 	{ "name": "iter_c24_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "iter_c24", "role": "num_data_valid" }} , 
 	{ "name": "iter_c24_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "iter_c24", "role": "fifo_cap" }} , 
 	{ "name": "iter_c24_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iter_c24", "role": "full_n" }} , 
 	{ "name": "iter_c24_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iter_c24", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "reorder",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2056", "EstimateLatencyMax" : "6152",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "input_stream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392", "Port" : "input_stream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "reorder_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "reorder_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "iter_c24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_c24_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "iter_loop_inner_loop", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state4"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_1_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buff_1_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "reorder_Pipeline_pipeup_l1_pipeup_l2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2050", "EstimateLatencyMax" : "2050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_0_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pipeup_l1_pipeup_l2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"}]}


set ArgLastReadFirstWriteLatency {
	reorder {
		input_stream {Type I LastRead 5 FirstWrite -1}
		reorder_out {Type O LastRead -1 FirstWrite 6}
		iter {Type I LastRead 0 FirstWrite -1}
		iter_c24 {Type O LastRead -1 FirstWrite 0}}
	reorder_Pipeline_pipeup_l1_pipeup_l2 {
		buff_0_0 {Type O LastRead -1 FirstWrite 1}
		buff_0_1 {Type O LastRead -1 FirstWrite 1}
		buff_1_0 {Type O LastRead -1 FirstWrite 1}
		buff_1_1 {Type O LastRead -1 FirstWrite 1}
		input_stream {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2056", "Max" : "6152"}
	, {"Name" : "Interval", "Min" : "2056", "Max" : "6152"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_stream { ap_fifo {  { input_stream_dout fifo_data_in 0 64 }  { input_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { input_stream_fifo_cap fifo_update 0 3 }  { input_stream_empty_n fifo_status 0 1 }  { input_stream_read fifo_port_we 1 1 } } }
	reorder_out { ap_fifo {  { reorder_out_din fifo_data_in 1 64 }  { reorder_out_num_data_valid fifo_status_num_data_valid 0 3 }  { reorder_out_fifo_cap fifo_update 0 3 }  { reorder_out_full_n fifo_status 0 1 }  { reorder_out_write fifo_port_we 1 1 } } }
	iter { ap_fifo {  { iter_dout fifo_data_in 0 32 }  { iter_num_data_valid fifo_status_num_data_valid 0 3 }  { iter_fifo_cap fifo_update 0 3 }  { iter_empty_n fifo_status 0 1 }  { iter_read fifo_port_we 1 1 } } }
	iter_c24 { ap_fifo {  { iter_c24_din fifo_data_in 1 32 }  { iter_c24_num_data_valid fifo_status_num_data_valid 0 3 }  { iter_c24_fifo_cap fifo_update 0 3 }  { iter_c24_full_n fifo_status 0 1 }  { iter_c24_write fifo_port_we 1 1 } } }
}
