set moduleName fft_serial_kernel_wrapper
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
set C_modelName {fft_serial_kernel.wrapper}
set C_modelType { void 0 }
set C_modelArgList {
	{ twiddle_out1 int 32 regular {fifo 0 volatile }  }
	{ fft2_out1 int 32 regular {fifo 1 volatile }  }
	{ iter int 32 regular {fifo 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "twiddle_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fft2_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "iter", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ twiddle_out1_dout sc_in sc_lv 32 signal 0 } 
	{ twiddle_out1_empty_n sc_in sc_logic 1 signal 0 } 
	{ twiddle_out1_read sc_out sc_logic 1 signal 0 } 
	{ fft2_out1_din sc_out sc_lv 32 signal 1 } 
	{ fft2_out1_full_n sc_in sc_logic 1 signal 1 } 
	{ fft2_out1_write sc_out sc_logic 1 signal 1 } 
	{ iter_dout sc_in sc_lv 32 signal 2 } 
	{ iter_empty_n sc_in sc_logic 1 signal 2 } 
	{ iter_read sc_out sc_logic 1 signal 2 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "twiddle_out1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "twiddle_out1", "role": "dout" }} , 
 	{ "name": "twiddle_out1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twiddle_out1", "role": "empty_n" }} , 
 	{ "name": "twiddle_out1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "twiddle_out1", "role": "read" }} , 
 	{ "name": "fft2_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fft2_out1", "role": "din" }} , 
 	{ "name": "fft2_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft2_out1", "role": "full_n" }} , 
 	{ "name": "fft2_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fft2_out1", "role": "write" }} , 
 	{ "name": "iter_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iter", "role": "dout" }} , 
 	{ "name": "iter_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iter", "role": "empty_n" }} , 
 	{ "name": "iter_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iter", "role": "read" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "13"],
		"CDFG" : "fft_serial_kernel_wrapper",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "24732",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "entry_proc107_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "fft_serial_kernel_U0"}],
		"Port" : [
			{"Name" : "twiddle_out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "fft_serial_kernel_U0", "Port" : "twiddle_out1"}]},
			{"Name" : "fft2_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "fft_serial_kernel_U0", "Port" : "fft2_out1"}]},
			{"Name" : "iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "entry_proc107_U0", "Port" : "iter"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc107_U0", "Parent" : "0",
		"CDFG" : "entry_proc107",
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["2"], "DependentChan" : "13", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "fft_serial_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "24731",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "dataflow_in_loop_VITIS_LOOP_310_1_133_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "dataflow_in_loop_VITIS_LOOP_310_1_133_U0"}],
		"Port" : [
			{"Name" : "twiddle_out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_310_1_133_U0", "Port" : "twiddle_out1"}]},
			{"Name" : "fft2_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_310_1_133_U0", "Port" : "fft2_out1"}]},
			{"Name" : "iter", "Type" : "None", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "13", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_310_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_310_1_133_U0", "has_continue" : "1"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_133_U0", "Parent" : "2", "Child" : ["4", "5", "6", "8", "9", "10", "11", "12"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_310_1_133",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24729", "EstimateLatencyMax" : "24729",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "4", "Name" : "Block_newFuncRoot_proc_proc17_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "fft_fft_params_U0"},
			{"ID" : "8", "Name" : "Block_newFuncRoot_proc_proc19_U0"}],
		"Port" : [
			{"Name" : "twiddle_out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "fft_fft_params_U0", "Port" : "twiddle_out1"}]},
			{"Name" : "fft2_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "fft_fft_params_U0", "Port" : "fft2_out1"}]}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_133_U0.Block_newFuncRoot_proc_proc17_U0", "Parent" : "3",
		"CDFG" : "Block_newFuncRoot_proc_proc17",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["5"], "DependentChan" : "9", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_133_U0.Block_newFuncRoot_proc_proc18_U0", "Parent" : "3",
		"CDFG" : "Block_newFuncRoot_proc_proc18",
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
			{"Name" : "fft_config", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6","7"], "DependentChan" : "10", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fft_config_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "9", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_133_U0.fft_fft_params_U0", "Parent" : "3", "Child" : ["7"],
		"CDFG" : "fft_fft_params_s",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24727", "EstimateLatencyMax" : "24727",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "7", "Name" : "fft_syn_fft_params_3_U0"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "fft_syn_fft_params_3_U0"}],
		"Port" : [
			{"Name" : "twiddle_out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "fft_syn_fft_params_3_U0", "Port" : "xn"}]},
			{"Name" : "fft2_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "fft_syn_fft_params_3_U0", "Port" : "xk"}]},
			{"Name" : "fft_status", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["8"], "DependentChan" : "11", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "fft_syn_fft_params_3_U0", "Port" : "status_data_V"}]},
			{"Name" : "fft_config", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "10", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "fft_syn_fft_params_3_U0", "Port" : "config_ch_data_V"}]}]},
	{"ID" : "7", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_133_U0.fft_fft_params_U0.fft_syn_fft_params_3_U0", "Parent" : "6",
		"CDFG" : "fft_syn_fft_params_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24727", "EstimateLatencyMax" : "24727",
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
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["8"], "DependentChan" : "11", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "10", "DependentChanDepth" : "2", "DependentChanType" : "0"}],
		"Loop" : []},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_133_U0.Block_newFuncRoot_proc_proc19_U0", "Parent" : "3",
		"CDFG" : "Block_newFuncRoot_proc_proc19",
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
		"StartSource" : "5",
		"StartFifo" : "start_for_Block_newFuncRoot_proc_proc19_U0_U",
		"Port" : [
			{"Name" : "fft_status", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6","7"], "DependentChan" : "11", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fft_status_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_133_U0.empty_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_133_U0.fft_config_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_133_U0.fft_status_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_133_U0.start_for_Block_newFuncRoot_proc_proc19_U0_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_channel_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft_serial_kernel_wrapper {
		twiddle_out1 {Type I LastRead -1 FirstWrite -1}
		fft2_out1 {Type O LastRead -1 FirstWrite -1}
		iter {Type I LastRead 0 FirstWrite -1}}
	entry_proc107 {
		return_r {Type O LastRead -1 FirstWrite 0}
		iter {Type I LastRead 0 FirstWrite -1}}
	fft_serial_kernel {
		twiddle_out1 {Type I LastRead -1 FirstWrite -1}
		fft2_out1 {Type O LastRead -1 FirstWrite -1}
		iter {Type I LastRead 0 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_310_1_133 {
		twiddle_out1 {Type I LastRead -1 FirstWrite -1}
		fft2_out1 {Type O LastRead -1 FirstWrite -1}}
	Block_newFuncRoot_proc_proc17 {
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc18 {
		fft_config {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	fft_fft_params_s {
		twiddle_out1 {Type I LastRead -1 FirstWrite -1}
		fft2_out1 {Type O LastRead -1 FirstWrite -1}
		fft_status {Type O LastRead -1 FirstWrite -1}
		fft_config {Type I LastRead -1 FirstWrite -1}}
	fft_syn_fft_params_3 {
		xn {Type I LastRead -1 FirstWrite -1}
		xk {Type O LastRead -1 FirstWrite -1}
		status_data_V {Type O LastRead -1 FirstWrite -1}
		config_ch_data_V {Type I LastRead -1 FirstWrite -1}}
	Block_newFuncRoot_proc_proc19 {
		fft_status {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "24732"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "24732"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	twiddle_out1 { ap_fifo {  { twiddle_out1_dout fifo_data_in 0 32 }  { twiddle_out1_empty_n fifo_status 0 1 }  { twiddle_out1_read fifo_port_we 1 1 } } }
	fft2_out1 { ap_fifo {  { fft2_out1_din fifo_data_in 1 32 }  { fft2_out1_full_n fifo_status 0 1 }  { fft2_out1_write fifo_port_we 1 1 } } }
	iter { ap_fifo {  { iter_dout fifo_data_in 0 32 }  { iter_empty_n fifo_status 0 1 }  { iter_read fifo_port_we 1 1 } } }
}
