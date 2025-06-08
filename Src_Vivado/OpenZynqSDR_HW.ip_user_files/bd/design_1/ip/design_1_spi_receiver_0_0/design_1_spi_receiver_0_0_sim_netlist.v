// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Nov 27 22:31:47 2024
// Host        : IDEAPAD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_spi_receiver_0_0 -prefix
//               design_1_spi_receiver_0_0_ design_1_spi_receiver_0_0_sim_netlist.v
// Design      : design_1_spi_receiver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_spi_receiver_0_0,spi_receiver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "spi_receiver,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_spi_receiver_0_0
   (spi_clk,
    mosi,
    csn_i,
    csn_o,
    resn_i,
    clk_main,
    data_ready,
    command,
    data);
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_s SCK_O" *) input spi_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_s IO0_O" *) input mosi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_s SS_O" *) input csn_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 spi_s SS_I" *) output csn_o;
  input resn_i;
  input clk_main;
  output data_ready;
  output [3:0]command;
  output [35:0]data;

  wire \<const1> ;
  wire clk_main;
  wire [3:0]command;
  wire csn_i;
  wire [35:0]data;
  wire data_ready;
  wire mosi;
  wire resn_i;
  wire spi_clk;

  assign csn_o = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  design_1_spi_receiver_0_0_spi_receiver inst
       (.clk_main(clk_main),
        .command(command),
        .csn_i(csn_i),
        .data(data),
        .data_ready(data_ready),
        .mosi(mosi),
        .resn_i(resn_i),
        .spi_clk(spi_clk));
endmodule

module design_1_spi_receiver_0_0_spi_receiver
   (command,
    data,
    data_ready,
    clk_main,
    csn_i,
    spi_clk,
    mosi,
    resn_i);
  output [3:0]command;
  output [35:0]data;
  output data_ready;
  input clk_main;
  input csn_i;
  input spi_clk;
  input mosi;
  input resn_i;

  wire [2:0]bitcnt;
  wire \bitcnt[0]_i_1_n_0 ;
  wire \bitcnt[1]_i_1_n_0 ;
  wire \bitcnt[2]_i_1_n_0 ;
  wire \bitcnt[2]_i_2_n_0 ;
  wire [2:0]byte_cnt;
  wire \byte_cnt[0]_i_1_n_0 ;
  wire \byte_cnt[1]_i_1_n_0 ;
  wire \byte_cnt[2]_i_1_n_0 ;
  wire byte_received;
  wire clk_main;
  wire [3:0]command;
  wire csn_i;
  wire [2:1]csn_reg;
  wire \csn_reg_reg_n_0_[0] ;
  wire [35:0]data;
  wire data_ready;
  wire [7:0]data_received;
  wire data_received_0;
  wire mosi;
  wire [1:0]p_0_in;
  wire received_channel_reg;
  wire received_command_reg;
  wire [31:15]received_data_reg;
  wire \received_data_reg[7]_i_1_n_0 ;
  wire resn_i;
  wire \result_reg_reg_n_0_[0] ;
  wire \result_reg_reg_n_0_[1] ;
  wire \result_reg_reg_n_0_[2] ;
  wire \result_reg_reg_n_0_[3] ;
  wire \result_reg_reg_n_0_[4] ;
  wire \result_reg_reg_n_0_[5] ;
  wire \result_reg_reg_n_0_[6] ;
  wire \result_reg_reg_n_0_[7] ;
  wire spi_clk;
  wire \spi_clk_reg_reg_n_0_[0] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4510)) 
    \bitcnt[0]_i_1 
       (.I0(csn_i),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(bitcnt[0]),
        .O(\bitcnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h31330200)) 
    \bitcnt[1]_i_1 
       (.I0(bitcnt[0]),
        .I1(csn_i),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(bitcnt[1]),
        .O(\bitcnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F070F0F00080000)) 
    \bitcnt[2]_i_1 
       (.I0(bitcnt[1]),
        .I1(bitcnt[0]),
        .I2(csn_i),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(bitcnt[2]),
        .O(\bitcnt[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bitcnt[2]_i_2 
       (.I0(resn_i),
        .O(\bitcnt[2]_i_2_n_0 ));
  FDCE \bitcnt_reg[0] 
       (.C(clk_main),
        .CE(1'b1),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(\bitcnt[0]_i_1_n_0 ),
        .Q(bitcnt[0]));
  FDCE \bitcnt_reg[1] 
       (.C(clk_main),
        .CE(1'b1),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(\bitcnt[1]_i_1_n_0 ),
        .Q(bitcnt[1]));
  FDCE \bitcnt_reg[2] 
       (.C(clk_main),
        .CE(1'b1),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(\bitcnt[2]_i_1_n_0 ),
        .Q(bitcnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0BB0)) 
    \byte_cnt[0]_i_1 
       (.I0(csn_reg[1]),
        .I1(csn_reg[2]),
        .I2(byte_received),
        .I3(byte_cnt[0]),
        .O(\byte_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h45CF8A00)) 
    \byte_cnt[1]_i_1 
       (.I0(byte_cnt[0]),
        .I1(csn_reg[1]),
        .I2(csn_reg[2]),
        .I3(byte_received),
        .I4(byte_cnt[1]),
        .O(\byte_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7077F0FF80880000)) 
    \byte_cnt[2]_i_1 
       (.I0(byte_cnt[1]),
        .I1(byte_cnt[0]),
        .I2(csn_reg[1]),
        .I3(csn_reg[2]),
        .I4(byte_received),
        .I5(byte_cnt[2]),
        .O(\byte_cnt[2]_i_1_n_0 ));
  FDCE \byte_cnt_reg[0] 
       (.C(clk_main),
        .CE(1'b1),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(\byte_cnt[0]_i_1_n_0 ),
        .Q(byte_cnt[0]));
  FDCE \byte_cnt_reg[1] 
       (.C(clk_main),
        .CE(1'b1),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(\byte_cnt[1]_i_1_n_0 ),
        .Q(byte_cnt[1]));
  FDCE \byte_cnt_reg[2] 
       (.C(clk_main),
        .CE(1'b1),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(\byte_cnt[2]_i_1_n_0 ),
        .Q(byte_cnt[2]));
  FDRE \csn_reg_reg[0] 
       (.C(clk_main),
        .CE(1'b1),
        .D(csn_i),
        .Q(\csn_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \csn_reg_reg[1] 
       (.C(clk_main),
        .CE(1'b1),
        .D(\csn_reg_reg_n_0_[0] ),
        .Q(csn_reg[1]),
        .R(1'b0));
  FDRE \csn_reg_reg[2] 
       (.C(clk_main),
        .CE(1'b1),
        .D(csn_reg[1]),
        .Q(csn_reg[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00080000)) 
    data_ready_INST_0
       (.I0(byte_cnt[1]),
        .I1(byte_cnt[2]),
        .I2(byte_cnt[0]),
        .I3(csn_reg[2]),
        .I4(csn_reg[1]),
        .O(data_ready));
  LUT3 #(
    .INIT(8'h04)) 
    \data_received[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(csn_i),
        .O(data_received_0));
  FDCE \data_received_reg[0] 
       (.C(clk_main),
        .CE(data_received_0),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(mosi),
        .Q(data_received[0]));
  FDCE \data_received_reg[1] 
       (.C(clk_main),
        .CE(data_received_0),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[0]),
        .Q(data_received[1]));
  FDCE \data_received_reg[2] 
       (.C(clk_main),
        .CE(data_received_0),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[1]),
        .Q(data_received[2]));
  FDCE \data_received_reg[3] 
       (.C(clk_main),
        .CE(data_received_0),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[2]),
        .Q(data_received[3]));
  FDCE \data_received_reg[4] 
       (.C(clk_main),
        .CE(data_received_0),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[3]),
        .Q(data_received[4]));
  FDCE \data_received_reg[5] 
       (.C(clk_main),
        .CE(data_received_0),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[4]),
        .Q(data_received[5]));
  FDCE \data_received_reg[6] 
       (.C(clk_main),
        .CE(data_received_0),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[5]),
        .Q(data_received[6]));
  FDCE \data_received_reg[7] 
       (.C(clk_main),
        .CE(data_received_0),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[6]),
        .Q(data_received[7]));
  LUT4 #(
    .INIT(16'h0020)) 
    \received_channel_reg[3]_i_1 
       (.I0(byte_received),
        .I1(byte_cnt[2]),
        .I2(byte_cnt[1]),
        .I3(byte_cnt[0]),
        .O(received_channel_reg));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_channel_reg_reg[0] 
       (.C(clk_main),
        .CE(received_channel_reg),
        .D(\result_reg_reg_n_0_[0] ),
        .Q(data[32]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_channel_reg_reg[1] 
       (.C(clk_main),
        .CE(received_channel_reg),
        .D(\result_reg_reg_n_0_[1] ),
        .Q(data[33]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_channel_reg_reg[2] 
       (.C(clk_main),
        .CE(received_channel_reg),
        .D(\result_reg_reg_n_0_[2] ),
        .Q(data[34]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_channel_reg_reg[3] 
       (.C(clk_main),
        .CE(received_channel_reg),
        .D(\result_reg_reg_n_0_[3] ),
        .Q(data[35]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0020)) 
    \received_command_reg[3]_i_1 
       (.I0(byte_received),
        .I1(byte_cnt[1]),
        .I2(byte_cnt[0]),
        .I3(byte_cnt[2]),
        .O(received_command_reg));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_command_reg_reg[0] 
       (.C(clk_main),
        .CE(received_command_reg),
        .D(\result_reg_reg_n_0_[0] ),
        .Q(command[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_command_reg_reg[1] 
       (.C(clk_main),
        .CE(received_command_reg),
        .D(\result_reg_reg_n_0_[1] ),
        .Q(command[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_command_reg_reg[2] 
       (.C(clk_main),
        .CE(received_command_reg),
        .D(\result_reg_reg_n_0_[2] ),
        .Q(command[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_command_reg_reg[3] 
       (.C(clk_main),
        .CE(received_command_reg),
        .D(\result_reg_reg_n_0_[3] ),
        .Q(command[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \received_data_reg[15]_i_1 
       (.I0(byte_cnt[2]),
        .I1(byte_cnt[0]),
        .I2(byte_received),
        .I3(byte_cnt[1]),
        .O(received_data_reg[15]));
  LUT4 #(
    .INIT(16'h0008)) 
    \received_data_reg[23]_i_1 
       (.I0(byte_received),
        .I1(byte_cnt[2]),
        .I2(byte_cnt[0]),
        .I3(byte_cnt[1]),
        .O(received_data_reg[23]));
  LUT4 #(
    .INIT(16'h0080)) 
    \received_data_reg[31]_i_1 
       (.I0(byte_received),
        .I1(byte_cnt[0]),
        .I2(byte_cnt[1]),
        .I3(byte_cnt[2]),
        .O(received_data_reg[31]));
  LUT4 #(
    .INIT(16'h4000)) 
    \received_data_reg[7]_i_1 
       (.I0(byte_cnt[0]),
        .I1(byte_cnt[1]),
        .I2(byte_cnt[2]),
        .I3(byte_received),
        .O(\received_data_reg[7]_i_1_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[0] 
       (.C(clk_main),
        .CE(\received_data_reg[7]_i_1_n_0 ),
        .D(\result_reg_reg_n_0_[0] ),
        .Q(data[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[10] 
       (.C(clk_main),
        .CE(received_data_reg[15]),
        .D(\result_reg_reg_n_0_[2] ),
        .Q(data[10]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[11] 
       (.C(clk_main),
        .CE(received_data_reg[15]),
        .D(\result_reg_reg_n_0_[3] ),
        .Q(data[11]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[12] 
       (.C(clk_main),
        .CE(received_data_reg[15]),
        .D(\result_reg_reg_n_0_[4] ),
        .Q(data[12]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[13] 
       (.C(clk_main),
        .CE(received_data_reg[15]),
        .D(\result_reg_reg_n_0_[5] ),
        .Q(data[13]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[14] 
       (.C(clk_main),
        .CE(received_data_reg[15]),
        .D(\result_reg_reg_n_0_[6] ),
        .Q(data[14]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[15] 
       (.C(clk_main),
        .CE(received_data_reg[15]),
        .D(\result_reg_reg_n_0_[7] ),
        .Q(data[15]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[16] 
       (.C(clk_main),
        .CE(received_data_reg[23]),
        .D(\result_reg_reg_n_0_[0] ),
        .Q(data[16]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[17] 
       (.C(clk_main),
        .CE(received_data_reg[23]),
        .D(\result_reg_reg_n_0_[1] ),
        .Q(data[17]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[18] 
       (.C(clk_main),
        .CE(received_data_reg[23]),
        .D(\result_reg_reg_n_0_[2] ),
        .Q(data[18]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[19] 
       (.C(clk_main),
        .CE(received_data_reg[23]),
        .D(\result_reg_reg_n_0_[3] ),
        .Q(data[19]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[1] 
       (.C(clk_main),
        .CE(\received_data_reg[7]_i_1_n_0 ),
        .D(\result_reg_reg_n_0_[1] ),
        .Q(data[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[20] 
       (.C(clk_main),
        .CE(received_data_reg[23]),
        .D(\result_reg_reg_n_0_[4] ),
        .Q(data[20]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[21] 
       (.C(clk_main),
        .CE(received_data_reg[23]),
        .D(\result_reg_reg_n_0_[5] ),
        .Q(data[21]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[22] 
       (.C(clk_main),
        .CE(received_data_reg[23]),
        .D(\result_reg_reg_n_0_[6] ),
        .Q(data[22]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[23] 
       (.C(clk_main),
        .CE(received_data_reg[23]),
        .D(\result_reg_reg_n_0_[7] ),
        .Q(data[23]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[24] 
       (.C(clk_main),
        .CE(received_data_reg[31]),
        .D(\result_reg_reg_n_0_[0] ),
        .Q(data[24]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[25] 
       (.C(clk_main),
        .CE(received_data_reg[31]),
        .D(\result_reg_reg_n_0_[1] ),
        .Q(data[25]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[26] 
       (.C(clk_main),
        .CE(received_data_reg[31]),
        .D(\result_reg_reg_n_0_[2] ),
        .Q(data[26]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[27] 
       (.C(clk_main),
        .CE(received_data_reg[31]),
        .D(\result_reg_reg_n_0_[3] ),
        .Q(data[27]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[28] 
       (.C(clk_main),
        .CE(received_data_reg[31]),
        .D(\result_reg_reg_n_0_[4] ),
        .Q(data[28]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[29] 
       (.C(clk_main),
        .CE(received_data_reg[31]),
        .D(\result_reg_reg_n_0_[5] ),
        .Q(data[29]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[2] 
       (.C(clk_main),
        .CE(\received_data_reg[7]_i_1_n_0 ),
        .D(\result_reg_reg_n_0_[2] ),
        .Q(data[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[30] 
       (.C(clk_main),
        .CE(received_data_reg[31]),
        .D(\result_reg_reg_n_0_[6] ),
        .Q(data[30]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[31] 
       (.C(clk_main),
        .CE(received_data_reg[31]),
        .D(\result_reg_reg_n_0_[7] ),
        .Q(data[31]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[3] 
       (.C(clk_main),
        .CE(\received_data_reg[7]_i_1_n_0 ),
        .D(\result_reg_reg_n_0_[3] ),
        .Q(data[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[4] 
       (.C(clk_main),
        .CE(\received_data_reg[7]_i_1_n_0 ),
        .D(\result_reg_reg_n_0_[4] ),
        .Q(data[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[5] 
       (.C(clk_main),
        .CE(\received_data_reg[7]_i_1_n_0 ),
        .D(\result_reg_reg_n_0_[5] ),
        .Q(data[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[6] 
       (.C(clk_main),
        .CE(\received_data_reg[7]_i_1_n_0 ),
        .D(\result_reg_reg_n_0_[6] ),
        .Q(data[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[7] 
       (.C(clk_main),
        .CE(\received_data_reg[7]_i_1_n_0 ),
        .D(\result_reg_reg_n_0_[7] ),
        .Q(data[7]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[8] 
       (.C(clk_main),
        .CE(received_data_reg[15]),
        .D(\result_reg_reg_n_0_[0] ),
        .Q(data[8]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \received_data_reg_reg[9] 
       (.C(clk_main),
        .CE(received_data_reg[15]),
        .D(\result_reg_reg_n_0_[1] ),
        .Q(data[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00010000)) 
    \result_reg[7]_i_1 
       (.I0(bitcnt[2]),
        .I1(bitcnt[0]),
        .I2(bitcnt[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(byte_received));
  FDCE \result_reg_reg[0] 
       (.C(clk_main),
        .CE(byte_received),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[0]),
        .Q(\result_reg_reg_n_0_[0] ));
  FDCE \result_reg_reg[1] 
       (.C(clk_main),
        .CE(byte_received),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[1]),
        .Q(\result_reg_reg_n_0_[1] ));
  FDCE \result_reg_reg[2] 
       (.C(clk_main),
        .CE(byte_received),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[2]),
        .Q(\result_reg_reg_n_0_[2] ));
  FDCE \result_reg_reg[3] 
       (.C(clk_main),
        .CE(byte_received),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[3]),
        .Q(\result_reg_reg_n_0_[3] ));
  FDCE \result_reg_reg[4] 
       (.C(clk_main),
        .CE(byte_received),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[4]),
        .Q(\result_reg_reg_n_0_[4] ));
  FDCE \result_reg_reg[5] 
       (.C(clk_main),
        .CE(byte_received),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[5]),
        .Q(\result_reg_reg_n_0_[5] ));
  FDCE \result_reg_reg[6] 
       (.C(clk_main),
        .CE(byte_received),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[6]),
        .Q(\result_reg_reg_n_0_[6] ));
  FDCE \result_reg_reg[7] 
       (.C(clk_main),
        .CE(byte_received),
        .CLR(\bitcnt[2]_i_2_n_0 ),
        .D(data_received[7]),
        .Q(\result_reg_reg_n_0_[7] ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_clk_reg_reg[0] 
       (.C(clk_main),
        .CE(1'b1),
        .D(spi_clk),
        .Q(\spi_clk_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_clk_reg_reg[1] 
       (.C(clk_main),
        .CE(1'b1),
        .D(\spi_clk_reg_reg_n_0_[0] ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_clk_reg_reg[2] 
       (.C(clk_main),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(p_0_in[1]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
