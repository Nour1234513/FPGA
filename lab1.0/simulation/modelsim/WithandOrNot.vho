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

-- DATE "01/19/2024 18:27:12"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	withandOrNot IS
    PORT (
	sw : IN std_logic_vector(7 DOWNTO 0);
	ledr0 : OUT std_logic
	);
END withandOrNot;

-- Design Ports Information
-- ledr0	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF withandOrNot IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ledr0 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \ledr0~0_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \ledr0~1_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \ledr0~3_combout\ : std_logic;
SIGNAL \ledr0~4_combout\ : std_logic;
SIGNAL \ledr0~2_combout\ : std_logic;
SIGNAL \ledr0~5_combout\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ledr0~4_combout\ : std_logic;
SIGNAL \ALT_INV_ledr0~3_combout\ : std_logic;
SIGNAL \ALT_INV_ledr0~2_combout\ : std_logic;
SIGNAL \ALT_INV_ledr0~1_combout\ : std_logic;
SIGNAL \ALT_INV_ledr0~0_combout\ : std_logic;

BEGIN

ww_sw <= sw;
ledr0 <= ww_ledr0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\ALT_INV_sw[5]~input_o\ <= NOT \sw[5]~input_o\;
\ALT_INV_sw[7]~input_o\ <= NOT \sw[7]~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\ALT_INV_sw[4]~input_o\ <= NOT \sw[4]~input_o\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_ledr0~4_combout\ <= NOT \ledr0~4_combout\;
\ALT_INV_ledr0~3_combout\ <= NOT \ledr0~3_combout\;
\ALT_INV_ledr0~2_combout\ <= NOT \ledr0~2_combout\;
\ALT_INV_ledr0~1_combout\ <= NOT \ledr0~1_combout\;
\ALT_INV_ledr0~0_combout\ <= NOT \ledr0~0_combout\;

-- Location: IOOBUF_X52_Y0_N2
\ledr0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr0~5_combout\,
	devoe => ww_devoe,
	o => ww_ledr0);

-- Location: IOIBUF_X4_Y0_N1
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

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

-- Location: MLABCELL_X6_Y1_N30
\ledr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledr0~0_combout\ = ( \sw[3]~input_o\ & ( (!\sw[7]~input_o\ & (!\sw[6]~input_o\ & \sw[4]~input_o\)) ) ) # ( !\sw[3]~input_o\ & ( (\sw[6]~input_o\ & (!\sw[7]~input_o\ $ (!\sw[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[7]~input_o\,
	datab => \ALT_INV_sw[6]~input_o\,
	datac => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \ledr0~0_combout\);

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

-- Location: MLABCELL_X6_Y1_N33
\ledr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledr0~1_combout\ = ( !\sw[5]~input_o\ & ( (!\sw[7]~input_o\ & !\sw[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[7]~input_o\,
	datab => \ALT_INV_sw[6]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \ledr0~1_combout\);

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

-- Location: MLABCELL_X6_Y1_N9
\ledr0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledr0~3_combout\ = ( !\sw[4]~input_o\ & ( (!\sw[3]~input_o\ & (\sw[0]~input_o\ & ((!\sw[2]~input_o\) # (\sw[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000100000000001100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[1]~input_o\,
	datab => \ALT_INV_sw[3]~input_o\,
	datac => \ALT_INV_sw[2]~input_o\,
	datad => \ALT_INV_sw[0]~input_o\,
	dataf => \ALT_INV_sw[4]~input_o\,
	combout => \ledr0~3_combout\);

-- Location: MLABCELL_X6_Y1_N42
\ledr0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledr0~4_combout\ = ( !\sw[0]~input_o\ & ( \sw[5]~input_o\ & ( (!\sw[2]~input_o\ & !\sw[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[2]~input_o\,
	datac => \ALT_INV_sw[1]~input_o\,
	datae => \ALT_INV_sw[0]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \ledr0~4_combout\);

-- Location: MLABCELL_X6_Y1_N6
\ledr0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledr0~2_combout\ = ( \sw[4]~input_o\ & ( (!\sw[1]~input_o\ & (\sw[3]~input_o\ & (!\sw[0]~input_o\ & \sw[2]~input_o\))) ) ) # ( !\sw[4]~input_o\ & ( (\sw[1]~input_o\ & (\sw[3]~input_o\ & (!\sw[0]~input_o\ & \sw[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[1]~input_o\,
	datab => \ALT_INV_sw[3]~input_o\,
	datac => \ALT_INV_sw[0]~input_o\,
	datad => \ALT_INV_sw[2]~input_o\,
	dataf => \ALT_INV_sw[4]~input_o\,
	combout => \ledr0~2_combout\);

-- Location: MLABCELL_X6_Y1_N18
\ledr0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledr0~5_combout\ = ( \ledr0~4_combout\ & ( \ledr0~2_combout\ & ( (\ledr0~1_combout\) # (\ledr0~0_combout\) ) ) ) # ( !\ledr0~4_combout\ & ( \ledr0~2_combout\ & ( \ledr0~1_combout\ ) ) ) # ( \ledr0~4_combout\ & ( !\ledr0~2_combout\ & ( ((\ledr0~1_combout\ 
-- & \ledr0~3_combout\)) # (\ledr0~0_combout\) ) ) ) # ( !\ledr0~4_combout\ & ( !\ledr0~2_combout\ & ( (\ledr0~1_combout\ & \ledr0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110011111100001111000011110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ledr0~0_combout\,
	datac => \ALT_INV_ledr0~1_combout\,
	datad => \ALT_INV_ledr0~3_combout\,
	datae => \ALT_INV_ledr0~4_combout\,
	dataf => \ALT_INV_ledr0~2_combout\,
	combout => \ledr0~5_combout\);

-- Location: LABCELL_X30_Y21_N0
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


