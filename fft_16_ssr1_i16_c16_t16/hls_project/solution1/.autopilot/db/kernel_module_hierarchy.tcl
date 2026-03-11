set ModuleHierarchy {[{
"Name" : "fft_16_ssr1_i16_c16_t16_top","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_fft_core_fu_76","ID" : "1","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "dma_in_U0","ID" : "2","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dma_in_Pipeline_VITIS_LOOP_53_1_fu_98","ID" : "3","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_53_1","ID" : "4","Type" : "pipeline"},]},]},
		{"Name" : "fft_serial_kernel_wrapper_U0","ID" : "5","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "entry_proc42_U0","ID" : "6","Type" : "sequential"},
			{"Name" : "fft_serial_kernel_U0","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_158_1","ID" : "8","Type" : "no",
				"SubInsts" : [
				{"Name" : "dataflow_in_loop_VITIS_LOOP_158_1_U0","ID" : "9","Type" : "dataflow",
						"SubInsts" : [
						{"Name" : "Block_newFuncRoot_proc_proc_U0","ID" : "10","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc5_U0","ID" : "11","Type" : "sequential"},
						{"Name" : "fft_fft_params_U0","ID" : "12","Type" : "dataflow",
							"SubInsts" : [
							{"Name" : "fft_syn_fft_params_U0","ID" : "13","Type" : "sequential"},]},
						{"Name" : "Block_newFuncRoot_proc_proc6_U0","ID" : "14","Type" : "sequential"},]},]},]},]},
		{"Name" : "entry_proc_U0","ID" : "15","Type" : "sequential"},
		{"Name" : "dma_out_U0","ID" : "16","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dma_out_Pipeline_VITIS_LOOP_78_1_fu_101","ID" : "17","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_78_1","ID" : "18","Type" : "pipeline"},]},]},]},]
}]}