set ModuleHierarchy {[{
"Name" : "myproject","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadTopWidth_fu_28","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadMain_fu_34","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_1u_config19_Pipeline_PadBottomWidth_fu_42","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","ID" : "7","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_8u_config2_U0","ID" : "8","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "9","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config2_s_fu_80","ID" : "10","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_92","ID" : "11","Type" : "pipeline"},
				{"Name" : "tmp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_120","ID" : "12","Type" : "pipeline"},]},]},]},
	{"Name" : "relu_array_ap_fixed_8u_array_ap_ufixed_10_0_4_0_0_8u_relu_config4_U0","ID" : "13","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","ID" : "14","Type" : "pipeline"},]},
	{"Name" : "pooling2d_cl_array_ap_ufixed_8u_array_ap_fixed_16_6_5_3_0_8u_config5_U0","ID" : "15","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "16","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config20_U0","ID" : "17","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config20_Pipeline_PadTopWidth_fu_22","ID" : "18","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","ID" : "19","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config20_Pipeline_PadMain_fu_28","ID" : "20","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","ID" : "21","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_8u_config20_Pipeline_PadBottomWidth_fu_36","ID" : "22","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","ID" : "23","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_13u_config6_U0","ID" : "24","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "25","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_13u_config6_s_fu_264","ID" : "26","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_8u_config6_s_fu_301","ID" : "27","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_497","ID" : "28","Type" : "pipeline"},]},]},]},
	{"Name" : "relu_array_ap_fixed_13u_array_ap_ufixed_10_0_4_0_0_13u_relu_config8_U0","ID" : "29","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","ID" : "30","Type" : "pipeline"},]},
	{"Name" : "pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_13u_config9_U0","ID" : "31","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "32","Type" : "pipeline"},]},
	{"Name" : "concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_79u_config12_U0","ID" : "33","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_concatenate1d_array_array_array_ap_fixed_79u_config12_Pipeline_ConcatLoop1_fu_850","ID" : "34","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ConcatLoop1","ID" : "35","Type" : "pipeline"},]},]},
	{"Name" : "dense_array_ap_fixed_79u_array_ap_fixed_16_6_5_3_0_13u_config13_U0","ID" : "36","Type" : "sequential"},
	{"Name" : "relu_array_ap_fixed_13u_array_ap_ufixed_10_0_4_0_0_13u_relu_config15_U0","ID" : "37","Type" : "sequential"},
	{"Name" : "dense_array_ap_ufixed_13u_array_ap_fixed_16_6_5_3_0_1u_config16_U0","ID" : "38","Type" : "sequential"},
	{"Name" : "sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0","ID" : "39","Type" : "sequential"},]
}]}