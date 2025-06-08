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


// IP VLNV: xilinx.com:module_ref:sound_rx_common:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_sound_rx_common_0_0 (
  adc_data,
  resn_i,
  in_aclk,
  data_ready_i,
  command_i,
  data_i,
  snd_axis_tdata,
  snd_axis_tvalid,
  snd_axis_tuser,
  snd_axis_tlast
);

input wire [11 : 0] adc_data;
input wire resn_i;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_aclk, ASSOCIATED_RESET resn_i, FREQ_HZ 40000000, ASSOCIATED_BUSIF snd_axis, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 in_aclk CLK" *)
input wire in_aclk;
input wire data_ready_i;
input wire [3 : 0] command_i;
input wire [35 : 0] data_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 snd_axis TDATA" *)
output wire [31 : 0] snd_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 snd_axis TVALID" *)
output wire snd_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 snd_axis TUSER" *)
output wire [15 : 0] snd_axis_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME snd_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 16, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 snd_axis TLAST" *)
output wire snd_axis_tlast;

  sound_rx_common #(
    .IN_WIDTH(12),
    .SOUND_CH_CNT(8),
    .SOUND_WORDS_CNT(16),
    .DDS_PHASE_WIDTH(32),
    .SPI_CMD_SET_RX_FREQ(4'B0001),
    .RESULT_WIDTH(32)
  ) inst (
    .adc_data(adc_data),
    .resn_i(resn_i),
    .in_aclk(in_aclk),
    .data_ready_i(data_ready_i),
    .command_i(command_i),
    .data_i(data_i),
    .snd_axis_tdata(snd_axis_tdata),
    .snd_axis_tvalid(snd_axis_tvalid),
    .snd_axis_tuser(snd_axis_tuser),
    .snd_axis_tlast(snd_axis_tlast)
  );
endmodule
