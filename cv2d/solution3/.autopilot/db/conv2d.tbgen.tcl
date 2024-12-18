set moduleName conv2d
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {conv2d}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 32 regular {axi_slave 0}  }
	{ kernel int 32 regular {axi_slave 0}  }
	{ output_r int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "axi_slave", "bundle":"cv_io","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 4,"step" : 1},{"low" : 0,"up" : 4,"step" : 1}]}]}], "offset" : {"in":128}, "offset_end" : {"in":255}} , 
 	{ "Name" : "kernel", "interface" : "axi_slave", "bundle":"cv_io","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "kernel","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 2,"step" : 1}]}]}], "offset" : {"in":256}, "offset_end" : {"in":319}} , 
 	{ "Name" : "output_r", "interface" : "axi_slave", "bundle":"cv_io","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1},{"low" : 0,"up" : 2,"step" : 1}]}]}], "offset" : {"out":320}, "offset_end" : {"out":383}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_cv_io_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_cv_io_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_cv_io_AWADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_cv_io_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_cv_io_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_cv_io_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_cv_io_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_cv_io_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_cv_io_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_cv_io_ARADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_cv_io_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_cv_io_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_cv_io_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_cv_io_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_cv_io_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_cv_io_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_cv_io_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_cv_io_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "cv_io", "role": "AWADDR" },"address":[{"name":"conv2d","role":"start","value":"0","valid_bit":"0"},{"name":"conv2d","role":"continue","value":"0","valid_bit":"4"},{"name":"conv2d","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_r","role":"data","value":"128"},{"name":"kernel","role":"data","value":"256"}] },
	{ "name": "s_axi_cv_io_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cv_io", "role": "AWVALID" } },
	{ "name": "s_axi_cv_io_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cv_io", "role": "AWREADY" } },
	{ "name": "s_axi_cv_io_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cv_io", "role": "WVALID" } },
	{ "name": "s_axi_cv_io_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cv_io", "role": "WREADY" } },
	{ "name": "s_axi_cv_io_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cv_io", "role": "WDATA" } },
	{ "name": "s_axi_cv_io_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "cv_io", "role": "WSTRB" } },
	{ "name": "s_axi_cv_io_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "cv_io", "role": "ARADDR" },"address":[{"name":"conv2d","role":"start","value":"0","valid_bit":"0"},{"name":"conv2d","role":"done","value":"0","valid_bit":"1"},{"name":"conv2d","role":"idle","value":"0","valid_bit":"2"},{"name":"conv2d","role":"ready","value":"0","valid_bit":"3"},{"name":"conv2d","role":"auto_start","value":"0","valid_bit":"7"},{"name":"output_r","role":"data","value":"320"}] },
	{ "name": "s_axi_cv_io_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cv_io", "role": "ARVALID" } },
	{ "name": "s_axi_cv_io_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cv_io", "role": "ARREADY" } },
	{ "name": "s_axi_cv_io_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cv_io", "role": "RVALID" } },
	{ "name": "s_axi_cv_io_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cv_io", "role": "RREADY" } },
	{ "name": "s_axi_cv_io_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cv_io", "role": "RDATA" } },
	{ "name": "s_axi_cv_io_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cv_io", "role": "RRESP" } },
	{ "name": "s_axi_cv_io_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cv_io", "role": "BVALID" } },
	{ "name": "s_axi_cv_io_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cv_io", "role": "BREADY" } },
	{ "name": "s_axi_cv_io_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "cv_io", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cv_io", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "conv2d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "490", "EstimateLatencyMax" : "490",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kernel", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2d_cv_io_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2d_mux_32_32_eOg_U1", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2d_mux_32_32_eOg_U2", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2d_mux_32_32_eOg_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv2d {
		input_r {Type I LastRead 5 FirstWrite -1}
		kernel {Type I LastRead 8 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "490", "Max" : "490"}
	, {"Name" : "Interval", "Min" : "491", "Max" : "491"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

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
