-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Nov 27 22:31:47 2024
-- Host        : IDEAPAD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_spi_receiver_0_0 -prefix
--               design_1_spi_receiver_0_0_ design_1_spi_receiver_0_0_sim_netlist.vhdl
-- Design      : design_1_spi_receiver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi_receiver_0_0_spi_receiver is
  port (
    command : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data : out STD_LOGIC_VECTOR ( 35 downto 0 );
    data_ready : out STD_LOGIC;
    clk_main : in STD_LOGIC;
    csn_i : in STD_LOGIC;
    spi_clk : in STD_LOGIC;
    mosi : in STD_LOGIC;
    resn_i : in STD_LOGIC
  );
end design_1_spi_receiver_0_0_spi_receiver;

architecture STRUCTURE of design_1_spi_receiver_0_0_spi_receiver is
  signal bitcnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bitcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitcnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitcnt[2]_i_2_n_0\ : STD_LOGIC;
  signal byte_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \byte_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \byte_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal byte_received : STD_LOGIC;
  signal csn_reg : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \csn_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal data_received : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_received_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal received_channel_reg : STD_LOGIC;
  signal received_command_reg : STD_LOGIC;
  signal received_data_reg : STD_LOGIC_VECTOR ( 31 downto 15 );
  signal \received_data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \result_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \result_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \result_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \result_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \result_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \result_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \result_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \spi_clk_reg_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bitcnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bitcnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \byte_cnt[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \byte_cnt[1]_i_1\ : label is "soft_lutpair1";
begin
\bitcnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4510"
    )
        port map (
      I0 => csn_i,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => bitcnt(0),
      O => \bitcnt[0]_i_1_n_0\
    );
\bitcnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"31330200"
    )
        port map (
      I0 => bitcnt(0),
      I1 => csn_i,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => bitcnt(1),
      O => \bitcnt[1]_i_1_n_0\
    );
\bitcnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F070F0F00080000"
    )
        port map (
      I0 => bitcnt(1),
      I1 => bitcnt(0),
      I2 => csn_i,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => bitcnt(2),
      O => \bitcnt[2]_i_1_n_0\
    );
\bitcnt[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resn_i,
      O => \bitcnt[2]_i_2_n_0\
    );
\bitcnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => '1',
      CLR => \bitcnt[2]_i_2_n_0\,
      D => \bitcnt[0]_i_1_n_0\,
      Q => bitcnt(0)
    );
\bitcnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => '1',
      CLR => \bitcnt[2]_i_2_n_0\,
      D => \bitcnt[1]_i_1_n_0\,
      Q => bitcnt(1)
    );
\bitcnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => '1',
      CLR => \bitcnt[2]_i_2_n_0\,
      D => \bitcnt[2]_i_1_n_0\,
      Q => bitcnt(2)
    );
\byte_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BB0"
    )
        port map (
      I0 => csn_reg(1),
      I1 => csn_reg(2),
      I2 => byte_received,
      I3 => byte_cnt(0),
      O => \byte_cnt[0]_i_1_n_0\
    );
\byte_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45CF8A00"
    )
        port map (
      I0 => byte_cnt(0),
      I1 => csn_reg(1),
      I2 => csn_reg(2),
      I3 => byte_received,
      I4 => byte_cnt(1),
      O => \byte_cnt[1]_i_1_n_0\
    );
\byte_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7077F0FF80880000"
    )
        port map (
      I0 => byte_cnt(1),
      I1 => byte_cnt(0),
      I2 => csn_reg(1),
      I3 => csn_reg(2),
      I4 => byte_received,
      I5 => byte_cnt(2),
      O => \byte_cnt[2]_i_1_n_0\
    );
\byte_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => '1',
      CLR => \bitcnt[2]_i_2_n_0\,
      D => \byte_cnt[0]_i_1_n_0\,
      Q => byte_cnt(0)
    );
\byte_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => '1',
      CLR => \bitcnt[2]_i_2_n_0\,
      D => \byte_cnt[1]_i_1_n_0\,
      Q => byte_cnt(1)
    );
\byte_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => '1',
      CLR => \bitcnt[2]_i_2_n_0\,
      D => \byte_cnt[2]_i_1_n_0\,
      Q => byte_cnt(2)
    );
\csn_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => '1',
      D => csn_i,
      Q => \csn_reg_reg_n_0_[0]\,
      R => '0'
    );
\csn_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => '1',
      D => \csn_reg_reg_n_0_[0]\,
      Q => csn_reg(1),
      R => '0'
    );
\csn_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => '1',
      D => csn_reg(1),
      Q => csn_reg(2),
      R => '0'
    );
data_ready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => byte_cnt(1),
      I1 => byte_cnt(2),
      I2 => byte_cnt(0),
      I3 => csn_reg(2),
      I4 => csn_reg(1),
      O => data_ready
    );
\data_received[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => csn_i,
      O => data_received_0
    );
\data_received_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => data_received_0,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => mosi,
      Q => data_received(0)
    );
\data_received_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => data_received_0,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(0),
      Q => data_received(1)
    );
\data_received_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => data_received_0,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(1),
      Q => data_received(2)
    );
\data_received_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => data_received_0,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(2),
      Q => data_received(3)
    );
\data_received_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => data_received_0,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(3),
      Q => data_received(4)
    );
\data_received_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => data_received_0,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(4),
      Q => data_received(5)
    );
\data_received_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => data_received_0,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(5),
      Q => data_received(6)
    );
\data_received_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => data_received_0,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(6),
      Q => data_received(7)
    );
\received_channel_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => byte_received,
      I1 => byte_cnt(2),
      I2 => byte_cnt(1),
      I3 => byte_cnt(0),
      O => received_channel_reg
    );
\received_channel_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_channel_reg,
      D => \result_reg_reg_n_0_[0]\,
      Q => data(32),
      R => '0'
    );
\received_channel_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_channel_reg,
      D => \result_reg_reg_n_0_[1]\,
      Q => data(33),
      R => '0'
    );
\received_channel_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_channel_reg,
      D => \result_reg_reg_n_0_[2]\,
      Q => data(34),
      R => '0'
    );
\received_channel_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_channel_reg,
      D => \result_reg_reg_n_0_[3]\,
      Q => data(35),
      R => '0'
    );
\received_command_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => byte_received,
      I1 => byte_cnt(1),
      I2 => byte_cnt(0),
      I3 => byte_cnt(2),
      O => received_command_reg
    );
\received_command_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_command_reg,
      D => \result_reg_reg_n_0_[0]\,
      Q => command(0),
      R => '0'
    );
\received_command_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_command_reg,
      D => \result_reg_reg_n_0_[1]\,
      Q => command(1),
      R => '0'
    );
\received_command_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_command_reg,
      D => \result_reg_reg_n_0_[2]\,
      Q => command(2),
      R => '0'
    );
\received_command_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_command_reg,
      D => \result_reg_reg_n_0_[3]\,
      Q => command(3),
      R => '0'
    );
\received_data_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => byte_cnt(2),
      I1 => byte_cnt(0),
      I2 => byte_received,
      I3 => byte_cnt(1),
      O => received_data_reg(15)
    );
\received_data_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => byte_received,
      I1 => byte_cnt(2),
      I2 => byte_cnt(0),
      I3 => byte_cnt(1),
      O => received_data_reg(23)
    );
\received_data_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => byte_received,
      I1 => byte_cnt(0),
      I2 => byte_cnt(1),
      I3 => byte_cnt(2),
      O => received_data_reg(31)
    );
\received_data_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => byte_cnt(0),
      I1 => byte_cnt(1),
      I2 => byte_cnt(2),
      I3 => byte_received,
      O => \received_data_reg[7]_i_1_n_0\
    );
\received_data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => \received_data_reg[7]_i_1_n_0\,
      D => \result_reg_reg_n_0_[0]\,
      Q => data(0),
      R => '0'
    );
\received_data_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(15),
      D => \result_reg_reg_n_0_[2]\,
      Q => data(10),
      R => '0'
    );
\received_data_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(15),
      D => \result_reg_reg_n_0_[3]\,
      Q => data(11),
      R => '0'
    );
\received_data_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(15),
      D => \result_reg_reg_n_0_[4]\,
      Q => data(12),
      R => '0'
    );
\received_data_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(15),
      D => \result_reg_reg_n_0_[5]\,
      Q => data(13),
      R => '0'
    );
\received_data_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(15),
      D => \result_reg_reg_n_0_[6]\,
      Q => data(14),
      R => '0'
    );
\received_data_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(15),
      D => \result_reg_reg_n_0_[7]\,
      Q => data(15),
      R => '0'
    );
\received_data_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(23),
      D => \result_reg_reg_n_0_[0]\,
      Q => data(16),
      R => '0'
    );
\received_data_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(23),
      D => \result_reg_reg_n_0_[1]\,
      Q => data(17),
      R => '0'
    );
\received_data_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(23),
      D => \result_reg_reg_n_0_[2]\,
      Q => data(18),
      R => '0'
    );
\received_data_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(23),
      D => \result_reg_reg_n_0_[3]\,
      Q => data(19),
      R => '0'
    );
\received_data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => \received_data_reg[7]_i_1_n_0\,
      D => \result_reg_reg_n_0_[1]\,
      Q => data(1),
      R => '0'
    );
\received_data_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(23),
      D => \result_reg_reg_n_0_[4]\,
      Q => data(20),
      R => '0'
    );
\received_data_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(23),
      D => \result_reg_reg_n_0_[5]\,
      Q => data(21),
      R => '0'
    );
\received_data_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(23),
      D => \result_reg_reg_n_0_[6]\,
      Q => data(22),
      R => '0'
    );
\received_data_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(23),
      D => \result_reg_reg_n_0_[7]\,
      Q => data(23),
      R => '0'
    );
\received_data_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(31),
      D => \result_reg_reg_n_0_[0]\,
      Q => data(24),
      R => '0'
    );
\received_data_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(31),
      D => \result_reg_reg_n_0_[1]\,
      Q => data(25),
      R => '0'
    );
\received_data_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(31),
      D => \result_reg_reg_n_0_[2]\,
      Q => data(26),
      R => '0'
    );
\received_data_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(31),
      D => \result_reg_reg_n_0_[3]\,
      Q => data(27),
      R => '0'
    );
\received_data_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(31),
      D => \result_reg_reg_n_0_[4]\,
      Q => data(28),
      R => '0'
    );
\received_data_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(31),
      D => \result_reg_reg_n_0_[5]\,
      Q => data(29),
      R => '0'
    );
\received_data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => \received_data_reg[7]_i_1_n_0\,
      D => \result_reg_reg_n_0_[2]\,
      Q => data(2),
      R => '0'
    );
\received_data_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(31),
      D => \result_reg_reg_n_0_[6]\,
      Q => data(30),
      R => '0'
    );
\received_data_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(31),
      D => \result_reg_reg_n_0_[7]\,
      Q => data(31),
      R => '0'
    );
\received_data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => \received_data_reg[7]_i_1_n_0\,
      D => \result_reg_reg_n_0_[3]\,
      Q => data(3),
      R => '0'
    );
\received_data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => \received_data_reg[7]_i_1_n_0\,
      D => \result_reg_reg_n_0_[4]\,
      Q => data(4),
      R => '0'
    );
\received_data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => \received_data_reg[7]_i_1_n_0\,
      D => \result_reg_reg_n_0_[5]\,
      Q => data(5),
      R => '0'
    );
\received_data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => \received_data_reg[7]_i_1_n_0\,
      D => \result_reg_reg_n_0_[6]\,
      Q => data(6),
      R => '0'
    );
\received_data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => \received_data_reg[7]_i_1_n_0\,
      D => \result_reg_reg_n_0_[7]\,
      Q => data(7),
      R => '0'
    );
\received_data_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(15),
      D => \result_reg_reg_n_0_[0]\,
      Q => data(8),
      R => '0'
    );
\received_data_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => received_data_reg(15),
      D => \result_reg_reg_n_0_[1]\,
      Q => data(9),
      R => '0'
    );
\result_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => bitcnt(2),
      I1 => bitcnt(0),
      I2 => bitcnt(1),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => byte_received
    );
\result_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => byte_received,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(0),
      Q => \result_reg_reg_n_0_[0]\
    );
\result_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => byte_received,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(1),
      Q => \result_reg_reg_n_0_[1]\
    );
\result_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => byte_received,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(2),
      Q => \result_reg_reg_n_0_[2]\
    );
\result_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => byte_received,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(3),
      Q => \result_reg_reg_n_0_[3]\
    );
\result_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => byte_received,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(4),
      Q => \result_reg_reg_n_0_[4]\
    );
\result_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => byte_received,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(5),
      Q => \result_reg_reg_n_0_[5]\
    );
\result_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => byte_received,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(6),
      Q => \result_reg_reg_n_0_[6]\
    );
\result_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_main,
      CE => byte_received,
      CLR => \bitcnt[2]_i_2_n_0\,
      D => data_received(7),
      Q => \result_reg_reg_n_0_[7]\
    );
\spi_clk_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => '1',
      D => spi_clk,
      Q => \spi_clk_reg_reg_n_0_[0]\,
      R => '0'
    );
\spi_clk_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => '1',
      D => \spi_clk_reg_reg_n_0_[0]\,
      Q => p_0_in(0),
      R => '0'
    );
\spi_clk_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_main,
      CE => '1',
      D => p_0_in(0),
      Q => p_0_in(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi_receiver_0_0 is
  port (
    spi_clk : in STD_LOGIC;
    mosi : in STD_LOGIC;
    csn_i : in STD_LOGIC;
    csn_o : out STD_LOGIC;
    resn_i : in STD_LOGIC;
    clk_main : in STD_LOGIC;
    data_ready : out STD_LOGIC;
    command : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data : out STD_LOGIC_VECTOR ( 35 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_spi_receiver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_spi_receiver_0_0 : entity is "design_1_spi_receiver_0_0,spi_receiver,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_spi_receiver_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_spi_receiver_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_spi_receiver_0_0 : entity is "spi_receiver,Vivado 2022.2";
end design_1_spi_receiver_0_0;

architecture STRUCTURE of design_1_spi_receiver_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of csn_i : signal is "xilinx.com:interface:spi:1.0 spi_s SS_O";
  attribute X_INTERFACE_INFO of csn_o : signal is "xilinx.com:interface:spi:1.0 spi_s SS_I";
  attribute X_INTERFACE_INFO of mosi : signal is "xilinx.com:interface:spi:1.0 spi_s IO0_O";
  attribute X_INTERFACE_INFO of spi_clk : signal is "xilinx.com:interface:spi:1.0 spi_s SCK_O";
begin
  csn_o <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_spi_receiver_0_0_spi_receiver
     port map (
      clk_main => clk_main,
      command(3 downto 0) => command(3 downto 0),
      csn_i => csn_i,
      data(35 downto 0) => data(35 downto 0),
      data_ready => data_ready,
      mosi => mosi,
      resn_i => resn_i,
      spi_clk => spi_clk
    );
end STRUCTURE;
