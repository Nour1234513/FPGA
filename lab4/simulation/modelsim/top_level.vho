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

-- DATE "01/30/2024 13:27:33"

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
	clock_50 : IN std_logic;
	sw : IN std_logic_vector(9 DOWNTO 0);
	key_n : IN std_logic_vector(3 DOWNTO 0);
	ledr : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- sw[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_key_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \key_n[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \key_n[2]~input_o\ : std_logic;
SIGNAL \cheat_n_r~feeder_combout\ : std_logic;
SIGNAL \cheat_n_r~q\ : std_logic;
SIGNAL \cheat_n_r2~q\ : std_logic;
SIGNAL \key_n[1]~input_o\ : std_logic;
SIGNAL \key_n_r~feeder_combout\ : std_logic;
SIGNAL \key_n_r~q\ : std_logic;
SIGNAL \key_n_r2~q\ : std_logic;
SIGNAL \s_segg.s_cheat~0_combout\ : std_logic;
SIGNAL \key_n[0]~input_o\ : std_logic;
SIGNAL \s_segg.s_cheat~q\ : std_logic;
SIGNAL \ledr[0]~reg0feeder_combout\ : std_logic;
SIGNAL \ledr[0]~reg0_q\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \counter[15]~feeder_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \counter[16]~feeder_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \counter[17]~feeder_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \counter[18]~feeder_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \loob[0]~0_combout\ : std_logic;
SIGNAL \loob[0]~DUPLICATE_q\ : std_logic;
SIGNAL \loob[1]~3_combout\ : std_logic;
SIGNAL \loob~1_combout\ : std_logic;
SIGNAL \loob[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \s_segg~14_combout\ : std_logic;
SIGNAL \s_segg.s_2~DUPLICATE_q\ : std_logic;
SIGNAL \s_segg~15_combout\ : std_logic;
SIGNAL \s_segg.s_3~q\ : std_logic;
SIGNAL \s_segg~12_combout\ : std_logic;
SIGNAL \s_segg.s_4~q\ : std_logic;
SIGNAL \s_segg~17_combout\ : std_logic;
SIGNAL \s_segg.s_5~q\ : std_logic;
SIGNAL \s_segg~16_combout\ : std_logic;
SIGNAL \s_segg.s_6~q\ : std_logic;
SIGNAL \s_segg.s_waiting~0_combout\ : std_logic;
SIGNAL \s_segg.s_waiting~DUPLICATE_q\ : std_logic;
SIGNAL \s_segg~13_combout\ : std_logic;
SIGNAL \s_segg.s_1~DUPLICATE_q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \HEX0~0_combout\ : std_logic;
SIGNAL \HEX0[0]~reg0_q\ : std_logic;
SIGNAL \s_segg.s_2~q\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \HEX0~1_combout\ : std_logic;
SIGNAL \HEX0[1]~reg0_q\ : std_logic;
SIGNAL \s_segg.s_1~q\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \HEX0~2_combout\ : std_logic;
SIGNAL \HEX0[2]~reg0_q\ : std_logic;
SIGNAL \HEX0~3_combout\ : std_logic;
SIGNAL \HEX0[3]~reg0_q\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \HEX0~4_combout\ : std_logic;
SIGNAL \HEX0[4]~reg0_q\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \HEX0~5_combout\ : std_logic;
SIGNAL \HEX0[5]~reg0_q\ : std_logic;
SIGNAL \s_segg.s_waiting~q\ : std_logic;
SIGNAL \nummber~2_combout\ : std_logic;
SIGNAL \HEX0~6_combout\ : std_logic;
SIGNAL \HEX0[6]~reg0_q\ : std_logic;
SIGNAL counter : std_logic_vector(22 DOWNTO 0);
SIGNAL nummber : std_logic_vector(6 DOWNTO 0);
SIGNAL loob : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL ALT_INV_loob : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_s_segg.s_1~q\ : std_logic;
SIGNAL \ALT_INV_s_segg.s_waiting~q\ : std_logic;
SIGNAL \ALT_INV_s_segg.s_4~q\ : std_logic;
SIGNAL \ALT_INV_cheat_n_r2~q\ : std_logic;
SIGNAL ALT_INV_nummber : std_logic_vector(6 DOWNTO 1);
SIGNAL \ALT_INV_key_n_r2~q\ : std_logic;
SIGNAL \ALT_INV_s_segg.s_cheat~q\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL ALT_INV_counter : std_logic_vector(22 DOWNTO 0);
SIGNAL \ALT_INV_s_segg.s_2~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_s_segg.s_1~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_s_segg.s_waiting~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_loob[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_loob[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_key_n[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_key_n[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_s_segg.s_5~q\ : std_logic;
SIGNAL \ALT_INV_s_segg.s_6~q\ : std_logic;
SIGNAL \ALT_INV_s_segg.s_3~q\ : std_logic;
SIGNAL \ALT_INV_s_segg.s_2~q\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ww_sw <= sw;
ww_key_n <= key_n;
ledr <= ww_ledr;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
ALT_INV_loob(6) <= NOT loob(6);
ALT_INV_loob(7) <= NOT loob(7);
\ALT_INV_s_segg.s_1~q\ <= NOT \s_segg.s_1~q\;
\ALT_INV_s_segg.s_waiting~q\ <= NOT \s_segg.s_waiting~q\;
\ALT_INV_s_segg.s_4~q\ <= NOT \s_segg.s_4~q\;
\ALT_INV_cheat_n_r2~q\ <= NOT \cheat_n_r2~q\;
ALT_INV_nummber(6) <= NOT nummber(6);
ALT_INV_loob(5) <= NOT loob(5);
ALT_INV_nummber(5) <= NOT nummber(5);
ALT_INV_loob(4) <= NOT loob(4);
ALT_INV_nummber(4) <= NOT nummber(4);
ALT_INV_loob(3) <= NOT loob(3);
ALT_INV_loob(2) <= NOT loob(2);
ALT_INV_nummber(2) <= NOT nummber(2);
ALT_INV_loob(1) <= NOT loob(1);
ALT_INV_nummber(1) <= NOT nummber(1);
ALT_INV_loob(0) <= NOT loob(0);
ALT_INV_nummber(3) <= NOT nummber(3);
\ALT_INV_key_n_r2~q\ <= NOT \key_n_r2~q\;
\ALT_INV_s_segg.s_cheat~q\ <= NOT \s_segg.s_cheat~q\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(1) <= NOT counter(1);
ALT_INV_counter(17) <= NOT counter(17);
ALT_INV_counter(22) <= NOT counter(22);
ALT_INV_counter(21) <= NOT counter(21);
ALT_INV_counter(20) <= NOT counter(20);
ALT_INV_counter(0) <= NOT counter(0);
ALT_INV_counter(19) <= NOT counter(19);
ALT_INV_counter(18) <= NOT counter(18);
ALT_INV_counter(16) <= NOT counter(16);
ALT_INV_counter(15) <= NOT counter(15);
ALT_INV_counter(9) <= NOT counter(9);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(6) <= NOT counter(6);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(14) <= NOT counter(14);
ALT_INV_counter(13) <= NOT counter(13);
ALT_INV_counter(12) <= NOT counter(12);
ALT_INV_counter(11) <= NOT counter(11);
ALT_INV_counter(10) <= NOT counter(10);
ALT_INV_counter(3) <= NOT counter(3);
\ALT_INV_s_segg.s_2~DUPLICATE_q\ <= NOT \s_segg.s_2~DUPLICATE_q\;
\ALT_INV_s_segg.s_1~DUPLICATE_q\ <= NOT \s_segg.s_1~DUPLICATE_q\;
\ALT_INV_s_segg.s_waiting~DUPLICATE_q\ <= NOT \s_segg.s_waiting~DUPLICATE_q\;
\ALT_INV_loob[3]~DUPLICATE_q\ <= NOT \loob[3]~DUPLICATE_q\;
\ALT_INV_loob[0]~DUPLICATE_q\ <= NOT \loob[0]~DUPLICATE_q\;
\ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \counter[1]~DUPLICATE_q\;
\ALT_INV_counter[21]~DUPLICATE_q\ <= NOT \counter[21]~DUPLICATE_q\;
\ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \counter[0]~DUPLICATE_q\;
\ALT_INV_counter[19]~DUPLICATE_q\ <= NOT \counter[19]~DUPLICATE_q\;
\ALT_INV_counter[4]~DUPLICATE_q\ <= NOT \counter[4]~DUPLICATE_q\;
\ALT_INV_key_n[2]~input_o\ <= NOT \key_n[2]~input_o\;
\ALT_INV_key_n[1]~input_o\ <= NOT \key_n[1]~input_o\;
\ALT_INV_s_segg.s_5~q\ <= NOT \s_segg.s_5~q\;
\ALT_INV_s_segg.s_6~q\ <= NOT \s_segg.s_6~q\;
\ALT_INV_s_segg.s_3~q\ <= NOT \s_segg.s_3~q\;
\ALT_INV_s_segg.s_2~q\ <= NOT \s_segg.s_2~q\;

-- Location: IOOBUF_X52_Y0_N2
\ledr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ledr[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_ledr(0));

-- Location: IOOBUF_X52_Y0_N19
\ledr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(1));

-- Location: IOOBUF_X60_Y0_N2
\ledr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(2));

-- Location: IOOBUF_X80_Y0_N2
\ledr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(3));

-- Location: IOOBUF_X60_Y0_N19
\ledr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(4));

-- Location: IOOBUF_X80_Y0_N19
\ledr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(5));

-- Location: IOOBUF_X84_Y0_N2
\ledr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(6));

-- Location: IOOBUF_X89_Y6_N5
\ledr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(7));

-- Location: IOOBUF_X89_Y8_N5
\ledr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(8));

-- Location: IOOBUF_X89_Y6_N22
\ledr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(9));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOIBUF_X32_Y0_N1
\clock_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G6
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

-- Location: IOIBUF_X40_Y0_N1
\key_n[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n(2),
	o => \key_n[2]~input_o\);

-- Location: LABCELL_X51_Y4_N12
\cheat_n_r~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \cheat_n_r~feeder_combout\ = ( \key_n[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_key_n[2]~input_o\,
	combout => \cheat_n_r~feeder_combout\);

-- Location: FF_X51_Y4_N13
cheat_n_r : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \cheat_n_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cheat_n_r~q\);

-- Location: FF_X79_Y7_N23
cheat_n_r2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \cheat_n_r~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cheat_n_r2~q\);

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

-- Location: LABCELL_X70_Y4_N15
\key_n_r~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_n_r~feeder_combout\ = ( \key_n[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_key_n[1]~input_o\,
	combout => \key_n_r~feeder_combout\);

-- Location: FF_X70_Y4_N16
key_n_r : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \key_n_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_n_r~q\);

-- Location: FF_X81_Y7_N26
key_n_r2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \key_n_r~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_n_r2~q\);

-- Location: LABCELL_X80_Y7_N51
\s_segg.s_cheat~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_segg.s_cheat~0_combout\ = ( !\key_n_r2~q\ & ( (!\cheat_n_r2~q\) # (\s_segg.s_cheat~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cheat_n_r2~q\,
	datad => \ALT_INV_s_segg.s_cheat~q\,
	dataf => \ALT_INV_key_n_r2~q\,
	combout => \s_segg.s_cheat~0_combout\);

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

-- Location: FF_X80_Y7_N53
\s_segg.s_cheat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \s_segg.s_cheat~0_combout\,
	clrn => \key_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_segg.s_cheat~q\);

-- Location: LABCELL_X79_Y7_N0
\ledr[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ledr[0]~reg0feeder_combout\ = ( \s_segg.s_cheat~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_s_segg.s_cheat~q\,
	combout => \ledr[0]~reg0feeder_combout\);

-- Location: FF_X79_Y7_N1
\ledr[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \ledr[0]~reg0feeder_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledr[0]~reg0_q\);

-- Location: LABCELL_X81_Y7_N30
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~66\ = CARRY(( \counter[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counter[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X81_Y7_N44
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LABCELL_X81_Y7_N0
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( counter(9) & ( !counter(4) & ( (counter(6) & (!counter(5) & (counter(8) & !counter(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(6),
	datab => ALT_INV_counter(5),
	datac => ALT_INV_counter(8),
	datad => ALT_INV_counter(7),
	datae => ALT_INV_counter(9),
	dataf => ALT_INV_counter(4),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X81_Y6_N6
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( counter(12) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( counter(12) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(12),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X81_Y6_N9
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counter(13) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( counter(13) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(13),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X81_Y6_N11
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LABCELL_X81_Y6_N12
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter(14) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( counter(14) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(14),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X81_Y6_N14
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LABCELL_X81_Y6_N15
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( counter(15) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~50\ = CARRY(( counter(15) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(15),
	cin => \Add0~22\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X81_Y6_N54
\counter[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[15]~feeder_combout\ = ( \Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \counter[15]~feeder_combout\);

-- Location: FF_X81_Y6_N56
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \counter[15]~feeder_combout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: FF_X81_Y7_N32
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LABCELL_X81_Y6_N18
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( counter(16) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( counter(16) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(16),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: MLABCELL_X82_Y7_N0
\counter[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[16]~feeder_combout\ = ( \Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~53_sumout\,
	combout => \counter[16]~feeder_combout\);

-- Location: FF_X82_Y7_N2
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \counter[16]~feeder_combout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: FF_X81_Y6_N29
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LABCELL_X81_Y6_N21
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( counter(17) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~82\ = CARRY(( counter(17) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(17),
	cin => \Add0~54\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: MLABCELL_X82_Y7_N39
\counter[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[17]~feeder_combout\ = ( \Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~81_sumout\,
	combout => \counter[17]~feeder_combout\);

-- Location: FF_X82_Y7_N40
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \counter[17]~feeder_combout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LABCELL_X81_Y6_N24
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( counter(18) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~58\ = CARRY(( counter(18) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(18),
	cin => \Add0~82\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: MLABCELL_X82_Y7_N30
\counter[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[18]~feeder_combout\ = ( \Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~57_sumout\,
	combout => \counter[18]~feeder_combout\);

-- Location: FF_X82_Y7_N31
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \counter[18]~feeder_combout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LABCELL_X81_Y6_N27
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( counter(19) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( counter(19) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(19),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X81_Y6_N28
\counter[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[19]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y6_N30
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( counter(20) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~70\ = CARRY(( counter(20) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(20),
	cin => \Add0~62\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X81_Y6_N31
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LABCELL_X81_Y7_N18
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( counter(18) & ( !counter(20) & ( (!counter(15) & (!counter(0) & (!counter(16) & \counter[19]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(15),
	datab => ALT_INV_counter(0),
	datac => ALT_INV_counter(16),
	datad => \ALT_INV_counter[19]~DUPLICATE_q\,
	datae => ALT_INV_counter(18),
	dataf => ALT_INV_counter(20),
	combout => \Equal0~2_combout\);

-- Location: FF_X81_Y7_N34
\counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y6_N33
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( counter(21) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( counter(21) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(21),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X81_Y6_N35
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LABCELL_X81_Y6_N36
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( counter(22) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(22),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\);

-- Location: FF_X81_Y6_N37
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: FF_X81_Y6_N34
\counter[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[21]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y7_N6
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !counter(17) & ( (!counter(2) & (!\counter[1]~DUPLICATE_q\ & (counter(22) & !\counter[21]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(2),
	datab => \ALT_INV_counter[1]~DUPLICATE_q\,
	datac => ALT_INV_counter(22),
	datad => \ALT_INV_counter[21]~DUPLICATE_q\,
	dataf => ALT_INV_counter(17),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X81_Y7_N12
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \Equal0~3_combout\ & ( (\Equal0~1_combout\ & (!counter(3) & (\Equal0~2_combout\ & \Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => ALT_INV_counter(3),
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X81_Y7_N31
\counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y7_N33
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( counter(1) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~86\ = CARRY(( counter(1) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(1),
	cin => \Add0~66\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X81_Y7_N35
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LABCELL_X81_Y7_N36
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( counter(2) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(2),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X81_Y7_N38
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LABCELL_X81_Y7_N39
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( counter(3) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~2\ = CARRY(( counter(3) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(3),
	cin => \Add0~90\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X81_Y7_N41
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LABCELL_X81_Y7_N42
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~26\ = CARRY(( \counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_counter[4]~DUPLICATE_q\,
	cin => \Add0~2\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X81_Y7_N43
\counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[4]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y7_N45
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counter(5) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( counter(5) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(5),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X81_Y7_N47
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LABCELL_X81_Y7_N48
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( counter(6) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( counter(6) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(6),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X81_Y7_N50
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LABCELL_X81_Y7_N51
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( counter(7) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(7),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X81_Y7_N52
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LABCELL_X81_Y7_N54
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( counter(8) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( counter(8) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(8),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X81_Y7_N56
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LABCELL_X81_Y7_N57
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( counter(9) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( counter(9) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(9),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X81_Y7_N59
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LABCELL_X81_Y6_N0
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( counter(10) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~6\ = CARRY(( counter(10) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(10),
	cin => \Add0~46\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X81_Y6_N2
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LABCELL_X81_Y6_N3
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter(11) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( counter(11) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(11),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X81_Y6_N5
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: FF_X81_Y6_N7
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~4_combout\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LABCELL_X81_Y6_N51
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !counter(10) & ( !counter(13) & ( (!counter(12) & (counter(14) & counter(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(12),
	datac => ALT_INV_counter(14),
	datad => ALT_INV_counter(11),
	datae => ALT_INV_counter(10),
	dataf => ALT_INV_counter(13),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X81_Y7_N24
\loob[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \loob[0]~0_combout\ = ( !\key_n_r2~q\ & ( \Equal0~2_combout\ & ( (\Equal0~0_combout\ & (!counter(3) & (\Equal0~1_combout\ & \Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => ALT_INV_counter(3),
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_key_n_r2~q\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \loob[0]~0_combout\);

-- Location: FF_X80_Y7_N5
\loob[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Equal1~1_combout\,
	clrn => \key_n[0]~input_o\,
	ena => \loob[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loob[0]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y7_N0
\loob[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \loob[1]~3_combout\ = !\loob[0]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_loob[0]~DUPLICATE_q\,
	combout => \loob[1]~3_combout\);

-- Location: FF_X81_Y7_N20
\loob[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \loob[1]~3_combout\,
	clrn => \key_n[0]~input_o\,
	sload => VCC,
	ena => \loob[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => loob(1));

-- Location: FF_X81_Y7_N5
\loob[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => loob(1),
	clrn => \key_n[0]~input_o\,
	sload => VCC,
	ena => \loob[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => loob(2));

-- Location: FF_X80_Y7_N19
\loob[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => loob(2),
	clrn => \key_n[0]~input_o\,
	sload => VCC,
	ena => \loob[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => loob(3));

-- Location: FF_X81_Y7_N23
\loob[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => loob(3),
	clrn => \key_n[0]~input_o\,
	sload => VCC,
	ena => \loob[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => loob(4));

-- Location: FF_X80_Y7_N2
\loob[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => loob(4),
	clrn => \key_n[0]~input_o\,
	sload => VCC,
	ena => \loob[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => loob(5));

-- Location: FF_X80_Y7_N23
\loob[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => loob(5),
	clrn => \key_n[0]~input_o\,
	sload => VCC,
	ena => \loob[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => loob(6));

-- Location: LABCELL_X80_Y7_N30
\loob~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \loob~1_combout\ = ( \Equal1~0_combout\ & ( (loob(6) & ((!\loob[0]~DUPLICATE_q\) # ((loob(2)) # (loob(1))))) ) ) # ( !\Equal1~0_combout\ & ( loob(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000101111110000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_loob[0]~DUPLICATE_q\,
	datab => ALT_INV_loob(1),
	datac => ALT_INV_loob(2),
	datad => ALT_INV_loob(6),
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \loob~1_combout\);

-- Location: FF_X81_Y7_N1
\loob[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \loob~1_combout\,
	clrn => \key_n[0]~input_o\,
	sload => VCC,
	ena => \loob[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => loob(7));

-- Location: FF_X80_Y7_N20
\loob[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => loob(2),
	clrn => \key_n[0]~input_o\,
	sload => VCC,
	ena => \loob[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \loob[3]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y7_N21
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !loob(5) & ( !\loob[3]~DUPLICATE_q\ & ( (loob(6) & (!loob(7) & !loob(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_loob(6),
	datac => ALT_INV_loob(7),
	datad => ALT_INV_loob(4),
	datae => ALT_INV_loob(5),
	dataf => \ALT_INV_loob[3]~DUPLICATE_q\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X80_Y7_N3
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( \Equal1~0_combout\ & ( ((!loob(0)) # (loob(1))) # (loob(2)) ) ) # ( !\Equal1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_loob(2),
	datac => ALT_INV_loob(1),
	datad => ALT_INV_loob(0),
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: FF_X80_Y7_N4
\loob[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \Equal1~1_combout\,
	clrn => \key_n[0]~input_o\,
	ena => \loob[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => loob(0));

-- Location: LABCELL_X80_Y7_N57
\s_segg~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_segg~14_combout\ = ( !\key_n_r2~q\ & ( (\cheat_n_r2~q\ & \s_segg.s_1~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cheat_n_r2~q\,
	datad => \ALT_INV_s_segg.s_1~DUPLICATE_q\,
	dataf => \ALT_INV_key_n_r2~q\,
	combout => \s_segg~14_combout\);

-- Location: FF_X80_Y7_N59
\s_segg.s_2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \s_segg~14_combout\,
	clrn => \key_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_segg.s_2~DUPLICATE_q\);

-- Location: LABCELL_X80_Y7_N15
\s_segg~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_segg~15_combout\ = ( !\key_n_r2~q\ & ( (\s_segg.s_2~DUPLICATE_q\ & \cheat_n_r2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s_segg.s_2~DUPLICATE_q\,
	datad => \ALT_INV_cheat_n_r2~q\,
	dataf => \ALT_INV_key_n_r2~q\,
	combout => \s_segg~15_combout\);

-- Location: FF_X80_Y7_N17
\s_segg.s_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \s_segg~15_combout\,
	clrn => \key_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_segg.s_3~q\);

-- Location: LABCELL_X80_Y7_N12
\s_segg~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_segg~12_combout\ = ( !\key_n_r2~q\ & ( (\s_segg.s_3~q\ & \cheat_n_r2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s_segg.s_3~q\,
	datad => \ALT_INV_cheat_n_r2~q\,
	dataf => \ALT_INV_key_n_r2~q\,
	combout => \s_segg~12_combout\);

-- Location: FF_X80_Y7_N13
\s_segg.s_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \s_segg~12_combout\,
	clrn => \key_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_segg.s_4~q\);

-- Location: LABCELL_X81_Y7_N15
\s_segg~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_segg~17_combout\ = ( !\key_n_r2~q\ & ( (\cheat_n_r2~q\ & \s_segg.s_4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_cheat_n_r2~q\,
	datad => \ALT_INV_s_segg.s_4~q\,
	dataf => \ALT_INV_key_n_r2~q\,
	combout => \s_segg~17_combout\);

-- Location: FF_X81_Y7_N17
\s_segg.s_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \s_segg~17_combout\,
	clrn => \key_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_segg.s_5~q\);

-- Location: LABCELL_X81_Y7_N9
\s_segg~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_segg~16_combout\ = ( !\key_n_r2~q\ & ( (\s_segg.s_5~q\ & \cheat_n_r2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s_segg.s_5~q\,
	datad => \ALT_INV_cheat_n_r2~q\,
	dataf => \ALT_INV_key_n_r2~q\,
	combout => \s_segg~16_combout\);

-- Location: FF_X81_Y7_N11
\s_segg.s_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \s_segg~16_combout\,
	clrn => \key_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_segg.s_6~q\);

-- Location: LABCELL_X80_Y7_N48
\s_segg.s_waiting~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_segg.s_waiting~0_combout\ = ( !\key_n_r2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_key_n_r2~q\,
	combout => \s_segg.s_waiting~0_combout\);

-- Location: FF_X80_Y7_N49
\s_segg.s_waiting~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \s_segg.s_waiting~0_combout\,
	clrn => \key_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_segg.s_waiting~DUPLICATE_q\);

-- Location: LABCELL_X80_Y7_N54
\s_segg~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_segg~13_combout\ = ( !\key_n_r2~q\ & ( (\cheat_n_r2~q\ & ((!\s_segg.s_waiting~DUPLICATE_q\) # (\s_segg.s_6~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000011001100110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_cheat_n_r2~q\,
	datac => \ALT_INV_s_segg.s_6~q\,
	datad => \ALT_INV_s_segg.s_waiting~DUPLICATE_q\,
	dataf => \ALT_INV_key_n_r2~q\,
	combout => \s_segg~13_combout\);

-- Location: FF_X80_Y7_N55
\s_segg.s_1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \s_segg~13_combout\,
	clrn => \key_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_segg.s_1~DUPLICATE_q\);

-- Location: LABCELL_X80_Y7_N33
WideOr2 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = ( !\s_segg.s_4~q\ & ( (!\s_segg.s_1~DUPLICATE_q\ & \s_segg.s_waiting~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s_segg.s_1~DUPLICATE_q\,
	datad => \ALT_INV_s_segg.s_waiting~DUPLICATE_q\,
	dataf => \ALT_INV_s_segg.s_4~q\,
	combout => \WideOr2~combout\);

-- Location: FF_X80_Y7_N34
\nummber[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WideOr2~combout\,
	clrn => \key_n[0]~input_o\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nummber(3));

-- Location: LABCELL_X83_Y7_N48
\HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~0_combout\ = ( loob(0) & ( nummber(3) & ( !\key_n_r2~q\ ) ) ) # ( loob(0) & ( !nummber(3) ) ) # ( !loob(0) & ( !nummber(3) & ( \key_n_r2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key_n_r2~q\,
	datae => ALT_INV_loob(0),
	dataf => ALT_INV_nummber(3),
	combout => \HEX0~0_combout\);

-- Location: FF_X83_Y7_N49
\HEX0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \HEX0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[0]~reg0_q\);

-- Location: FF_X80_Y7_N58
\s_segg.s_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \s_segg~14_combout\,
	clrn => \key_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_segg.s_2~q\);

-- Location: LABCELL_X80_Y7_N6
WideOr4 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = ( \s_segg.s_4~q\ ) # ( !\s_segg.s_4~q\ & ( (\s_segg.s_2~q\) # (\s_segg.s_3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s_segg.s_3~q\,
	datac => \ALT_INV_s_segg.s_2~q\,
	dataf => \ALT_INV_s_segg.s_4~q\,
	combout => \WideOr4~combout\);

-- Location: FF_X80_Y7_N7
\nummber[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WideOr4~combout\,
	clrn => \key_n[0]~input_o\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nummber(1));

-- Location: LABCELL_X80_Y7_N36
\HEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~1_combout\ = ( nummber(1) & ( (!loob(1) & !\key_n_r2~q\) ) ) # ( !nummber(1) & ( (!loob(1)) # (\key_n_r2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_loob(1),
	datac => \ALT_INV_key_n_r2~q\,
	dataf => ALT_INV_nummber(1),
	combout => \HEX0~1_combout\);

-- Location: FF_X80_Y7_N37
\HEX0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \HEX0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[1]~reg0_q\);

-- Location: FF_X80_Y7_N56
\s_segg.s_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \s_segg~13_combout\,
	clrn => \key_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_segg.s_1~q\);

-- Location: LABCELL_X80_Y7_N27
WideOr3 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = ( !\s_segg.s_2~DUPLICATE_q\ & ( (!\s_segg.s_1~q\ & \s_segg.s_waiting~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s_segg.s_1~q\,
	datad => \ALT_INV_s_segg.s_waiting~DUPLICATE_q\,
	dataf => \ALT_INV_s_segg.s_2~DUPLICATE_q\,
	combout => \WideOr3~combout\);

-- Location: FF_X80_Y7_N29
\nummber[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WideOr3~combout\,
	clrn => \key_n[0]~input_o\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nummber(2));

-- Location: LABCELL_X80_Y7_N42
\HEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~2_combout\ = ( \key_n_r2~q\ & ( !nummber(2) ) ) # ( !\key_n_r2~q\ & ( !loob(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_nummber(2),
	datad => ALT_INV_loob(2),
	dataf => \ALT_INV_key_n_r2~q\,
	combout => \HEX0~2_combout\);

-- Location: FF_X80_Y7_N43
\HEX0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \HEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[2]~reg0_q\);

-- Location: LABCELL_X83_Y7_N21
\HEX0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~3_combout\ = ( !loob(3) & ( nummber(3) & ( !\key_n_r2~q\ ) ) ) # ( loob(3) & ( !nummber(3) & ( \key_n_r2~q\ ) ) ) # ( !loob(3) & ( !nummber(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100110011001111001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key_n_r2~q\,
	datae => ALT_INV_loob(3),
	dataf => ALT_INV_nummber(3),
	combout => \HEX0~3_combout\);

-- Location: FF_X83_Y7_N22
\HEX0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \HEX0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[3]~reg0_q\);

-- Location: LABCELL_X80_Y7_N24
WideOr1 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = ( \s_segg.s_2~DUPLICATE_q\ ) # ( !\s_segg.s_2~DUPLICATE_q\ & ( ((\s_segg.s_6~q\) # (\s_segg.s_cheat~q\)) # (\s_segg.s_1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s_segg.s_1~q\,
	datac => \ALT_INV_s_segg.s_cheat~q\,
	datad => \ALT_INV_s_segg.s_6~q\,
	dataf => \ALT_INV_s_segg.s_2~DUPLICATE_q\,
	combout => \WideOr1~combout\);

-- Location: FF_X80_Y7_N25
\nummber[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WideOr1~combout\,
	clrn => \key_n[0]~input_o\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nummber(4));

-- Location: LABCELL_X80_Y7_N45
\HEX0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~4_combout\ = ( nummber(4) & ( (!loob(4) & !\key_n_r2~q\) ) ) # ( !nummber(4) & ( (!loob(4)) # (\key_n_r2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_loob(4),
	datac => \ALT_INV_key_n_r2~q\,
	dataf => ALT_INV_nummber(4),
	combout => \HEX0~4_combout\);

-- Location: FF_X80_Y7_N46
\HEX0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \HEX0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[4]~reg0_q\);

-- Location: LABCELL_X80_Y7_N9
WideOr0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ( !\s_segg.s_2~DUPLICATE_q\ & ( (!\s_segg.s_3~q\ & \s_segg.s_waiting~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s_segg.s_3~q\,
	datad => \ALT_INV_s_segg.s_waiting~DUPLICATE_q\,
	dataf => \ALT_INV_s_segg.s_2~DUPLICATE_q\,
	combout => \WideOr0~combout\);

-- Location: FF_X80_Y7_N11
\nummber[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WideOr0~combout\,
	clrn => \key_n[0]~input_o\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nummber(5));

-- Location: LABCELL_X80_Y7_N39
\HEX0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~5_combout\ = ( \key_n_r2~q\ & ( !nummber(5) ) ) # ( !\key_n_r2~q\ & ( !loob(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_loob(5),
	datac => ALT_INV_nummber(5),
	dataf => \ALT_INV_key_n_r2~q\,
	combout => \HEX0~5_combout\);

-- Location: FF_X80_Y7_N40
\HEX0[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \HEX0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[5]~reg0_q\);

-- Location: FF_X80_Y7_N50
\s_segg.s_waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \s_segg.s_waiting~0_combout\,
	clrn => \key_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_segg.s_waiting~q\);

-- Location: LABCELL_X79_Y7_N15
\nummber~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \nummber~2_combout\ = ( \s_segg.s_waiting~q\ & ( !\s_segg.s_1~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_s_segg.s_waiting~q\,
	dataf => \ALT_INV_s_segg.s_1~DUPLICATE_q\,
	combout => \nummber~2_combout\);

-- Location: FF_X79_Y7_N17
\nummber[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \nummber~2_combout\,
	clrn => \key_n[0]~input_o\,
	ena => \ALT_INV_key_n_r2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nummber(6));

-- Location: LABCELL_X79_Y7_N18
\HEX0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~6_combout\ = ( nummber(6) & ( !\key_n_r2~q\ ) ) # ( !nummber(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_key_n_r2~q\,
	dataf => ALT_INV_nummber(6),
	combout => \HEX0~6_combout\);

-- Location: FF_X79_Y7_N19
\HEX0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \HEX0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[6]~reg0_q\);

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

-- Location: IOIBUF_X26_Y0_N92
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N52
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X88_Y0_N36
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X89_Y13_N4
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X8_Y81_N35
\sw[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\sw[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: IOIBUF_X26_Y81_N41
\key_n[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n(3),
	o => \key_n[3]~input_o\);

-- Location: LABCELL_X83_Y10_N3
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


