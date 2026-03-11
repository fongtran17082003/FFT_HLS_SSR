set moduleName fft_core
set isTopModule 0
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
set C_modelName {fft_core}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem1 int 64 regular {axi_master 0}  }
	{ din int 64 regular  }
	{ gmem2 int 64 regular {axi_master 1}  }
	{ dout int 64 regular  }
	{ iter int 32 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "din","offset": { "type": "dynamic","port_name": "din","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "din", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "dout","offset": { "type": "dynamic","port_name": "dout","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "dout", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "iter", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 105
set portList { 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 0 } 
	{ din sc_in sc_lv 64 signal 1 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 64 signal 2 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 2 } 
	{ dout sc_in sc_lv 64 signal 3 } 
	{ iter sc_in sc_lv 32 signal 4 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ dout_ap_vld sc_in sc_logic 1 invld 3 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ din_ap_vld sc_in sc_logic 1 invld 1 } 
	{ iter_ap_vld sc_in sc_logic 1 invld 4 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "din", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "din", "role": "default" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }} , 
 	{ "name": "dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dout", "role": "default" }} , 
 	{ "name": "iter", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iter", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "dout_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dout", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "din_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din", "role": "ap_vld" }} , 
 	{ "name": "iter_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "iter", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5", "12", "15", "24", "38", "52", "55", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80"],
		"CDFG" : "fft_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2129", "EstimateLatencyMax" : "12643",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "entry_proc_U0"},
			{"ID" : "2", "Name" : "dma_in_U0"}],
		"OutputProcess" : [
			{"ID" : "55", "Name" : "dma_out_U0"}],
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dma_in_U0", "Port" : "gmem1"}]},
			{"Name" : "din", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "dma_out_U0", "Port" : "gmem2"}]},
			{"Name" : "dout", "Type" : "None", "Direction" : "I"},
			{"Name" : "iter", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_lut", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "twiddle_U0", "Port" : "w_lut"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
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
		"Port" : [
			{"Name" : "dout", "Type" : "None", "Direction" : "I"},
			{"Name" : "dout_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["55"], "DependentChan" : "58", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dout_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dma_in_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "dma_in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "4172",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102", "Port" : "gmem1", "Inst_start_state" : "73", "Inst_end_state" : "74"}]},
			{"Name" : "din", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5"], "DependentChan" : "59", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102", "Port" : "input_stream", "Inst_start_state" : "73", "Inst_end_state" : "74"}]},
			{"Name" : "iter", "Type" : "None", "Direction" : "I"},
			{"Name" : "iter_c25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5"], "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_c25_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102", "Parent" : "2", "Child" : ["4"],
		"CDFG" : "dma_in_Pipeline_VITIS_LOOP_61_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "4099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tmp_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln61", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "input_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_61_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dma_in_U0.grp_dma_in_Pipeline_VITIS_LOOP_61_1_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reorder_U0", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10"],
		"CDFG" : "reorder",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2056", "EstimateLatencyMax" : "6152",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_reorder_U0_U",
		"Port" : [
			{"Name" : "input_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "59", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "input_stream_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392", "Port" : "input_stream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "reorder_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "reorder_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "iter_c24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_c24_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "iter_loop_inner_loop", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state4"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state8"]}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.reorder_U0.buff_0_0_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.reorder_U0.buff_0_1_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.reorder_U0.buff_1_0_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.reorder_U0.buff_1_1_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392", "Parent" : "5", "Child" : ["11"],
		"CDFG" : "reorder_Pipeline_pipeup_l1_pipeup_l2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2050", "EstimateLatencyMax" : "2050",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buff_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_0_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buff_1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "pipeup_l1_pipeup_l2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.reorder_U0.grp_reorder_Pipeline_pipeup_l1_pipeup_l2_fu_392.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.radix2p_U0", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "radix2p",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4100",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "5",
		"StartFifo" : "start_for_radix2p_U0_U",
		"Port" : [
			{"Name" : "reorder_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72", "Port" : "reorder_out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72", "Port" : "fft1_out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "iter_c23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["15"], "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_c23_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72", "Parent" : "12", "Child" : ["14"],
		"CDFG" : "radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "reorder_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "reorder_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fft1_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fft1_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_172_1_VITIS_LOOP_175_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.radix2p_U0.grp_radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2_fu_72.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.twiddle_U0", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "twiddle",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4104",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "12",
		"StartFifo" : "start_for_twiddle_U0_U",
		"Port" : [
			{"Name" : "fft1_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96", "Port" : "fft1_out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "twiddle_out0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["24","26","27","30","31"], "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96", "Port" : "twiddle_out0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "twiddle_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["38","40","41","44","45"], "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96", "Port" : "twiddle_out1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "iter_c21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["38","39"], "DependentChan" : "67", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_c21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "iter_c22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["24","25"], "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_c22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_lut", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96", "Port" : "w_lut", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96", "Parent" : "15", "Child" : ["17", "19", "20", "21", "22", "23"],
		"CDFG" : "twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "4102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "fft1_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddle_out0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "twiddle_out0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "twiddle_out1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "twiddle_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "w_lut", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_get_phase_factor_fu_106", "Port" : "w_lut", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_264_1_VITIS_LOOP_267_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.grp_get_phase_factor_fu_106", "Parent" : "16", "Child" : ["18"],
		"CDFG" : "get_phase_factor",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_lut", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.grp_get_phase_factor_fu_106.w_lut_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.mul_16s_16s_30_1_1_U31", "Parent" : "16"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.mul_16s_16s_30_1_1_U32", "Parent" : "16"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.mac_mulsub_16s_16s_30s_30_4_1_U33", "Parent" : "16"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.mac_muladd_16s_16s_30s_30_4_1_U34", "Parent" : "16"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.twiddle_U0.grp_twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_1_wrapper_U0", "Parent" : "0", "Child" : ["25", "26", "37"],
		"CDFG" : "fft_serial_kernel_1_wrapper",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "12562",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "15",
		"StartFifo" : "start_for_fft_serial_kernel_1_wrapper_U0_U",
		"InputProcess" : [
			{"ID" : "25", "Name" : "entry_proc74_U0"}],
		"OutputProcess" : [
			{"ID" : "26", "Name" : "fft_serial_kernel_1_U0"}],
		"Port" : [
			{"Name" : "twiddle_out0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "fft_serial_kernel_1_U0", "Port" : "twiddle_out0"}]},
			{"Name" : "fft2_out0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "fft_serial_kernel_1_U0", "Port" : "fft2_out0"}]},
			{"Name" : "iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "entry_proc74_U0", "Port" : "iter"}]},
			{"Name" : "iter_c20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "entry_proc74_U0", "Port" : "iter_c20"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_1_wrapper_U0.entry_proc74_U0", "Parent" : "24",
		"CDFG" : "entry_proc74",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"Port" : [
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "iter_c20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_c20_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0", "Parent" : "24", "Child" : ["27"],
		"CDFG" : "fft_serial_kernel_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "12561",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "27", "Name" : "dataflow_in_loop_VITIS_LOOP_310_1_U0"}],
		"OutputProcess" : [
			{"ID" : "27", "Name" : "dataflow_in_loop_VITIS_LOOP_310_1_U0"}],
		"Port" : [
			{"Name" : "twiddle_out0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_310_1_U0", "Port" : "twiddle_out0"}]},
			{"Name" : "fft2_out0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_310_1_U0", "Port" : "fft2_out0"}]},
			{"Name" : "iter", "Type" : "None", "Direction" : "I", "DependentProc" : ["25"], "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_310_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_310_1_U0", "has_continue" : "1"}}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0", "Parent" : "26", "Child" : ["28", "29", "30", "32", "33", "34", "35", "36"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_310_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6280", "EstimateLatencyMax" : "6280",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "28", "Name" : "Block_newFuncRoot_proc_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "30", "Name" : "fft_fft_params_2_U0"},
			{"ID" : "32", "Name" : "Block_newFuncRoot_proc_proc16_U0"}],
		"Port" : [
			{"Name" : "twiddle_out0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "fft_fft_params_2_U0", "Port" : "twiddle_out0"}]},
			{"Name" : "fft2_out0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "fft_fft_params_2_U0", "Port" : "fft2_out0"}]}]},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc_U0", "Parent" : "27",
		"CDFG" : "Block_newFuncRoot_proc_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["29"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc15_U0", "Parent" : "27",
		"CDFG" : "Block_newFuncRoot_proc_proc15",
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
		"Port" : [
			{"Name" : "fft_config", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["30","31"], "DependentChan" : "34", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fft_config_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["28"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_fft_params_2_U0", "Parent" : "27", "Child" : ["31"],
		"CDFG" : "fft_fft_params_2",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6278", "EstimateLatencyMax" : "6278",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "31", "Name" : "fft_syn_fft_params_U0"}],
		"OutputProcess" : [
			{"ID" : "31", "Name" : "fft_syn_fft_params_U0"}],
		"Port" : [
			{"Name" : "twiddle_out0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "fft_syn_fft_params_U0", "Port" : "xn"}]},
			{"Name" : "fft2_out0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "fft_syn_fft_params_U0", "Port" : "xk"}]},
			{"Name" : "fft_status", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["32"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "fft_syn_fft_params_U0", "Port" : "status_data_V"}]},
			{"Name" : "fft_config", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "34", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "fft_syn_fft_params_U0", "Port" : "config_ch_data_V"}]}]},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_fft_params_2_U0.fft_syn_fft_params_U0", "Parent" : "30",
		"CDFG" : "fft_syn_fft_params_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6278", "EstimateLatencyMax" : "6278",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["32"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "34", "DependentChanDepth" : "2", "DependentChanType" : "0"}],
		"Loop" : []},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.Block_newFuncRoot_proc_proc16_U0", "Parent" : "27",
		"CDFG" : "Block_newFuncRoot_proc_proc16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "29",
		"StartFifo" : "start_for_Block_newFuncRoot_proc_proc16_U0_U",
		"Port" : [
			{"Name" : "fft_status", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["30","31"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fft_status_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.empty_U", "Parent" : "27"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_config_U", "Parent" : "27"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.fft_status_U", "Parent" : "27"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_1_wrapper_U0.fft_serial_kernel_1_U0.dataflow_in_loop_VITIS_LOOP_310_1_U0.start_for_Block_newFuncRoot_proc_proc16_U0_U", "Parent" : "27"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_1_wrapper_U0.p_channel_U", "Parent" : "24"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_wrapper_U0", "Parent" : "0", "Child" : ["39", "40", "51"],
		"CDFG" : "fft_serial_kernel_wrapper",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "12562",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "15",
		"StartFifo" : "start_for_fft_serial_kernel_wrapper_U0_U",
		"InputProcess" : [
			{"ID" : "39", "Name" : "entry_proc107_U0"}],
		"OutputProcess" : [
			{"ID" : "40", "Name" : "fft_serial_kernel_U0"}],
		"Port" : [
			{"Name" : "twiddle_out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "fft_serial_kernel_U0", "Port" : "twiddle_out1"}]},
			{"Name" : "fft2_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "fft_serial_kernel_U0", "Port" : "fft2_out1"}]},
			{"Name" : "iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "67", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "entry_proc107_U0", "Port" : "iter"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_wrapper_U0.entry_proc107_U0", "Parent" : "38",
		"CDFG" : "entry_proc107",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"Port" : [
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["40"], "DependentChan" : "51", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "67", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0", "Parent" : "38", "Child" : ["41"],
		"CDFG" : "fft_serial_kernel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "12561",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "41", "Name" : "dataflow_in_loop_VITIS_LOOP_310_1_130_U0"}],
		"OutputProcess" : [
			{"ID" : "41", "Name" : "dataflow_in_loop_VITIS_LOOP_310_1_130_U0"}],
		"Port" : [
			{"Name" : "twiddle_out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_310_1_130_U0", "Port" : "twiddle_out1"}]},
			{"Name" : "fft2_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_310_1_130_U0", "Port" : "fft2_out1"}]},
			{"Name" : "iter", "Type" : "None", "Direction" : "I", "DependentProc" : ["39"], "DependentChan" : "51", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_310_1", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_310_1_130_U0", "has_continue" : "1"}}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0", "Parent" : "40", "Child" : ["42", "43", "44", "46", "47", "48", "49", "50"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_310_1_130",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6280", "EstimateLatencyMax" : "6280",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "42", "Name" : "Block_newFuncRoot_proc_proc17_U0"}],
		"OutputProcess" : [
			{"ID" : "44", "Name" : "fft_fft_params_U0"},
			{"ID" : "46", "Name" : "Block_newFuncRoot_proc_proc19_U0"}],
		"Port" : [
			{"Name" : "twiddle_out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fft_fft_params_U0", "Port" : "twiddle_out1"}]},
			{"Name" : "fft2_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "fft_fft_params_U0", "Port" : "fft2_out1"}]}]},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc17_U0", "Parent" : "41",
		"CDFG" : "Block_newFuncRoot_proc_proc17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["43"], "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc18_U0", "Parent" : "41",
		"CDFG" : "Block_newFuncRoot_proc_proc18",
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
		"Port" : [
			{"Name" : "fft_config", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["44","45"], "DependentChan" : "48", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fft_config_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["42"], "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_fft_params_U0", "Parent" : "41", "Child" : ["45"],
		"CDFG" : "fft_fft_params_s",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6278", "EstimateLatencyMax" : "6278",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "45", "Name" : "fft_syn_fft_params_3_U0"}],
		"OutputProcess" : [
			{"ID" : "45", "Name" : "fft_syn_fft_params_3_U0"}],
		"Port" : [
			{"Name" : "twiddle_out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fft_syn_fft_params_3_U0", "Port" : "xn"}]},
			{"Name" : "fft2_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fft_syn_fft_params_3_U0", "Port" : "xk"}]},
			{"Name" : "fft_status", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["46"], "DependentChan" : "49", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fft_syn_fft_params_3_U0", "Port" : "status_data_V"}]},
			{"Name" : "fft_config", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["43"], "DependentChan" : "48", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "fft_syn_fft_params_3_U0", "Port" : "config_ch_data_V"}]}]},
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_fft_params_U0.fft_syn_fft_params_3_U0", "Parent" : "44",
		"CDFG" : "fft_syn_fft_params_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6278", "EstimateLatencyMax" : "6278",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "xn", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["15"], "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "xk", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "status_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["46"], "DependentChan" : "49", "DependentChanDepth" : "2", "DependentChanType" : "0"},
			{"Name" : "config_ch_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["43"], "DependentChan" : "48", "DependentChanDepth" : "2", "DependentChanType" : "0"}],
		"Loop" : []},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.Block_newFuncRoot_proc_proc19_U0", "Parent" : "41",
		"CDFG" : "Block_newFuncRoot_proc_proc19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
		"StartSource" : "43",
		"StartFifo" : "start_for_Block_newFuncRoot_proc_proc19_U0_U",
		"Port" : [
			{"Name" : "fft_status", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["44","45"], "DependentChan" : "49", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "fft_status_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.empty_U", "Parent" : "41"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_config_U", "Parent" : "41"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.fft_status_U", "Parent" : "41"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_wrapper_U0.fft_serial_kernel_U0.dataflow_in_loop_VITIS_LOOP_310_1_130_U0.start_for_Block_newFuncRoot_proc_proc19_U0_U", "Parent" : "41"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fft_serial_kernel_wrapper_U0.p_channel_U", "Parent" : "38"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.joiner_U0", "Parent" : "0", "Child" : ["53"],
		"CDFG" : "joiner",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4100",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "24",
		"StartFifo" : "start_for_joiner_U0_U",
		"Port" : [
			{"Name" : "fft2_out0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["24","26","27","30","31"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73", "Port" : "fft2_out0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "fft2_out1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["38","40","41","44","45"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73", "Port" : "fft2_out1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "joiner_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["55"], "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73", "Port" : "joiner_out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["24","25"], "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "iter_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["55"], "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73", "Parent" : "52", "Child" : ["54"],
		"CDFG" : "joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "fft2_out0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft2_out0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fft2_out1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fft2_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "joiner_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "joiner_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_285_1_VITIS_LOOP_288_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.joiner_U0.grp_joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2_fu_73.flow_control_loop_pipe_sequential_init_U", "Parent" : "53"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dma_out_U0", "Parent" : "0", "Child" : ["56"],
		"CDFG" : "dma_out",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73", "EstimateLatencyMax" : "4170",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_dma_out_U0_U",
		"Port" : [
			{"Name" : "joiner_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["52"], "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103", "Port" : "joiner_out", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103", "Port" : "gmem2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dout", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "58", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dout_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "iter", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["52"], "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "iter_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103", "Parent" : "55", "Child" : ["57"],
		"CDFG" : "dma_out_Pipeline_VITIS_LOOP_90_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "4099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tmp", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln90", "Type" : "None", "Direction" : "I"},
			{"Name" : "joiner_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "joiner_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_90_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dma_out_U0.grp_dma_out_Pipeline_VITIS_LOOP_90_1_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dout_c_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_stream_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iter_c25_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.reorder_out_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iter_c24_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft1_out_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iter_c23_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.twiddle_out0_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.twiddle_out1_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iter_c21_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iter_c22_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft2_out0_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iter_c20_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fft2_out1_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.joiner_out_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iter_c_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dma_out_U0_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_reorder_U0_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_radix2p_U0_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_twiddle_U0_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_fft_serial_kernel_1_wrapper_U0_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_fft_serial_kernel_wrapper_U0_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_joiner_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft_core {
		gmem1 {Type I LastRead 1 FirstWrite -1}
		din {Type I LastRead 0 FirstWrite -1}
		gmem2 {Type O LastRead 4 FirstWrite 2}
		dout {Type I LastRead 11 FirstWrite -1}
		iter {Type I LastRead 0 FirstWrite -1}
		w_lut {Type I LastRead -1 FirstWrite -1}}
	entry_proc {
		dout {Type I LastRead 0 FirstWrite -1}
		dout_c {Type O LastRead -1 FirstWrite 0}}
	dma_in {
		gmem1 {Type I LastRead 1 FirstWrite -1}
		din {Type I LastRead 1 FirstWrite -1}
		input_stream {Type O LastRead -1 FirstWrite 2}
		iter {Type I LastRead 0 FirstWrite -1}
		iter_c25 {Type O LastRead -1 FirstWrite 0}}
	dma_in_Pipeline_VITIS_LOOP_61_1 {
		tmp_4 {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 1 FirstWrite -1}
		sext_ln61 {Type I LastRead 0 FirstWrite -1}
		input_stream {Type O LastRead -1 FirstWrite 2}}
	reorder {
		input_stream {Type I LastRead 5 FirstWrite -1}
		reorder_out {Type O LastRead -1 FirstWrite 6}
		iter {Type I LastRead 0 FirstWrite -1}
		iter_c24 {Type O LastRead -1 FirstWrite 0}}
	reorder_Pipeline_pipeup_l1_pipeup_l2 {
		buff_0_0 {Type O LastRead -1 FirstWrite 1}
		buff_0_1 {Type O LastRead -1 FirstWrite 1}
		buff_1_0 {Type O LastRead -1 FirstWrite 1}
		buff_1_1 {Type O LastRead -1 FirstWrite 1}
		input_stream {Type I LastRead 1 FirstWrite -1}}
	radix2p {
		reorder_out {Type I LastRead 2 FirstWrite -1}
		fft1_out {Type O LastRead -1 FirstWrite 2}
		iter {Type I LastRead 0 FirstWrite -1}
		iter_c23 {Type O LastRead -1 FirstWrite 0}}
	radix2p_Pipeline_VITIS_LOOP_172_1_VITIS_LOOP_175_2 {
		bound {Type I LastRead 0 FirstWrite -1}
		reorder_out {Type I LastRead 2 FirstWrite -1}
		fft1_out {Type O LastRead -1 FirstWrite 2}}
	twiddle {
		fft1_out {Type I LastRead 3 FirstWrite -1}
		twiddle_out0 {Type O LastRead -1 FirstWrite 6}
		twiddle_out1 {Type O LastRead -1 FirstWrite 6}
		iter {Type I LastRead 0 FirstWrite -1}
		iter_c21 {Type O LastRead -1 FirstWrite 0}
		iter_c22 {Type O LastRead -1 FirstWrite 0}
		w_lut {Type I LastRead -1 FirstWrite -1}}
	twiddle_Pipeline_VITIS_LOOP_264_1_VITIS_LOOP_267_2 {
		bound {Type I LastRead 0 FirstWrite -1}
		fft1_out {Type I LastRead 3 FirstWrite -1}
		twiddle_out0 {Type O LastRead -1 FirstWrite 6}
		twiddle_out1 {Type O LastRead -1 FirstWrite 6}
		w_lut {Type I LastRead -1 FirstWrite -1}}
	get_phase_factor {
		i {Type I LastRead 0 FirstWrite -1}
		w_lut {Type I LastRead -1 FirstWrite -1}}
	fft_serial_kernel_1_wrapper {
		twiddle_out0 {Type I LastRead -1 FirstWrite -1}
		fft2_out0 {Type O LastRead -1 FirstWrite -1}
		iter {Type I LastRead 0 FirstWrite -1}
		iter_c20 {Type O LastRead -1 FirstWrite 0}}
	entry_proc74 {
		return_r {Type O LastRead -1 FirstWrite 0}
		iter {Type I LastRead 0 FirstWrite -1}
		iter_c20 {Type O LastRead -1 FirstWrite 0}}
	fft_serial_kernel_1 {
		twiddle_out0 {Type I LastRead -1 FirstWrite -1}
		fft2_out0 {Type O LastRead -1 FirstWrite -1}
		iter {Type I LastRead 0 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_310_1 {
		twiddle_out0 {Type I LastRead -1 FirstWrite -1}
		fft2_out0 {Type O LastRead -1 FirstWrite -1}}
	Block_newFuncRoot_proc_proc {
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc15 {
		fft_config {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	fft_fft_params_2 {
		twiddle_out0 {Type I LastRead -1 FirstWrite -1}
		fft2_out0 {Type O LastRead -1 FirstWrite -1}
		fft_status {Type O LastRead -1 FirstWrite -1}
		fft_config {Type I LastRead -1 FirstWrite -1}}
	fft_syn_fft_params_s {
		xn {Type I LastRead -1 FirstWrite -1}
		xk {Type O LastRead -1 FirstWrite -1}
		status_data_V {Type O LastRead -1 FirstWrite -1}
		config_ch_data_V {Type I LastRead -1 FirstWrite -1}}
	Block_newFuncRoot_proc_proc16 {
		fft_status {Type I LastRead 0 FirstWrite -1}}
	fft_serial_kernel_wrapper {
		twiddle_out1 {Type I LastRead -1 FirstWrite -1}
		fft2_out1 {Type O LastRead -1 FirstWrite -1}
		iter {Type I LastRead 0 FirstWrite -1}}
	entry_proc107 {
		return_r {Type O LastRead -1 FirstWrite 0}
		iter {Type I LastRead 0 FirstWrite -1}}
	fft_serial_kernel {
		twiddle_out1 {Type I LastRead -1 FirstWrite -1}
		fft2_out1 {Type O LastRead -1 FirstWrite -1}
		iter {Type I LastRead 0 FirstWrite -1}}
	dataflow_in_loop_VITIS_LOOP_310_1_130 {
		twiddle_out1 {Type I LastRead -1 FirstWrite -1}
		fft2_out1 {Type O LastRead -1 FirstWrite -1}}
	Block_newFuncRoot_proc_proc17 {
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc18 {
		fft_config {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	fft_fft_params_s {
		twiddle_out1 {Type I LastRead -1 FirstWrite -1}
		fft2_out1 {Type O LastRead -1 FirstWrite -1}
		fft_status {Type O LastRead -1 FirstWrite -1}
		fft_config {Type I LastRead -1 FirstWrite -1}}
	fft_syn_fft_params_3 {
		xn {Type I LastRead -1 FirstWrite -1}
		xk {Type O LastRead -1 FirstWrite -1}
		status_data_V {Type O LastRead -1 FirstWrite -1}
		config_ch_data_V {Type I LastRead -1 FirstWrite -1}}
	Block_newFuncRoot_proc_proc19 {
		fft_status {Type I LastRead 0 FirstWrite -1}}
	joiner {
		fft2_out0 {Type I LastRead 2 FirstWrite -1}
		fft2_out1 {Type I LastRead 2 FirstWrite -1}
		joiner_out {Type O LastRead -1 FirstWrite 2}
		iter {Type I LastRead 0 FirstWrite -1}
		iter_c {Type O LastRead -1 FirstWrite 0}}
	joiner_Pipeline_VITIS_LOOP_285_1_VITIS_LOOP_288_2 {
		bound {Type I LastRead 0 FirstWrite -1}
		fft2_out0 {Type I LastRead 2 FirstWrite -1}
		fft2_out1 {Type I LastRead 2 FirstWrite -1}
		joiner_out {Type O LastRead -1 FirstWrite 2}}
	dma_out {
		joiner_out {Type I LastRead 1 FirstWrite -1}
		gmem2 {Type O LastRead 4 FirstWrite 2}
		dout {Type I LastRead 0 FirstWrite -1}
		iter {Type I LastRead 0 FirstWrite -1}}
	dma_out_Pipeline_VITIS_LOOP_90_1 {
		tmp {Type I LastRead 0 FirstWrite -1}
		gmem2 {Type O LastRead -1 FirstWrite 2}
		sext_ln90 {Type I LastRead 0 FirstWrite -1}
		joiner_out {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2129", "Max" : "12643"}
	, {"Name" : "Interval", "Min" : "2057", "Max" : "12562"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 32 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 64 }  { m_axi_gmem1_WSTRB STRB 1 8 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 32 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 64 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RFIFONUM LEN 0 9 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	din { ap_none {  { din in_data 0 64 }  { din_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 32 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 64 }  { m_axi_gmem2_WSTRB STRB 1 8 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 32 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 64 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RFIFONUM LEN 0 9 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
	dout { ap_none {  { dout in_data 0 64 }  { dout_ap_vld in_vld 0 1 } } }
	iter { ap_none {  { iter in_data 0 32 }  { iter_ap_vld in_vld 0 1 } } }
}
