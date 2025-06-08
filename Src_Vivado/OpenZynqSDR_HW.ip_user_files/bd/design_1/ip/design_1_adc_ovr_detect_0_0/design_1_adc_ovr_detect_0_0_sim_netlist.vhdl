-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Apr  8 23:03:37 2025
-- Host        : IDEAPAD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_adc_ovr_detect_0_0 -prefix
--               design_1_adc_ovr_detect_0_0_ design_1_adc_ovr_detect_0_0_sim_netlist.vhdl
-- Design      : design_1_adc_ovr_detect_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_adc_ovr_detect_0_0_adc_ovr_detect is
  port (
    led_n : out STD_LOGIC;
    clk_main : in STD_LOGIC;
    adc_data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_abs0 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    rst_n : in STD_LOGIC
  );
end design_1_adc_ovr_detect_0_0_adc_ovr_detect;

architecture STRUCTURE of design_1_adc_ovr_detect_0_0_adc_ovr_detect is
  signal adc_ovr_instant : STD_LOGIC;
  signal adc_ovr_instant_i_1_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_2_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_3_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_4_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_6_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_7_n_0 : STD_LOGIC;
  signal \led_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \led_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \led_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \led_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \led_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \led_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \led_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \led_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \led_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \led_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \led_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \led_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \led_counter0_carry__3_n_0\ : STD_LOGIC;
  signal \led_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \led_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \led_counter0_carry__3_n_3\ : STD_LOGIC;
  signal \led_counter0_carry__4_n_3\ : STD_LOGIC;
  signal led_counter0_carry_n_0 : STD_LOGIC;
  signal led_counter0_carry_n_1 : STD_LOGIC;
  signal led_counter0_carry_n_2 : STD_LOGIC;
  signal led_counter0_carry_n_3 : STD_LOGIC;
  signal \led_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter[17]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter[18]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter[18]_i_2_n_0\ : STD_LOGIC;
  signal \led_counter[18]_i_3_n_0\ : STD_LOGIC;
  signal \led_counter[18]_i_4_n_0\ : STD_LOGIC;
  signal \led_counter[19]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter[20]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter[21]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter[22]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter[22]_i_2_n_0\ : STD_LOGIC;
  signal \led_counter[22]_i_3_n_0\ : STD_LOGIC;
  signal \led_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \led_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal led_reg : STD_LOGIC;
  signal led_reg_i_1_n_0 : STD_LOGIC;
  signal p_3_in : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \NLW_led_counter0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_led_counter0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of led_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \led_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \led_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \led_counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \led_counter0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \led_counter0_carry__4\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led_counter[12]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led_counter[17]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led_counter[19]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_counter[20]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_counter[21]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_counter[22]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of led_n_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of led_reg_i_1 : label is "soft_lutpair0";
begin
adc_ovr_instant_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => adc_ovr_instant_i_2_n_0,
      I1 => adc_ovr_instant_i_3_n_0,
      I2 => adc_ovr_instant_i_4_n_0,
      I3 => rst_n,
      O => adc_ovr_instant_i_1_n_0
    );
adc_ovr_instant_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => adc_data_in(11),
      I1 => adc_abs0(10),
      I2 => adc_ovr_instant_i_6_n_0,
      I3 => adc_ovr_instant_i_7_n_0,
      O => adc_ovr_instant_i_2_n_0
    );
adc_ovr_instant_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080808000"
    )
        port map (
      I0 => adc_abs0(2),
      I1 => adc_abs0(3),
      I2 => adc_data_in(11),
      I3 => adc_abs0(0),
      I4 => adc_abs0(1),
      I5 => adc_data_in(0),
      O => adc_ovr_instant_i_3_n_0
    );
adc_ovr_instant_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => adc_abs0(6),
      I1 => adc_abs0(7),
      I2 => adc_abs0(4),
      I3 => adc_abs0(5),
      I4 => adc_abs0(9),
      I5 => adc_abs0(8),
      O => adc_ovr_instant_i_4_n_0
    );
adc_ovr_instant_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => adc_data_in(7),
      I1 => adc_data_in(8),
      I2 => adc_data_in(5),
      I3 => adc_data_in(6),
      I4 => adc_data_in(10),
      I5 => adc_data_in(9),
      O => adc_ovr_instant_i_6_n_0
    );
adc_ovr_instant_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404040404000"
    )
        port map (
      I0 => adc_data_in(11),
      I1 => adc_data_in(3),
      I2 => adc_data_in(4),
      I3 => adc_data_in(0),
      I4 => adc_data_in(1),
      I5 => adc_data_in(2),
      O => adc_ovr_instant_i_7_n_0
    );
adc_ovr_instant_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => '1',
      D => adc_ovr_instant_i_1_n_0,
      Q => adc_ovr_instant,
      R => '0'
    );
led_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => led_counter0_carry_n_0,
      CO(2) => led_counter0_carry_n_1,
      CO(1) => led_counter0_carry_n_2,
      CO(0) => led_counter0_carry_n_3,
      CYINIT => \led_counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_3_in(4 downto 1),
      S(3) => \led_counter_reg_n_0_[4]\,
      S(2) => \led_counter_reg_n_0_[3]\,
      S(1) => \led_counter_reg_n_0_[2]\,
      S(0) => \led_counter_reg_n_0_[1]\
    );
\led_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => led_counter0_carry_n_0,
      CO(3) => \led_counter0_carry__0_n_0\,
      CO(2) => \led_counter0_carry__0_n_1\,
      CO(1) => \led_counter0_carry__0_n_2\,
      CO(0) => \led_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_3_in(8 downto 5),
      S(3) => \led_counter_reg_n_0_[8]\,
      S(2) => \led_counter_reg_n_0_[7]\,
      S(1) => \led_counter_reg_n_0_[6]\,
      S(0) => \led_counter_reg_n_0_[5]\
    );
\led_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_counter0_carry__0_n_0\,
      CO(3) => \led_counter0_carry__1_n_0\,
      CO(2) => \led_counter0_carry__1_n_1\,
      CO(1) => \led_counter0_carry__1_n_2\,
      CO(0) => \led_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_3_in(12 downto 9),
      S(3) => \led_counter_reg_n_0_[12]\,
      S(2) => \led_counter_reg_n_0_[11]\,
      S(1) => \led_counter_reg_n_0_[10]\,
      S(0) => \led_counter_reg_n_0_[9]\
    );
\led_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_counter0_carry__1_n_0\,
      CO(3) => \led_counter0_carry__2_n_0\,
      CO(2) => \led_counter0_carry__2_n_1\,
      CO(1) => \led_counter0_carry__2_n_2\,
      CO(0) => \led_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_3_in(16 downto 13),
      S(3) => \led_counter_reg_n_0_[16]\,
      S(2) => \led_counter_reg_n_0_[15]\,
      S(1) => \led_counter_reg_n_0_[14]\,
      S(0) => \led_counter_reg_n_0_[13]\
    );
\led_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_counter0_carry__2_n_0\,
      CO(3) => \led_counter0_carry__3_n_0\,
      CO(2) => \led_counter0_carry__3_n_1\,
      CO(1) => \led_counter0_carry__3_n_2\,
      CO(0) => \led_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_3_in(20 downto 17),
      S(3) => \led_counter_reg_n_0_[20]\,
      S(2) => \led_counter_reg_n_0_[19]\,
      S(1) => \led_counter_reg_n_0_[18]\,
      S(0) => \led_counter_reg_n_0_[17]\
    );
\led_counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_counter0_carry__3_n_0\,
      CO(3 downto 1) => \NLW_led_counter0_carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \led_counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_led_counter0_carry__4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => p_3_in(22 downto 21),
      S(3 downto 2) => B"00",
      S(1) => \led_counter_reg_n_0_[22]\,
      S(0) => \led_counter_reg_n_0_[21]\
    );
\led_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \led_counter_reg_n_0_[0]\,
      O => p_3_in(0)
    );
\led_counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in(12),
      I1 => adc_ovr_instant,
      O => \led_counter[12]_i_1_n_0\
    );
\led_counter[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in(17),
      I1 => adc_ovr_instant,
      O => \led_counter[17]_i_1_n_0\
    );
\led_counter[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => adc_ovr_instant,
      I1 => rst_n,
      O => \led_counter[18]_i_1_n_0\
    );
\led_counter[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \led_counter_reg_n_0_[18]\,
      I1 => \led_counter[18]_i_3_n_0\,
      I2 => \led_counter_reg_n_0_[21]\,
      I3 => \led_counter_reg_n_0_[22]\,
      I4 => \led_counter_reg_n_0_[19]\,
      I5 => \led_counter_reg_n_0_[20]\,
      O => \led_counter[18]_i_2_n_0\
    );
\led_counter[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00015555FFFFFFFF"
    )
        port map (
      I0 => \led_counter[18]_i_4_n_0\,
      I1 => \led_counter_reg_n_0_[9]\,
      I2 => \led_counter_reg_n_0_[10]\,
      I3 => \led_counter_reg_n_0_[11]\,
      I4 => \led_counter_reg_n_0_[12]\,
      I5 => \led_counter_reg_n_0_[17]\,
      O => \led_counter[18]_i_3_n_0\
    );
\led_counter[18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \led_counter_reg_n_0_[14]\,
      I1 => \led_counter_reg_n_0_[13]\,
      I2 => \led_counter_reg_n_0_[16]\,
      I3 => \led_counter_reg_n_0_[15]\,
      O => \led_counter[18]_i_4_n_0\
    );
\led_counter[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in(19),
      I1 => adc_ovr_instant,
      O => \led_counter[19]_i_1_n_0\
    );
\led_counter[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in(20),
      I1 => adc_ovr_instant,
      O => \led_counter[20]_i_1_n_0\
    );
\led_counter[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in(21),
      I1 => adc_ovr_instant,
      O => \led_counter[21]_i_1_n_0\
    );
\led_counter[22]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \led_counter[22]_i_1_n_0\
    );
\led_counter[22]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \led_counter[18]_i_2_n_0\,
      I1 => adc_ovr_instant,
      O => \led_counter[22]_i_2_n_0\
    );
\led_counter[22]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in(22),
      I1 => adc_ovr_instant,
      O => \led_counter[22]_i_3_n_0\
    );
\led_counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_3_in(9),
      I1 => adc_ovr_instant,
      O => \led_counter[9]_i_1_n_0\
    );
\led_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(0),
      Q => \led_counter_reg_n_0_[0]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(10),
      Q => \led_counter_reg_n_0_[10]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(11),
      Q => \led_counter_reg_n_0_[11]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk_main,
      CE => \led_counter[22]_i_2_n_0\,
      D => \led_counter[12]_i_1_n_0\,
      Q => \led_counter_reg_n_0_[12]\,
      S => \led_counter[22]_i_1_n_0\
    );
\led_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(13),
      Q => \led_counter_reg_n_0_[13]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(14),
      Q => \led_counter_reg_n_0_[14]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(15),
      Q => \led_counter_reg_n_0_[15]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(16),
      Q => \led_counter_reg_n_0_[16]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk_main,
      CE => \led_counter[22]_i_2_n_0\,
      D => \led_counter[17]_i_1_n_0\,
      Q => \led_counter_reg_n_0_[17]\,
      S => \led_counter[22]_i_1_n_0\
    );
\led_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(18),
      Q => \led_counter_reg_n_0_[18]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => clk_main,
      CE => \led_counter[22]_i_2_n_0\,
      D => \led_counter[19]_i_1_n_0\,
      Q => \led_counter_reg_n_0_[19]\,
      S => \led_counter[22]_i_1_n_0\
    );
\led_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(1),
      Q => \led_counter_reg_n_0_[1]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk_main,
      CE => \led_counter[22]_i_2_n_0\,
      D => \led_counter[20]_i_1_n_0\,
      Q => \led_counter_reg_n_0_[20]\,
      S => \led_counter[22]_i_1_n_0\
    );
\led_counter_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => clk_main,
      CE => \led_counter[22]_i_2_n_0\,
      D => \led_counter[21]_i_1_n_0\,
      Q => \led_counter_reg_n_0_[21]\,
      S => \led_counter[22]_i_1_n_0\
    );
\led_counter_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => clk_main,
      CE => \led_counter[22]_i_2_n_0\,
      D => \led_counter[22]_i_3_n_0\,
      Q => \led_counter_reg_n_0_[22]\,
      S => \led_counter[22]_i_1_n_0\
    );
\led_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(2),
      Q => \led_counter_reg_n_0_[2]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(3),
      Q => \led_counter_reg_n_0_[3]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(4),
      Q => \led_counter_reg_n_0_[4]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(5),
      Q => \led_counter_reg_n_0_[5]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(6),
      Q => \led_counter_reg_n_0_[6]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(7),
      Q => \led_counter_reg_n_0_[7]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => \led_counter[18]_i_2_n_0\,
      D => p_3_in(8),
      Q => \led_counter_reg_n_0_[8]\,
      R => \led_counter[18]_i_1_n_0\
    );
\led_counter_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk_main,
      CE => \led_counter[22]_i_2_n_0\,
      D => \led_counter[9]_i_1_n_0\,
      Q => \led_counter_reg_n_0_[9]\,
      S => \led_counter[22]_i_1_n_0\
    );
led_n_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_reg,
      O => led_n
    );
led_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => led_reg,
      I1 => \led_counter[18]_i_2_n_0\,
      I2 => adc_ovr_instant,
      I3 => rst_n,
      O => led_reg_i_1_n_0
    );
led_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_main,
      CE => '1',
      D => led_reg_i_1_n_0,
      Q => led_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_adc_ovr_detect_0_0 is
  port (
    clk_main : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    adc_data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    led_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_adc_ovr_detect_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_adc_ovr_detect_0_0 : entity is "design_1_adc_ovr_detect_0_0,adc_ovr_detect,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_adc_ovr_detect_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_adc_ovr_detect_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_adc_ovr_detect_0_0 : entity is "adc_ovr_detect,Vivado 2022.2";
end design_1_adc_ovr_detect_0_0;

architecture STRUCTURE of design_1_adc_ovr_detect_0_0 is
  signal adc_abs0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal adc_ovr_instant_i_10_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_11_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_12_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_13_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_14_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_15_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_16_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_17_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_18_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_19_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_20_n_0 : STD_LOGIC;
  signal adc_ovr_instant_i_21_n_0 : STD_LOGIC;
  signal adc_ovr_instant_reg_i_5_n_2 : STD_LOGIC;
  signal adc_ovr_instant_reg_i_5_n_3 : STD_LOGIC;
  signal adc_ovr_instant_reg_i_8_n_0 : STD_LOGIC;
  signal adc_ovr_instant_reg_i_8_n_1 : STD_LOGIC;
  signal adc_ovr_instant_reg_i_8_n_2 : STD_LOGIC;
  signal adc_ovr_instant_reg_i_8_n_3 : STD_LOGIC;
  signal adc_ovr_instant_reg_i_9_n_0 : STD_LOGIC;
  signal adc_ovr_instant_reg_i_9_n_1 : STD_LOGIC;
  signal adc_ovr_instant_reg_i_9_n_2 : STD_LOGIC;
  signal adc_ovr_instant_reg_i_9_n_3 : STD_LOGIC;
  signal NLW_adc_ovr_instant_reg_i_5_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_adc_ovr_instant_reg_i_5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of adc_ovr_instant_reg_i_5 : label is 35;
  attribute ADDER_THRESHOLD of adc_ovr_instant_reg_i_8 : label is 35;
  attribute ADDER_THRESHOLD of adc_ovr_instant_reg_i_9 : label is 35;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
adc_ovr_instant_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_in(11),
      O => adc_ovr_instant_i_10_n_0
    );
adc_ovr_instant_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_in(10),
      O => adc_ovr_instant_i_11_n_0
    );
adc_ovr_instant_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_in(9),
      O => adc_ovr_instant_i_12_n_0
    );
adc_ovr_instant_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_in(0),
      O => adc_ovr_instant_i_13_n_0
    );
adc_ovr_instant_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_in(4),
      O => adc_ovr_instant_i_14_n_0
    );
adc_ovr_instant_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_in(3),
      O => adc_ovr_instant_i_15_n_0
    );
adc_ovr_instant_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_in(2),
      O => adc_ovr_instant_i_16_n_0
    );
adc_ovr_instant_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_in(1),
      O => adc_ovr_instant_i_17_n_0
    );
adc_ovr_instant_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_in(8),
      O => adc_ovr_instant_i_18_n_0
    );
adc_ovr_instant_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_in(7),
      O => adc_ovr_instant_i_19_n_0
    );
adc_ovr_instant_i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_in(6),
      O => adc_ovr_instant_i_20_n_0
    );
adc_ovr_instant_i_21: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_data_in(5),
      O => adc_ovr_instant_i_21_n_0
    );
adc_ovr_instant_reg_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => adc_ovr_instant_reg_i_9_n_0,
      CO(3 downto 2) => NLW_adc_ovr_instant_reg_i_5_CO_UNCONNECTED(3 downto 2),
      CO(1) => adc_ovr_instant_reg_i_5_n_2,
      CO(0) => adc_ovr_instant_reg_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_adc_ovr_instant_reg_i_5_O_UNCONNECTED(3),
      O(2 downto 0) => adc_abs0(11 downto 9),
      S(3) => '0',
      S(2) => adc_ovr_instant_i_10_n_0,
      S(1) => adc_ovr_instant_i_11_n_0,
      S(0) => adc_ovr_instant_i_12_n_0
    );
adc_ovr_instant_reg_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => adc_ovr_instant_reg_i_8_n_0,
      CO(2) => adc_ovr_instant_reg_i_8_n_1,
      CO(1) => adc_ovr_instant_reg_i_8_n_2,
      CO(0) => adc_ovr_instant_reg_i_8_n_3,
      CYINIT => adc_ovr_instant_i_13_n_0,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => adc_abs0(4 downto 1),
      S(3) => adc_ovr_instant_i_14_n_0,
      S(2) => adc_ovr_instant_i_15_n_0,
      S(1) => adc_ovr_instant_i_16_n_0,
      S(0) => adc_ovr_instant_i_17_n_0
    );
adc_ovr_instant_reg_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => adc_ovr_instant_reg_i_8_n_0,
      CO(3) => adc_ovr_instant_reg_i_9_n_0,
      CO(2) => adc_ovr_instant_reg_i_9_n_1,
      CO(1) => adc_ovr_instant_reg_i_9_n_2,
      CO(0) => adc_ovr_instant_reg_i_9_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => adc_abs0(8 downto 5),
      S(3) => adc_ovr_instant_i_18_n_0,
      S(2) => adc_ovr_instant_i_19_n_0,
      S(1) => adc_ovr_instant_i_20_n_0,
      S(0) => adc_ovr_instant_i_21_n_0
    );
inst: entity work.design_1_adc_ovr_detect_0_0_adc_ovr_detect
     port map (
      adc_abs0(10 downto 0) => adc_abs0(11 downto 1),
      adc_data_in(11 downto 0) => adc_data_in(11 downto 0),
      clk_main => clk_main,
      led_n => led_n,
      rst_n => rst_n
    );
end STRUCTURE;
