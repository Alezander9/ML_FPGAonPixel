set moduleName myproject
set isTopModule 1
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
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ y_profile_input int 16 regular {axi_s 0 volatile  { y_profile_input Data } }  }
	{ y0_input int 16 regular {axi_s 0 volatile  { y0_input Data } }  }
	{ layer18_out int 16 regular {axi_s 1 volatile  { layer18_out Data } }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "y_profile_input", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "y0_input", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "layer18_out", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ y_profile_input_TDATA sc_in sc_lv 16 signal 0 } 
	{ y0_input_TDATA sc_in sc_lv 16 signal 1 } 
	{ layer18_out_TDATA sc_out sc_lv 16 signal 2 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ y_profile_input_TVALID sc_in sc_logic 1 invld 0 } 
	{ y_profile_input_TREADY sc_out sc_logic 1 inacc 0 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ y0_input_TVALID sc_in sc_logic 1 invld 1 } 
	{ y0_input_TREADY sc_out sc_logic 1 inacc 1 } 
	{ layer18_out_TVALID sc_out sc_logic 1 outvld 2 } 
	{ layer18_out_TREADY sc_in sc_logic 1 outacc 2 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "y_profile_input_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y_profile_input", "role": "TDATA" }} , 
 	{ "name": "y0_input_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y0_input", "role": "TDATA" }} , 
 	{ "name": "layer18_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer18_out", "role": "TDATA" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "y_profile_input_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "y_profile_input", "role": "TVALID" }} , 
 	{ "name": "y_profile_input_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "y_profile_input", "role": "TREADY" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "y0_input_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "y0_input", "role": "TVALID" }} , 
 	{ "name": "y0_input_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "y0_input", "role": "TREADY" }} , 
 	{ "name": "layer18_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer18_out", "role": "TVALID" }} , 
 	{ "name": "layer18_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer18_out", "role": "TREADY" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "9", "20", "22", "28", "35", "52", "54", "63", "74", "80", "81", "85", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12153", "EstimateLatencyMax" : "12404",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0"}],
		"OutputProcess" : [
			{"ID" : "85", "Name" : "sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0"}],
		"Port" : [
			{"Name" : "y_profile_input", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0", "Port" : "y_profile_input"}]},
			{"Name" : "y0_input", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0", "Port" : "y0_input"}]},
			{"Name" : "layer18_out", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0", "Port" : "layer18_out"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "sX_3"}]},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "sY_3"}]},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "pY_3"}]},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "pX_3"}]},
			{"Name" : "outidx_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "outidx_2"}]},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Port" : "w2"}]},
			{"Name" : "sY_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "sY_1"}]},
			{"Name" : "pY_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "pY_1"}]},
			{"Name" : "pX_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "pX_1"}]},
			{"Name" : "sX_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "sX_1"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_6"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_5"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_4"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_3"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_14"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_13"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_12"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_11"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_3"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_2"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_1"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_7"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_6"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_2"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_5"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_4"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E"}]},
			{"Name" : "sX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "sX_2"}]},
			{"Name" : "sY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "sY_2"}]},
			{"Name" : "pY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "pY_2"}]},
			{"Name" : "pX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "pX_2"}]},
			{"Name" : "outidx_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "outidx_1"}]},
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Port" : "w6"}]},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "sY"}]},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "pY"}]},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "pX"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "sX"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_2"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_1"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_10"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_9"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_8"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_7"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_6"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_5"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_4"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_3"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_1"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_6"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_5"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_4"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_3"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_2"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_1"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "dense_array_ap_fixed_43u_array_ap_fixed_16_6_5_3_0_7u_config13_U0", "Port" : "outidx"}]},
			{"Name" : "w13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "dense_array_ap_fixed_43u_array_ap_fixed_16_6_5_3_0_7u_config13_U0", "Port" : "w13"}]},
			{"Name" : "w16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "dense_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_1u_config16_U0", "Port" : "w16"}]},
			{"Name" : "sigmoid_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0", "Port" : "sigmoid_table"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0", "Parent" : "0", "Child" : ["2", "4", "6", "8"],
		"CDFG" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "163", "EstimateLatencyMax" : "163",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "y_profile_input", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadMain_fu_34", "Port" : "y_profile_input", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer19_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "88", "DependentChanDepth" : "150", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_fixed_1u_config19_Pipeline_PadBottomWidth_fu_42", "Port" : "layer19_out", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "2", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadTopWidth_fu_28", "Port" : "layer19_out", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "4", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadMain_fu_34", "Port" : "layer19_out", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadTopWidth_fu_28", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadTopWidth",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer19_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer19_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "PadTopWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadTopWidth_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadMain_fu_34", "Parent" : "1", "Child" : ["5"],
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadMain",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "122", "EstimateLatencyMax" : "122",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer19_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer19_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_profile_input", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "y_profile_input_TDATA_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "PadMain", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadMain_fu_34.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_1u_config19_Pipeline_PadBottomWidth_fu_42", "Parent" : "1", "Child" : ["7"],
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_1u_config19_Pipeline_PadBottomWidth",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer19_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer19_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "PadBottomWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.grp_zeropad2d_cl_array_array_ap_fixed_1u_config19_Pipeline_PadBottomWidth_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_U0.regslice_both_y_profile_input_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "601", "EstimateLatencyMax" : "6301",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U",
		"Port" : [
			{"Name" : "layer19_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "88", "DependentChanDepth" : "150", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer19_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "89", "DependentChanDepth" : "104", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "layer2_out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "sX_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "sY_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "pY_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "pX_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "outidx_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "outidx_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Port" : "w2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "ReadInputHeight_ReadInputWidth", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80", "Parent" : "9", "Child" : ["11", "14"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "40",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_elem_0_0_0_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer2_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "14", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "outidx_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123", "Port" : "outidx_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123", "Port" : "w2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80.call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95", "Parent" : "10", "Child" : ["12", "13"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_elem_0_0_0_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80.call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95.void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80.call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_95.void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80.grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123", "Parent" : "10", "Child" : ["15", "16", "17", "18", "19"],
		"CDFG" : "dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "outidx_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80.grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123.outidx_2_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80.grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123.w2_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80.grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123.mux_9_4_16_1_1_U19", "Parent" : "14"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80.grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123.mul_16s_9s_22_1_1_U20", "Parent" : "14"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_80.grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_123.mux_4_2_15_1_1_U21", "Parent" : "14"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_4u_array_ap_ufixed_10_0_4_0_0_4u_relu_config4_U0", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "relu_array_ap_fixed_4u_array_ap_ufixed_10_0_4_0_0_4u_relu_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "106", "EstimateLatencyMax" : "106",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "9",
		"StartFifo" : "start_for_relu_array_ap_fixed_4u_array_ap_ufixed_10_0_4_0_0_4u_relu_config4_U0_U",
		"Port" : [
			{"Name" : "layer2_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "89", "DependentChanDepth" : "104", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "90", "DependentChanDepth" : "104", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer4_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "ReLUActLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_4u_array_ap_ufixed_10_0_4_0_0_4u_relu_config4_U0.flow_control_loop_pipe_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "Parent" : "0", "Child" : ["23", "24", "25", "26", "27"],
		"CDFG" : "pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "107", "EstimateLatencyMax" : "107",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "20",
		"StartFifo" : "start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configLf8_U",
		"Port" : [
			{"Name" : "layer4_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "90", "DependentChanDepth" : "104", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["28"], "DependentChan" : "91", "DependentChanDepth" : "24", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sY_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "ReadInputHeight_ReadInputWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0.void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_3_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0.void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_2_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0.void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_1_U", "Parent" : "22"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0.void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_U", "Parent" : "22"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0.flow_control_loop_pipe_U", "Parent" : "22"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config20_U0", "Parent" : "0", "Child" : ["29", "31", "33"],
		"CDFG" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config20_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "61", "EstimateLatencyMax" : "61",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "22",
		"StartFifo" : "start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config2Mgi_U",
		"Port" : [
			{"Name" : "layer5_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "91", "DependentChanDepth" : "24", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config20_Pipeline_PadMain_fu_28", "Port" : "layer5_out", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "layer20_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["35"], "DependentChan" : "92", "DependentChanDepth" : "48", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_fixed_4u_config20_Pipeline_PadBottomWidth_fu_36", "Port" : "layer20_out", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "29", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config20_Pipeline_PadTopWidth_fu_22", "Port" : "layer20_out", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "31", "SubInstance" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config20_Pipeline_PadMain_fu_28", "Port" : "layer20_out", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config20_Pipeline_PadTopWidth_fu_22", "Parent" : "28", "Child" : ["30"],
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config20_Pipeline_PadTopWidth",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer20_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer20_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "PadTopWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config20_Pipeline_PadTopWidth_fu_22.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config20_Pipeline_PadMain_fu_28", "Parent" : "28", "Child" : ["32"],
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config20_Pipeline_PadMain",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer20_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer20_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer5_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "layer5_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "PadMain", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config20_Pipeline_PadMain_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_4u_config20_Pipeline_PadBottomWidth_fu_36", "Parent" : "28", "Child" : ["34"],
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_4u_config20_Pipeline_PadBottomWidth",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer20_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer20_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "PadBottomWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config20_U0.grp_zeropad2d_cl_array_array_ap_fixed_4u_config20_Pipeline_PadBottomWidth_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0", "Parent" : "0", "Child" : ["36"],
		"CDFG" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "193", "EstimateLatencyMax" : "12385",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "28",
		"StartFifo" : "start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0_U",
		"Port" : [
			{"Name" : "layer20_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["28"], "DependentChan" : "92", "DependentChanDepth" : "48", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer20_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "93", "DependentChanDepth" : "24", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "layer6_out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "sX_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "sY_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "pY_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "pX_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "outidx_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "outidx_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Port" : "w6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "ReadInputHeight_ReadInputWidth", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160", "Parent" : "35", "Child" : ["37", "46"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "256",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer6_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_7", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_3", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_6", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_2", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_5", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_1", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_4", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "sX_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "outidx_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "outidx_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Port" : "w6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185", "Parent" : "36", "Child" : ["38", "39", "40", "41", "42", "43", "44", "45"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_7_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_3_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_6_U", "Parent" : "37"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_2_U", "Parent" : "37"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_5_U", "Parent" : "37"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_1_U", "Parent" : "37"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_4_U", "Parent" : "37"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s_fu_185.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_U", "Parent" : "37"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285", "Parent" : "36", "Child" : ["47", "48", "49", "50", "51"],
		"CDFG" : "dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "252", "EstimateLatencyMax" : "253",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "outidx_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285.outidx_1_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285.w6_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285.mux_36_6_16_1_1_U92", "Parent" : "46"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285.mul_16s_9s_22_1_1_U93", "Parent" : "46"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0.grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s_fu_160.grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_285.mux_7_3_15_1_1_U94", "Parent" : "46"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_7u_array_ap_ufixed_10_0_4_0_0_7u_relu_config8_U0", "Parent" : "0", "Child" : ["53"],
		"CDFG" : "relu_array_ap_fixed_7u_array_ap_ufixed_10_0_4_0_0_7u_relu_config8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "35",
		"StartFifo" : "start_for_relu_array_ap_fixed_7u_array_ap_ufixed_10_0_4_0_0_7u_relu_config8_U0_U",
		"Port" : [
			{"Name" : "layer6_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["35"], "DependentChan" : "93", "DependentChanDepth" : "24", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer8_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["54"], "DependentChan" : "94", "DependentChanDepth" : "24", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer8_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "ReLUActLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_7u_array_ap_ufixed_10_0_4_0_0_7u_relu_config8_U0.flow_control_loop_pipe_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0", "Parent" : "0", "Child" : ["55", "56", "57", "58", "59", "60", "61", "62"],
		"CDFG" : "pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "52",
		"StartFifo" : "start_for_pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_configNgs_U",
		"Port" : [
			{"Name" : "layer8_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["52"], "DependentChan" : "94", "DependentChanDepth" : "24", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer8_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer9_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["63"], "DependentChan" : "95", "DependentChanDepth" : "6", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer9_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "ReadInputHeight_ReadInputWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_6_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_5_U", "Parent" : "54"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_4_U", "Parent" : "54"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_3_U", "Parent" : "54"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_2_U", "Parent" : "54"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_1_U", "Parent" : "54"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0.void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_U", "Parent" : "54"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_U0.flow_control_loop_pipe_U", "Parent" : "54"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0", "Parent" : "0", "Child" : ["64", "65", "66", "67", "68", "69", "70", "71", "73"],
		"CDFG" : "concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "54",
		"StartFifo" : "start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0_U",
		"Port" : [
			{"Name" : "layer9_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["54"], "DependentChan" : "95", "DependentChanDepth" : "6", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_concatenate1d_array_array_array_ap_fixed_43u_config12_Pipeline_ConcatLoop1_fu_484", "Port" : "layer9_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "y0_input", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "y0_input_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer12_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["74"], "DependentChan" : "96", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer12_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0.out_data_U", "Parent" : "63"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0.out_data_1_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0.out_data_2_U", "Parent" : "63"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0.out_data_3_U", "Parent" : "63"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0.out_data_4_U", "Parent" : "63"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0.out_data_5_U", "Parent" : "63"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0.out_data_6_U", "Parent" : "63"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0.grp_concatenate1d_array_array_array_ap_fixed_43u_config12_Pipeline_ConcatLoop1_fu_484", "Parent" : "63", "Child" : ["72"],
		"CDFG" : "concatenate1d_array_array_array_ap_fixed_43u_config12_Pipeline_ConcatLoop1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_data_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_data_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_data_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_data_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_data_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_data_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "layer9_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "layer9_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "ConcatLoop1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0.grp_concatenate1d_array_array_array_ap_fixed_43u_config12_Pipeline_ConcatLoop1_fu_484.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0.regslice_both_y0_input_U", "Parent" : "63"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_43u_array_ap_fixed_16_6_5_3_0_7u_config13_U0", "Parent" : "0", "Child" : ["75", "76", "77", "78", "79"],
		"CDFG" : "dense_array_ap_fixed_43u_array_ap_fixed_16_6_5_3_0_7u_config13_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "303", "EstimateLatencyMax" : "304",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "63",
		"StartFifo" : "start_for_dense_array_ap_fixed_43u_array_ap_fixed_16_6_5_3_0_7u_config13_U0_U",
		"Port" : [
			{"Name" : "layer12_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["63"], "DependentChan" : "96", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer12_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer13_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["80"], "DependentChan" : "97", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer13_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w13", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_43u_array_ap_fixed_16_6_5_3_0_7u_config13_U0.outidx_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_43u_array_ap_fixed_16_6_5_3_0_7u_config13_U0.w13_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_43u_array_ap_fixed_16_6_5_3_0_7u_config13_U0.mux_43_6_16_1_1_U160", "Parent" : "74"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_43u_array_ap_fixed_16_6_5_3_0_7u_config13_U0.mul_16s_9s_22_1_1_U161", "Parent" : "74"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_43u_array_ap_fixed_16_6_5_3_0_7u_config13_U0.mux_7_3_15_1_1_U162", "Parent" : "74"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_7u_array_ap_ufixed_10_0_4_0_0_7u_relu_config15_U0", "Parent" : "0",
		"CDFG" : "relu_array_ap_fixed_7u_array_ap_ufixed_10_0_4_0_0_7u_relu_config15_s",
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
		"StartSource" : "74",
		"StartFifo" : "start_for_relu_array_ap_fixed_7u_array_ap_ufixed_10_0_4_0_0_7u_relu_config15_U0_U",
		"Port" : [
			{"Name" : "layer13_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["74"], "DependentChan" : "97", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer13_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer15_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["81"], "DependentChan" : "98", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer15_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_1u_config16_U0", "Parent" : "0", "Child" : ["82", "83", "84"],
		"CDFG" : "dense_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_1u_config16_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "80",
		"StartFifo" : "start_for_dense_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_1u_config16_U0_U",
		"Port" : [
			{"Name" : "layer15_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["80"], "DependentChan" : "98", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer15_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer16_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["85"], "DependentChan" : "99", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer16_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w16", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.w16_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.mux_7_3_10_1_1_U170", "Parent" : "81"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.mul_10s_10ns_20_1_1_U171", "Parent" : "81"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0", "Parent" : "0", "Child" : ["86", "87"],
		"CDFG" : "sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "81",
		"StartFifo" : "start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0_U",
		"Port" : [
			{"Name" : "layer16_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["81"], "DependentChan" : "99", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer16_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer18_out", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer18_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sigmoid_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.sigmoid_table_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0.regslice_both_layer18_out_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer19_out_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_out_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_out_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer5_out_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer20_out_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer6_out_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer8_out_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer9_out_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer12_out_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer13_out_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer15_out_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer16_out_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_4u_array_ap_ufixed_10_0_4_0_0_4u_relu_config4_U0_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_configLf8_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config2Mgi_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_U0_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_7u_array_ap_ufixed_10_0_4_0_0_7u_relu_config8_U0_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_configNgs_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_U0_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dense_array_ap_fixed_43u_array_ap_fixed_16_6_5_3_0_7u_config13_U0_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_7u_array_ap_ufixed_10_0_4_0_0_7u_relu_config15_U0_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dense_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_1u_config16_U0_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		y_profile_input {Type I LastRead 13 FirstWrite -1}
		y0_input {Type I LastRead 5 FirstWrite -1}
		layer18_out {Type O LastRead -1 FirstWrite 2}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 {Type IO LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}
		outidx_2 {Type I LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}
		sY_1 {Type IO LastRead -1 FirstWrite -1}
		pY_1 {Type IO LastRead -1 FirstWrite -1}
		pX_1 {Type IO LastRead -1 FirstWrite -1}
		sX_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_6 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_5 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_11 {Type IO LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer {Type X LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_7 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_3 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_6 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_2 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_5 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_1 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_4 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E {Type X LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}
		outidx_1 {Type I LastRead -1 FirstWrite -1}
		w6 {Type I LastRead -1 FirstWrite -1}
		sY {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_2 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a {Type IO LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_6 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_5 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_4 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer {Type X LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w13 {Type I LastRead -1 FirstWrite -1}
		w16 {Type I LastRead -1 FirstWrite -1}
		sigmoid_table {Type I LastRead -1 FirstWrite -1}}
	zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config19_s {
		y_profile_input {Type I LastRead 13 FirstWrite -1}
		layer19_out {Type O LastRead -1 FirstWrite 1}}
	zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadTopWidth {
		layer19_out {Type O LastRead -1 FirstWrite 1}}
	zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config19_Pipeline_PadMain {
		layer19_out {Type O LastRead -1 FirstWrite 1}
		y_profile_input {Type I LastRead 13 FirstWrite -1}}
	zeropad2d_cl_array_array_ap_fixed_1u_config19_Pipeline_PadBottomWidth {
		layer19_out {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_s {
		layer19_out {Type I LastRead 1 FirstWrite -1}
		layer2_out {Type O LastRead -1 FirstWrite 3}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 {Type IO LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}
		outidx_2 {Type I LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s {
		in_elem_0_0_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		layer2_out {Type O LastRead -1 FirstWrite 3}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 {Type IO LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}
		outidx_2 {Type I LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s {
		in_elem_0_0_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 {Type O LastRead -1 FirstWrite 0}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}}
	dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s {
		outidx_2 {Type I LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 {Type I LastRead 1 FirstWrite -1}}
	relu_array_ap_fixed_4u_array_ap_ufixed_10_0_4_0_0_4u_relu_config4_s {
		layer2_out {Type I LastRead 1 FirstWrite -1}
		layer4_out {Type O LastRead -1 FirstWrite 1}}
	pooling2d_cl_array_ap_ufixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_s {
		layer4_out {Type I LastRead 1 FirstWrite -1}
		layer5_out {Type O LastRead -1 FirstWrite 2}
		sY_1 {Type IO LastRead -1 FirstWrite -1}
		pY_1 {Type IO LastRead -1 FirstWrite -1}
		pX_1 {Type IO LastRead -1 FirstWrite -1}
		sX_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_6 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_5 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_11 {Type IO LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_4u_0_line_buffer {Type X LastRead -1 FirstWrite -1}}
	zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config20_s {
		layer5_out {Type I LastRead 6 FirstWrite -1}
		layer20_out {Type O LastRead -1 FirstWrite 1}}
	zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config20_Pipeline_PadTopWidth {
		layer20_out {Type O LastRead -1 FirstWrite 1}}
	zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config20_Pipeline_PadMain {
		layer20_out {Type O LastRead -1 FirstWrite 1}
		layer5_out {Type I LastRead 6 FirstWrite -1}}
	zeropad2d_cl_array_array_ap_fixed_4u_config20_Pipeline_PadBottomWidth {
		layer20_out {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_7u_config6_s {
		layer20_out {Type I LastRead 1 FirstWrite -1}
		layer6_out {Type O LastRead -1 FirstWrite 3}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_7 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_3 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_6 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_2 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_5 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_1 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_4 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E {Type X LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}
		outidx_1 {Type I LastRead -1 FirstWrite -1}
		w6 {Type I LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_7u_config6_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		layer6_out {Type O LastRead -1 FirstWrite 3}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_7 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_3 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_6 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_2 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_5 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_1 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_4 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E {Type X LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}
		outidx_1 {Type I LastRead -1 FirstWrite -1}
		w6 {Type I LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config6_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_7 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_3 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_6 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_2 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_5 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_1 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E_4 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5E {Type X LastRead -1 FirstWrite -1}}
	dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s {
		outidx_1 {Type I LastRead -1 FirstWrite -1}
		w6 {Type I LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_25 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_24 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_23 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_22 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_21 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_20 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_19 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_18 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_17 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_16 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_15 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_14 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_13 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_12 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_11 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_10 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_9 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_8 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_7 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_6 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_5 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_4 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_3 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_2 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9_1 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9 {Type I LastRead 1 FirstWrite -1}}
	relu_array_ap_fixed_7u_array_ap_ufixed_10_0_4_0_0_7u_relu_config8_s {
		layer6_out {Type I LastRead 1 FirstWrite -1}
		layer8_out {Type O LastRead -1 FirstWrite 1}}
	pooling2d_cl_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_7u_config9_s {
		layer8_out {Type I LastRead 1 FirstWrite -1}
		layer9_out {Type O LastRead -1 FirstWrite 2}
		sY {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_2 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI9ap_ufixedILi10ELi0EL9ap_q_mode4EL9a {Type IO LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_6 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_5 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_4 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_7u_0_line_buffer {Type X LastRead -1 FirstWrite -1}}
	concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_s {
		layer9_out {Type I LastRead 1 FirstWrite -1}
		y0_input {Type I LastRead 5 FirstWrite -1}
		layer12_out {Type O LastRead -1 FirstWrite 5}}
	concatenate1d_array_array_array_ap_fixed_43u_config12_Pipeline_ConcatLoop1 {
		out_data_6 {Type O LastRead -1 FirstWrite 1}
		out_data_5 {Type O LastRead -1 FirstWrite 1}
		out_data_4 {Type O LastRead -1 FirstWrite 1}
		out_data_3 {Type O LastRead -1 FirstWrite 1}
		out_data_2 {Type O LastRead -1 FirstWrite 1}
		out_data_1 {Type O LastRead -1 FirstWrite 1}
		out_data {Type O LastRead -1 FirstWrite 1}
		layer9_out {Type I LastRead 1 FirstWrite -1}}
	dense_array_ap_fixed_43u_array_ap_fixed_16_6_5_3_0_7u_config13_s {
		layer12_out {Type I LastRead 2 FirstWrite -1}
		layer13_out {Type O LastRead -1 FirstWrite 4}
		outidx {Type I LastRead -1 FirstWrite -1}
		w13 {Type I LastRead -1 FirstWrite -1}}
	relu_array_ap_fixed_7u_array_ap_ufixed_10_0_4_0_0_7u_relu_config15_s {
		layer13_out {Type I LastRead 0 FirstWrite -1}
		layer15_out {Type O LastRead -1 FirstWrite 0}}
	dense_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_1u_config16_s {
		layer15_out {Type I LastRead 2 FirstWrite -1}
		layer16_out {Type O LastRead -1 FirstWrite 3}
		w16 {Type I LastRead -1 FirstWrite -1}}
	sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config18_s {
		layer16_out {Type I LastRead 0 FirstWrite -1}
		layer18_out {Type O LastRead -1 FirstWrite 2}
		sigmoid_table {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12153", "Max" : "12404"}
	, {"Name" : "Interval", "Min" : "602", "Max" : "12386"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y_profile_input { axis {  { y_profile_input_TDATA in_data 0 16 }  { y_profile_input_TVALID in_vld 0 1 }  { y_profile_input_TREADY in_acc 1 1 } } }
	y0_input { axis {  { y0_input_TDATA in_data 0 16 }  { y0_input_TVALID in_vld 0 1 }  { y0_input_TREADY in_acc 1 1 } } }
	layer18_out { axis {  { layer18_out_TDATA out_data 1 16 }  { layer18_out_TVALID out_vld 1 1 }  { layer18_out_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName myproject
set isTopModule 1
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
set C_modelName {myproject}
set C_modelType { void 0 }
set C_modelArgList {
	{ y_timed_input int 1680 regular {axi_s 0 volatile  { y_timed_input Data } }  }
	{ layer12_out int 48 regular {axi_s 1 volatile  { layer12_out Data } }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "y_timed_input", "interface" : "axis", "bitwidth" : 1680, "direction" : "READONLY"} , 
 	{ "Name" : "layer12_out", "interface" : "axis", "bitwidth" : 48, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ y_timed_input_TDATA sc_in sc_lv 1680 signal 0 } 
	{ layer12_out_TDATA sc_out sc_lv 48 signal 1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ y_timed_input_TVALID sc_in sc_logic 1 invld 0 } 
	{ y_timed_input_TREADY sc_out sc_logic 1 inacc 0 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ layer12_out_TVALID sc_out sc_logic 1 outvld 1 } 
	{ layer12_out_TREADY sc_in sc_logic 1 outacc 1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "y_timed_input_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1680, "type": "signal", "bundle":{"name": "y_timed_input", "role": "TDATA" }} , 
 	{ "name": "layer12_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "layer12_out", "role": "TDATA" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "y_timed_input_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "y_timed_input", "role": "TVALID" }} , 
 	{ "name": "y_timed_input_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "y_timed_input", "role": "TREADY" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "layer12_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer12_out", "role": "TVALID" }} , 
 	{ "name": "layer12_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer12_out", "role": "TREADY" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "8", "9", "10", "11", "13", "19", "20", "21", "22", "24", "30", "31", "32", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3362", "EstimateLatencyMax" : "3363",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_U0"}],
		"OutputProcess" : [
			{"ID" : "32", "Name" : "softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0"}],
		"Port" : [
			{"Name" : "y_timed_input", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_U0", "Port" : "y_timed_input"}]},
			{"Name" : "layer12_out", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0", "Port" : "layer12_out"}]},
			{"Name" : "outidx_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_U0", "Port" : "outidx_2"}]},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_U0", "Port" : "w2"}]},
			{"Name" : "outidx_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_U0", "Port" : "outidx_1"}]},
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_U0", "Port" : "w6"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_U0", "Port" : "outidx"}]},
			{"Name" : "w10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_U0", "Port" : "w10"}]},
			{"Name" : "exp_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0", "Port" : "exp_table"}]},
			{"Name" : "invert_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0", "Port" : "invert_table"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7"],
		"CDFG" : "dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3362", "EstimateLatencyMax" : "3363",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "y_timed_input", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "y_timed_input_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["8"], "DependentChan" : "38", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outidx_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_U0.outidx_2_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_U0.w2_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_U0.mux_105_7_16_1_1_U1", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_U0.mul_16s_10s_24_1_1_U2", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_U0.mux_32_5_15_1_1_U3", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_U0.regslice_both_y_timed_input_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_array_ap_fixed_32u_array_ap_fixed_15_5_5_3_0_32u_config13_U0", "Parent" : "0",
		"CDFG" : "normalize_array_ap_fixed_32u_array_ap_fixed_15_5_5_3_0_32u_config13_s",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_normalize_array_ap_fixed_32u_array_ap_fixed_15_5_5_3_0_32u_config13ibs_U",
		"Port" : [
			{"Name" : "layer2_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "38", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer13_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "39", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer13_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linear_array_array_ap_fixed_16_6_5_3_0_32u_linear_config3_U0", "Parent" : "0",
		"CDFG" : "linear_array_array_ap_fixed_16_6_5_3_0_32u_linear_config3_s",
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
		"StartSource" : "8",
		"StartFifo" : "start_for_linear_array_array_ap_fixed_16_6_5_3_0_32u_linear_config3_U0_U",
		"Port" : [
			{"Name" : "layer13_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "39", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer13_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["10"], "DependentChan" : "40", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer3_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_32u_array_ap_ufixed_15_0_4_0_0_32u_relu_config4_U0", "Parent" : "0",
		"CDFG" : "relu_array_ap_fixed_32u_array_ap_ufixed_15_0_4_0_0_32u_relu_config4_s",
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
		"StartSource" : "9",
		"StartFifo" : "start_for_relu_array_ap_fixed_32u_array_ap_ufixed_15_0_4_0_0_32u_relu_config4jbC_U",
		"Port" : [
			{"Name" : "layer3_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "40", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer4_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "41", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer4_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_array_ap_ufixed_32u_array_ap_fixed_16_6_5_3_0_32u_config5_U0", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "normalize_array_ap_ufixed_32u_array_ap_fixed_16_6_5_3_0_32u_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30", "EstimateLatencyMax" : "30",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "10",
		"StartFifo" : "start_for_normalize_array_ap_ufixed_32u_array_ap_fixed_16_6_5_3_0_32u_config5kbM_U",
		"Port" : [
			{"Name" : "layer4_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "41", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "42", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer5_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_array_ap_ufixed_32u_array_ap_fixed_16_6_5_3_0_32u_config5_U0.mul_15ns_17s_31_1_1_U18", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_U0", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18"],
		"CDFG" : "dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "514", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "11",
		"StartFifo" : "start_for_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_U0_U",
		"Port" : [
			{"Name" : "layer5_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "42", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer6_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["19"], "DependentChan" : "43", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outidx_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_U0.outidx_1_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_U0.w6_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_U0.mux_32_5_16_1_1_U22", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_U0.mul_16s_10s_24_1_1_U23", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_U0.mux_16_4_15_1_1_U24", "Parent" : "13"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_array_ap_fixed_16u_array_ap_fixed_15_5_5_3_0_16u_config14_U0", "Parent" : "0",
		"CDFG" : "normalize_array_ap_fixed_16u_array_ap_fixed_15_5_5_3_0_16u_config14_s",
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
		"StartSource" : "13",
		"StartFifo" : "start_for_normalize_array_ap_fixed_16u_array_ap_fixed_15_5_5_3_0_16u_config14lbW_U",
		"Port" : [
			{"Name" : "layer6_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "43", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer14_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["20"], "DependentChan" : "44", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer14_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linear_array_array_ap_fixed_16_6_5_3_0_16u_linear_config7_U0", "Parent" : "0",
		"CDFG" : "linear_array_array_ap_fixed_16_6_5_3_0_16u_linear_config7_s",
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
		"StartSource" : "19",
		"StartFifo" : "start_for_linear_array_array_ap_fixed_16_6_5_3_0_16u_linear_config7_U0_U",
		"Port" : [
			{"Name" : "layer14_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["19"], "DependentChan" : "44", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer14_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer7_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "45", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer7_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_array_ap_fixed_16u_array_ap_ufixed_15_0_4_0_0_16u_relu_config8_U0", "Parent" : "0",
		"CDFG" : "relu_array_ap_fixed_16u_array_ap_ufixed_15_0_4_0_0_16u_relu_config8_s",
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
		"StartSource" : "20",
		"StartFifo" : "start_for_relu_array_ap_fixed_16u_array_ap_ufixed_15_0_4_0_0_16u_relu_config8mb6_U",
		"Port" : [
			{"Name" : "layer7_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["20"], "DependentChan" : "45", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer7_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer8_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "46", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer8_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_array_ap_ufixed_16u_array_ap_fixed_16_6_5_3_0_16u_config9_U0", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "normalize_array_ap_ufixed_16u_array_ap_fixed_16_6_5_3_0_16u_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "21",
		"StartFifo" : "start_for_normalize_array_ap_ufixed_16u_array_ap_fixed_16_6_5_3_0_16u_config9ncg_U",
		"Port" : [
			{"Name" : "layer8_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["21"], "DependentChan" : "46", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer8_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer9_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["24"], "DependentChan" : "47", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer9_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.normalize_array_ap_ufixed_16u_array_ap_fixed_16_6_5_3_0_16u_config9_U0.mul_15ns_14ns_28_1_1_U37", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_U0", "Parent" : "0", "Child" : ["25", "26", "27", "28", "29"],
		"CDFG" : "dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "22",
		"StartFifo" : "start_for_dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_U0_U",
		"Port" : [
			{"Name" : "layer9_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "47", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer9_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer10_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["30"], "DependentChan" : "48", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer10_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w10", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_U0.outidx_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_U0.w10_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_U0.mux_16_4_16_1_1_U41", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_U0.mul_16s_10s_24_1_1_U42", "Parent" : "24"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_U0.mux_3_2_15_1_1_U43", "Parent" : "24"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.normalize_array_ap_fixed_3u_array_ap_fixed_15_5_5_3_0_3u_config15_U0", "Parent" : "0",
		"CDFG" : "normalize_array_ap_fixed_3u_array_ap_fixed_15_5_5_3_0_3u_config15_s",
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
		"StartSource" : "24",
		"StartFifo" : "start_for_normalize_array_ap_fixed_3u_array_ap_fixed_15_5_5_3_0_3u_config15_U0_U",
		"Port" : [
			{"Name" : "layer10_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["24"], "DependentChan" : "48", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer10_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer15_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "49", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer15_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linear_array_array_ap_fixed_16_6_5_3_0_3u_linear_config11_U0", "Parent" : "0",
		"CDFG" : "linear_array_array_ap_fixed_16_6_5_3_0_3u_linear_config11_s",
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
		"StartSource" : "30",
		"StartFifo" : "start_for_linear_array_array_ap_fixed_16_6_5_3_0_3u_linear_config11_U0_U",
		"Port" : [
			{"Name" : "layer15_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["30"], "DependentChan" : "49", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer15_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer11_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["32"], "DependentChan" : "50", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer11_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0", "Parent" : "0", "Child" : ["33", "37"],
		"CDFG" : "softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "31",
		"StartFifo" : "start_for_softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0_U",
		"Port" : [
			{"Name" : "layer11_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["31"], "DependentChan" : "50", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s_fu_26", "Port" : "layer11_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "layer12_out", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s_fu_26", "Port" : "layer12_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "exp_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s_fu_26", "Port" : "exp_table", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "invert_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s_fu_26", "Port" : "invert_table", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0.grp_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s_fu_26", "Parent" : "32", "Child" : ["34", "35", "36"],
		"CDFG" : "softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer11_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "layer11_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer12_out", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer12_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "exp_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "invert_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0.grp_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s_fu_26.exp_table_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0.grp_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s_fu_26.invert_table_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0.grp_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s_fu_26.mul_18s_17ns_26_1_1_U54", "Parent" : "33"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0.regslice_both_layer12_out_U", "Parent" : "32"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_out_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer13_out_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_out_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_out_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer5_out_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer6_out_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer14_out_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer7_out_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer8_out_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer9_out_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer10_out_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer15_out_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer11_out_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_normalize_array_ap_fixed_32u_array_ap_fixed_15_5_5_3_0_32u_config13ibs_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_linear_array_array_ap_fixed_16_6_5_3_0_32u_linear_config3_U0_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_32u_array_ap_ufixed_15_0_4_0_0_32u_relu_config4jbC_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_normalize_array_ap_ufixed_32u_array_ap_fixed_16_6_5_3_0_32u_config5kbM_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_U0_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_normalize_array_ap_fixed_16u_array_ap_fixed_15_5_5_3_0_16u_config14lbW_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_linear_array_array_ap_fixed_16_6_5_3_0_16u_linear_config7_U0_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_array_ap_fixed_16u_array_ap_ufixed_15_0_4_0_0_16u_relu_config8mb6_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_normalize_array_ap_ufixed_16u_array_ap_fixed_16_6_5_3_0_16u_config9ncg_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_U0_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_normalize_array_ap_fixed_3u_array_ap_fixed_15_5_5_3_0_3u_config15_U0_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_linear_array_array_ap_fixed_16_6_5_3_0_3u_linear_config11_U0_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	myproject {
		y_timed_input {Type I LastRead 1 FirstWrite -1}
		layer12_out {Type O LastRead -1 FirstWrite 5}
		outidx_2 {Type I LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}
		outidx_1 {Type I LastRead -1 FirstWrite -1}
		w6 {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w10 {Type I LastRead -1 FirstWrite -1}
		exp_table {Type I LastRead -1 FirstWrite -1}
		invert_table {Type I LastRead -1 FirstWrite -1}}
	dense_array_ap_fixed_105u_array_ap_fixed_16_6_5_3_0_32u_config2_s {
		y_timed_input {Type I LastRead 1 FirstWrite -1}
		layer2_out {Type O LastRead -1 FirstWrite 4}
		outidx_2 {Type I LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}}
	normalize_array_ap_fixed_32u_array_ap_fixed_15_5_5_3_0_32u_config13_s {
		layer2_out {Type I LastRead 0 FirstWrite -1}
		layer13_out {Type O LastRead -1 FirstWrite 0}}
	linear_array_array_ap_fixed_16_6_5_3_0_32u_linear_config3_s {
		layer13_out {Type I LastRead 0 FirstWrite -1}
		layer3_out {Type O LastRead -1 FirstWrite 0}}
	relu_array_ap_fixed_32u_array_ap_ufixed_15_0_4_0_0_32u_relu_config4_s {
		layer3_out {Type I LastRead 0 FirstWrite -1}
		layer4_out {Type O LastRead -1 FirstWrite 0}}
	normalize_array_ap_ufixed_32u_array_ap_fixed_16_6_5_3_0_32u_config5_s {
		layer4_out {Type I LastRead 0 FirstWrite -1}
		layer5_out {Type O LastRead -1 FirstWrite 30}}
	dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_16u_config6_s {
		layer5_out {Type I LastRead 2 FirstWrite -1}
		layer6_out {Type O LastRead -1 FirstWrite 4}
		outidx_1 {Type I LastRead -1 FirstWrite -1}
		w6 {Type I LastRead -1 FirstWrite -1}}
	normalize_array_ap_fixed_16u_array_ap_fixed_15_5_5_3_0_16u_config14_s {
		layer6_out {Type I LastRead 0 FirstWrite -1}
		layer14_out {Type O LastRead -1 FirstWrite 0}}
	linear_array_array_ap_fixed_16_6_5_3_0_16u_linear_config7_s {
		layer14_out {Type I LastRead 0 FirstWrite -1}
		layer7_out {Type O LastRead -1 FirstWrite 0}}
	relu_array_ap_fixed_16u_array_ap_ufixed_15_0_4_0_0_16u_relu_config8_s {
		layer7_out {Type I LastRead 0 FirstWrite -1}
		layer8_out {Type O LastRead -1 FirstWrite 0}}
	normalize_array_ap_ufixed_16u_array_ap_fixed_16_6_5_3_0_16u_config9_s {
		layer8_out {Type I LastRead 0 FirstWrite -1}
		layer9_out {Type O LastRead -1 FirstWrite 15}}
	dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_3u_config10_s {
		layer9_out {Type I LastRead 2 FirstWrite -1}
		layer10_out {Type O LastRead -1 FirstWrite 3}
		outidx {Type I LastRead -1 FirstWrite -1}
		w10 {Type I LastRead -1 FirstWrite -1}}
	normalize_array_ap_fixed_3u_array_ap_fixed_15_5_5_3_0_3u_config15_s {
		layer10_out {Type I LastRead 0 FirstWrite -1}
		layer15_out {Type O LastRead -1 FirstWrite 0}}
	linear_array_array_ap_fixed_16_6_5_3_0_3u_linear_config11_s {
		layer15_out {Type I LastRead 0 FirstWrite -1}
		layer11_out {Type O LastRead -1 FirstWrite 0}}
	softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s {
		layer11_out {Type I LastRead 0 FirstWrite -1}
		layer12_out {Type O LastRead -1 FirstWrite 5}
		exp_table {Type I LastRead -1 FirstWrite -1}
		invert_table {Type I LastRead -1 FirstWrite -1}}
	softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config12_s {
		layer11_out {Type I LastRead 0 FirstWrite -1}
		layer12_out {Type O LastRead -1 FirstWrite 5}
		exp_table {Type I LastRead -1 FirstWrite -1}
		invert_table {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3362", "Max" : "3363"}
	, {"Name" : "Interval", "Min" : "3360", "Max" : "3360"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	y_timed_input { axis {  { y_timed_input_TDATA in_data 0 1680 }  { y_timed_input_TVALID in_vld 0 1 }  { y_timed_input_TREADY in_acc 1 1 } } }
	layer12_out { axis {  { layer12_out_TDATA out_data 1 48 }  { layer12_out_TVALID out_vld 1 1 }  { layer12_out_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
