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
	{"Name" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0","ID" : "8","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "9","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80","ID" : "10","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95","ID" : "11","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123","ID" : "12","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "13","Type" : "pipeline"},]},]},]},]},
	{"Name" : "relu_array_ap_fixed_4u_array_ap_ufixed_10_0_4_0_0_4u_relu_config4_U0","ID" : "14","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","ID" : "15","Type" : "pipeline"},]},
	{"Name" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0","ID" : "16","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "17","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config20_U0","ID" : "18","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config20_Pipeline_PadTopWidth_fu_22","ID" : "19","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","ID" : "20","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config20_Pipeline_PadMain_fu_28","ID" : "21","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","ID" : "22","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_4u_config20_Pipeline_PadBottomWidth_fu_36","ID" : "23","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","ID" : "24","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0","ID" : "25","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "26","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160","ID" : "27","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185","ID" : "28","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285","ID" : "29","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "30","Type" : "pipeline"},]},]},]},]},
	{"Name" : "relu_array_ap_fixed_7u_array_ap_ufixed_10_0_4_0_0_7u_relu_config8_U0","ID" : "31","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","ID" : "32","Type" : "pipeline"},]},
	{"Name" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0","ID" : "33","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "34","Type" : "pipeline"},]},
	{"Name" : "concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0","ID" : "35","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_concatenate1d_array_array_array_ap_fixed_43u_config12_Pipeline_ConcatLoop1_fu_484","ID" : "36","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ConcatLoop1","ID" : "37","Type" : "pipeline"},]},]},
	{"Name" : "dense_array_ap_fixed_43u_array_ap_fixed_16_6_5_3_0_7u_config13_U0","ID" : "38","Type" : "pipeline",
		"SubLoops" : [
		{"Name" : "ReuseLoop","ID" : "39","Type" : "pipeline"},]},
	{"Name" : "relu_array_ap_fixed_7u_array_ap_ufixed_10_0_4_0_0_7u_relu_config15_U0","ID" : "40","Type" : "sequential"},
	{"Name" : "dense_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_1u_config16_U0","ID" : "41","Type" : "pipeline",
		"SubLoops" : [
		{"Name" : "ReuseLoop","ID" : "42","Type" : "pipeline"},]},
	{"Name" : "sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0","ID" : "43","Type" : "sequential"},]
}]}