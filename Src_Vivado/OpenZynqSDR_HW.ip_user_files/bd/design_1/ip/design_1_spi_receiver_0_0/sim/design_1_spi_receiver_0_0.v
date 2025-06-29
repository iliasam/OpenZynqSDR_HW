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


// IP VLNV: xilinx.com:module_ref:spi_receiver:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_spi_receiver_0_0 (
  spi_clk,
  mosi,
  csn_i,
  csn_o,
  resn_i,
  clk_main,
  data_ready,
  command,
  data
);

(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_s SCK_O" *)
input wire spi_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_s IO0_O" *)
input wire mosi;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_s SS_O" *)
input wire csn_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_s SS_I" *)
output wire csn_o;
input wire resn_i;
input wire clk_main;
output wire data_ready;
output wire [3 : 0] command;
output wire [35 : 0] data;

  spi_receiver inst (
    .spi_clk(spi_clk),
    .mosi(mosi),
    .csn_i(csn_i),
    .csn_o(csn_o),
    .resn_i(resn_i),
    .clk_main(clk_main),
    .data_ready(data_ready),
    .command(command),
    .data(data)
  );
endmodule
