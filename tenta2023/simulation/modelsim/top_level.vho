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

-- DATE "01/29/2024 16:48:36"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	sw : IN std_logic_vector(2 DOWNTO 0);
	key_n : IN std_logic_vector(1 DOWNTO 0);
	clock_50 : IN std_logic;
	vector_a : IN std_logic_vector(7 DOWNTO 0);
	vector_b : IN std_logic_vector(7 DOWNTO 0);
	data_out : OUT std_logic_vector(7 DOWNTO 0);
	toggel_out : OUT std_logic
	);
END top_level;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toggel_out	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_a[0]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_b[0]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[0]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_a[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_b[1]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_a[2]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_b[2]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_a[3]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_b[3]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_a[4]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_b[4]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_a[5]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_b[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_a[6]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_b[6]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_a[7]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vector_b[7]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[1]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_key_n : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_vector_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vector_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_toggel_out : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \vector_a[0]~input_o\ : std_logic;
SIGNAL \data_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \vector_b[0]~input_o\ : std_logic;
SIGNAL \key_n[0]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sel_aandsel_b~combout\ : std_logic;
SIGNAL \sel_aandsel_b2~q\ : std_logic;
SIGNAL \sel_comb~0_combout\ : std_logic;
SIGNAL \sel_comb~q\ : std_logic;
SIGNAL \data_out[0]~reg0_q\ : std_logic;
SIGNAL \vector_a[1]~input_o\ : std_logic;
SIGNAL \data_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \vector_b[1]~input_o\ : std_logic;
SIGNAL \data_out[1]~reg0_q\ : std_logic;
SIGNAL \vector_a[2]~input_o\ : std_logic;
SIGNAL \data_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \vector_b[2]~input_o\ : std_logic;
SIGNAL \data_out[2]~reg0_q\ : std_logic;
SIGNAL \vector_a[3]~input_o\ : std_logic;
SIGNAL \data_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \vector_b[3]~input_o\ : std_logic;
SIGNAL \data_out[3]~reg0_q\ : std_logic;
SIGNAL \vector_a[4]~input_o\ : std_logic;
SIGNAL \data_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \vector_b[4]~input_o\ : std_logic;
SIGNAL \data_out[4]~reg0_q\ : std_logic;
SIGNAL \vector_a[5]~input_o\ : std_logic;
SIGNAL \data_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \vector_b[5]~input_o\ : std_logic;
SIGNAL \data_out[5]~reg0_q\ : std_logic;
SIGNAL \vector_a[6]~input_o\ : std_logic;
SIGNAL \data_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \vector_b[6]~input_o\ : std_logic;
SIGNAL \data_out[6]~reg0_q\ : std_logic;
SIGNAL \vector_a[7]~input_o\ : std_logic;
SIGNAL \data_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \vector_b[7]~input_o\ : std_logic;
SIGNAL \data_out[7]~reg0_q\ : std_logic;
SIGNAL \key_n[1]~input_o\ : std_logic;
SIGNAL \toggel_en_r~feeder_combout\ : std_logic;
SIGNAL \toggel_en_r~q\ : std_logic;
SIGNAL \toggel_en_r2~feeder_combout\ : std_logic;
SIGNAL \toggel_en_r2~q\ : std_logic;
SIGNAL \toggel_out_int~0_combout\ : std_logic;
SIGNAL \toggel_out_int~q\ : std_logic;
SIGNAL \toggel_out~reg0feeder_combout\ : std_logic;
SIGNAL \toggel_out~reg0_q\ : std_logic;
SIGNAL \ALT_INV_key_n[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_vector_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_vector_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_vector_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_vector_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_vector_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_vector_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_vector_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_vector_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_toggel_en_r~q\ : std_logic;
SIGNAL \ALT_INV_toggel_en_r2~q\ : std_logic;
SIGNAL \ALT_INV_sel_aandsel_b2~q\ : std_logic;
SIGNAL \ALT_INV_toggel_out_int~q\ : std_logic;

BEGIN

ww_sw <= sw;
ww_key_n <= key_n;
ww_clock_50 <= clock_50;
ww_vector_a <= vector_a;
ww_vector_b <= vector_b;
data_out <= ww_data_out;
toggel_out <= ww_toggel_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_key_n[1]~input_o\ <= NOT \key_n[1]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_vector_a[7]~input_o\ <= NOT \vector_a[7]~input_o\;
\ALT_INV_vector_a[6]~input_o\ <= NOT \vector_a[6]~input_o\;
\ALT_INV_vector_a[5]~input_o\ <= NOT \vector_a[5]~input_o\;
\ALT_INV_vector_a[4]~input_o\ <= NOT \vector_a[4]~input_o\;
\ALT_INV_vector_a[3]~input_o\ <= NOT \vector_a[3]~input_o\;
\ALT_INV_vector_a[2]~input_o\ <= NOT \vector_a[2]~input_o\;
\ALT_INV_vector_a[1]~input_o\ <= NOT \vector_a[1]~input_o\;
\ALT_INV_vector_a[0]~input_o\ <= NOT \vector_a[0]~input_o\;
\ALT_INV_toggel_en_r~q\ <= NOT \toggel_en_r~q\;
\ALT_INV_toggel_en_r2~q\ <= NOT \toggel_en_r2~q\;
\ALT_INV_sel_aandsel_b2~q\ <= NOT \sel_aandsel_b2~q\;
\ALT_INV_toggel_out_int~q\ <= NOT \toggel_out_int~q\;

-- Location: IOOBUF_X89_Y13_N22
\data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(0));

-- Location: IOOBUF_X89_Y11_N79
\data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(1));

-- Location: IOOBUF_X89_Y20_N45
\data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(2));

-- Location: IOOBUF_X89_Y20_N96
\data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(3));

-- Location: IOOBUF_X89_Y20_N62
\data_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(4));

-- Location: IOOBUF_X89_Y13_N39
\data_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(5));

-- Location: IOOBUF_X89_Y21_N5
\data_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(6));

-- Location: IOOBUF_X89_Y13_N56
\data_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_data_out(7));

-- Location: IOOBUF_X62_Y0_N2
\toggel_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \toggel_out~reg0_q\,
	devoe => ww_devoe,
	o => ww_toggel_out);

-- Location: IOIBUF_X89_Y25_N21
\clock_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G10
\clock_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~input_o\,
	outclk => \clock_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y15_N21
\vector_a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_a(0),
	o => \vector_a[0]~input_o\);

-- Location: LABCELL_X88_Y15_N15
\data_out[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out[0]~reg0feeder_combout\ = ( \vector_a[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_vector_a[0]~input_o\,
	combout => \data_out[0]~reg0feeder_combout\);

-- Location: IOIBUF_X89_Y15_N4
\vector_b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_b(0),
	o => \vector_b[0]~input_o\);

-- Location: IOIBUF_X89_Y11_N61
\key_n[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n(0),
	o => \key_n[0]~input_o\);

-- Location: IOIBUF_X89_Y11_N44
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N55
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LABCELL_X88_Y15_N48
sel_aandsel_b : cyclonev_lcell_comb
-- Equation(s):
-- \sel_aandsel_b~combout\ = ( \sw[0]~input_o\ & ( \sw[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[0]~input_o\,
	combout => \sel_aandsel_b~combout\);

-- Location: FF_X88_Y15_N50
sel_aandsel_b2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \sel_aandsel_b~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_aandsel_b2~q\);

-- Location: LABCELL_X88_Y15_N51
\sel_comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sel_comb~0_combout\ = ( \sel_aandsel_b2~q\ & ( !\sw[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[2]~input_o\,
	dataf => \ALT_INV_sel_aandsel_b2~q\,
	combout => \sel_comb~0_combout\);

-- Location: FF_X88_Y15_N53
sel_comb : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \sel_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_comb~q\);

-- Location: FF_X88_Y15_N16
\data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \data_out[0]~reg0feeder_combout\,
	asdata => \vector_b[0]~input_o\,
	clrn => \key_n[0]~input_o\,
	sload => \sel_comb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[0]~reg0_q\);

-- Location: IOIBUF_X89_Y16_N21
\vector_a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_a(1),
	o => \vector_a[1]~input_o\);

-- Location: LABCELL_X88_Y15_N30
\data_out[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out[1]~reg0feeder_combout\ = ( \vector_a[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_vector_a[1]~input_o\,
	combout => \data_out[1]~reg0feeder_combout\);

-- Location: IOIBUF_X89_Y23_N55
\vector_b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_b(1),
	o => \vector_b[1]~input_o\);

-- Location: FF_X88_Y15_N31
\data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \data_out[1]~reg0feeder_combout\,
	asdata => \vector_b[1]~input_o\,
	clrn => \key_n[0]~input_o\,
	sload => \sel_comb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[1]~reg0_q\);

-- Location: IOIBUF_X89_Y13_N4
\vector_a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_a(2),
	o => \vector_a[2]~input_o\);

-- Location: LABCELL_X88_Y15_N33
\data_out[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out[2]~reg0feeder_combout\ = \vector_a[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vector_a[2]~input_o\,
	combout => \data_out[2]~reg0feeder_combout\);

-- Location: IOIBUF_X89_Y21_N21
\vector_b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_b(2),
	o => \vector_b[2]~input_o\);

-- Location: FF_X88_Y15_N34
\data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \data_out[2]~reg0feeder_combout\,
	asdata => \vector_b[2]~input_o\,
	clrn => \key_n[0]~input_o\,
	sload => \sel_comb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[2]~reg0_q\);

-- Location: IOIBUF_X89_Y16_N4
\vector_a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_a(3),
	o => \vector_a[3]~input_o\);

-- Location: LABCELL_X88_Y15_N42
\data_out[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out[3]~reg0feeder_combout\ = \vector_a[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_vector_a[3]~input_o\,
	combout => \data_out[3]~reg0feeder_combout\);

-- Location: IOIBUF_X89_Y15_N38
\vector_b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_b(3),
	o => \vector_b[3]~input_o\);

-- Location: FF_X88_Y15_N43
\data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \data_out[3]~reg0feeder_combout\,
	asdata => \vector_b[3]~input_o\,
	clrn => \key_n[0]~input_o\,
	sload => \sel_comb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[3]~reg0_q\);

-- Location: IOIBUF_X89_Y16_N55
\vector_a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_a(4),
	o => \vector_a[4]~input_o\);

-- Location: LABCELL_X88_Y15_N18
\data_out[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out[4]~reg0feeder_combout\ = \vector_a[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vector_a[4]~input_o\,
	combout => \data_out[4]~reg0feeder_combout\);

-- Location: IOIBUF_X89_Y23_N4
\vector_b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_b(4),
	o => \vector_b[4]~input_o\);

-- Location: FF_X88_Y15_N19
\data_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \data_out[4]~reg0feeder_combout\,
	asdata => \vector_b[4]~input_o\,
	clrn => \key_n[0]~input_o\,
	sload => \sel_comb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[4]~reg0_q\);

-- Location: IOIBUF_X89_Y11_N95
\vector_a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_a(5),
	o => \vector_a[5]~input_o\);

-- Location: LABCELL_X88_Y15_N45
\data_out[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out[5]~reg0feeder_combout\ = ( \vector_a[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_vector_a[5]~input_o\,
	combout => \data_out[5]~reg0feeder_combout\);

-- Location: IOIBUF_X89_Y9_N4
\vector_b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_b(5),
	o => \vector_b[5]~input_o\);

-- Location: FF_X88_Y15_N46
\data_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \data_out[5]~reg0feeder_combout\,
	asdata => \vector_b[5]~input_o\,
	clrn => \key_n[0]~input_o\,
	sload => \sel_comb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[5]~reg0_q\);

-- Location: IOIBUF_X89_Y16_N38
\vector_a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_a(6),
	o => \vector_a[6]~input_o\);

-- Location: LABCELL_X88_Y15_N12
\data_out[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out[6]~reg0feeder_combout\ = \vector_a[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vector_a[6]~input_o\,
	combout => \data_out[6]~reg0feeder_combout\);

-- Location: IOIBUF_X89_Y15_N55
\vector_b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_b(6),
	o => \vector_b[6]~input_o\);

-- Location: FF_X88_Y15_N13
\data_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \data_out[6]~reg0feeder_combout\,
	asdata => \vector_b[6]~input_o\,
	clrn => \key_n[0]~input_o\,
	sload => \sel_comb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[6]~reg0_q\);

-- Location: IOIBUF_X89_Y21_N38
\vector_a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_a(7),
	o => \vector_a[7]~input_o\);

-- Location: LABCELL_X88_Y15_N21
\data_out[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \data_out[7]~reg0feeder_combout\ = \vector_a[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vector_a[7]~input_o\,
	combout => \data_out[7]~reg0feeder_combout\);

-- Location: IOIBUF_X89_Y20_N78
\vector_b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vector_b(7),
	o => \vector_b[7]~input_o\);

-- Location: FF_X88_Y15_N22
\data_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \data_out[7]~reg0feeder_combout\,
	asdata => \vector_b[7]~input_o\,
	clrn => \key_n[0]~input_o\,
	sload => \sel_comb~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[7]~reg0_q\);

-- Location: IOIBUF_X62_Y0_N52
\key_n[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n(1),
	o => \key_n[1]~input_o\);

-- Location: LABCELL_X62_Y1_N15
\toggel_en_r~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \toggel_en_r~feeder_combout\ = ( \key_n[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_key_n[1]~input_o\,
	combout => \toggel_en_r~feeder_combout\);

-- Location: FF_X62_Y1_N16
toggel_en_r : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \toggel_en_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toggel_en_r~q\);

-- Location: LABCELL_X62_Y1_N39
\toggel_en_r2~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \toggel_en_r2~feeder_combout\ = ( \toggel_en_r~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_toggel_en_r~q\,
	combout => \toggel_en_r2~feeder_combout\);

-- Location: FF_X62_Y1_N41
toggel_en_r2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \toggel_en_r2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toggel_en_r2~q\);

-- Location: LABCELL_X62_Y1_N18
\toggel_out_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \toggel_out_int~0_combout\ = ( !\toggel_out_int~q\ & ( \toggel_en_r2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_toggel_out_int~q\,
	dataf => \ALT_INV_toggel_en_r2~q\,
	combout => \toggel_out_int~0_combout\);

-- Location: FF_X62_Y1_N19
toggel_out_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \toggel_out_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toggel_out_int~q\);

-- Location: LABCELL_X62_Y1_N12
\toggel_out~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \toggel_out~reg0feeder_combout\ = ( \toggel_out_int~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_toggel_out_int~q\,
	combout => \toggel_out~reg0feeder_combout\);

-- Location: FF_X62_Y1_N14
\toggel_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \toggel_out~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \toggel_out~reg0_q\);

-- Location: LABCELL_X24_Y4_N0
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


