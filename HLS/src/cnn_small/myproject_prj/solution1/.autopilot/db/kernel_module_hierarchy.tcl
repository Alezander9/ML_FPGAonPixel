set ModuleHierarchy {[{
"Name" : "myproject","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "dense_array_ap_fixed_53u_array_ap_fixed_16_6_5_3_0_24u_config2_U0","ID" : "1","Type" : "pipeline",
		"SubLoops" : [
		{"Name" : "ReuseLoop","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "normalize_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_config4_U0","ID" : "3","Type" : "sequential"},
	{"Name" : "relu_array_ap_fixed_24u_array_ap_ufixed_15_0_4_0_0_24u_relu_config5_U0","ID" : "4","Type" : "sequential"},
	{"Name" : "dense_array_ap_ufixed_24u_array_ap_fixed_16_6_5_3_0_12u_config6_U0","ID" : "5","Type" : "pipeline",
		"SubLoops" : [
		{"Name" : "ReuseLoop","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "normalize_array_ap_fixed_12u_array_ap_fixed_16_6_5_3_0_12u_config8_U0","ID" : "7","Type" : "sequential"},
	{"Name" : "relu_array_ap_fixed_12u_array_ap_ufixed_15_0_4_0_0_12u_relu_config9_U0","ID" : "8","Type" : "sequential"},
	{"Name" : "dense_array_ap_ufixed_12u_array_ap_fixed_16_6_5_3_0_1u_config10_U0","ID" : "9","Type" : "pipeline",
		"SubLoops" : [
		{"Name" : "ReuseLoop","ID" : "10","Type" : "pipeline"},]},]
}]}