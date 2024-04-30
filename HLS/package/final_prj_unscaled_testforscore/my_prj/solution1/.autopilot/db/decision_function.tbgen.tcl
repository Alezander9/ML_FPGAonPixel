set moduleName decision_function
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {decision_function}
set C_modelType { int 7 }
set C_modelArgList {
	{ x_2_val int 28 regular  }
	{ x_3_val int 28 regular  }
	{ x_4_val int 28 regular  }
	{ x_6_val int 28 regular  }
	{ x_8_val int 28 regular  }
	{ x_10_val int 28 regular  }
	{ x_13_val int 28 regular  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "x_2_val", "interface" : "wire", "bitwidth" : 28, "direction" : "READONLY"} , 
 	{ "Name" : "x_3_val", "interface" : "wire", "bitwidth" : 28, "direction" : "READONLY"} , 
 	{ "Name" : "x_4_val", "interface" : "wire", "bitwidth" : 28, "direction" : "READONLY"} , 
 	{ "Name" : "x_6_val", "interface" : "wire", "bitwidth" : 28, "direction" : "READONLY"} , 
 	{ "Name" : "x_8_val", "interface" : "wire", "bitwidth" : 28, "direction" : "READONLY"} , 
 	{ "Name" : "x_10_val", "interface" : "wire", "bitwidth" : 28, "direction" : "READONLY"} , 
 	{ "Name" : "x_13_val", "interface" : "wire", "bitwidth" : 28, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 7} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_2_val sc_in sc_lv 28 signal 0 } 
	{ x_3_val sc_in sc_lv 28 signal 1 } 
	{ x_4_val sc_in sc_lv 28 signal 2 } 
	{ x_6_val sc_in sc_lv 28 signal 3 } 
	{ x_8_val sc_in sc_lv 28 signal 4 } 
	{ x_10_val sc_in sc_lv 28 signal 5 } 
	{ x_13_val sc_in sc_lv 28 signal 6 } 
	{ ap_return sc_out sc_lv 7 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "x_2_val", "role": "default" }} , 
 	{ "name": "x_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "x_3_val", "role": "default" }} , 
 	{ "name": "x_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "x_4_val", "role": "default" }} , 
 	{ "name": "x_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "x_6_val", "role": "default" }} , 
 	{ "name": "x_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "x_8_val", "role": "default" }} , 
 	{ "name": "x_10_val", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "x_10_val", "role": "default" }} , 
 	{ "name": "x_13_val", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "x_13_val", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "decision_function",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_10_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_13_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_10_4_7_1_1_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	decision_function {
		x_2_val {Type I LastRead 0 FirstWrite -1}
		x_3_val {Type I LastRead 0 FirstWrite -1}
		x_4_val {Type I LastRead 0 FirstWrite -1}
		x_6_val {Type I LastRead 0 FirstWrite -1}
		x_8_val {Type I LastRead 0 FirstWrite -1}
		x_10_val {Type I LastRead 0 FirstWrite -1}
		x_13_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x_2_val { ap_none {  { x_2_val in_data 0 28 } } }
	x_3_val { ap_none {  { x_3_val in_data 0 28 } } }
	x_4_val { ap_none {  { x_4_val in_data 0 28 } } }
	x_6_val { ap_none {  { x_6_val in_data 0 28 } } }
	x_8_val { ap_none {  { x_8_val in_data 0 28 } } }
	x_10_val { ap_none {  { x_10_val in_data 0 28 } } }
	x_13_val { ap_none {  { x_13_val in_data 0 28 } } }
}
