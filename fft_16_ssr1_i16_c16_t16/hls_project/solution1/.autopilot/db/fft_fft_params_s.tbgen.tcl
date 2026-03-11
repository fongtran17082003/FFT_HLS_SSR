set moduleName fft_fft_params_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {fft<fft_params>}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_stream int 32 regular {fifo 0 volatile }  }
	{ fft_out int 32 regular {fifo 1 volatile }  }
	{ fft_status int 8 regular {fifo 1 volatile }  }
	{ fft_config int 8 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "input_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fft_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fft_status", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fft_config", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ input_stream_dout sc_in sc_lv 32 signal 0 } 
	{ input_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ input_stream_read sc_out sc_logic 1 signal 0 } 
	{ fft_out_din sc_out sc_lv 32 signal 1 } 
	{ fft_out_full_n sc_in sc_logic 1 signal 1 } 
	{ fft_out_write sc_out sc_logic 1 signal 1 } 
	{ fft_status_din sc_out sc_lv 8 signal 2 } 
	{ fft_status_full_n sc_in sc_logic 1 signal 2 } 
	{ fft_status_write sc_out sc_logic 1 signal 2 } 
	{ fft_config_dout sc_in sc_lv 8 signal 3 } 
	{ fft_config_empty_n sc_in sc_logic 1 signal 3 } 
	{ fft_config_read sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
}
set NewPortList {[ 
	{ "name": "input_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_stream", "role": "dout" }} , 
 	{ "name": "input_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream", "role": "empty_n" }} , 
 	{ "name": "input_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_stream", "role": "read" }} , 
 	{ "name": "fft_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fft_out", "role": "din" }} , 
 	{ "name": "fft_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_out", "role": "full_n" }} , 
 	{ "name": "fft_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_out", "role": "write" }} , 
 	{ "name": "fft_status_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fft_status", "role": "din" }} , 
 	{ "name": "fft_status_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_status", "role": "full_n" }} , 
 	{ "name": "fft_status_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_status", "role": "write" }} , 
 	{ "name": "fft_config_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fft_config", "role": "dout" }} , 
 	{ "name": "fft_config_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_config", "role": "empty_n" }} , 
 	{ "name": "fft_config_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft_config", "role": "read" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "fft_fft_params_s",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "103", "EstimateLatencyMax" : "103",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "fft_syn_fft_params_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "fft_syn_fft_params_U0"}],
		"Port" : [
			{"Name" : "input_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "fft_syn_fft_params_U0", "Port" : "xn"}]},
			{"Name" : "fft_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "fft_syn_fft_params_U0", "Port" : "xk"}]},
			{"Name" : "fft_status", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "fft_syn_fft_params_U0", "Port" : "status_data_V"}]},
			{"Name" : "fft_config", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "fft_syn_fft_params_U0", "Port" : "config_ch_data_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_syn_fft_params_U0", "Parent" : "0",
		"CDFG" : "fft_syn_fft_params_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "103", "EstimateLatencyMax" : "103",
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
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0"}],
		"Loop" : []}]}


set ArgLastReadFirstWriteLatency {
	fft_fft_params_s {
		input_stream {Type I LastRead -1 FirstWrite -1}
		fft_out {Type O LastRead -1 FirstWrite -1}
		fft_status {Type O LastRead -1 FirstWrite -1}
		fft_config {Type I LastRead -1 FirstWrite -1}}
	fft_syn_fft_params_s {
		xn {Type I LastRead -1 FirstWrite -1}
		xk {Type O LastRead -1 FirstWrite -1}
		status_data_V {Type O LastRead -1 FirstWrite -1}
		config_ch_data_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "103", "Max" : "103"}
	, {"Name" : "Interval", "Min" : "104", "Max" : "104"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_stream { ap_fifo {  { input_stream_dout fifo_data_in 0 32 }  { input_stream_empty_n fifo_status 0 1 }  { input_stream_read fifo_port_we 1 1 } } }
	fft_out { ap_fifo {  { fft_out_din fifo_data_in 1 32 }  { fft_out_full_n fifo_status 0 1 }  { fft_out_write fifo_port_we 1 1 } } }
	fft_status { ap_fifo {  { fft_status_din fifo_data_in 1 8 }  { fft_status_full_n fifo_status 0 1 }  { fft_status_write fifo_port_we 1 1 } } }
	fft_config { ap_fifo {  { fft_config_dout fifo_data_in 0 8 }  { fft_config_empty_n fifo_status 0 1 }  { fft_config_read fifo_port_we 1 1 } } }
}
