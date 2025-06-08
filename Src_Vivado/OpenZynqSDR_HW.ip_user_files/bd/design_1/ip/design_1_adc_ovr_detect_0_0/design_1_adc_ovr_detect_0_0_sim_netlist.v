// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Apr  8 23:03:37 2025
// Host        : IDEAPAD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_adc_ovr_detect_0_0 -prefix
//               design_1_adc_ovr_detect_0_0_ design_1_adc_ovr_detect_0_0_sim_netlist.v
// Design      : design_1_adc_ovr_detect_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_adc_ovr_detect_0_0_adc_ovr_detect
   (led_n,
    clk_main,
    adc_data_in,
    adc_abs0,
    rst_n);
  output led_n;
  input clk_main;
  input [11:0]adc_data_in;
  input [10:0]adc_abs0;
  input rst_n;

  wire [10:0]adc_abs0;
  wire [11:0]adc_data_in;
  wire adc_ovr_instant;
  wire adc_ovr_instant_i_1_n_0;
  wire adc_ovr_instant_i_2_n_0;
  wire adc_ovr_instant_i_3_n_0;
  wire adc_ovr_instant_i_4_n_0;
  wire adc_ovr_instant_i_6_n_0;
  wire adc_ovr_instant_i_7_n_0;
  wire clk_main;
  wire led_counter0_carry__0_n_0;
  wire led_counter0_carry__0_n_1;
  wire led_counter0_carry__0_n_2;
  wire led_counter0_carry__0_n_3;
  wire led_counter0_carry__1_n_0;
  wire led_counter0_carry__1_n_1;
  wire led_counter0_carry__1_n_2;
  wire led_counter0_carry__1_n_3;
  wire led_counter0_carry__2_n_0;
  wire led_counter0_carry__2_n_1;
  wire led_counter0_carry__2_n_2;
  wire led_counter0_carry__2_n_3;
  wire led_counter0_carry__3_n_0;
  wire led_counter0_carry__3_n_1;
  wire led_counter0_carry__3_n_2;
  wire led_counter0_carry__3_n_3;
  wire led_counter0_carry__4_n_3;
  wire led_counter0_carry_n_0;
  wire led_counter0_carry_n_1;
  wire led_counter0_carry_n_2;
  wire led_counter0_carry_n_3;
  wire \led_counter[12]_i_1_n_0 ;
  wire \led_counter[17]_i_1_n_0 ;
  wire \led_counter[18]_i_1_n_0 ;
  wire \led_counter[18]_i_2_n_0 ;
  wire \led_counter[18]_i_3_n_0 ;
  wire \led_counter[18]_i_4_n_0 ;
  wire \led_counter[19]_i_1_n_0 ;
  wire \led_counter[20]_i_1_n_0 ;
  wire \led_counter[21]_i_1_n_0 ;
  wire \led_counter[22]_i_1_n_0 ;
  wire \led_counter[22]_i_2_n_0 ;
  wire \led_counter[22]_i_3_n_0 ;
  wire \led_counter[9]_i_1_n_0 ;
  wire \led_counter_reg_n_0_[0] ;
  wire \led_counter_reg_n_0_[10] ;
  wire \led_counter_reg_n_0_[11] ;
  wire \led_counter_reg_n_0_[12] ;
  wire \led_counter_reg_n_0_[13] ;
  wire \led_counter_reg_n_0_[14] ;
  wire \led_counter_reg_n_0_[15] ;
  wire \led_counter_reg_n_0_[16] ;
  wire \led_counter_reg_n_0_[17] ;
  wire \led_counter_reg_n_0_[18] ;
  wire \led_counter_reg_n_0_[19] ;
  wire \led_counter_reg_n_0_[1] ;
  wire \led_counter_reg_n_0_[20] ;
  wire \led_counter_reg_n_0_[21] ;
  wire \led_counter_reg_n_0_[22] ;
  wire \led_counter_reg_n_0_[2] ;
  wire \led_counter_reg_n_0_[3] ;
  wire \led_counter_reg_n_0_[4] ;
  wire \led_counter_reg_n_0_[5] ;
  wire \led_counter_reg_n_0_[6] ;
  wire \led_counter_reg_n_0_[7] ;
  wire \led_counter_reg_n_0_[8] ;
  wire \led_counter_reg_n_0_[9] ;
  wire led_n;
  wire led_reg;
  wire led_reg_i_1_n_0;
  wire [22:0]p_3_in;
  wire rst_n;
  wire [3:1]NLW_led_counter0_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_led_counter0_carry__4_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hEA00)) 
    adc_ovr_instant_i_1
       (.I0(adc_ovr_instant_i_2_n_0),
        .I1(adc_ovr_instant_i_3_n_0),
        .I2(adc_ovr_instant_i_4_n_0),
        .I3(rst_n),
        .O(adc_ovr_instant_i_1_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    adc_ovr_instant_i_2
       (.I0(adc_data_in[11]),
        .I1(adc_abs0[10]),
        .I2(adc_ovr_instant_i_6_n_0),
        .I3(adc_ovr_instant_i_7_n_0),
        .O(adc_ovr_instant_i_2_n_0));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    adc_ovr_instant_i_3
       (.I0(adc_abs0[2]),
        .I1(adc_abs0[3]),
        .I2(adc_data_in[11]),
        .I3(adc_abs0[0]),
        .I4(adc_abs0[1]),
        .I5(adc_data_in[0]),
        .O(adc_ovr_instant_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    adc_ovr_instant_i_4
       (.I0(adc_abs0[6]),
        .I1(adc_abs0[7]),
        .I2(adc_abs0[4]),
        .I3(adc_abs0[5]),
        .I4(adc_abs0[9]),
        .I5(adc_abs0[8]),
        .O(adc_ovr_instant_i_4_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    adc_ovr_instant_i_6
       (.I0(adc_data_in[7]),
        .I1(adc_data_in[8]),
        .I2(adc_data_in[5]),
        .I3(adc_data_in[6]),
        .I4(adc_data_in[10]),
        .I5(adc_data_in[9]),
        .O(adc_ovr_instant_i_6_n_0));
  LUT6 #(
    .INIT(64'h4040404040404000)) 
    adc_ovr_instant_i_7
       (.I0(adc_data_in[11]),
        .I1(adc_data_in[3]),
        .I2(adc_data_in[4]),
        .I3(adc_data_in[0]),
        .I4(adc_data_in[1]),
        .I5(adc_data_in[2]),
        .O(adc_ovr_instant_i_7_n_0));
  FDRE adc_ovr_instant_reg
       (.C(clk_main),
        .CE(1'b1),
        .D(adc_ovr_instant_i_1_n_0),
        .Q(adc_ovr_instant),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 led_counter0_carry
       (.CI(1'b0),
        .CO({led_counter0_carry_n_0,led_counter0_carry_n_1,led_counter0_carry_n_2,led_counter0_carry_n_3}),
        .CYINIT(\led_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_3_in[4:1]),
        .S({\led_counter_reg_n_0_[4] ,\led_counter_reg_n_0_[3] ,\led_counter_reg_n_0_[2] ,\led_counter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 led_counter0_carry__0
       (.CI(led_counter0_carry_n_0),
        .CO({led_counter0_carry__0_n_0,led_counter0_carry__0_n_1,led_counter0_carry__0_n_2,led_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_3_in[8:5]),
        .S({\led_counter_reg_n_0_[8] ,\led_counter_reg_n_0_[7] ,\led_counter_reg_n_0_[6] ,\led_counter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 led_counter0_carry__1
       (.CI(led_counter0_carry__0_n_0),
        .CO({led_counter0_carry__1_n_0,led_counter0_carry__1_n_1,led_counter0_carry__1_n_2,led_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_3_in[12:9]),
        .S({\led_counter_reg_n_0_[12] ,\led_counter_reg_n_0_[11] ,\led_counter_reg_n_0_[10] ,\led_counter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 led_counter0_carry__2
       (.CI(led_counter0_carry__1_n_0),
        .CO({led_counter0_carry__2_n_0,led_counter0_carry__2_n_1,led_counter0_carry__2_n_2,led_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_3_in[16:13]),
        .S({\led_counter_reg_n_0_[16] ,\led_counter_reg_n_0_[15] ,\led_counter_reg_n_0_[14] ,\led_counter_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 led_counter0_carry__3
       (.CI(led_counter0_carry__2_n_0),
        .CO({led_counter0_carry__3_n_0,led_counter0_carry__3_n_1,led_counter0_carry__3_n_2,led_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_3_in[20:17]),
        .S({\led_counter_reg_n_0_[20] ,\led_counter_reg_n_0_[19] ,\led_counter_reg_n_0_[18] ,\led_counter_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 led_counter0_carry__4
       (.CI(led_counter0_carry__3_n_0),
        .CO({NLW_led_counter0_carry__4_CO_UNCONNECTED[3:1],led_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_led_counter0_carry__4_O_UNCONNECTED[3:2],p_3_in[22:21]}),
        .S({1'b0,1'b0,\led_counter_reg_n_0_[22] ,\led_counter_reg_n_0_[21] }));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[0]_i_1 
       (.I0(\led_counter_reg_n_0_[0] ),
        .O(p_3_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_counter[12]_i_1 
       (.I0(p_3_in[12]),
        .I1(adc_ovr_instant),
        .O(\led_counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_counter[17]_i_1 
       (.I0(p_3_in[17]),
        .I1(adc_ovr_instant),
        .O(\led_counter[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \led_counter[18]_i_1 
       (.I0(adc_ovr_instant),
        .I1(rst_n),
        .O(\led_counter[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4FFFFFFFFFFFFFFF)) 
    \led_counter[18]_i_2 
       (.I0(\led_counter_reg_n_0_[18] ),
        .I1(\led_counter[18]_i_3_n_0 ),
        .I2(\led_counter_reg_n_0_[21] ),
        .I3(\led_counter_reg_n_0_[22] ),
        .I4(\led_counter_reg_n_0_[19] ),
        .I5(\led_counter_reg_n_0_[20] ),
        .O(\led_counter[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00015555FFFFFFFF)) 
    \led_counter[18]_i_3 
       (.I0(\led_counter[18]_i_4_n_0 ),
        .I1(\led_counter_reg_n_0_[9] ),
        .I2(\led_counter_reg_n_0_[10] ),
        .I3(\led_counter_reg_n_0_[11] ),
        .I4(\led_counter_reg_n_0_[12] ),
        .I5(\led_counter_reg_n_0_[17] ),
        .O(\led_counter[18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_counter[18]_i_4 
       (.I0(\led_counter_reg_n_0_[14] ),
        .I1(\led_counter_reg_n_0_[13] ),
        .I2(\led_counter_reg_n_0_[16] ),
        .I3(\led_counter_reg_n_0_[15] ),
        .O(\led_counter[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_counter[19]_i_1 
       (.I0(p_3_in[19]),
        .I1(adc_ovr_instant),
        .O(\led_counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_counter[20]_i_1 
       (.I0(p_3_in[20]),
        .I1(adc_ovr_instant),
        .O(\led_counter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_counter[21]_i_1 
       (.I0(p_3_in[21]),
        .I1(adc_ovr_instant),
        .O(\led_counter[21]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[22]_i_1 
       (.I0(rst_n),
        .O(\led_counter[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \led_counter[22]_i_2 
       (.I0(\led_counter[18]_i_2_n_0 ),
        .I1(adc_ovr_instant),
        .O(\led_counter[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_counter[22]_i_3 
       (.I0(p_3_in[22]),
        .I1(adc_ovr_instant),
        .O(\led_counter[22]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \led_counter[9]_i_1 
       (.I0(p_3_in[9]),
        .I1(adc_ovr_instant),
        .O(\led_counter[9]_i_1_n_0 ));
  FDRE \led_counter_reg[0] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[0]),
        .Q(\led_counter_reg_n_0_[0] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDRE \led_counter_reg[10] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[10]),
        .Q(\led_counter_reg_n_0_[10] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDRE \led_counter_reg[11] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[11]),
        .Q(\led_counter_reg_n_0_[11] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDSE \led_counter_reg[12] 
       (.C(clk_main),
        .CE(\led_counter[22]_i_2_n_0 ),
        .D(\led_counter[12]_i_1_n_0 ),
        .Q(\led_counter_reg_n_0_[12] ),
        .S(\led_counter[22]_i_1_n_0 ));
  FDRE \led_counter_reg[13] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[13]),
        .Q(\led_counter_reg_n_0_[13] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDRE \led_counter_reg[14] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[14]),
        .Q(\led_counter_reg_n_0_[14] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDRE \led_counter_reg[15] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[15]),
        .Q(\led_counter_reg_n_0_[15] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDRE \led_counter_reg[16] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[16]),
        .Q(\led_counter_reg_n_0_[16] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDSE \led_counter_reg[17] 
       (.C(clk_main),
        .CE(\led_counter[22]_i_2_n_0 ),
        .D(\led_counter[17]_i_1_n_0 ),
        .Q(\led_counter_reg_n_0_[17] ),
        .S(\led_counter[22]_i_1_n_0 ));
  FDRE \led_counter_reg[18] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[18]),
        .Q(\led_counter_reg_n_0_[18] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDSE \led_counter_reg[19] 
       (.C(clk_main),
        .CE(\led_counter[22]_i_2_n_0 ),
        .D(\led_counter[19]_i_1_n_0 ),
        .Q(\led_counter_reg_n_0_[19] ),
        .S(\led_counter[22]_i_1_n_0 ));
  FDRE \led_counter_reg[1] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[1]),
        .Q(\led_counter_reg_n_0_[1] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDSE \led_counter_reg[20] 
       (.C(clk_main),
        .CE(\led_counter[22]_i_2_n_0 ),
        .D(\led_counter[20]_i_1_n_0 ),
        .Q(\led_counter_reg_n_0_[20] ),
        .S(\led_counter[22]_i_1_n_0 ));
  FDSE \led_counter_reg[21] 
       (.C(clk_main),
        .CE(\led_counter[22]_i_2_n_0 ),
        .D(\led_counter[21]_i_1_n_0 ),
        .Q(\led_counter_reg_n_0_[21] ),
        .S(\led_counter[22]_i_1_n_0 ));
  FDSE \led_counter_reg[22] 
       (.C(clk_main),
        .CE(\led_counter[22]_i_2_n_0 ),
        .D(\led_counter[22]_i_3_n_0 ),
        .Q(\led_counter_reg_n_0_[22] ),
        .S(\led_counter[22]_i_1_n_0 ));
  FDRE \led_counter_reg[2] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[2]),
        .Q(\led_counter_reg_n_0_[2] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDRE \led_counter_reg[3] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[3]),
        .Q(\led_counter_reg_n_0_[3] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDRE \led_counter_reg[4] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[4]),
        .Q(\led_counter_reg_n_0_[4] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDRE \led_counter_reg[5] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[5]),
        .Q(\led_counter_reg_n_0_[5] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDRE \led_counter_reg[6] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[6]),
        .Q(\led_counter_reg_n_0_[6] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDRE \led_counter_reg[7] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[7]),
        .Q(\led_counter_reg_n_0_[7] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDRE \led_counter_reg[8] 
       (.C(clk_main),
        .CE(\led_counter[18]_i_2_n_0 ),
        .D(p_3_in[8]),
        .Q(\led_counter_reg_n_0_[8] ),
        .R(\led_counter[18]_i_1_n_0 ));
  FDSE \led_counter_reg[9] 
       (.C(clk_main),
        .CE(\led_counter[22]_i_2_n_0 ),
        .D(\led_counter[9]_i_1_n_0 ),
        .Q(\led_counter_reg_n_0_[9] ),
        .S(\led_counter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    led_n_INST_0
       (.I0(led_reg),
        .O(led_n));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF800)) 
    led_reg_i_1
       (.I0(led_reg),
        .I1(\led_counter[18]_i_2_n_0 ),
        .I2(adc_ovr_instant),
        .I3(rst_n),
        .O(led_reg_i_1_n_0));
  FDRE led_reg_reg
       (.C(clk_main),
        .CE(1'b1),
        .D(led_reg_i_1_n_0),
        .Q(led_reg),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_adc_ovr_detect_0_0,adc_ovr_detect,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "adc_ovr_detect,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_adc_ovr_detect_0_0
   (clk_main,
    rst_n,
    adc_data_in,
    led_n);
  input clk_main;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [11:0]adc_data_in;
  output led_n;

  wire [11:1]adc_abs0;
  wire [11:0]adc_data_in;
  wire adc_ovr_instant_i_10_n_0;
  wire adc_ovr_instant_i_11_n_0;
  wire adc_ovr_instant_i_12_n_0;
  wire adc_ovr_instant_i_13_n_0;
  wire adc_ovr_instant_i_14_n_0;
  wire adc_ovr_instant_i_15_n_0;
  wire adc_ovr_instant_i_16_n_0;
  wire adc_ovr_instant_i_17_n_0;
  wire adc_ovr_instant_i_18_n_0;
  wire adc_ovr_instant_i_19_n_0;
  wire adc_ovr_instant_i_20_n_0;
  wire adc_ovr_instant_i_21_n_0;
  wire adc_ovr_instant_reg_i_5_n_2;
  wire adc_ovr_instant_reg_i_5_n_3;
  wire adc_ovr_instant_reg_i_8_n_0;
  wire adc_ovr_instant_reg_i_8_n_1;
  wire adc_ovr_instant_reg_i_8_n_2;
  wire adc_ovr_instant_reg_i_8_n_3;
  wire adc_ovr_instant_reg_i_9_n_0;
  wire adc_ovr_instant_reg_i_9_n_1;
  wire adc_ovr_instant_reg_i_9_n_2;
  wire adc_ovr_instant_reg_i_9_n_3;
  wire clk_main;
  wire led_n;
  wire rst_n;
  wire [3:2]NLW_adc_ovr_instant_reg_i_5_CO_UNCONNECTED;
  wire [3:3]NLW_adc_ovr_instant_reg_i_5_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    adc_ovr_instant_i_10
       (.I0(adc_data_in[11]),
        .O(adc_ovr_instant_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    adc_ovr_instant_i_11
       (.I0(adc_data_in[10]),
        .O(adc_ovr_instant_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    adc_ovr_instant_i_12
       (.I0(adc_data_in[9]),
        .O(adc_ovr_instant_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    adc_ovr_instant_i_13
       (.I0(adc_data_in[0]),
        .O(adc_ovr_instant_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    adc_ovr_instant_i_14
       (.I0(adc_data_in[4]),
        .O(adc_ovr_instant_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    adc_ovr_instant_i_15
       (.I0(adc_data_in[3]),
        .O(adc_ovr_instant_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    adc_ovr_instant_i_16
       (.I0(adc_data_in[2]),
        .O(adc_ovr_instant_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    adc_ovr_instant_i_17
       (.I0(adc_data_in[1]),
        .O(adc_ovr_instant_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    adc_ovr_instant_i_18
       (.I0(adc_data_in[8]),
        .O(adc_ovr_instant_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    adc_ovr_instant_i_19
       (.I0(adc_data_in[7]),
        .O(adc_ovr_instant_i_19_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    adc_ovr_instant_i_20
       (.I0(adc_data_in[6]),
        .O(adc_ovr_instant_i_20_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    adc_ovr_instant_i_21
       (.I0(adc_data_in[5]),
        .O(adc_ovr_instant_i_21_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adc_ovr_instant_reg_i_5
       (.CI(adc_ovr_instant_reg_i_9_n_0),
        .CO({NLW_adc_ovr_instant_reg_i_5_CO_UNCONNECTED[3:2],adc_ovr_instant_reg_i_5_n_2,adc_ovr_instant_reg_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_adc_ovr_instant_reg_i_5_O_UNCONNECTED[3],adc_abs0[11:9]}),
        .S({1'b0,adc_ovr_instant_i_10_n_0,adc_ovr_instant_i_11_n_0,adc_ovr_instant_i_12_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adc_ovr_instant_reg_i_8
       (.CI(1'b0),
        .CO({adc_ovr_instant_reg_i_8_n_0,adc_ovr_instant_reg_i_8_n_1,adc_ovr_instant_reg_i_8_n_2,adc_ovr_instant_reg_i_8_n_3}),
        .CYINIT(adc_ovr_instant_i_13_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(adc_abs0[4:1]),
        .S({adc_ovr_instant_i_14_n_0,adc_ovr_instant_i_15_n_0,adc_ovr_instant_i_16_n_0,adc_ovr_instant_i_17_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adc_ovr_instant_reg_i_9
       (.CI(adc_ovr_instant_reg_i_8_n_0),
        .CO({adc_ovr_instant_reg_i_9_n_0,adc_ovr_instant_reg_i_9_n_1,adc_ovr_instant_reg_i_9_n_2,adc_ovr_instant_reg_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(adc_abs0[8:5]),
        .S({adc_ovr_instant_i_18_n_0,adc_ovr_instant_i_19_n_0,adc_ovr_instant_i_20_n_0,adc_ovr_instant_i_21_n_0}));
  design_1_adc_ovr_detect_0_0_adc_ovr_detect inst
       (.adc_abs0(adc_abs0),
        .adc_data_in(adc_data_in),
        .clk_main(clk_main),
        .led_n(led_n),
        .rst_n(rst_n));
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
