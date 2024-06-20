set moduleName concatenate1d_array_array_array_ap_fixed_16_6_5_3_0_43u_config12_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {concatenate1d<array,array,array<ap_fixed<16,6,5,3,0>,43u>,config12>}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer9_out int 112 regular {fifo 0 volatile }  }
	{ y0_input int 16 regular {axi_s 0 volatile  { y0_input Data } }  }
	{ layer12_out int 688 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "layer9_out", "interface" : "fifo", "bitwidth" : 112, "direction" : "READONLY"} , 
 	{ "Name" : "y0_input", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "layer12_out", "interface" : "fifo", "bitwidth" : 688, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ layer9_out_dout sc_in sc_lv 112 signal 0 } 
	{ layer9_out_num_data_valid sc_in sc_lv 4 signal 0 } 
	{ layer9_out_fifo_cap sc_in sc_lv 4 signal 0 } 
	{ layer9_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer9_out_read sc_out sc_logic 1 signal 0 } 
	{ y0_input_TDATA sc_in sc_lv 16 signal 1 } 
	{ y0_input_TVALID sc_in sc_logic 1 invld 1 } 
	{ y0_input_TREADY sc_out sc_logic 1 inacc 1 } 
	{ layer12_out_din sc_out sc_lv 688 signal 2 } 
	{ layer12_out_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ layer12_out_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ layer12_out_full_n sc_in sc_logic 1 signal 2 } 
	{ layer12_out_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "layer9_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "layer9_out", "role": "dout" }} , 
 	{ "name": "layer9_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "layer9_out", "role": "num_data_valid" }} , 
 	{ "name": "layer9_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "layer9_out", "role": "fifo_cap" }} , 
 	{ "name": "layer9_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer9_out", "role": "empty_n" }} , 
 	{ "name": "layer9_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer9_out", "role": "read" }} , 
 	{ "name": "y0_input_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "y0_input", "role": "TDATA" }} , 
 	{ "name": "y0_input_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "y0_input", "role": "TVALID" }} , 
 	{ "name": "y0_input_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "y0_input", "role": "TREADY" }} , 
 	{ "name": "layer12_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":688, "type": "signal", "bundle":{"name": "layer12_out", "role": "din" }} , 
 	{ "name": "layer12_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer12_out", "role": "num_data_valid" }} , 
 	{ "name": "layer12_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer12_out", "role": "fifo_cap" }} , 
 	{ "name": "layer12_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer12_out", "role": "full_n" }} , 
 	{ "name": "layer12_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer12_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10"],
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
		"Port" : [
			{"Name" : "layer9_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_concatenate1d_array_array_array_ap_fixed_43u_config12_Pipeline_ConcatLoop1_fu_484", "Port" : "layer9_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "y0_input", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "y0_input_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer12_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer12_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_concatenate1d_array_array_array_ap_fixed_43u_config12_Pipeline_ConcatLoop1_fu_484", "Parent" : "0", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_concatenate1d_array_array_array_ap_fixed_43u_config12_Pipeline_ConcatLoop1_fu_484.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_y0_input_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		layer9_out {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "13"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	layer9_out { ap_fifo {  { layer9_out_dout fifo_port_we 0 112 }  { layer9_out_num_data_valid fifo_status_num_data_valid 0 4 }  { layer9_out_fifo_cap fifo_update 0 4 }  { layer9_out_empty_n fifo_status 0 1 }  { layer9_out_read fifo_data 1 1 } } }
	y0_input { axis {  { y0_input_TDATA in_data 0 16 }  { y0_input_TVALID in_vld 0 1 }  { y0_input_TREADY in_acc 1 1 } } }
	layer12_out { ap_fifo {  { layer12_out_din fifo_port_we 1 688 }  { layer12_out_num_data_valid fifo_status_num_data_valid 0 2 }  { layer12_out_fifo_cap fifo_update 0 2 }  { layer12_out_full_n fifo_status 0 1 }  { layer12_out_write fifo_data 1 1 } } }
}
