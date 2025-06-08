// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Jun  8 23:18:12 2025
// Host        : IDEAPAD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/GITHUB/OpenZynqSDR_HW/Src_Vivado/OpenZynqSDR_HW.gen/sources_1/ip/rx_cic2/rx_cic2_stub.v
// Design      : rx_cic2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cic_compiler_v4_0_16,Vivado 2022.2" *)
module rx_cic2(aclk, aresetn, s_axis_data_tdata, 
  s_axis_data_tvalid, s_axis_data_tready, s_axis_data_tlast, m_axis_data_tdata, 
  m_axis_data_tuser, m_axis_data_tvalid, m_axis_data_tlast, event_tlast_unexpected, 
  event_tlast_missing)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_data_tdata[31:0],s_axis_data_tvalid,s_axis_data_tready,s_axis_data_tlast,m_axis_data_tdata[31:0],m_axis_data_tuser[15:0],m_axis_data_tvalid,m_axis_data_tlast,event_tlast_unexpected,event_tlast_missing" */;
  input aclk;
  input aresetn;
  input [31:0]s_axis_data_tdata;
  input s_axis_data_tvalid;
  output s_axis_data_tready;
  input s_axis_data_tlast;
  output [31:0]m_axis_data_tdata;
  output [15:0]m_axis_data_tuser;
  output m_axis_data_tvalid;
  output m_axis_data_tlast;
  output event_tlast_unexpected;
  output event_tlast_missing;
endmodule
