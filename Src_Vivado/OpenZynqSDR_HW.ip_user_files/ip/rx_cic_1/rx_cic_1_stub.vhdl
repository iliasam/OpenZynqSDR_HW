-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sun Jun  8 23:18:12 2025
-- Host        : IDEAPAD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/GITHUB/OpenZynqSDR_HW/Src_Vivado/OpenZynqSDR_HW.gen/sources_1/ip/rx_cic_1/rx_cic_1_stub.vhdl
-- Design      : rx_cic_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rx_cic_1 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC
  );

end rx_cic_1;

architecture stub of rx_cic_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_data_tdata[31:0],s_axis_data_tvalid,s_axis_data_tready,m_axis_data_tdata[31:0],m_axis_data_tvalid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "cic_compiler_v4_0_16,Vivado 2022.2";
begin
end;
