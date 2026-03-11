set moduleName reorder_Pipeline_pipeup_l1_pipeup_l2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {reorder_Pipeline_pipeup_l1_pipeup_l2}
set C_modelType { void 0 }
set C_modelArgList {
	{ buff_0_0 int 32 regular {array 8192 { 0 3 } 0 1 }  }
	{ buff_0_1 int 32 regular {array 8192 { 0 3 } 0 1 }  }
	{ buff_1_0 int 32 regular {array 8192 { 0 3 } 0 1 }  }
	{ buff_1_1 int 32 regular {array 8192 { 0 3 } 0 1 }  }
	{ input_stream int 64 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "buff_0_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_0_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buff_1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_stream", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_stream_dout sc_in sc_lv 64 signal 4 } 
	{ input_stream_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ input_stream_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ input_stream_empty_n sc_in sc_logic 1 signal 4 } 
	{ input_stream_read sc_out sc_logic 1 signal 4 } 
	{ buff_0_0_address0 sc_out sc_lv 13 signal 0 } 
	{ buff_0_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ buff_0_0_we0 sc_out sc_logic 1 signal 0 } 
	{ buff_0_0_d0 sc_out sc_lv 32 signal 0 } 
	{ buff_0_1_address0 sc_out sc_lv 13 signal 1 } 
	{ buff_0_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ buff_0_1_we0 sc_out sc_logic 1 signal 1 } 
	{ buff_0_1_d0 sc_out sc_lv 32 signal 1 } 
	{ buff_1_0_address0 sc_out sc_lv 13 signal 2 } 
	{ buff_1_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ buff_1_0_we0 sc_out sc_logic 1 signal 2 } 
	{ buff_1_0_d0 sc_out sc_lv 32 signal 2 } 
	{ buff_1_1_address0 sc_out sc_lv 13 signal 3 } 
	{ buff_1_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ buff_1_1_we0 sc_out sc_logic 1 signal 3 } 
	{ buff_1_1_d0 sc_out sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_stream", "role": "dout" }} , 
 	{ "name": "input_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_stream", "role": "num_data_valid" }} , 
 	{ "name": "input_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "input_stream", "role": "fifo_cap" }} , 
 	{ "name": "input_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream", "role": "empty_n" }} , 
 	{ "name": "input_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream", "role": "read" }} , 
 	{ "name": "buff_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buff_0_0", "role": "address0" }} , 
 	{ "name": "buff_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_0_0", "role": "ce0" }} , 
 	{ "name": "buff_0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_0_0", "role": "we0" }} , 
 	{ "name": "buff_0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_0_0", "role": "d0" }} , 
 	{ "name": "buff_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buff_0_1", "role": "address0" }} , 
 	{ "name": "buff_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_0_1", "role": "ce0" }} , 
 	{ "name": "buff_0_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_0_1", "role": "we0" }} , 
 	{ "name": "buff_0_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_0_1", "role": "d0" }} , 
 	{ "name": "buff_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buff_1_0", "role": "address0" }} , 
 	{ "name": "buff_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_1_0", "role": "ce0" }} , 
 	{ "name": "buff_1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_1_0", "role": "we0" }} , 
 	{ "name": "buff_1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_1_0", "role": "d0" }} , 
 	{ "name": "buff_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "buff_1_1", "role": "address0" }} , 
 	{ "name": "buff_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_1_1", "role": "ce0" }} , 
 	{ "name": "buff_1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buff_1_1", "role": "we0" }} , 
 	{ "name": "buff_1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buff_1_1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "reorder_Pipeline_pipeup_l1_pipeup_l2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8194", "EstimateLatencyMax" : "8194",
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	reorder_Pipeline_pipeup_l1_pipeup_l2 {
		buff_0_0 {Type O LastRead -1 FirstWrite 1}
		buff_0_1 {Type O LastRead -1 FirstWrite 1}
		buff_1_0 {Type O LastRead -1 FirstWrite 1}
		buff_1_1 {Type O LastRead -1 FirstWrite 1}
		input_stream {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8194", "Max" : "8194"}
	, {"Name" : "Interval", "Min" : "8194", "Max" : "8194"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buff_0_0 { ap_memory {  { buff_0_0_address0 mem_address 1 13 }  { buff_0_0_ce0 mem_ce 1 1 }  { buff_0_0_we0 mem_we 1 1 }  { buff_0_0_d0 mem_din 1 32 } } }
	buff_0_1 { ap_memory {  { buff_0_1_address0 mem_address 1 13 }  { buff_0_1_ce0 mem_ce 1 1 }  { buff_0_1_we0 mem_we 1 1 }  { buff_0_1_d0 mem_din 1 32 } } }
	buff_1_0 { ap_memory {  { buff_1_0_address0 mem_address 1 13 }  { buff_1_0_ce0 mem_ce 1 1 }  { buff_1_0_we0 mem_we 1 1 }  { buff_1_0_d0 mem_din 1 32 } } }
	buff_1_1 { ap_memory {  { buff_1_1_address0 mem_address 1 13 }  { buff_1_1_ce0 mem_ce 1 1 }  { buff_1_1_we0 mem_we 1 1 }  { buff_1_1_d0 mem_din 1 32 } } }
	input_stream { ap_fifo {  { input_stream_dout fifo_data_in 0 64 }  { input_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { input_stream_fifo_cap fifo_update 0 3 }  { input_stream_empty_n fifo_status 0 1 }  { input_stream_read fifo_port_we 1 1 } } }
}
