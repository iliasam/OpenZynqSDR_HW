// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:waterfall_sender:1.0
// IP Revision: 2113944817

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_waterfall_sender_0_1 (
  interrupt_out_ap_vld,
  ap_clk,
  ap_rst_n,
  in_bus_TVALID,
  in_bus_TREADY,
  in_bus_TDATA,
  in_bus_TLAST,
  in_bus_TKEEP,
  in_bus_TSTRB,
  start_send,
  module_idx,
  m_axi_out_bus_AWID,
  m_axi_out_bus_AWADDR,
  m_axi_out_bus_AWLEN,
  m_axi_out_bus_AWSIZE,
  m_axi_out_bus_AWBURST,
  m_axi_out_bus_AWLOCK,
  m_axi_out_bus_AWREGION,
  m_axi_out_bus_AWCACHE,
  m_axi_out_bus_AWPROT,
  m_axi_out_bus_AWQOS,
  m_axi_out_bus_AWVALID,
  m_axi_out_bus_AWREADY,
  m_axi_out_bus_WID,
  m_axi_out_bus_WDATA,
  m_axi_out_bus_WSTRB,
  m_axi_out_bus_WLAST,
  m_axi_out_bus_WVALID,
  m_axi_out_bus_WREADY,
  m_axi_out_bus_BID,
  m_axi_out_bus_BRESP,
  m_axi_out_bus_BVALID,
  m_axi_out_bus_BREADY,
  m_axi_out_bus_ARID,
  m_axi_out_bus_ARADDR,
  m_axi_out_bus_ARLEN,
  m_axi_out_bus_ARSIZE,
  m_axi_out_bus_ARBURST,
  m_axi_out_bus_ARLOCK,
  m_axi_out_bus_ARREGION,
  m_axi_out_bus_ARCACHE,
  m_axi_out_bus_ARPROT,
  m_axi_out_bus_ARQOS,
  m_axi_out_bus_ARVALID,
  m_axi_out_bus_ARREADY,
  m_axi_out_bus_RID,
  m_axi_out_bus_RDATA,
  m_axi_out_bus_RRESP,
  m_axi_out_bus_RLAST,
  m_axi_out_bus_RVALID,
  m_axi_out_bus_RREADY,
  interrupt_out
);

output wire interrupt_out_ap_vld;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in_bus:m_axi_out_bus, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 40000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_bus TVALID" *)
input wire in_bus_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_bus TREADY" *)
output wire in_bus_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_bus TDATA" *)
input wire [31 : 0] in_bus_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_bus TLAST" *)
input wire [0 : 0] in_bus_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_bus TKEEP" *)
input wire [3 : 0] in_bus_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_bus, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_bus TSTRB" *)
input wire [3 : 0] in_bus_TSTRB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME start_send, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 start_send DATA" *)
input wire start_send;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME module_idx, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 module_idx DATA" *)
input wire module_idx;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus AWID" *)
output wire [0 : 0] m_axi_out_bus_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus AWADDR" *)
output wire [63 : 0] m_axi_out_bus_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus AWLEN" *)
output wire [7 : 0] m_axi_out_bus_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus AWSIZE" *)
output wire [2 : 0] m_axi_out_bus_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus AWBURST" *)
output wire [1 : 0] m_axi_out_bus_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus AWLOCK" *)
output wire [1 : 0] m_axi_out_bus_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus AWREGION" *)
output wire [3 : 0] m_axi_out_bus_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus AWCACHE" *)
output wire [3 : 0] m_axi_out_bus_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus AWPROT" *)
output wire [2 : 0] m_axi_out_bus_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus AWQOS" *)
output wire [3 : 0] m_axi_out_bus_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus AWVALID" *)
output wire m_axi_out_bus_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus AWREADY" *)
input wire m_axi_out_bus_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus WID" *)
output wire [0 : 0] m_axi_out_bus_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus WDATA" *)
output wire [63 : 0] m_axi_out_bus_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus WSTRB" *)
output wire [7 : 0] m_axi_out_bus_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus WLAST" *)
output wire m_axi_out_bus_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus WVALID" *)
output wire m_axi_out_bus_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus WREADY" *)
input wire m_axi_out_bus_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus BID" *)
input wire [0 : 0] m_axi_out_bus_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus BRESP" *)
input wire [1 : 0] m_axi_out_bus_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus BVALID" *)
input wire m_axi_out_bus_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus BREADY" *)
output wire m_axi_out_bus_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus ARID" *)
output wire [0 : 0] m_axi_out_bus_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus ARADDR" *)
output wire [63 : 0] m_axi_out_bus_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus ARLEN" *)
output wire [7 : 0] m_axi_out_bus_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus ARSIZE" *)
output wire [2 : 0] m_axi_out_bus_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus ARBURST" *)
output wire [1 : 0] m_axi_out_bus_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus ARLOCK" *)
output wire [1 : 0] m_axi_out_bus_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus ARREGION" *)
output wire [3 : 0] m_axi_out_bus_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus ARCACHE" *)
output wire [3 : 0] m_axi_out_bus_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus ARPROT" *)
output wire [2 : 0] m_axi_out_bus_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus ARQOS" *)
output wire [3 : 0] m_axi_out_bus_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus ARVALID" *)
output wire m_axi_out_bus_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus ARREADY" *)
input wire m_axi_out_bus_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus RID" *)
input wire [0 : 0] m_axi_out_bus_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus RDATA" *)
input wire [63 : 0] m_axi_out_bus_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus RRESP" *)
input wire [1 : 0] m_axi_out_bus_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus RLAST" *)
input wire m_axi_out_bus_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus RVALID" *)
input wire m_axi_out_bus_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_out_bus, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, FREQ_HZ 40000000, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN \
design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_out_bus RREADY" *)
output wire m_axi_out_bus_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt_out, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 interrupt_out DATA" *)
output wire interrupt_out;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  waterfall_sender #(
    .C_M_AXI_OUT_BUS_ID_WIDTH(1),
    .C_M_AXI_OUT_BUS_ADDR_WIDTH(64),
    .C_M_AXI_OUT_BUS_DATA_WIDTH(64),
    .C_M_AXI_OUT_BUS_AWUSER_WIDTH(1),
    .C_M_AXI_OUT_BUS_ARUSER_WIDTH(1),
    .C_M_AXI_OUT_BUS_WUSER_WIDTH(1),
    .C_M_AXI_OUT_BUS_RUSER_WIDTH(1),
    .C_M_AXI_OUT_BUS_BUSER_WIDTH(1),
    .C_M_AXI_OUT_BUS_USER_VALUE(32'H00000000),
    .C_M_AXI_OUT_BUS_PROT_VALUE(3'B000),
    .C_M_AXI_OUT_BUS_CACHE_VALUE(4'B0011)
  ) inst (
    .interrupt_out_ap_vld(interrupt_out_ap_vld),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .in_bus_TVALID(in_bus_TVALID),
    .in_bus_TREADY(in_bus_TREADY),
    .in_bus_TDATA(in_bus_TDATA),
    .in_bus_TLAST(in_bus_TLAST),
    .in_bus_TKEEP(in_bus_TKEEP),
    .in_bus_TSTRB(in_bus_TSTRB),
    .start_send(start_send),
    .module_idx(module_idx),
    .m_axi_out_bus_AWID(m_axi_out_bus_AWID),
    .m_axi_out_bus_AWADDR(m_axi_out_bus_AWADDR),
    .m_axi_out_bus_AWLEN(m_axi_out_bus_AWLEN),
    .m_axi_out_bus_AWSIZE(m_axi_out_bus_AWSIZE),
    .m_axi_out_bus_AWBURST(m_axi_out_bus_AWBURST),
    .m_axi_out_bus_AWLOCK(m_axi_out_bus_AWLOCK),
    .m_axi_out_bus_AWREGION(m_axi_out_bus_AWREGION),
    .m_axi_out_bus_AWCACHE(m_axi_out_bus_AWCACHE),
    .m_axi_out_bus_AWPROT(m_axi_out_bus_AWPROT),
    .m_axi_out_bus_AWQOS(m_axi_out_bus_AWQOS),
    .m_axi_out_bus_AWUSER(),
    .m_axi_out_bus_AWVALID(m_axi_out_bus_AWVALID),
    .m_axi_out_bus_AWREADY(m_axi_out_bus_AWREADY),
    .m_axi_out_bus_WID(m_axi_out_bus_WID),
    .m_axi_out_bus_WDATA(m_axi_out_bus_WDATA),
    .m_axi_out_bus_WSTRB(m_axi_out_bus_WSTRB),
    .m_axi_out_bus_WLAST(m_axi_out_bus_WLAST),
    .m_axi_out_bus_WUSER(),
    .m_axi_out_bus_WVALID(m_axi_out_bus_WVALID),
    .m_axi_out_bus_WREADY(m_axi_out_bus_WREADY),
    .m_axi_out_bus_BID(m_axi_out_bus_BID),
    .m_axi_out_bus_BRESP(m_axi_out_bus_BRESP),
    .m_axi_out_bus_BUSER(1'B0),
    .m_axi_out_bus_BVALID(m_axi_out_bus_BVALID),
    .m_axi_out_bus_BREADY(m_axi_out_bus_BREADY),
    .m_axi_out_bus_ARID(m_axi_out_bus_ARID),
    .m_axi_out_bus_ARADDR(m_axi_out_bus_ARADDR),
    .m_axi_out_bus_ARLEN(m_axi_out_bus_ARLEN),
    .m_axi_out_bus_ARSIZE(m_axi_out_bus_ARSIZE),
    .m_axi_out_bus_ARBURST(m_axi_out_bus_ARBURST),
    .m_axi_out_bus_ARLOCK(m_axi_out_bus_ARLOCK),
    .m_axi_out_bus_ARREGION(m_axi_out_bus_ARREGION),
    .m_axi_out_bus_ARCACHE(m_axi_out_bus_ARCACHE),
    .m_axi_out_bus_ARPROT(m_axi_out_bus_ARPROT),
    .m_axi_out_bus_ARQOS(m_axi_out_bus_ARQOS),
    .m_axi_out_bus_ARUSER(),
    .m_axi_out_bus_ARVALID(m_axi_out_bus_ARVALID),
    .m_axi_out_bus_ARREADY(m_axi_out_bus_ARREADY),
    .m_axi_out_bus_RID(m_axi_out_bus_RID),
    .m_axi_out_bus_RDATA(m_axi_out_bus_RDATA),
    .m_axi_out_bus_RRESP(m_axi_out_bus_RRESP),
    .m_axi_out_bus_RLAST(m_axi_out_bus_RLAST),
    .m_axi_out_bus_RUSER(1'B0),
    .m_axi_out_bus_RVALID(m_axi_out_bus_RVALID),
    .m_axi_out_bus_RREADY(m_axi_out_bus_RREADY),
    .interrupt_out(interrupt_out)
  );
endmodule
