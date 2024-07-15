set ModuleHierarchy {[{
"Name" : "myproject","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_U0","ID" : "1","Type" : "pipeline",
		"SubLoops" : [
		{"Name" : "ReuseLoop","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "normalize_array_ap_fixed_32u_array_ap_fixed_15_5_5_3_0_32u_config13_U0","ID" : "3","Type" : "sequential"},
	{"Name" : "linear_array_array_ap_fixed_16_6_5_3_0_32u_linear_config3_U0","ID" : "4","Type" : "sequential"},
	{"Name" : "relu_array_ap_fixed_32u_array_ap_ufixed_15_0_4_0_0_32u_relu_config4_U0","ID" : "5","Type" : "sequential"},
	{"Name" : "normalize_array_ap_ufixed_32u_array_ap_fixed_16_6_5_3_0_32u_config5_U0","ID" : "6","Type" : "sequential"},
	{"Name" : "dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_U0","ID" : "7","Type" : "pipeline",
		"SubLoops" : [
		{"Name" : "ReuseLoop","ID" : "8","Type" : "pipeline"},]},
	{"Name" : "normalize_array_ap_fixed_16u_array_ap_fixed_15_5_5_3_0_16u_config14_U0","ID" : "9","Type" : "sequential"},
	{"Name" : "linear_array_array_ap_fixed_16_6_5_3_0_16u_linear_config7_U0","ID" : "10","Type" : "sequential"},
	{"Name" : "relu_array_ap_fixed_16u_array_ap_ufixed_15_0_4_0_0_16u_relu_config8_U0","ID" : "11","Type" : "sequential"},
	{"Name" : "normalize_array_ap_ufixed_16u_array_ap_fixed_16_6_5_3_0_16u_config9_U0","ID" : "12","Type" : "sequential"},
	{"Name" : "dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_U0","ID" : "13","Type" : "pipeline",
		"SubLoops" : [
		{"Name" : "ReuseLoop","ID" : "14","Type" : "pipeline"},]},
	{"Name" : "normalize_array_ap_fixed_3u_array_ap_fixed_15_5_5_3_0_3u_config15_U0","ID" : "15","Type" : "sequential"},
	{"Name" : "linear_array_array_ap_fixed_16_6_5_3_0_3u_linear_config11_U0","ID" : "16","Type" : "sequential"},
	{"Name" : "softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0","ID" : "17","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s_fu_26","ID" : "18","Type" : "sequential"},]},]
}]}