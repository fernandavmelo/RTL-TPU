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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1.78 SJ Web Edition"

-- DATE "03/10/2017 16:11:02"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tpu IS
    PORT (
	sys_clock : IN std_logic;
	valid_out : IN std_logic;
	data_out : IN std_logic_vector(7 DOWNTO 0);
	ready_out : OUT std_logic;
	g_clk_tx : OUT std_logic;
	g_clk_rx : OUT std_logic;
	tpu_int : OUT std_logic
	);
END tpu;

-- Design Ports Information
-- valid_out	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ready_out	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g_clk_tx	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g_clk_rx	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tpu_int	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sys_clock	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF tpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sys_clock : std_logic;
SIGNAL ww_valid_out : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ready_out : std_logic;
SIGNAL ww_g_clk_tx : std_logic;
SIGNAL ww_g_clk_rx : std_logic;
SIGNAL ww_tpu_int : std_logic;
SIGNAL \sys_clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \t1|tpuint_byte1[1]~8_combout\ : std_logic;
SIGNAL \sys_clock~clkctrl_outclk\ : std_logic;
SIGNAL \t1|tpuint_byte1[0]~24_combout\ : std_logic;
SIGNAL \t1|tpuint_byte1[1]~9\ : std_logic;
SIGNAL \t1|tpuint_byte1[2]~10_combout\ : std_logic;
SIGNAL \t1|tpuint_byte1[2]~11\ : std_logic;
SIGNAL \t1|tpuint_byte1[3]~13\ : std_logic;
SIGNAL \t1|tpuint_byte1[4]~14_combout\ : std_logic;
SIGNAL \t1|tpuint_byte1[4]~15\ : std_logic;
SIGNAL \t1|tpuint_byte1[5]~16_combout\ : std_logic;
SIGNAL \t1|tpuint_byte1[5]~17\ : std_logic;
SIGNAL \t1|tpuint_byte1[6]~18_combout\ : std_logic;
SIGNAL \t1|tpuint_byte1[3]~12_combout\ : std_logic;
SIGNAL \t1|g_clk_tx~0_combout\ : std_logic;
SIGNAL \sys_clock~combout\ : std_logic;
SIGNAL \t1|tpuint_byte1[6]~19\ : std_logic;
SIGNAL \t1|tpuint_byte1[7]~20_combout\ : std_logic;
SIGNAL \t1|tpuint_byte1[7]~21\ : std_logic;
SIGNAL \t1|tpuint_byte1[8]~22_combout\ : std_logic;
SIGNAL \t1|tpuint_byte1[8]~23\ : std_logic;
SIGNAL \t1|tpuint_byte0[0]~7_combout\ : std_logic;
SIGNAL \t1|g_clk_tx~1_combout\ : std_logic;
SIGNAL \t1|tpuint_byte0[0]~8\ : std_logic;
SIGNAL \t1|tpuint_byte0[1]~9_combout\ : std_logic;
SIGNAL \t1|tpuint_byte0[1]~10\ : std_logic;
SIGNAL \t1|tpuint_byte0[2]~11_combout\ : std_logic;
SIGNAL \t1|tpuint_byte0[2]~12\ : std_logic;
SIGNAL \t1|tpuint_byte0[3]~13_combout\ : std_logic;
SIGNAL \t1|tpuint_byte0[3]~14\ : std_logic;
SIGNAL \t1|tpuint_byte0[4]~15_combout\ : std_logic;
SIGNAL \t1|g_clk_tx~2_combout\ : std_logic;
SIGNAL \t1|tpuint_byte0[4]~16\ : std_logic;
SIGNAL \t1|tpuint_byte0[5]~17_combout\ : std_logic;
SIGNAL \t1|tpuint_byte0[5]~18\ : std_logic;
SIGNAL \t1|tpuint_byte0[6]~19_combout\ : std_logic;
SIGNAL \t1|g_clk_tx~3_combout\ : std_logic;
SIGNAL \t1|g_clk_tx~4_combout\ : std_logic;
SIGNAL \t1|tpuint_byte0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \t1|tpuint_byte1\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_sys_clock <= sys_clock;
ww_valid_out <= valid_out;
ww_data_out <= data_out;
ready_out <= ww_ready_out;
g_clk_tx <= ww_g_clk_tx;
g_clk_rx <= ww_g_clk_rx;
tpu_int <= ww_tpu_int;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sys_clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \sys_clock~combout\);

-- Location: LCFF_X2_Y19_N3
\t1|tpuint_byte1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte1[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte1\(1));

-- Location: LCCOMB_X2_Y19_N2
\t1|tpuint_byte1[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte1[1]~8_combout\ = (\t1|tpuint_byte1\(1) & (\t1|tpuint_byte1\(0) $ (VCC))) # (!\t1|tpuint_byte1\(1) & (\t1|tpuint_byte1\(0) & VCC))
-- \t1|tpuint_byte1[1]~9\ = CARRY((\t1|tpuint_byte1\(1) & \t1|tpuint_byte1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|tpuint_byte1\(1),
	datab => \t1|tpuint_byte1\(0),
	datad => VCC,
	combout => \t1|tpuint_byte1[1]~8_combout\,
	cout => \t1|tpuint_byte1[1]~9\);

-- Location: CLKCTRL_G3
\sys_clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_clock~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y19_N0
\t1|tpuint_byte1[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte1[0]~24_combout\ = !\t1|tpuint_byte1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|tpuint_byte1\(0),
	combout => \t1|tpuint_byte1[0]~24_combout\);

-- Location: LCFF_X2_Y19_N1
\t1|tpuint_byte1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte1[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte1\(0));

-- Location: LCCOMB_X2_Y19_N4
\t1|tpuint_byte1[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte1[2]~10_combout\ = (\t1|tpuint_byte1\(2) & (!\t1|tpuint_byte1[1]~9\)) # (!\t1|tpuint_byte1\(2) & ((\t1|tpuint_byte1[1]~9\) # (GND)))
-- \t1|tpuint_byte1[2]~11\ = CARRY((!\t1|tpuint_byte1[1]~9\) # (!\t1|tpuint_byte1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|tpuint_byte1\(2),
	datad => VCC,
	cin => \t1|tpuint_byte1[1]~9\,
	combout => \t1|tpuint_byte1[2]~10_combout\,
	cout => \t1|tpuint_byte1[2]~11\);

-- Location: LCFF_X2_Y19_N5
\t1|tpuint_byte1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte1[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte1\(2));

-- Location: LCCOMB_X2_Y19_N6
\t1|tpuint_byte1[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte1[3]~12_combout\ = (\t1|tpuint_byte1\(3) & (\t1|tpuint_byte1[2]~11\ $ (GND))) # (!\t1|tpuint_byte1\(3) & (!\t1|tpuint_byte1[2]~11\ & VCC))
-- \t1|tpuint_byte1[3]~13\ = CARRY((\t1|tpuint_byte1\(3) & !\t1|tpuint_byte1[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|tpuint_byte1\(3),
	datad => VCC,
	cin => \t1|tpuint_byte1[2]~11\,
	combout => \t1|tpuint_byte1[3]~12_combout\,
	cout => \t1|tpuint_byte1[3]~13\);

-- Location: LCCOMB_X2_Y19_N8
\t1|tpuint_byte1[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte1[4]~14_combout\ = (\t1|tpuint_byte1\(4) & (!\t1|tpuint_byte1[3]~13\)) # (!\t1|tpuint_byte1\(4) & ((\t1|tpuint_byte1[3]~13\) # (GND)))
-- \t1|tpuint_byte1[4]~15\ = CARRY((!\t1|tpuint_byte1[3]~13\) # (!\t1|tpuint_byte1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|tpuint_byte1\(4),
	datad => VCC,
	cin => \t1|tpuint_byte1[3]~13\,
	combout => \t1|tpuint_byte1[4]~14_combout\,
	cout => \t1|tpuint_byte1[4]~15\);

-- Location: LCFF_X2_Y19_N9
\t1|tpuint_byte1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte1[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte1\(4));

-- Location: LCCOMB_X2_Y19_N10
\t1|tpuint_byte1[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte1[5]~16_combout\ = (\t1|tpuint_byte1\(5) & (\t1|tpuint_byte1[4]~15\ $ (GND))) # (!\t1|tpuint_byte1\(5) & (!\t1|tpuint_byte1[4]~15\ & VCC))
-- \t1|tpuint_byte1[5]~17\ = CARRY((\t1|tpuint_byte1\(5) & !\t1|tpuint_byte1[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|tpuint_byte1\(5),
	datad => VCC,
	cin => \t1|tpuint_byte1[4]~15\,
	combout => \t1|tpuint_byte1[5]~16_combout\,
	cout => \t1|tpuint_byte1[5]~17\);

-- Location: LCFF_X2_Y19_N11
\t1|tpuint_byte1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte1[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte1\(5));

-- Location: LCCOMB_X2_Y19_N12
\t1|tpuint_byte1[6]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte1[6]~18_combout\ = (\t1|tpuint_byte1\(6) & (!\t1|tpuint_byte1[5]~17\)) # (!\t1|tpuint_byte1\(6) & ((\t1|tpuint_byte1[5]~17\) # (GND)))
-- \t1|tpuint_byte1[6]~19\ = CARRY((!\t1|tpuint_byte1[5]~17\) # (!\t1|tpuint_byte1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|tpuint_byte1\(6),
	datad => VCC,
	cin => \t1|tpuint_byte1[5]~17\,
	combout => \t1|tpuint_byte1[6]~18_combout\,
	cout => \t1|tpuint_byte1[6]~19\);

-- Location: LCFF_X2_Y19_N13
\t1|tpuint_byte1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte1[6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte1\(6));

-- Location: LCFF_X2_Y19_N7
\t1|tpuint_byte1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte1[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte1\(3));

-- Location: LCCOMB_X1_Y19_N12
\t1|g_clk_tx~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|g_clk_tx~0_combout\ = ((!\t1|tpuint_byte1\(4) & (!\t1|tpuint_byte1\(5) & !\t1|tpuint_byte1\(3)))) # (!\t1|tpuint_byte1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|tpuint_byte1\(4),
	datab => \t1|tpuint_byte1\(5),
	datac => \t1|tpuint_byte1\(6),
	datad => \t1|tpuint_byte1\(3),
	combout => \t1|g_clk_tx~0_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sys_clock~I\ : cycloneii_io
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
	padio => ww_sys_clock,
	combout => \sys_clock~combout\);

-- Location: LCCOMB_X2_Y19_N14
\t1|tpuint_byte1[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte1[7]~20_combout\ = (\t1|tpuint_byte1\(7) & (\t1|tpuint_byte1[6]~19\ $ (GND))) # (!\t1|tpuint_byte1\(7) & (!\t1|tpuint_byte1[6]~19\ & VCC))
-- \t1|tpuint_byte1[7]~21\ = CARRY((\t1|tpuint_byte1\(7) & !\t1|tpuint_byte1[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|tpuint_byte1\(7),
	datad => VCC,
	cin => \t1|tpuint_byte1[6]~19\,
	combout => \t1|tpuint_byte1[7]~20_combout\,
	cout => \t1|tpuint_byte1[7]~21\);

-- Location: LCFF_X2_Y19_N15
\t1|tpuint_byte1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte1[7]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte1\(7));

-- Location: LCCOMB_X2_Y19_N16
\t1|tpuint_byte1[8]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte1[8]~22_combout\ = (\t1|tpuint_byte1\(8) & (!\t1|tpuint_byte1[7]~21\)) # (!\t1|tpuint_byte1\(8) & ((\t1|tpuint_byte1[7]~21\) # (GND)))
-- \t1|tpuint_byte1[8]~23\ = CARRY((!\t1|tpuint_byte1[7]~21\) # (!\t1|tpuint_byte1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|tpuint_byte1\(8),
	datad => VCC,
	cin => \t1|tpuint_byte1[7]~21\,
	combout => \t1|tpuint_byte1[8]~22_combout\,
	cout => \t1|tpuint_byte1[8]~23\);

-- Location: LCFF_X2_Y19_N17
\t1|tpuint_byte1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte1[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte1\(8));

-- Location: LCCOMB_X2_Y19_N18
\t1|tpuint_byte0[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte0[0]~7_combout\ = (\t1|tpuint_byte0\(0) & (\t1|tpuint_byte1[8]~23\ $ (GND))) # (!\t1|tpuint_byte0\(0) & (!\t1|tpuint_byte1[8]~23\ & VCC))
-- \t1|tpuint_byte0[0]~8\ = CARRY((\t1|tpuint_byte0\(0) & !\t1|tpuint_byte1[8]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|tpuint_byte0\(0),
	datad => VCC,
	cin => \t1|tpuint_byte1[8]~23\,
	combout => \t1|tpuint_byte0[0]~7_combout\,
	cout => \t1|tpuint_byte0[0]~8\);

-- Location: LCFF_X2_Y19_N19
\t1|tpuint_byte0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte0[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte0\(0));

-- Location: LCCOMB_X1_Y19_N2
\t1|g_clk_tx~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|g_clk_tx~1_combout\ = (!\t1|tpuint_byte1\(8) & (\sys_clock~combout\ & (!\t1|tpuint_byte1\(7) & !\t1|tpuint_byte0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|tpuint_byte1\(8),
	datab => \sys_clock~combout\,
	datac => \t1|tpuint_byte1\(7),
	datad => \t1|tpuint_byte0\(0),
	combout => \t1|g_clk_tx~1_combout\);

-- Location: LCCOMB_X2_Y19_N20
\t1|tpuint_byte0[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte0[1]~9_combout\ = (\t1|tpuint_byte0\(1) & (!\t1|tpuint_byte0[0]~8\)) # (!\t1|tpuint_byte0\(1) & ((\t1|tpuint_byte0[0]~8\) # (GND)))
-- \t1|tpuint_byte0[1]~10\ = CARRY((!\t1|tpuint_byte0[0]~8\) # (!\t1|tpuint_byte0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|tpuint_byte0\(1),
	datad => VCC,
	cin => \t1|tpuint_byte0[0]~8\,
	combout => \t1|tpuint_byte0[1]~9_combout\,
	cout => \t1|tpuint_byte0[1]~10\);

-- Location: LCFF_X2_Y19_N21
\t1|tpuint_byte0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte0[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte0\(1));

-- Location: LCCOMB_X2_Y19_N22
\t1|tpuint_byte0[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte0[2]~11_combout\ = (\t1|tpuint_byte0\(2) & (\t1|tpuint_byte0[1]~10\ $ (GND))) # (!\t1|tpuint_byte0\(2) & (!\t1|tpuint_byte0[1]~10\ & VCC))
-- \t1|tpuint_byte0[2]~12\ = CARRY((\t1|tpuint_byte0\(2) & !\t1|tpuint_byte0[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|tpuint_byte0\(2),
	datad => VCC,
	cin => \t1|tpuint_byte0[1]~10\,
	combout => \t1|tpuint_byte0[2]~11_combout\,
	cout => \t1|tpuint_byte0[2]~12\);

-- Location: LCFF_X2_Y19_N23
\t1|tpuint_byte0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte0[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte0\(2));

-- Location: LCCOMB_X2_Y19_N24
\t1|tpuint_byte0[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte0[3]~13_combout\ = (\t1|tpuint_byte0\(3) & (!\t1|tpuint_byte0[2]~12\)) # (!\t1|tpuint_byte0\(3) & ((\t1|tpuint_byte0[2]~12\) # (GND)))
-- \t1|tpuint_byte0[3]~14\ = CARRY((!\t1|tpuint_byte0[2]~12\) # (!\t1|tpuint_byte0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|tpuint_byte0\(3),
	datad => VCC,
	cin => \t1|tpuint_byte0[2]~12\,
	combout => \t1|tpuint_byte0[3]~13_combout\,
	cout => \t1|tpuint_byte0[3]~14\);

-- Location: LCFF_X2_Y19_N25
\t1|tpuint_byte0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte0[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte0\(3));

-- Location: LCCOMB_X2_Y19_N26
\t1|tpuint_byte0[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte0[4]~15_combout\ = (\t1|tpuint_byte0\(4) & (\t1|tpuint_byte0[3]~14\ $ (GND))) # (!\t1|tpuint_byte0\(4) & (!\t1|tpuint_byte0[3]~14\ & VCC))
-- \t1|tpuint_byte0[4]~16\ = CARRY((\t1|tpuint_byte0\(4) & !\t1|tpuint_byte0[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|tpuint_byte0\(4),
	datad => VCC,
	cin => \t1|tpuint_byte0[3]~14\,
	combout => \t1|tpuint_byte0[4]~15_combout\,
	cout => \t1|tpuint_byte0[4]~16\);

-- Location: LCFF_X2_Y19_N27
\t1|tpuint_byte0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte0[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte0\(4));

-- Location: LCCOMB_X1_Y19_N20
\t1|g_clk_tx~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|g_clk_tx~2_combout\ = (!\t1|tpuint_byte0\(2) & (!\t1|tpuint_byte0\(3) & (!\t1|tpuint_byte0\(4) & !\t1|tpuint_byte0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|tpuint_byte0\(2),
	datab => \t1|tpuint_byte0\(3),
	datac => \t1|tpuint_byte0\(4),
	datad => \t1|tpuint_byte0\(1),
	combout => \t1|g_clk_tx~2_combout\);

-- Location: LCCOMB_X2_Y19_N28
\t1|tpuint_byte0[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte0[5]~17_combout\ = (\t1|tpuint_byte0\(5) & (!\t1|tpuint_byte0[4]~16\)) # (!\t1|tpuint_byte0\(5) & ((\t1|tpuint_byte0[4]~16\) # (GND)))
-- \t1|tpuint_byte0[5]~18\ = CARRY((!\t1|tpuint_byte0[4]~16\) # (!\t1|tpuint_byte0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|tpuint_byte0\(5),
	datad => VCC,
	cin => \t1|tpuint_byte0[4]~16\,
	combout => \t1|tpuint_byte0[5]~17_combout\,
	cout => \t1|tpuint_byte0[5]~18\);

-- Location: LCFF_X2_Y19_N29
\t1|tpuint_byte0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte0[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte0\(5));

-- Location: LCCOMB_X2_Y19_N30
\t1|tpuint_byte0[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|tpuint_byte0[6]~19_combout\ = \t1|tpuint_byte0[5]~18\ $ (!\t1|tpuint_byte0\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t1|tpuint_byte0\(6),
	cin => \t1|tpuint_byte0[5]~18\,
	combout => \t1|tpuint_byte0[6]~19_combout\);

-- Location: LCFF_X2_Y19_N31
\t1|tpuint_byte0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sys_clock~clkctrl_outclk\,
	datain => \t1|tpuint_byte0[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|tpuint_byte0\(6));

-- Location: LCCOMB_X1_Y19_N18
\t1|g_clk_tx~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|g_clk_tx~3_combout\ = (!\t1|tpuint_byte0\(6) & !\t1|tpuint_byte0\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|tpuint_byte0\(6),
	datad => \t1|tpuint_byte0\(5),
	combout => \t1|g_clk_tx~3_combout\);

-- Location: LCCOMB_X1_Y19_N0
\t1|g_clk_tx~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \t1|g_clk_tx~4_combout\ = (\t1|g_clk_tx~0_combout\ & (\t1|g_clk_tx~1_combout\ & (\t1|g_clk_tx~2_combout\ & \t1|g_clk_tx~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|g_clk_tx~0_combout\,
	datab => \t1|g_clk_tx~1_combout\,
	datac => \t1|g_clk_tx~2_combout\,
	datad => \t1|g_clk_tx~3_combout\,
	combout => \t1|g_clk_tx~4_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\valid_out~I\ : cycloneii_io
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
	padio => ww_valid_out);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_out[0]~I\ : cycloneii_io
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
	padio => ww_data_out(0));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_out[1]~I\ : cycloneii_io
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
	padio => ww_data_out(1));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_out[2]~I\ : cycloneii_io
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
	padio => ww_data_out(2));

-- Location: PIN_T16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_out[3]~I\ : cycloneii_io
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
	padio => ww_data_out(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_out[4]~I\ : cycloneii_io
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
	padio => ww_data_out(4));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_out[5]~I\ : cycloneii_io
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
	padio => ww_data_out(5));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_out[6]~I\ : cycloneii_io
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
	padio => ww_data_out(6));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_out[7]~I\ : cycloneii_io
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
	padio => ww_data_out(7));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ready_out~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ready_out);

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g_clk_tx~I\ : cycloneii_io
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
	datain => \t1|g_clk_tx~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g_clk_tx);

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g_clk_rx~I\ : cycloneii_io
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
	datain => \t1|g_clk_tx~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g_clk_rx);

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tpu_int~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tpu_int);
END structure;


