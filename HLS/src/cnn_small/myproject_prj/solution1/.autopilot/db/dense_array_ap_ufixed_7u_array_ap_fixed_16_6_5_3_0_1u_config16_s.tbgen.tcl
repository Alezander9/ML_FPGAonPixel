set moduleName dense_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_1u_config16_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {dense<array<ap_ufixed,7u>,array<ap_fixed<16,6,5,3,0>,1u>,config16>}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer15_out int 70 regular {fifo 0 volatile }  }
	{ layer16_out int 16 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "layer15_out", "interface" : "fifo", "bitwidth" : 70, "direction" : "READONLY"} , 
 	{ "Name" : "layer16_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer15_out_dout sc_in sc_lv 70 signal 0 } 
	{ layer15_out_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ layer15_out_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ layer15_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer15_out_read sc_out sc_logic 1 signal 0 } 
	{ layer16_out_din sc_out sc_lv 16 signal 1 } 
	{ layer16_out_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ layer16_out_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ layer16_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer16_out_write sc_out sc_logic 1 signal 1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "layer15_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":70, "type": "signal", "bundle":{"name": "layer15_out", "role": "dout" }} , 
 	{ "name": "layer15_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer15_out", "role": "num_data_valid" }} , 
 	{ "name": "layer15_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer15_out", "role": "fifo_cap" }} , 
 	{ "name": "layer15_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer15_out", "role": "empty_n" }} , 
 	{ "name": "layer15_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer15_out", "role": "read" }} , 
 	{ "name": "layer16_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer16_out", "role": "din" }} , 
 	{ "name": "layer16_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer16_out", "role": "num_data_valid" }} , 
 	{ "name": "layer16_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer16_out", "role": "fifo_cap" }} , 
 	{ "name": "layer16_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer16_out", "role": "full_n" }} , 
 	{ "name": "layer16_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer16_out", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
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
		"Port" : [
			{"Name" : "layer15_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer15_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer16_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer16_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w16", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w16_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_7_3_10_1_1_U170", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_10ns_20_1_1_U171", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dense_array_ap_ufixed_7u_array_ap_fixed_16_6_5_3_0_1u_config16_s {
		layer15_out {Type I LastRead 2 FirstWrite -1}
		layer16_out {Type O LastRead -1 FirstWrite 3}
		w16 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "7"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer15_out { ap_fifo {  { layer15_out_dout fifo_port_we 0 70 }  { layer15_out_num_data_valid fifo_status_num_data_valid 0 2 }  { layer15_out_fifo_cap fifo_update 0 2 }  { layer15_out_empty_n fifo_status 0 1 }  { layer15_out_read fifo_data 1 1 } } }
	layer16_out { ap_fifo {  { layer16_out_din fifo_port_we 1 16 }  { layer16_out_num_data_valid fifo_status_num_data_valid 0 2 }  { layer16_out_fifo_cap fifo_update 0 2 }  { layer16_out_full_n fifo_status 0 1 }  { layer16_out_write fifo_data 1 1 } } }
}
