-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/21/2016 14:26:01"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	S : IN std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	R : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- CLK	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- R[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[1]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[3]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[4]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[5]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[6]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R[7]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S[5]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S[0]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S[7]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S[4]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S[6]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S[2]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S[3]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_R : std_logic_vector(7 DOWNTO 0);
SIGNAL \R[7]~55clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R[0]~11_combout\ : std_logic;
SIGNAL \R[0]~18_combout\ : std_logic;
SIGNAL \R[1]~23_combout\ : std_logic;
SIGNAL \R[2]~28_combout\ : std_logic;
SIGNAL \R[5]~43_combout\ : std_logic;
SIGNAL \R[6]~48_combout\ : std_logic;
SIGNAL \R[7]~5_combout\ : std_logic;
SIGNAL \R[0]~8_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \R[0]~9_combout\ : std_logic;
SIGNAL \R[0]~12_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \R[0]~10_combout\ : std_logic;
SIGNAL \R[0]~13_combout\ : std_logic;
SIGNAL \R[0]~14_combout\ : std_logic;
SIGNAL \R[0]~15_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \R[0]~16_combout\ : std_logic;
SIGNAL \R[0]~17_combout\ : std_logic;
SIGNAL \R[0]~19_combout\ : std_logic;
SIGNAL \R[7]~56_combout\ : std_logic;
SIGNAL \R[7]~55_combout\ : std_logic;
SIGNAL \R[7]~55clkctrl_outclk\ : std_logic;
SIGNAL \R[0]$latch~combout\ : std_logic;
SIGNAL \R[1]~21_combout\ : std_logic;
SIGNAL \R[1]~22_combout\ : std_logic;
SIGNAL \R[1]~20_combout\ : std_logic;
SIGNAL \R[1]~24_combout\ : std_logic;
SIGNAL \R[1]$latch~combout\ : std_logic;
SIGNAL \R[2]~25_combout\ : std_logic;
SIGNAL \R[2]~26_combout\ : std_logic;
SIGNAL \R[2]~27_combout\ : std_logic;
SIGNAL \R[2]~29_combout\ : std_logic;
SIGNAL \R[2]$latch~combout\ : std_logic;
SIGNAL \R[3]~33_combout\ : std_logic;
SIGNAL \R[3]~30_combout\ : std_logic;
SIGNAL \R[3]~31_combout\ : std_logic;
SIGNAL \R[3]~32_combout\ : std_logic;
SIGNAL \R[3]~34_combout\ : std_logic;
SIGNAL \R[3]$latch~combout\ : std_logic;
SIGNAL \R[4]~38_combout\ : std_logic;
SIGNAL \R[4]~35_combout\ : std_logic;
SIGNAL \R[4]~36_combout\ : std_logic;
SIGNAL \R[4]~37_combout\ : std_logic;
SIGNAL \R[4]~39_combout\ : std_logic;
SIGNAL \R[4]$latch~combout\ : std_logic;
SIGNAL \R[5]~40_combout\ : std_logic;
SIGNAL \R[5]~41_combout\ : std_logic;
SIGNAL \R[5]~42_combout\ : std_logic;
SIGNAL \R[5]~44_combout\ : std_logic;
SIGNAL \R[5]$latch~combout\ : std_logic;
SIGNAL \R[6]~45_combout\ : std_logic;
SIGNAL \R[6]~46_combout\ : std_logic;
SIGNAL \R[6]~47_combout\ : std_logic;
SIGNAL \R[6]~49_combout\ : std_logic;
SIGNAL \R[6]$latch~combout\ : std_logic;
SIGNAL \R[7]~53_combout\ : std_logic;
SIGNAL \R[7]~51_combout\ : std_logic;
SIGNAL \R[7]~52_combout\ : std_logic;
SIGNAL \R[7]~50_combout\ : std_logic;
SIGNAL \R[7]~54_combout\ : std_logic;
SIGNAL \R[7]$latch~combout\ : std_logic;
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \S~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_S <= S;
ww_CLK <= CLK;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\R[7]~55clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \R[7]~55_combout\);

-- Location: LCCOMB_X3_Y13_N26
\R[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[0]~11_combout\ = (!\S~combout\(3) & (!\S~combout\(2) & (\S~combout\(4) $ (\S~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(3),
	datab => \S~combout\(4),
	datac => \S~combout\(5),
	datad => \S~combout\(2),
	combout => \R[0]~11_combout\);

-- Location: LCCOMB_X1_Y13_N30
\R[0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[0]~18_combout\ = ((\R[0]~12_combout\ & (!\B~combout\(0) & \R[0]~9_combout\)) # (!\R[0]~12_combout\ & (\B~combout\(0)))) # (!\R[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~12_combout\,
	datab => \R[0]~10_combout\,
	datac => \B~combout\(0),
	datad => \R[0]~9_combout\,
	combout => \R[0]~18_combout\);

-- Location: LCCOMB_X1_Y13_N10
\R[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[1]~23_combout\ = ((\B~combout\(1) & ((!\R[0]~12_combout\))) # (!\B~combout\(1) & (\R[0]~9_combout\ & \R[0]~12_combout\))) # (!\R[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~9_combout\,
	datab => \B~combout\(1),
	datac => \R[0]~10_combout\,
	datad => \R[0]~12_combout\,
	combout => \R[1]~23_combout\);

-- Location: LCCOMB_X3_Y13_N16
\R[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[2]~28_combout\ = ((\R[0]~12_combout\ & (\R[0]~9_combout\ & !\B~combout\(2))) # (!\R[0]~12_combout\ & ((\B~combout\(2))))) # (!\R[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~12_combout\,
	datab => \R[0]~9_combout\,
	datac => \B~combout\(2),
	datad => \R[0]~10_combout\,
	combout => \R[2]~28_combout\);

-- Location: LCCOMB_X4_Y13_N10
\R[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[5]~43_combout\ = ((\R[0]~12_combout\ & (!\B~combout\(5) & \R[0]~9_combout\)) # (!\R[0]~12_combout\ & (\B~combout\(5)))) # (!\R[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~12_combout\,
	datab => \R[0]~10_combout\,
	datac => \B~combout\(5),
	datad => \R[0]~9_combout\,
	combout => \R[5]~43_combout\);

-- Location: LCCOMB_X4_Y13_N24
\R[6]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[6]~48_combout\ = ((\R[0]~12_combout\ & (!\B~combout\(6) & \R[0]~9_combout\)) # (!\R[0]~12_combout\ & (\B~combout\(6)))) # (!\R[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~12_combout\,
	datab => \R[0]~10_combout\,
	datac => \B~combout\(6),
	datad => \R[0]~9_combout\,
	combout => \R[6]~48_combout\);

-- Location: LCCOMB_X1_Y13_N18
\R[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[7]~5_combout\ = (\S~combout\(5) & (!\S~combout\(4) & (!\S~combout\(6) & !\S~combout\(7)))) # (!\S~combout\(5) & ((\S~combout\(4) & (!\S~combout\(6) & !\S~combout\(7))) # (!\S~combout\(4) & (\S~combout\(6) $ (\S~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(5),
	datab => \S~combout\(4),
	datac => \S~combout\(6),
	datad => \S~combout\(7),
	combout => \R[7]~5_combout\);

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(5),
	combout => \S~combout\(5));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(7),
	combout => \S~combout\(7));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(4),
	combout => \S~combout\(4));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(6),
	combout => \S~combout\(6));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(2),
	combout => \S~combout\(2));

-- Location: LCCOMB_X3_Y13_N8
\R[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[0]~8_combout\ = (!\S~combout\(3) & (!\S~combout\(2) & (\S~combout\(4) $ (\S~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(3),
	datab => \S~combout\(4),
	datac => \S~combout\(6),
	datad => \S~combout\(2),
	combout => \R[0]~8_combout\);

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(1),
	combout => \S~combout\(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(0),
	combout => \S~combout\(0));

-- Location: LCCOMB_X1_Y13_N2
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\S~combout\(1) & !\S~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S~combout\(1),
	datad => \S~combout\(0),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X1_Y13_N14
\R[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[0]~9_combout\ = (!\S~combout\(5) & (!\S~combout\(7) & (\R[0]~8_combout\ & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(5),
	datab => \S~combout\(7),
	datac => \R[0]~8_combout\,
	datad => \Equal5~0_combout\,
	combout => \R[0]~9_combout\);

-- Location: LCCOMB_X1_Y13_N20
\R[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[0]~12_combout\ = (\R[0]~11_combout\ & (!\S~combout\(7) & (!\S~combout\(6) & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~11_combout\,
	datab => \S~combout\(7),
	datac => \S~combout\(6),
	datad => \Equal5~0_combout\,
	combout => \R[0]~12_combout\);

-- Location: LCCOMB_X1_Y13_N12
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!\S~combout\(5) & (!\S~combout\(4) & (!\S~combout\(6) & !\S~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(5),
	datab => \S~combout\(4),
	datac => \S~combout\(6),
	datad => \S~combout\(7),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X1_Y13_N0
\R[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[0]~10_combout\ = ((\S~combout\(3) $ (!\S~combout\(2))) # (!\Equal5~0_combout\)) # (!\Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(3),
	datab => \Equal5~1_combout\,
	datac => \S~combout\(2),
	datad => \Equal5~0_combout\,
	combout => \R[0]~10_combout\);

-- Location: LCCOMB_X1_Y13_N16
\R[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[0]~13_combout\ = (\R[0]~9_combout\ & (!\R[0]~12_combout\ & \R[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R[0]~9_combout\,
	datac => \R[0]~12_combout\,
	datad => \R[0]~10_combout\,
	combout => \R[0]~13_combout\);

-- Location: LCCOMB_X1_Y13_N6
\R[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[0]~14_combout\ = (!\R[0]~9_combout\ & (\R[0]~12_combout\ & \R[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R[0]~9_combout\,
	datac => \R[0]~12_combout\,
	datad => \R[0]~10_combout\,
	combout => \R[0]~14_combout\);

-- Location: LCCOMB_X1_Y13_N4
\R[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[0]~15_combout\ = (\B~combout\(0) & ((\R[0]~13_combout\) # ((\A~combout\(0) & \R[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datac => \R[0]~13_combout\,
	datad => \R[0]~14_combout\,
	combout => \R[0]~15_combout\);

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(3),
	combout => \S~combout\(3));

-- Location: LCCOMB_X2_Y13_N12
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\Equal5~1_combout\ & (\S~combout\(3) & (!\S~combout\(2) & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \S~combout\(3),
	datac => \S~combout\(2),
	datad => \Equal5~0_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X1_Y13_N28
\Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (!\S~combout\(3) & (\Equal5~1_combout\ & (\S~combout\(2) & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(3),
	datab => \Equal5~1_combout\,
	datac => \S~combout\(2),
	datad => \Equal5~0_combout\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X1_Y13_N24
\R[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[0]~16_combout\ = (!\B~combout\(0) & !\Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datad => \Equal5~2_combout\,
	combout => \R[0]~16_combout\);

-- Location: LCCOMB_X2_Y13_N2
\R[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[0]~17_combout\ = (\R[0]~16_combout\ & ((\Equal4~0_combout\) # ((!\R[0]~12_combout\ & \A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~12_combout\,
	datab => \Equal4~0_combout\,
	datac => \A~combout\(0),
	datad => \R[0]~16_combout\,
	combout => \R[0]~17_combout\);

-- Location: LCCOMB_X2_Y13_N20
\R[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[0]~19_combout\ = (\R[0]~15_combout\) # ((\R[0]~17_combout\) # ((\R[0]~18_combout\ & !\A~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~18_combout\,
	datab => \A~combout\(0),
	datac => \R[0]~15_combout\,
	datad => \R[0]~17_combout\,
	combout => \R[0]~19_combout\);

-- Location: LCCOMB_X1_Y14_N16
\R[7]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[7]~56_combout\ = (\R[7]~5_combout\ & (!\S~combout\(1) & !\S~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[7]~5_combout\,
	datac => \S~combout\(1),
	datad => \S~combout\(0),
	combout => \R[7]~56_combout\);

-- Location: LCCOMB_X1_Y14_N12
\R[7]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[7]~55_combout\ = ((!\S~combout\(3) & (!\S~combout\(2) & \R[7]~56_combout\))) # (!\R[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(3),
	datab => \S~combout\(2),
	datac => \R[7]~56_combout\,
	datad => \R[0]~10_combout\,
	combout => \R[7]~55_combout\);

-- Location: CLKCTRL_G1
\R[7]~55clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \R[7]~55clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \R[7]~55clkctrl_outclk\);

-- Location: LCCOMB_X2_Y13_N16
\R[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[0]$latch~combout\ = (GLOBAL(\R[7]~55clkctrl_outclk\) & ((\R[0]~19_combout\))) # (!GLOBAL(\R[7]~55clkctrl_outclk\) & (\R[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]$latch~combout\,
	datac => \R[0]~19_combout\,
	datad => \R[7]~55clkctrl_outclk\,
	combout => \R[0]$latch~combout\);

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X2_Y13_N22
\R[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[1]~21_combout\ = (!\B~combout\(1) & !\Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datad => \Equal5~2_combout\,
	combout => \R[1]~21_combout\);

-- Location: LCCOMB_X2_Y13_N8
\R[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[1]~22_combout\ = (\R[1]~21_combout\ & ((\Equal4~0_combout\) # ((!\R[0]~12_combout\ & \A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~12_combout\,
	datab => \A~combout\(1),
	datac => \Equal4~0_combout\,
	datad => \R[1]~21_combout\,
	combout => \R[1]~22_combout\);

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X1_Y13_N8
\R[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[1]~20_combout\ = (\B~combout\(1) & ((\R[0]~13_combout\) # ((\R[0]~14_combout\ & \A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~14_combout\,
	datab => \A~combout\(1),
	datac => \B~combout\(1),
	datad => \R[0]~13_combout\,
	combout => \R[1]~20_combout\);

-- Location: LCCOMB_X1_Y13_N26
\R[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[1]~24_combout\ = (\R[1]~22_combout\) # ((\R[1]~20_combout\) # ((\R[1]~23_combout\ & !\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[1]~23_combout\,
	datab => \A~combout\(1),
	datac => \R[1]~22_combout\,
	datad => \R[1]~20_combout\,
	combout => \R[1]~24_combout\);

-- Location: LCCOMB_X1_Y13_N22
\R[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[1]$latch~combout\ = (GLOBAL(\R[7]~55clkctrl_outclk\) & ((\R[1]~24_combout\))) # (!GLOBAL(\R[7]~55clkctrl_outclk\) & (\R[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R[1]$latch~combout\,
	datac => \R[7]~55clkctrl_outclk\,
	datad => \R[1]~24_combout\,
	combout => \R[1]$latch~combout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCCOMB_X2_Y13_N30
\R[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[2]~25_combout\ = (\B~combout\(2) & ((\R[0]~13_combout\) # ((\A~combout\(2) & \R[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datac => \R[0]~14_combout\,
	datad => \R[0]~13_combout\,
	combout => \R[2]~25_combout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCCOMB_X3_Y13_N28
\R[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[2]~26_combout\ = (!\B~combout\(2) & !\Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(2),
	datad => \Equal5~2_combout\,
	combout => \R[2]~26_combout\);

-- Location: LCCOMB_X3_Y13_N6
\R[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[2]~27_combout\ = (\R[2]~26_combout\ & ((\Equal4~0_combout\) # ((!\R[0]~12_combout\ & \A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~12_combout\,
	datab => \A~combout\(2),
	datac => \Equal4~0_combout\,
	datad => \R[2]~26_combout\,
	combout => \R[2]~27_combout\);

-- Location: LCCOMB_X3_Y13_N2
\R[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[2]~29_combout\ = (\R[2]~25_combout\) # ((\R[2]~27_combout\) # ((\R[2]~28_combout\ & !\A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[2]~28_combout\,
	datab => \A~combout\(2),
	datac => \R[2]~25_combout\,
	datad => \R[2]~27_combout\,
	combout => \R[2]~29_combout\);

-- Location: LCCOMB_X3_Y13_N30
\R[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[2]$latch~combout\ = (GLOBAL(\R[7]~55clkctrl_outclk\) & ((\R[2]~29_combout\))) # (!GLOBAL(\R[7]~55clkctrl_outclk\) & (\R[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R[2]$latch~combout\,
	datac => \R[7]~55clkctrl_outclk\,
	datad => \R[2]~29_combout\,
	combout => \R[2]$latch~combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCCOMB_X2_Y13_N6
\R[3]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[3]~33_combout\ = ((\B~combout\(3) & (!\R[0]~12_combout\)) # (!\B~combout\(3) & (\R[0]~12_combout\ & \R[0]~9_combout\))) # (!\R[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~10_combout\,
	datab => \B~combout\(3),
	datac => \R[0]~12_combout\,
	datad => \R[0]~9_combout\,
	combout => \R[3]~33_combout\);

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCCOMB_X2_Y13_N0
\R[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[3]~30_combout\ = (\B~combout\(3) & ((\R[0]~13_combout\) # ((\A~combout\(3) & \R[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datac => \R[0]~14_combout\,
	datad => \R[0]~13_combout\,
	combout => \R[3]~30_combout\);

-- Location: LCCOMB_X3_Y13_N12
\R[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[3]~31_combout\ = (!\B~combout\(3) & !\Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datad => \Equal5~2_combout\,
	combout => \R[3]~31_combout\);

-- Location: LCCOMB_X3_Y13_N18
\R[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[3]~32_combout\ = (\R[3]~31_combout\ & ((\Equal4~0_combout\) # ((!\R[0]~12_combout\ & \A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~12_combout\,
	datab => \A~combout\(3),
	datac => \Equal4~0_combout\,
	datad => \R[3]~31_combout\,
	combout => \R[3]~32_combout\);

-- Location: LCCOMB_X3_Y13_N0
\R[3]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[3]~34_combout\ = (\R[3]~30_combout\) # ((\R[3]~32_combout\) # ((!\A~combout\(3) & \R[3]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \R[3]~33_combout\,
	datac => \R[3]~30_combout\,
	datad => \R[3]~32_combout\,
	combout => \R[3]~34_combout\);

-- Location: LCCOMB_X3_Y13_N4
\R[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[3]$latch~combout\ = (GLOBAL(\R[7]~55clkctrl_outclk\) & ((\R[3]~34_combout\))) # (!GLOBAL(\R[7]~55clkctrl_outclk\) & (\R[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R[3]$latch~combout\,
	datac => \R[7]~55clkctrl_outclk\,
	datad => \R[3]~34_combout\,
	combout => \R[3]$latch~combout\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCCOMB_X2_Y13_N18
\R[4]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[4]~38_combout\ = ((\B~combout\(4) & (!\R[0]~12_combout\)) # (!\B~combout\(4) & (\R[0]~12_combout\ & \R[0]~9_combout\))) # (!\R[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~10_combout\,
	datab => \B~combout\(4),
	datac => \R[0]~12_combout\,
	datad => \R[0]~9_combout\,
	combout => \R[4]~38_combout\);

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCCOMB_X2_Y13_N24
\R[4]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[4]~35_combout\ = (\B~combout\(4) & ((\R[0]~13_combout\) # ((\A~combout\(4) & \R[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datac => \R[0]~14_combout\,
	datad => \R[0]~13_combout\,
	combout => \R[4]~35_combout\);

-- Location: LCCOMB_X2_Y13_N14
\R[4]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[4]~36_combout\ = (!\B~combout\(4) & !\Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datad => \Equal5~2_combout\,
	combout => \R[4]~36_combout\);

-- Location: LCCOMB_X2_Y13_N28
\R[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[4]~37_combout\ = (\R[4]~36_combout\ & ((\Equal4~0_combout\) # ((!\R[0]~12_combout\ & \A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~12_combout\,
	datab => \Equal4~0_combout\,
	datac => \R[4]~36_combout\,
	datad => \A~combout\(4),
	combout => \R[4]~37_combout\);

-- Location: LCCOMB_X2_Y13_N4
\R[4]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[4]~39_combout\ = (\R[4]~35_combout\) # ((\R[4]~37_combout\) # ((!\A~combout\(4) & \R[4]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \R[4]~38_combout\,
	datac => \R[4]~35_combout\,
	datad => \R[4]~37_combout\,
	combout => \R[4]~39_combout\);

-- Location: LCCOMB_X2_Y13_N10
\R[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[4]$latch~combout\ = (GLOBAL(\R[7]~55clkctrl_outclk\) & ((\R[4]~39_combout\))) # (!GLOBAL(\R[7]~55clkctrl_outclk\) & (\R[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[4]$latch~combout\,
	datac => \R[4]~39_combout\,
	datad => \R[7]~55clkctrl_outclk\,
	combout => \R[4]$latch~combout\);

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: LCCOMB_X4_Y13_N4
\R[5]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[5]~40_combout\ = (\B~combout\(5) & ((\R[0]~13_combout\) # ((\A~combout\(5) & \R[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(5),
	datac => \R[0]~13_combout\,
	datad => \R[0]~14_combout\,
	combout => \R[5]~40_combout\);

-- Location: LCCOMB_X4_Y13_N22
\R[5]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[5]~41_combout\ = (!\B~combout\(5) & !\Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(5),
	datad => \Equal5~2_combout\,
	combout => \R[5]~41_combout\);

-- Location: LCCOMB_X4_Y13_N28
\R[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[5]~42_combout\ = (\R[5]~41_combout\ & ((\Equal4~0_combout\) # ((!\R[0]~12_combout\ & \A~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~12_combout\,
	datab => \A~combout\(5),
	datac => \Equal4~0_combout\,
	datad => \R[5]~41_combout\,
	combout => \R[5]~42_combout\);

-- Location: LCCOMB_X4_Y13_N0
\R[5]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[5]~44_combout\ = (\R[5]~40_combout\) # ((\R[5]~42_combout\) # ((\R[5]~43_combout\ & !\A~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[5]~43_combout\,
	datab => \A~combout\(5),
	datac => \R[5]~40_combout\,
	datad => \R[5]~42_combout\,
	combout => \R[5]~44_combout\);

-- Location: LCCOMB_X4_Y13_N20
\R[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[5]$latch~combout\ = (GLOBAL(\R[7]~55clkctrl_outclk\) & ((\R[5]~44_combout\))) # (!GLOBAL(\R[7]~55clkctrl_outclk\) & (\R[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[5]$latch~combout\,
	datac => \R[7]~55clkctrl_outclk\,
	datad => \R[5]~44_combout\,
	combout => \R[5]$latch~combout\);

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCCOMB_X4_Y13_N14
\R[6]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[6]~45_combout\ = (\B~combout\(6) & ((\R[0]~13_combout\) # ((\A~combout\(6) & \R[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \A~combout\(6),
	datac => \R[0]~13_combout\,
	datad => \R[0]~14_combout\,
	combout => \R[6]~45_combout\);

-- Location: LCCOMB_X4_Y13_N12
\R[6]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[6]~46_combout\ = (!\B~combout\(6) & !\Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datad => \Equal5~2_combout\,
	combout => \R[6]~46_combout\);

-- Location: LCCOMB_X4_Y13_N6
\R[6]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[6]~47_combout\ = (\R[6]~46_combout\ & ((\Equal4~0_combout\) # ((!\R[0]~12_combout\ & \A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~12_combout\,
	datab => \A~combout\(6),
	datac => \Equal4~0_combout\,
	datad => \R[6]~46_combout\,
	combout => \R[6]~47_combout\);

-- Location: LCCOMB_X4_Y13_N18
\R[6]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[6]~49_combout\ = (\R[6]~45_combout\) # ((\R[6]~47_combout\) # ((\R[6]~48_combout\ & !\A~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[6]~48_combout\,
	datab => \A~combout\(6),
	datac => \R[6]~45_combout\,
	datad => \R[6]~47_combout\,
	combout => \R[6]~49_combout\);

-- Location: LCCOMB_X4_Y13_N2
\R[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[6]$latch~combout\ = (GLOBAL(\R[7]~55clkctrl_outclk\) & ((\R[6]~49_combout\))) # (!GLOBAL(\R[7]~55clkctrl_outclk\) & (\R[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R[6]$latch~combout\,
	datac => \R[7]~55clkctrl_outclk\,
	datad => \R[6]~49_combout\,
	combout => \R[6]$latch~combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCCOMB_X3_Y13_N14
\R[7]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[7]~53_combout\ = ((\R[0]~12_combout\ & (\R[0]~9_combout\ & !\B~combout\(7))) # (!\R[0]~12_combout\ & ((\B~combout\(7))))) # (!\R[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~12_combout\,
	datab => \R[0]~9_combout\,
	datac => \B~combout\(7),
	datad => \R[0]~10_combout\,
	combout => \R[7]~53_combout\);

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCCOMB_X3_Y13_N10
\R[7]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[7]~51_combout\ = (!\B~combout\(7) & !\Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(7),
	datad => \Equal5~2_combout\,
	combout => \R[7]~51_combout\);

-- Location: LCCOMB_X3_Y13_N20
\R[7]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[7]~52_combout\ = (\R[7]~51_combout\ & ((\Equal4~0_combout\) # ((!\R[0]~12_combout\ & \A~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R[0]~12_combout\,
	datab => \A~combout\(7),
	datac => \Equal4~0_combout\,
	datad => \R[7]~51_combout\,
	combout => \R[7]~52_combout\);

-- Location: LCCOMB_X2_Y13_N26
\R[7]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[7]~50_combout\ = (\B~combout\(7) & ((\R[0]~13_combout\) # ((\A~combout\(7) & \R[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \B~combout\(7),
	datac => \R[0]~14_combout\,
	datad => \R[0]~13_combout\,
	combout => \R[7]~50_combout\);

-- Location: LCCOMB_X3_Y13_N24
\R[7]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[7]~54_combout\ = (\R[7]~52_combout\) # ((\R[7]~50_combout\) # ((!\A~combout\(7) & \R[7]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \R[7]~53_combout\,
	datac => \R[7]~52_combout\,
	datad => \R[7]~50_combout\,
	combout => \R[7]~54_combout\);

-- Location: LCCOMB_X3_Y13_N22
\R[7]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \R[7]$latch~combout\ = (GLOBAL(\R[7]~55clkctrl_outclk\) & ((\R[7]~54_combout\))) # (!GLOBAL(\R[7]~55clkctrl_outclk\) & (\R[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R[7]$latch~combout\,
	datac => \R[7]~54_combout\,
	datad => \R[7]~55clkctrl_outclk\,
	combout => \R[7]$latch~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK);

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \R[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(0));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \R[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(1));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \R[2]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(2));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \R[3]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(3));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \R[4]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(4));

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \R[5]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(5));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \R[6]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(6));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \R[7]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R(7));
END structure;


