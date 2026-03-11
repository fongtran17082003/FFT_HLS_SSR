set moduleName dataflow_in_loop_VITIS_LOOP_310_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {dataflow_in_loop_VITIS_LOOP_310_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ twiddle_out0 int 32 regular {fifo 0 volatile }  }
	{ fft2_out0 int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "twiddle_out0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fft2_out0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ twiddle_out0_dout sc_in sc_lv 32 signal 0 } 
	{ twiddle_out0_empty_n sc_in sc_logic 1 signal 0 } 
	{ twiddle_out0_read sc_out sc_logic 1 signal 0 } 
	{ fft2_out0_din sc_out sc_lv 32 signal 1 } 
	{ fft2_out0_full_n sc_in sc_logic 1 signal 1 } 
	{ fft2_out0_write sc_out sc_logic 1 signal 1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "twiddle_out0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "twiddle_out0", "role": "dout" }} , 
 	{ "name": "twiddle_out0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twiddle_out0", "role": "empty_n" }} , 
 	{ "name": "twiddle_out0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twiddle_out0", "role": "read" }} , 
 	{ "name": "fft2_out0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fft2_out0", "role": "din" }} , 
 	{ "name": "fft2_out0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft2_out0", "role": "full_n" }} , 
 	{ "name": "fft2_out0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft2_out0", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "6", "7", "8", "9"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_310_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6280", "EstimateLatencyMax" : "6280",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_newFuncRoot_proc_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "fft_fft_params_2_U0"},
			{"ID" : "5", "Name" : "Block_newFuncRoot_proc_proc16_U0"}],
		"Port" : [
			{"Name" : "twiddle_out0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "fft_fft_params_2_U0", "Port" : "twiddle_out0"}]},
			{"Name" : "fft2_out0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "fft_fft_params_2_U0", "Port" : "fft2_out0"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc_U0", "Parent" : "0",
		"CDFG" : "Block_newFuncRoot_proc_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["2"], "DependentChan" : "6", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc15_U0", "Parent" : "0",
		"CDFG" : "Block_newFuncRoot_proc_proc15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "fft_config", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["3","4"], "DependentChan" : "7", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fft_config_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "6", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_fft_params_2_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "fft_fft_params_2",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6278", "EstimateLatencyMax" : "6278",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "4", "Name" : "fft_syn_fft_params_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "fft_syn_fft_params_U0"}],
		"Port" : [
			{"Name" : "twiddle_out0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "fft_syn_fft_params_U0", "Port" : "xn"}]},
			{"Name" : "fft2_out0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "fft_syn_fft_params_U0", "Port" : "xk"}]},
			{"Name" : "fft_status", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5"], "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "fft_syn_fft_params_U0", "Port" : "status_data_V"}]},
			{"Name" : "fft_config", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "7", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "fft_syn_fft_params_U0", "Port" : "config_ch_data_V"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_fft_params_2_U0.fft_syn_fft_params_U0", "Parent" : "3",
		"CDFG" : "fft_syn_fft_params_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6278", "EstimateLatencyMax" : "6278",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5"], "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "7", "DependentChanDepth" : "2", "DependentChanType" : "0"}],
		"Loop" : []},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc16_U0", "Parent" : "0",
		"CDFG" : "Block_newFuncRoot_proc_proc16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_Block_newFuncRoot_proc_proc16_U0_U",
		"Port" : [
			{"Name" : "fft_status", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3","4"], "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fft_status_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_config_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_status_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Block_newFuncRoot_proc_proc16_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_in_loop_VITIS_LOOP_310_1 {
		twiddle_out0 {Type I LastRead -1 FirstWrite -1}
		fft2_out0 {Type O LastRead -1 FirstWrite -1}}
	Block_newFuncRoot_proc_proc {
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc15 {
		fft_config {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	fft_fft_params_2 {
		twiddle_out0 {Type I LastRead -1 FirstWrite -1}
		fft2_out0 {Type O LastRead -1 FirstWrite -1}
		fft_status {Type O LastRead -1 FirstWrite -1}
		fft_config {Type I LastRead -1 FirstWrite -1}}
	fft_syn_fft_params_s {
		xn {Type I LastRead -1 FirstWrite -1}
		xk {Type O LastRead -1 FirstWrite -1}
		status_data_V {Type O LastRead -1 FirstWrite -1}
		config_ch_data_V {Type I LastRead -1 FirstWrite -1}}
	Block_newFuncRoot_proc_proc16 {
		fft_status {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6280", "Max" : "6280"}
	, {"Name" : "Interval", "Min" : "6279", "Max" : "6279"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	twiddle_out0 { ap_fifo {  { twiddle_out0_dout fifo_data_in 0 32 }  { twiddle_out0_empty_n fifo_status 0 1 }  { twiddle_out0_read fifo_port_we 1 1 } } }
	fft2_out0 { ap_fifo {  { fft2_out0_din fifo_data_in 1 32 }  { fft2_out0_full_n fifo_status 0 1 }  { fft2_out0_write fifo_port_we 1 1 } } }
}
