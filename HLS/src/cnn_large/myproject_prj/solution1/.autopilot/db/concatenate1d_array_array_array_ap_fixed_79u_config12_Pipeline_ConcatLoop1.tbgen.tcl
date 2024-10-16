set moduleName concatenate1d_array_array_array_ap_fixed_79u_config12_Pipeline_ConcatLoop1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {concatenate1d<array,array,array<ap_fixed,79u>,config12>_Pipeline_ConcatLoop1}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_data_12 int 16 regular {array 7 { 0 3 } 0 1 }  }
	{ out_data_11 int 16 regular {array 7 { 0 3 } 0 1 }  }
	{ out_data_10 int 16 regular {array 7 { 0 3 } 0 1 }  }
	{ out_data_9 int 16 regular {array 7 { 0 3 } 0 1 }  }
	{ out_data_8 int 16 regular {array 7 { 0 3 } 0 1 }  }
	{ out_data_7 int 16 regular {array 7 { 0 3 } 0 1 }  }
	{ out_data_6 int 16 regular {array 7 { 0 3 } 0 1 }  }
	{ out_data_5 int 16 regular {array 7 { 0 3 } 0 1 }  }
	{ out_data_4 int 16 regular {array 7 { 0 3 } 0 1 }  }
	{ out_data_3 int 16 regular {array 7 { 0 3 } 0 1 }  }
	{ out_data_2 int 16 regular {array 7 { 0 3 } 0 1 }  }
	{ out_data_1 int 16 regular {array 7 { 0 3 } 0 1 }  }
	{ out_data int 16 regular {array 7 { 0 3 } 0 1 }  }
	{ layer9_out int 208 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "out_data_12", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_11", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_10", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_9", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_8", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_7", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_6", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_5", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_4", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_3", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_2", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_data", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer9_out", "interface" : "fifo", "bitwidth" : 208, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 63
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer9_out_dout sc_in sc_lv 208 signal 13 } 
	{ layer9_out_num_data_valid sc_in sc_lv 4 signal 13 } 
	{ layer9_out_fifo_cap sc_in sc_lv 4 signal 13 } 
	{ layer9_out_empty_n sc_in sc_logic 1 signal 13 } 
	{ layer9_out_read sc_out sc_logic 1 signal 13 } 
	{ out_data_12_address0 sc_out sc_lv 3 signal 0 } 
	{ out_data_12_ce0 sc_out sc_logic 1 signal 0 } 
	{ out_data_12_we0 sc_out sc_logic 1 signal 0 } 
	{ out_data_12_d0 sc_out sc_lv 16 signal 0 } 
	{ out_data_11_address0 sc_out sc_lv 3 signal 1 } 
	{ out_data_11_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_data_11_we0 sc_out sc_logic 1 signal 1 } 
	{ out_data_11_d0 sc_out sc_lv 16 signal 1 } 
	{ out_data_10_address0 sc_out sc_lv 3 signal 2 } 
	{ out_data_10_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_data_10_we0 sc_out sc_logic 1 signal 2 } 
	{ out_data_10_d0 sc_out sc_lv 16 signal 2 } 
	{ out_data_9_address0 sc_out sc_lv 3 signal 3 } 
	{ out_data_9_ce0 sc_out sc_logic 1 signal 3 } 
	{ out_data_9_we0 sc_out sc_logic 1 signal 3 } 
	{ out_data_9_d0 sc_out sc_lv 16 signal 3 } 
	{ out_data_8_address0 sc_out sc_lv 3 signal 4 } 
	{ out_data_8_ce0 sc_out sc_logic 1 signal 4 } 
	{ out_data_8_we0 sc_out sc_logic 1 signal 4 } 
	{ out_data_8_d0 sc_out sc_lv 16 signal 4 } 
	{ out_data_7_address0 sc_out sc_lv 3 signal 5 } 
	{ out_data_7_ce0 sc_out sc_logic 1 signal 5 } 
	{ out_data_7_we0 sc_out sc_logic 1 signal 5 } 
	{ out_data_7_d0 sc_out sc_lv 16 signal 5 } 
	{ out_data_6_address0 sc_out sc_lv 3 signal 6 } 
	{ out_data_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ out_data_6_we0 sc_out sc_logic 1 signal 6 } 
	{ out_data_6_d0 sc_out sc_lv 16 signal 6 } 
	{ out_data_5_address0 sc_out sc_lv 3 signal 7 } 
	{ out_data_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ out_data_5_we0 sc_out sc_logic 1 signal 7 } 
	{ out_data_5_d0 sc_out sc_lv 16 signal 7 } 
	{ out_data_4_address0 sc_out sc_lv 3 signal 8 } 
	{ out_data_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ out_data_4_we0 sc_out sc_logic 1 signal 8 } 
	{ out_data_4_d0 sc_out sc_lv 16 signal 8 } 
	{ out_data_3_address0 sc_out sc_lv 3 signal 9 } 
	{ out_data_3_ce0 sc_out sc_logic 1 signal 9 } 
	{ out_data_3_we0 sc_out sc_logic 1 signal 9 } 
	{ out_data_3_d0 sc_out sc_lv 16 signal 9 } 
	{ out_data_2_address0 sc_out sc_lv 3 signal 10 } 
	{ out_data_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ out_data_2_we0 sc_out sc_logic 1 signal 10 } 
	{ out_data_2_d0 sc_out sc_lv 16 signal 10 } 
	{ out_data_1_address0 sc_out sc_lv 3 signal 11 } 
	{ out_data_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ out_data_1_we0 sc_out sc_logic 1 signal 11 } 
	{ out_data_1_d0 sc_out sc_lv 16 signal 11 } 
	{ out_data_address0 sc_out sc_lv 3 signal 12 } 
	{ out_data_ce0 sc_out sc_logic 1 signal 12 } 
	{ out_data_we0 sc_out sc_logic 1 signal 12 } 
	{ out_data_d0 sc_out sc_lv 16 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer9_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":208, "type": "signal", "bundle":{"name": "layer9_out", "role": "dout" }} , 
 	{ "name": "layer9_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "layer9_out", "role": "num_data_valid" }} , 
 	{ "name": "layer9_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "layer9_out", "role": "fifo_cap" }} , 
 	{ "name": "layer9_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer9_out", "role": "empty_n" }} , 
 	{ "name": "layer9_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer9_out", "role": "read" }} , 
 	{ "name": "out_data_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_data_12", "role": "address0" }} , 
 	{ "name": "out_data_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_12", "role": "ce0" }} , 
 	{ "name": "out_data_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_12", "role": "we0" }} , 
 	{ "name": "out_data_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_data_12", "role": "d0" }} , 
 	{ "name": "out_data_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_data_11", "role": "address0" }} , 
 	{ "name": "out_data_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_11", "role": "ce0" }} , 
 	{ "name": "out_data_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_11", "role": "we0" }} , 
 	{ "name": "out_data_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_data_11", "role": "d0" }} , 
 	{ "name": "out_data_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_data_10", "role": "address0" }} , 
 	{ "name": "out_data_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_10", "role": "ce0" }} , 
 	{ "name": "out_data_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_10", "role": "we0" }} , 
 	{ "name": "out_data_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_data_10", "role": "d0" }} , 
 	{ "name": "out_data_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_data_9", "role": "address0" }} , 
 	{ "name": "out_data_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_9", "role": "ce0" }} , 
 	{ "name": "out_data_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_9", "role": "we0" }} , 
 	{ "name": "out_data_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_data_9", "role": "d0" }} , 
 	{ "name": "out_data_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_data_8", "role": "address0" }} , 
 	{ "name": "out_data_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_8", "role": "ce0" }} , 
 	{ "name": "out_data_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_8", "role": "we0" }} , 
 	{ "name": "out_data_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_data_8", "role": "d0" }} , 
 	{ "name": "out_data_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_data_7", "role": "address0" }} , 
 	{ "name": "out_data_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_7", "role": "ce0" }} , 
 	{ "name": "out_data_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_7", "role": "we0" }} , 
 	{ "name": "out_data_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_data_7", "role": "d0" }} , 
 	{ "name": "out_data_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_data_6", "role": "address0" }} , 
 	{ "name": "out_data_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_6", "role": "ce0" }} , 
 	{ "name": "out_data_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_6", "role": "we0" }} , 
 	{ "name": "out_data_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_data_6", "role": "d0" }} , 
 	{ "name": "out_data_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_data_5", "role": "address0" }} , 
 	{ "name": "out_data_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_5", "role": "ce0" }} , 
 	{ "name": "out_data_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_5", "role": "we0" }} , 
 	{ "name": "out_data_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_data_5", "role": "d0" }} , 
 	{ "name": "out_data_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_data_4", "role": "address0" }} , 
 	{ "name": "out_data_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_4", "role": "ce0" }} , 
 	{ "name": "out_data_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_4", "role": "we0" }} , 
 	{ "name": "out_data_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_data_4", "role": "d0" }} , 
 	{ "name": "out_data_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_data_3", "role": "address0" }} , 
 	{ "name": "out_data_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_3", "role": "ce0" }} , 
 	{ "name": "out_data_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_3", "role": "we0" }} , 
 	{ "name": "out_data_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_data_3", "role": "d0" }} , 
 	{ "name": "out_data_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_data_2", "role": "address0" }} , 
 	{ "name": "out_data_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_2", "role": "ce0" }} , 
 	{ "name": "out_data_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_2", "role": "we0" }} , 
 	{ "name": "out_data_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_data_2", "role": "d0" }} , 
 	{ "name": "out_data_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_data_1", "role": "address0" }} , 
 	{ "name": "out_data_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_1", "role": "ce0" }} , 
 	{ "name": "out_data_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_1", "role": "we0" }} , 
 	{ "name": "out_data_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_data_1", "role": "d0" }} , 
 	{ "name": "out_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_data", "role": "address0" }} , 
 	{ "name": "out_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data", "role": "ce0" }} , 
 	{ "name": "out_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data", "role": "we0" }} , 
 	{ "name": "out_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_data", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "concatenate1d_array_array_array_ap_fixed_79u_config12_Pipeline_ConcatLoop1",
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
			{"Name" : "out_data_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_data_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_data_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_data_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_data_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_data_7", "Type" : "Memory", "Direction" : "O"},
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	concatenate1d_array_array_array_ap_fixed_79u_config12_Pipeline_ConcatLoop1 {
		out_data_12 {Type O LastRead -1 FirstWrite 1}
		out_data_11 {Type O LastRead -1 FirstWrite 1}
		out_data_10 {Type O LastRead -1 FirstWrite 1}
		out_data_9 {Type O LastRead -1 FirstWrite 1}
		out_data_8 {Type O LastRead -1 FirstWrite 1}
		out_data_7 {Type O LastRead -1 FirstWrite 1}
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
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	out_data_12 { ap_memory {  { out_data_12_address0 mem_address 1 3 }  { out_data_12_ce0 mem_ce 1 1 }  { out_data_12_we0 mem_we 1 1 }  { out_data_12_d0 mem_din 1 16 } } }
	out_data_11 { ap_memory {  { out_data_11_address0 mem_address 1 3 }  { out_data_11_ce0 mem_ce 1 1 }  { out_data_11_we0 mem_we 1 1 }  { out_data_11_d0 mem_din 1 16 } } }
	out_data_10 { ap_memory {  { out_data_10_address0 mem_address 1 3 }  { out_data_10_ce0 mem_ce 1 1 }  { out_data_10_we0 mem_we 1 1 }  { out_data_10_d0 mem_din 1 16 } } }
	out_data_9 { ap_memory {  { out_data_9_address0 mem_address 1 3 }  { out_data_9_ce0 mem_ce 1 1 }  { out_data_9_we0 mem_we 1 1 }  { out_data_9_d0 mem_din 1 16 } } }
	out_data_8 { ap_memory {  { out_data_8_address0 mem_address 1 3 }  { out_data_8_ce0 mem_ce 1 1 }  { out_data_8_we0 mem_we 1 1 }  { out_data_8_d0 mem_din 1 16 } } }
	out_data_7 { ap_memory {  { out_data_7_address0 mem_address 1 3 }  { out_data_7_ce0 mem_ce 1 1 }  { out_data_7_we0 mem_we 1 1 }  { out_data_7_d0 mem_din 1 16 } } }
	out_data_6 { ap_memory {  { out_data_6_address0 mem_address 1 3 }  { out_data_6_ce0 mem_ce 1 1 }  { out_data_6_we0 mem_we 1 1 }  { out_data_6_d0 mem_din 1 16 } } }
	out_data_5 { ap_memory {  { out_data_5_address0 mem_address 1 3 }  { out_data_5_ce0 mem_ce 1 1 }  { out_data_5_we0 mem_we 1 1 }  { out_data_5_d0 mem_din 1 16 } } }
	out_data_4 { ap_memory {  { out_data_4_address0 mem_address 1 3 }  { out_data_4_ce0 mem_ce 1 1 }  { out_data_4_we0 mem_we 1 1 }  { out_data_4_d0 mem_din 1 16 } } }
	out_data_3 { ap_memory {  { out_data_3_address0 mem_address 1 3 }  { out_data_3_ce0 mem_ce 1 1 }  { out_data_3_we0 mem_we 1 1 }  { out_data_3_d0 mem_din 1 16 } } }
	out_data_2 { ap_memory {  { out_data_2_address0 mem_address 1 3 }  { out_data_2_ce0 mem_ce 1 1 }  { out_data_2_we0 mem_we 1 1 }  { out_data_2_d0 mem_din 1 16 } } }
	out_data_1 { ap_memory {  { out_data_1_address0 mem_address 1 3 }  { out_data_1_ce0 mem_ce 1 1 }  { out_data_1_we0 mem_we 1 1 }  { out_data_1_d0 mem_din 1 16 } } }
	out_data { ap_memory {  { out_data_address0 mem_address 1 3 }  { out_data_ce0 mem_ce 1 1 }  { out_data_we0 mem_we 1 1 }  { out_data_d0 mem_din 1 16 } } }
	layer9_out { ap_fifo {  { layer9_out_dout fifo_port_we 0 208 }  { layer9_out_num_data_valid fifo_status_num_data_valid 0 4 }  { layer9_out_fifo_cap fifo_update 0 4 }  { layer9_out_empty_n fifo_status 0 1 }  { layer9_out_read fifo_data 1 1 } } }
}
