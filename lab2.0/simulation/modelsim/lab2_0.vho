-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "01/22/2024 13:43:01"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab2_0 IS
    PORT (
	sw : IN std_logic_vector(5 DOWNTO 0);
	led : OUT std_logic_vector(3 DOWNTO 0);
	key_n : IN std_logic_vector(1 DOWNTO 0)
	);
END lab2_0;

-- Design Ports Information
-- led[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2_0 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key_n : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \key_n[0]~input_o\ : std_logic;
SIGNAL \key_n[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \key_n[1]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL sum : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[5]~input_o\ : std_logic;

BEGIN

ww_sw <= sw;
led <= ww_led;
ww_key_n <= key_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[4]~input_o\ <= NOT \sw[4]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_sw[5]~input_o\ <= NOT \sw[5]~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\led[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(0),
	devoe => ww_devoe,
	o => ww_led(0));

-- Location: IOOBUF_X52_Y0_N19
\led[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(1),
	devoe => ww_devoe,
	o => ww_led(1));

-- Location: IOOBUF_X60_Y0_N2
\led[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(2),
	devoe => ww_devoe,
	o => ww_led(2));

-- Location: IOOBUF_X80_Y0_N2
\led[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => sum(3),
	devoe => ww_devoe,
	o => ww_led(3));

-- Location: IOIBUF_X36_Y0_N1
\key_n[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n(0),
	o => \key_n[0]~input_o\);

-- Location: CLKCTRL_G6
\key_n[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \key_n[0]~input_o\,
	outclk => \key_n[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X4_Y0_N52
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LABCELL_X16_Y2_N30
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( \sw[0]~input_o\ & ( !\sw[3]~input_o\ ) ) # ( !\sw[0]~input_o\ & ( \sw[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[3]~input_o\,
	dataf => \ALT_INV_sw[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X36_Y0_N18
\key_n[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n(1),
	o => \key_n[1]~input_o\);

-- Location: FF_X16_Y2_N31
\sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key_n[0]~inputCLKENA0_outclk\,
	d => \Add0~0_combout\,
	clrn => \key_n[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(0));

-- Location: IOIBUF_X2_Y0_N41
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LABCELL_X16_Y2_N9
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( \sw[1]~input_o\ & ( \sw[0]~input_o\ & ( !\sw[3]~input_o\ $ (\sw[4]~input_o\) ) ) ) # ( !\sw[1]~input_o\ & ( \sw[0]~input_o\ & ( !\sw[3]~input_o\ $ (!\sw[4]~input_o\) ) ) ) # ( \sw[1]~input_o\ & ( !\sw[0]~input_o\ & ( !\sw[4]~input_o\ 
-- ) ) ) # ( !\sw[1]~input_o\ & ( !\sw[0]~input_o\ & ( \sw[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[3]~input_o\,
	datac => \ALT_INV_sw[4]~input_o\,
	datae => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[0]~input_o\,
	combout => \Add0~1_combout\);

-- Location: FF_X16_Y2_N10
\sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key_n[0]~inputCLKENA0_outclk\,
	d => \Add0~1_combout\,
	clrn => \key_n[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(1));

-- Location: IOIBUF_X8_Y0_N35
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LABCELL_X16_Y2_N12
\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = ( \sw[1]~input_o\ & ( \sw[5]~input_o\ & ( !\sw[2]~input_o\ $ ((((\sw[0]~input_o\ & \sw[3]~input_o\)) # (\sw[4]~input_o\))) ) ) ) # ( !\sw[1]~input_o\ & ( \sw[5]~input_o\ & ( !\sw[2]~input_o\ $ (((\sw[0]~input_o\ & (\sw[4]~input_o\ & 
-- \sw[3]~input_o\)))) ) ) ) # ( \sw[1]~input_o\ & ( !\sw[5]~input_o\ & ( !\sw[2]~input_o\ $ (((!\sw[4]~input_o\ & ((!\sw[0]~input_o\) # (!\sw[3]~input_o\))))) ) ) ) # ( !\sw[1]~input_o\ & ( !\sw[5]~input_o\ & ( !\sw[2]~input_o\ $ (((!\sw[0]~input_o\) # 
-- ((!\sw[4]~input_o\) # (!\sw[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110001111000111100011110000111000011100001110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[2]~input_o\,
	datad => \ALT_INV_sw[3]~input_o\,
	datae => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \Add0~2_combout\);

-- Location: FF_X16_Y2_N13
\sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key_n[0]~inputCLKENA0_outclk\,
	d => \Add0~2_combout\,
	clrn => \key_n[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(2));

-- Location: LABCELL_X16_Y2_N18
\Add0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = ( \sw[1]~input_o\ & ( \sw[5]~input_o\ & ( (((\sw[0]~input_o\ & \sw[3]~input_o\)) # (\sw[2]~input_o\)) # (\sw[4]~input_o\) ) ) ) # ( !\sw[1]~input_o\ & ( \sw[5]~input_o\ & ( ((\sw[0]~input_o\ & (\sw[4]~input_o\ & \sw[3]~input_o\))) # 
-- (\sw[2]~input_o\) ) ) ) # ( \sw[1]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[2]~input_o\ & (((\sw[0]~input_o\ & \sw[3]~input_o\)) # (\sw[4]~input_o\))) ) ) ) # ( !\sw[1]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[0]~input_o\ & (\sw[4]~input_o\ & (\sw[2]~input_o\ 
-- & \sw[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000110000011100001111000111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[2]~input_o\,
	datad => \ALT_INV_sw[3]~input_o\,
	datae => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \Add0~3_combout\);

-- Location: FF_X16_Y2_N19
\sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \key_n[0]~inputCLKENA0_outclk\,
	d => \Add0~3_combout\,
	clrn => \key_n[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(3));

-- Location: LABCELL_X18_Y50_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


