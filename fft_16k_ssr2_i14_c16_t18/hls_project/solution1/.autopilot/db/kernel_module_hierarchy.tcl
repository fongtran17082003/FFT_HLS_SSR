set ModuleHierarchy {[{
"Name" : "fft_16k_ssr2_i14_c16_t18_top","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_fft_core_fu_78","ID" : "1","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "dma_in_U0","ID" : "2","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102","ID" : "3","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_61_1","ID" : "4","Type" : "pipeline"},]},]},
		{"Name" : "reorder_U0","ID" : "5","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_390","ID" : "6","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "pipeup_l1_pipeup_l2","ID" : "7","Type" : "pipeline"},]},],
			"SubLoops" : [
			{"Name" : "iter_loop_inner_loop","ID" : "8","Type" : "pipeline"},]},
		{"Name" : "radix2p_U0","ID" : "9","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72","ID" : "10","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_172_1_VITIS_LOOP_175_2","ID" : "11","Type" : "pipeline"},]},]},
		{"Name" : "twiddle_U0","ID" : "12","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96","ID" : "13","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_264_1_VITIS_LOOP_267_2","ID" : "14","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "grp_get_phase_factor_fu_104","ID" : "15","Type" : "pipeline"},]},]},]},
		{"Name" : "fft_serial_kernel_1_wrapper_U0","ID" : "16","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "entry_proc74_U0","ID" : "17","Type" : "sequential"},
			{"Name" : "fft_serial_kernel_1_U0","ID" : "18","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_310_1","ID" : "19","Type" : "no",
				"SubInsts" : [
				{"Name" : "dataflow_in_loop_VITIS_LOOP_310_1_U0","ID" : "20","Type" : "dataflow",
						"SubInsts" : [
						{"Name" : "Block_newFuncRoot_proc_proc_U0","ID" : "21","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc15_U0","ID" : "22","Type" : "sequential"},
						{"Name" : "fft_fft_params_2_U0","ID" : "23","Type" : "dataflow",
							"SubInsts" : [
							{"Name" : "fft_syn_fft_params_U0","ID" : "24","Type" : "sequential"},]},
						{"Name" : "Block_newFuncRoot_proc_proc16_U0","ID" : "25","Type" : "sequential"},]},]},]},]},
		{"Name" : "fft_serial_kernel_wrapper_U0","ID" : "26","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "entry_proc107_U0","ID" : "27","Type" : "sequential"},
			{"Name" : "fft_serial_kernel_U0","ID" : "28","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_310_1","ID" : "29","Type" : "no",
				"SubInsts" : [
				{"Name" : "dataflow_in_loop_VITIS_LOOP_310_1_133_U0","ID" : "30","Type" : "dataflow",
						"SubInsts" : [
						{"Name" : "Block_newFuncRoot_proc_proc17_U0","ID" : "31","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc18_U0","ID" : "32","Type" : "sequential"},
						{"Name" : "fft_fft_params_U0","ID" : "33","Type" : "dataflow",
							"SubInsts" : [
							{"Name" : "fft_syn_fft_params_3_U0","ID" : "34","Type" : "sequential"},]},
						{"Name" : "Block_newFuncRoot_proc_proc19_U0","ID" : "35","Type" : "sequential"},]},]},]},]},
		{"Name" : "joiner_U0","ID" : "36","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73","ID" : "37","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_285_1_VITIS_LOOP_288_2","ID" : "38","Type" : "pipeline"},]},]},
		{"Name" : "entry_proc_U0","ID" : "39","Type" : "sequential"},
		{"Name" : "dma_out_U0","ID" : "40","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103","ID" : "41","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_90_1","ID" : "42","Type" : "pipeline"},]},]},]},]
}]}