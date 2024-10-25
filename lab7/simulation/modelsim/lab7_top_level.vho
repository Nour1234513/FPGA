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

-- DATE "03/03/2024 22:04:32"

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

ENTITY 	lab7_top_level IS
    PORT (
	clock_50 : IN std_logic;
	key_n : IN std_logic_vector(3 DOWNTO 0);
	fpga_in_rx : IN std_logic;
	fpga_out_tx : OUT std_logic;
	ledr : OUT std_logic_vector(9 DOWNTO 0);
	ledg : OUT std_logic_vector(7 DOWNTO 0);
	hex0_n : OUT std_logic_vector(6 DOWNTO 0);
	hex1_n : OUT std_logic_vector(6 DOWNTO 0);
	hex2_n : OUT std_logic_vector(6 DOWNTO 0);
	hex3_n : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab7_top_level;

-- Design Ports Information
-- fpga_out_tx	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[0]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[1]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[2]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[3]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[5]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[6]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[7]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_n[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_n[1]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_n[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_n[3]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_n[4]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_n[5]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0_n[6]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_n[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_n[1]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_n[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_n[3]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_n[4]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_n[5]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1_n[6]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2_n[0]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2_n[1]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2_n[2]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2_n[3]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2_n[4]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2_n[5]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2_n[6]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3_n[0]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3_n[1]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3_n[2]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3_n[3]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3_n[4]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3_n[5]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3_n[6]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fpga_in_rx	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[1]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[0]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[2]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_n[3]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7_top_level IS
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
SIGNAL ww_key_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_fpga_in_rx : std_logic;
SIGNAL ww_fpga_out_tx : std_logic;
SIGNAL ww_ledr : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex0_n : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1_n : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2_n : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3_n : std_logic_vector(6 DOWNTO 0);
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \pwm|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pwm|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm|Mult0~8_AX_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pwm|Mult0~8_AY_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pwm|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm|Mult0~31\ : std_logic;
SIGNAL \pwm|Mult0~32\ : std_logic;
SIGNAL \pwm|Mult0~33\ : std_logic;
SIGNAL \pwm|Mult0~34\ : std_logic;
SIGNAL \pwm|Mult0~35\ : std_logic;
SIGNAL \pwm|Mult0~36\ : std_logic;
SIGNAL \pwm|Mult0~37\ : std_logic;
SIGNAL \pwm|Mult0~38\ : std_logic;
SIGNAL \pwm|Mult0~39\ : std_logic;
SIGNAL \pwm|Mult0~40\ : std_logic;
SIGNAL \pwm|Mult0~41\ : std_logic;
SIGNAL \pwm|Mult0~42\ : std_logic;
SIGNAL \pwm|Mult0~43\ : std_logic;
SIGNAL \pwm|Mult0~44\ : std_logic;
SIGNAL \pwm|Mult0~45\ : std_logic;
SIGNAL \pwm|Mult0~46\ : std_logic;
SIGNAL \pwm|Mult0~47\ : std_logic;
SIGNAL \pwm|Mult0~48\ : std_logic;
SIGNAL \pwm|Mult0~49\ : std_logic;
SIGNAL \pwm|Mult0~50\ : std_logic;
SIGNAL \pwm|Mult0~51\ : std_logic;
SIGNAL \pwm|Mult0~52\ : std_logic;
SIGNAL \pwm|Mult0~53\ : std_logic;
SIGNAL \pwm|Mult0~54\ : std_logic;
SIGNAL \pwm|Mult0~55\ : std_logic;
SIGNAL \pwm|Mult0~56\ : std_logic;
SIGNAL \pwm|Mult0~57\ : std_logic;
SIGNAL \pwm|Mult0~58\ : std_logic;
SIGNAL \pwm|Mult0~59\ : std_logic;
SIGNAL \pwm|Mult0~60\ : std_logic;
SIGNAL \pwm|Mult0~61\ : std_logic;
SIGNAL \pwm|Mult0~62\ : std_logic;
SIGNAL \pwm|Mult0~63\ : std_logic;
SIGNAL \pwm|Mult0~64\ : std_logic;
SIGNAL \pwm|Mult0~65\ : std_logic;
SIGNAL \pwm|Mult0~66\ : std_logic;
SIGNAL \pwm|Mult0~67\ : std_logic;
SIGNAL \pwm|Mult0~68\ : std_logic;
SIGNAL \pwm|Mult0~69\ : std_logic;
SIGNAL \pwm|Mult0~70\ : std_logic;
SIGNAL \pwm|Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \clock_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~14\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~17_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~18\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~1_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~2\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~5_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~6\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~21_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~22\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~25_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~26\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~29_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~30\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~33_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|LessThan0~1_combout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|reset_cnt[0]~0_combout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~9_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~10\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|Add0~13_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|LessThan0~0_combout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|LessThan0~2_combout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|startup_reset_out~feeder_combout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|startup_reset_out~q\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\ : std_logic;
SIGNAL \uart|Add3~21_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|Add0~5_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt[0]~0_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|Add0~6\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|Add0~1_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|Add0~2\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|Add0~21_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|Add0~22\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|Add0~17_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|Add0~18\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|Add0~13_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|Add0~14\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|Add0~9_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|LessThan0~0_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_out~0_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|reset_out~q\ : std_logic;
SIGNAL \uart|reset_r~0_combout\ : std_logic;
SIGNAL \uart|reset_r~q\ : std_logic;
SIGNAL \uart|reset_2r~q\ : std_logic;
SIGNAL \uart|tx_state~7_combout\ : std_logic;
SIGNAL \uart|tx_state.s_idle~q\ : std_logic;
SIGNAL \pwm|pwm_state.pwm_idel~DUPLICATE_q\ : std_logic;
SIGNAL \key_n[2]~input_o\ : std_logic;
SIGNAL \key_ctrl|key_n_r[2]~feeder_combout\ : std_logic;
SIGNAL \key_ctrl|key_n_r2[2]~feeder_combout\ : std_logic;
SIGNAL \key_n[0]~input_o\ : std_logic;
SIGNAL \key_ctrl|key_n_r[0]~feeder_combout\ : std_logic;
SIGNAL \key_ctrl|key_n_r2[0]~feeder_combout\ : std_logic;
SIGNAL \key_n[1]~input_o\ : std_logic;
SIGNAL \key_n[3]~input_o\ : std_logic;
SIGNAL \key_ctrl|key_n_r[3]~feeder_combout\ : std_logic;
SIGNAL \key_ctrl|key_n_r2[3]~feeder_combout\ : std_logic;
SIGNAL \key_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \key_ctrl|cnt_enabled_t~q\ : std_logic;
SIGNAL \key_ctrl|Add0~73_sumout\ : std_logic;
SIGNAL \key_ctrl|Add0~74\ : std_logic;
SIGNAL \key_ctrl|Add0~69_sumout\ : std_logic;
SIGNAL \key_ctrl|counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|Add0~70\ : std_logic;
SIGNAL \key_ctrl|Add0~6\ : std_logic;
SIGNAL \key_ctrl|Add0~9_sumout\ : std_logic;
SIGNAL \key_ctrl|Add0~10\ : std_logic;
SIGNAL \key_ctrl|Add0~37_sumout\ : std_logic;
SIGNAL \key_ctrl|counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|Add0~38\ : std_logic;
SIGNAL \key_ctrl|Add0~1_sumout\ : std_logic;
SIGNAL \key_ctrl|Add0~2\ : std_logic;
SIGNAL \key_ctrl|Add0~17_sumout\ : std_logic;
SIGNAL \key_ctrl|Add0~18\ : std_logic;
SIGNAL \key_ctrl|Add0~65_sumout\ : std_logic;
SIGNAL \key_ctrl|Add0~66\ : std_logic;
SIGNAL \key_ctrl|Add0~21_sumout\ : std_logic;
SIGNAL \key_ctrl|Add0~22\ : std_logic;
SIGNAL \key_ctrl|Add0~25_sumout\ : std_logic;
SIGNAL \key_ctrl|Add0~26\ : std_logic;
SIGNAL \key_ctrl|Add0~61_sumout\ : std_logic;
SIGNAL \key_ctrl|counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|Add0~62\ : std_logic;
SIGNAL \key_ctrl|Add0~57_sumout\ : std_logic;
SIGNAL \key_ctrl|Add0~58\ : std_logic;
SIGNAL \key_ctrl|Add0~45_sumout\ : std_logic;
SIGNAL \key_ctrl|Add0~46\ : std_logic;
SIGNAL \key_ctrl|Add0~53_sumout\ : std_logic;
SIGNAL \key_ctrl|counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|Equal1~2_combout\ : std_logic;
SIGNAL \key_ctrl|Add0~54\ : std_logic;
SIGNAL \key_ctrl|Add0~49_sumout\ : std_logic;
SIGNAL \key_ctrl|counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|Add0~50\ : std_logic;
SIGNAL \key_ctrl|Add0~13_sumout\ : std_logic;
SIGNAL \key_ctrl|Add0~14\ : std_logic;
SIGNAL \key_ctrl|Add0~41_sumout\ : std_logic;
SIGNAL \key_ctrl|Add0~42\ : std_logic;
SIGNAL \key_ctrl|Add0~33_sumout\ : std_logic;
SIGNAL \key_ctrl|counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|Add0~34\ : std_logic;
SIGNAL \key_ctrl|Add0~29_sumout\ : std_logic;
SIGNAL \key_ctrl|Equal1~1_combout\ : std_logic;
SIGNAL \key_ctrl|key_off~1_combout\ : std_logic;
SIGNAL \key_ctrl|Add0~5_sumout\ : std_logic;
SIGNAL \key_ctrl|counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|Equal1~0_combout\ : std_logic;
SIGNAL \key_ctrl|key_up~0_combout\ : std_logic;
SIGNAL \key_ctrl|key_up~q\ : std_logic;
SIGNAL \uart|Add2~29_sumout\ : std_logic;
SIGNAL \uart|rx_bit_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|LessThan0~0_combout\ : std_logic;
SIGNAL \uart|rx_bit_cnt_wrap~q\ : std_logic;
SIGNAL \uart|rx_state.s_stop_bit~DUPLICATE_q\ : std_logic;
SIGNAL \uart|rx_bit_cnt_half~0_combout\ : std_logic;
SIGNAL \uart|rx_bit_cnt_en~q\ : std_logic;
SIGNAL \uart|Add2~2\ : std_logic;
SIGNAL \uart|Add2~5_sumout\ : std_logic;
SIGNAL \uart|rx_bit_cnt_half~1_combout\ : std_logic;
SIGNAL \uart|rx_bit_cnt_half~q\ : std_logic;
SIGNAL \uart|rx_state~10_combout\ : std_logic;
SIGNAL \uart|rx_state.s_idle~q\ : std_logic;
SIGNAL \fpga_in_rx~input_o\ : std_logic;
SIGNAL \uart|rx_r~q\ : std_logic;
SIGNAL \uart|rx_2r~feeder_combout\ : std_logic;
SIGNAL \uart|rx_2r~q\ : std_logic;
SIGNAL \uart|Selector0~0_combout\ : std_logic;
SIGNAL \uart|rx_bit_cnt_en~DUPLICATE_q\ : std_logic;
SIGNAL \uart|rx_bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \uart|Add2~30\ : std_logic;
SIGNAL \uart|Add2~33_sumout\ : std_logic;
SIGNAL \uart|Add2~34\ : std_logic;
SIGNAL \uart|Add2~21_sumout\ : std_logic;
SIGNAL \uart|Add2~22\ : std_logic;
SIGNAL \uart|Add2~25_sumout\ : std_logic;
SIGNAL \uart|Add2~26\ : std_logic;
SIGNAL \uart|Add2~17_sumout\ : std_logic;
SIGNAL \uart|Add2~18\ : std_logic;
SIGNAL \uart|Add2~13_sumout\ : std_logic;
SIGNAL \uart|Add2~14\ : std_logic;
SIGNAL \uart|Add2~9_sumout\ : std_logic;
SIGNAL \uart|Add2~10\ : std_logic;
SIGNAL \uart|Add2~1_sumout\ : std_logic;
SIGNAL \uart|rx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \uart|rx_bit_cnt_wrap~DUPLICATE_q\ : std_logic;
SIGNAL \uart|rx_state.s_rx_data~DUPLICATE_q\ : std_logic;
SIGNAL \uart|rx_bit_no[0]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|Selector12~0_combout\ : std_logic;
SIGNAL \uart|rx_bit_no~0_combout\ : std_logic;
SIGNAL \uart|Selector14~0_combout\ : std_logic;
SIGNAL \uart|Selector13~0_combout\ : std_logic;
SIGNAL \uart|Selector2~0_combout\ : std_logic;
SIGNAL \uart|Selector2~1_combout\ : std_logic;
SIGNAL \uart|rx_state.s_rx_data~q\ : std_logic;
SIGNAL \uart|rx_bit_no[1]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|Selector4~0_combout\ : std_logic;
SIGNAL \uart|rx_state.s_stop_bit~q\ : std_logic;
SIGNAL \uart|Selector5~0_combout\ : std_logic;
SIGNAL \uart|Selector6~0_combout\ : std_logic;
SIGNAL \uart|Selector7~0_combout\ : std_logic;
SIGNAL \uart|Selector8~0_combout\ : std_logic;
SIGNAL \uart|Selector9~0_combout\ : std_logic;
SIGNAL \uart|Selector10~0_combout\ : std_logic;
SIGNAL \uart|Selector11~0_combout\ : std_logic;
SIGNAL \uart|received_data[0]~feeder_combout\ : std_logic;
SIGNAL \uart|received_data[5]~0_combout\ : std_logic;
SIGNAL \uart|rx_byte_int[2]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|received_data[2]~feeder_combout\ : std_logic;
SIGNAL \uart|received_data[4]~feeder_combout\ : std_logic;
SIGNAL \uart|received_data[4]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|received_data[3]~feeder_combout\ : std_logic;
SIGNAL \uart|received_data_valid~0_combout\ : std_logic;
SIGNAL \uart|received_data_valid~q\ : std_logic;
SIGNAL \serial_ctrl|key_on~0_combout\ : std_logic;
SIGNAL \serial_ctrl|key_up~0_combout\ : std_logic;
SIGNAL \serial_ctrl|key_up~q\ : std_logic;
SIGNAL \uart|rx_byte_int[5]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|received_data[5]~feeder_combout\ : std_logic;
SIGNAL \serial_ctrl|key_off~0_combout\ : std_logic;
SIGNAL \serial_ctrl|key_off~q\ : std_logic;
SIGNAL \key_ctrl|key_off~0_combout\ : std_logic;
SIGNAL \key_ctrl|key_off~q\ : std_logic;
SIGNAL \key_ctrl|key_on~0_combout\ : std_logic;
SIGNAL \key_ctrl|key_on~q\ : std_logic;
SIGNAL \serial_ctrl|key_on~1_combout\ : std_logic;
SIGNAL \serial_ctrl|key_on~q\ : std_logic;
SIGNAL \pwm|Selector10~1_combout\ : std_logic;
SIGNAL \pwm|Add1~29_sumout\ : std_logic;
SIGNAL \pwm|pwm_state.pwm_down~DUPLICATE_q\ : std_logic;
SIGNAL \pwm|duty_cycle[2]~1_combout\ : std_logic;
SIGNAL \pwm|Add0~25_sumout\ : std_logic;
SIGNAL \pwm|Selector6~0_combout\ : std_logic;
SIGNAL \pwm|Add0~18\ : std_logic;
SIGNAL \pwm|Add0~5_sumout\ : std_logic;
SIGNAL \pwm|Add0~2\ : std_logic;
SIGNAL \pwm|Add0~9_sumout\ : std_logic;
SIGNAL \pwm|Add0~26\ : std_logic;
SIGNAL \pwm|Add0~29_sumout\ : std_logic;
SIGNAL \pwm|LessThan0~0_combout\ : std_logic;
SIGNAL \pwm|LessThan0~1_combout\ : std_logic;
SIGNAL \pwm|Add1~13_sumout\ : std_logic;
SIGNAL \pwm|Add1~22\ : std_logic;
SIGNAL \pwm|Add1~25_sumout\ : std_logic;
SIGNAL \pwm|Add1~9_sumout\ : std_logic;
SIGNAL \pwm|Add1~26\ : std_logic;
SIGNAL \pwm|Add1~17_sumout\ : std_logic;
SIGNAL \pwm|LessThan1~1_combout\ : std_logic;
SIGNAL \pwm|LessThan1~0_combout\ : std_logic;
SIGNAL \pwm|Selector12~0_combout\ : std_logic;
SIGNAL \pwm|pwm_state.pwm_refresh_dc~q\ : std_logic;
SIGNAL \pwm|Selector29~1_combout\ : std_logic;
SIGNAL \pwm|duty_cycle[2]~2_combout\ : std_logic;
SIGNAL \pwm|duty_cycle[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|Add1~30\ : std_logic;
SIGNAL \pwm|Add1~21_sumout\ : std_logic;
SIGNAL \pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\ : std_logic;
SIGNAL \pwm|Selector29~0_combout\ : std_logic;
SIGNAL \pwm|p_main:pwm_active~feeder_combout\ : std_logic;
SIGNAL \pwm|p_main:pwm_active~q\ : std_logic;
SIGNAL \pwm|duty_cycle[2]~3_combout\ : std_logic;
SIGNAL \pwm|Selector5~0_combout\ : std_logic;
SIGNAL \pwm|duty_cycle[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|Add0~30\ : std_logic;
SIGNAL \pwm|Add0~21_sumout\ : std_logic;
SIGNAL \pwm|previous_duty_cycle[2]~2_combout\ : std_logic;
SIGNAL \pwm|Selector4~0_combout\ : std_logic;
SIGNAL \pwm|duty_cycle[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|Add0~22\ : std_logic;
SIGNAL \pwm|Add0~17_sumout\ : std_logic;
SIGNAL \pwm|Selector3~0_combout\ : std_logic;
SIGNAL \pwm|duty_cycle[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|Add1~18\ : std_logic;
SIGNAL \pwm|Add1~10\ : std_logic;
SIGNAL \pwm|Add1~14\ : std_logic;
SIGNAL \pwm|Add1~6\ : std_logic;
SIGNAL \pwm|Add1~1_sumout\ : std_logic;
SIGNAL \pwm|Selector9~0_combout\ : std_logic;
SIGNAL \pwm|Selector9~1_combout\ : std_logic;
SIGNAL \pwm|pwm_state.pwm_up~q\ : std_logic;
SIGNAL \pwm|duty_cycle[2]~0_combout\ : std_logic;
SIGNAL \pwm|Selector2~0_combout\ : std_logic;
SIGNAL \pwm|duty_cycle[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|Add0~6\ : std_logic;
SIGNAL \pwm|Add0~13_sumout\ : std_logic;
SIGNAL \pwm|previous_duty_cycle[5]~1_combout\ : std_logic;
SIGNAL \pwm|Selector1~0_combout\ : std_logic;
SIGNAL \pwm|duty_cycle[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|Add0~14\ : std_logic;
SIGNAL \pwm|Add0~1_sumout\ : std_logic;
SIGNAL \pwm|previous_duty_cycle[6]~0_combout\ : std_logic;
SIGNAL \pwm|Selector0~0_combout\ : std_logic;
SIGNAL \pwm|duty_cycle[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|Add1~5_sumout\ : std_logic;
SIGNAL \serial_ctrl|key_down~0_combout\ : std_logic;
SIGNAL \serial_ctrl|key_down~q\ : std_logic;
SIGNAL \key_ctrl|key_down~0_combout\ : std_logic;
SIGNAL \key_ctrl|key_down~q\ : std_logic;
SIGNAL \pwm|Selector10~0_combout\ : std_logic;
SIGNAL \pwm|Selector10~2_combout\ : std_logic;
SIGNAL \pwm|pwm_state.pwm_down~q\ : std_logic;
SIGNAL \pwm|Selector8~0_combout\ : std_logic;
SIGNAL \pwm|Selector8~1_combout\ : std_logic;
SIGNAL \pwm|pwm_state.pwm_off~q\ : std_logic;
SIGNAL \pwm|p_main~0_combout\ : std_logic;
SIGNAL \pwm|Selector7~0_combout\ : std_logic;
SIGNAL \pwm|pwm_state.pwm_on~q\ : std_logic;
SIGNAL \pwm|Selector11~0_combout\ : std_logic;
SIGNAL \pwm|Selector11~1_combout\ : std_logic;
SIGNAL \pwm|Selector11~2_combout\ : std_logic;
SIGNAL \pwm|pwm_state.pwm_idel~q\ : std_logic;
SIGNAL \pwm|current_dc_update~q\ : std_logic;
SIGNAL \pwm|Selector30~0_combout\ : std_logic;
SIGNAL \pwm|current_dc_update~DUPLICATE_q\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|addr_valid~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|addr_valid~q\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|rom_data_valid~q\ : std_logic;
SIGNAL \c_disp_ctrl|Mux27~1_combout\ : std_logic;
SIGNAL \c_disp_ctrl|send_x~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Equal1~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|send_x~1_combout\ : std_logic;
SIGNAL \c_disp_ctrl|send_x[0]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|transmit_ready_int~q\ : std_logic;
SIGNAL \c_disp_ctrl|transmit_valid~q\ : std_logic;
SIGNAL \uart|Selector25~0_combout\ : std_logic;
SIGNAL \uart|transmit_ready_int~DUPLICATE_q\ : std_logic;
SIGNAL \c_disp_ctrl|send_x[2]~DUPLICATE_q\ : std_logic;
SIGNAL \c_disp_ctrl|send_data~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|send_data~1_combout\ : std_logic;
SIGNAL \c_disp_ctrl|send_data~q\ : std_logic;
SIGNAL \c_disp_ctrl|wait_one_clockCycle~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|wait_one_clockCycle~q\ : std_logic;
SIGNAL \c_disp_ctrl|transmit_valid~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|transmit_valid~DUPLICATE_q\ : std_logic;
SIGNAL \uart|Selector30~0_combout\ : std_logic;
SIGNAL \uart|tx_bit_cnt_en~q\ : std_logic;
SIGNAL \uart|LessThan2~0_combout\ : std_logic;
SIGNAL \uart|Add3~2\ : std_logic;
SIGNAL \uart|Add3~5_sumout\ : std_logic;
SIGNAL \uart|tx_bit_cnt[4]~0_combout\ : std_logic;
SIGNAL \uart|Add3~22\ : std_logic;
SIGNAL \uart|Add3~25_sumout\ : std_logic;
SIGNAL \uart|Add3~26\ : std_logic;
SIGNAL \uart|Add3~29_sumout\ : std_logic;
SIGNAL \uart|Add3~30\ : std_logic;
SIGNAL \uart|Add3~33_sumout\ : std_logic;
SIGNAL \uart|Add3~34\ : std_logic;
SIGNAL \uart|Add3~13_sumout\ : std_logic;
SIGNAL \uart|Add3~14\ : std_logic;
SIGNAL \uart|Add3~17_sumout\ : std_logic;
SIGNAL \uart|Add3~18\ : std_logic;
SIGNAL \uart|Add3~9_sumout\ : std_logic;
SIGNAL \uart|Add3~10\ : std_logic;
SIGNAL \uart|Add3~1_sumout\ : std_logic;
SIGNAL \uart|tx_bit_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|tx_bit_cnt_wrap~0_combout\ : std_logic;
SIGNAL \uart|tx_bit_cnt_wrap~q\ : std_logic;
SIGNAL \uart|Selector27~0_combout\ : std_logic;
SIGNAL \uart|tx_state.s_start_bit~q\ : std_logic;
SIGNAL \uart|Selector32~0_combout\ : std_logic;
SIGNAL \uart|Selector31~0_combout\ : std_logic;
SIGNAL \uart|tx_bit_no[2]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|tx_bit_no~0_combout\ : std_logic;
SIGNAL \uart|Selector33~0_combout\ : std_logic;
SIGNAL \uart|Selector28~0_combout\ : std_logic;
SIGNAL \uart|tx_state.s_tx_data~q\ : std_logic;
SIGNAL \uart|Selector29~0_combout\ : std_logic;
SIGNAL \uart|tx_state.s_stop_bit~q\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|rom_addr~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|rom_addr~1_combout\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|rom_addr~2_combout\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|rom_addr~3_combout\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|rom_addr~4_combout\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|rom_addr~5_combout\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|rom_addr~6_combout\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[2][0]~feeder_combout\ : std_logic;
SIGNAL \c_disp_ctrl|send_data~2_combout\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[2][0]~q\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[1][0]~q\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[0][0]~feeder_combout\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[0][0]~q\ : std_logic;
SIGNAL \c_disp_ctrl|Mux27~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[1][3]~q\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[2][3]~q\ : std_logic;
SIGNAL \c_disp_ctrl|Mux24~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[2][4]~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[2][4]~q\ : std_logic;
SIGNAL \c_disp_ctrl|transmit_data~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[2][2]~q\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[1][2]~feeder_combout\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[1][2]~q\ : std_logic;
SIGNAL \c_disp_ctrl|Mux25~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[2][1]~feeder_combout\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[2][1]~q\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[1][1]~q\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[0][1]~feeder_combout\ : std_logic;
SIGNAL \c_disp_ctrl|myArray[0][1]~q\ : std_logic;
SIGNAL \c_disp_ctrl|Mux26~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|first_valuable_nummber_detected~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|first_valuable_nummber_detected~q\ : std_logic;
SIGNAL \c_disp_ctrl|p_main~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|transmit_data~1_combout\ : std_logic;
SIGNAL \uart|tx_state.s_tx_data~DUPLICATE_q\ : std_logic;
SIGNAL \c_disp_ctrl|Mux22~0_combout\ : std_logic;
SIGNAL \uart|Selector19~0_combout\ : std_logic;
SIGNAL \uart|tx_byte_saved[0]~0_combout\ : std_logic;
SIGNAL \uart|Selector20~0_combout\ : std_logic;
SIGNAL \uart|Selector21~0_combout\ : std_logic;
SIGNAL \uart|Selector22~0_combout\ : std_logic;
SIGNAL \uart|Selector23~0_combout\ : std_logic;
SIGNAL \uart|Selector24~0_combout\ : std_logic;
SIGNAL \uart|Selector34~0_combout\ : std_logic;
SIGNAL \uart|tx~q\ : std_logic;
SIGNAL \uart|received_error~_Duplicate_1_q\ : std_logic;
SIGNAL \uart|received_error~0_combout\ : std_logic;
SIGNAL \uart|received_error~q\ : std_logic;
SIGNAL \pwm|Add2~29_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~11_combout\ : std_logic;
SIGNAL \pwm|pwm_counter[13]~3_combout\ : std_logic;
SIGNAL \pwm|Add2~30\ : std_logic;
SIGNAL \pwm|Add2~33_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~12_combout\ : std_logic;
SIGNAL \pwm|pwm_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm|Add2~34\ : std_logic;
SIGNAL \pwm|Add2~25_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~10_combout\ : std_logic;
SIGNAL \pwm|Add2~26\ : std_logic;
SIGNAL \pwm|Add2~21_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~9_combout\ : std_logic;
SIGNAL \pwm|pwm_counter[13]~1_combout\ : std_logic;
SIGNAL \pwm|Add2~22\ : std_logic;
SIGNAL \pwm|Add2~17_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~8_combout\ : std_logic;
SIGNAL \pwm|Add2~18\ : std_logic;
SIGNAL \pwm|Add2~13_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~7_combout\ : std_logic;
SIGNAL \pwm|pwm_counter[13]~2_combout\ : std_logic;
SIGNAL \pwm|pwm_counter[13]~4_combout\ : std_logic;
SIGNAL \pwm|Add2~14\ : std_logic;
SIGNAL \pwm|Add2~9_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~6_combout\ : std_logic;
SIGNAL \pwm|pwm_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm|Add2~10\ : std_logic;
SIGNAL \pwm|Add2~5_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~5_combout\ : std_logic;
SIGNAL \pwm|Add2~6\ : std_logic;
SIGNAL \pwm|Add2~57_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~18_combout\ : std_logic;
SIGNAL \pwm|Add2~58\ : std_logic;
SIGNAL \pwm|Add2~61_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~19_combout\ : std_logic;
SIGNAL \pwm|Add2~62\ : std_logic;
SIGNAL \pwm|Add2~53_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~17_combout\ : std_logic;
SIGNAL \pwm|Add2~54\ : std_logic;
SIGNAL \pwm|Add2~49_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~16_combout\ : std_logic;
SIGNAL \pwm|Add2~50\ : std_logic;
SIGNAL \pwm|Add2~45_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~15_combout\ : std_logic;
SIGNAL \pwm|Add2~46\ : std_logic;
SIGNAL \pwm|Add2~41_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~14_combout\ : std_logic;
SIGNAL \pwm|Add2~42\ : std_logic;
SIGNAL \pwm|Add2~37_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~13_combout\ : std_logic;
SIGNAL \pwm|Add2~38\ : std_logic;
SIGNAL \pwm|Add2~1_sumout\ : std_logic;
SIGNAL \pwm|pwm_counter~0_combout\ : std_logic;
SIGNAL \pwm|Mult0~30\ : std_logic;
SIGNAL \pwm|Mult0~29\ : std_logic;
SIGNAL \pwm|Mult0~28\ : std_logic;
SIGNAL \pwm|Mult0~27\ : std_logic;
SIGNAL \pwm|Mult0~26\ : std_logic;
SIGNAL \pwm|Mult0~25\ : std_logic;
SIGNAL \pwm|Mult0~24\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~19\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[53]~73_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[51]~123_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[51]~124_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[49]~125_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[49]~126_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\ : std_logic;
SIGNAL \pwm|Mult0~23\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ : std_logic;
SIGNAL \pwm|led_on_off~2_combout\ : std_logic;
SIGNAL \pwm|led_on_off~3_combout\ : std_logic;
SIGNAL \pwm|led_on_off~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|led_on_off~1_combout\ : std_logic;
SIGNAL \pwm|LessThan2~0_combout\ : std_logic;
SIGNAL \pwm|led_on_off~0_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[50]~85_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[50]~86_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[49]~93_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[48]~110_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~29_sumout\ : std_logic;
SIGNAL \pwm|Mult0~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[52]~75_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_21~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[52]~76_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[60]~79_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[60]~81_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[58]~92_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[58]~94_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[57]~111_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[56]~101_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~9_sumout\ : std_logic;
SIGNAL \pwm|Mult0~21\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[69]~78_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_22~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[61]~74_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[61]~77_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[69]~82_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[68]~84_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[68]~88_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[67]~95_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[66]~109_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[66]~112_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[65]~102_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[64]~12_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_23~13_sumout\ : std_logic;
SIGNAL \pwm|Mult0~20\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ : std_logic;
SIGNAL \pwm|LessThan2~3_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[77]~83_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[77]~89_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[76]~91_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[76]~96_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[75]~113_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[74]~100_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[74]~103_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[73]~13_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[72]~21_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_3~17_sumout\ : std_logic;
SIGNAL \pwm|Mult0~19\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \pwm|LessThan2~10_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[85]~90_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[85]~97_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[84]~108_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[84]~114_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[83]~104_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[82]~11_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[82]~14_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[81]~22_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[80]~30_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_4~21_sumout\ : std_logic;
SIGNAL \pwm|Mult0~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \pwm|LessThan2~11_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[93]~107_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[93]~115_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[92]~99_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[92]~105_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[91]~15_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[90]~20_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[90]~23_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[89]~31_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[88]~39_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_5~25_sumout\ : std_logic;
SIGNAL \pwm|Mult0~17\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \pwm|LessThan2~4_combout\ : std_logic;
SIGNAL \pwm|LessThan2~9_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[101]~98_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[101]~106_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[100]~10_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[100]~16_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[99]~24_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[98]~29_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[98]~32_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[97]~40_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[96]~48_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_6~29_sumout\ : std_logic;
SIGNAL \pwm|Mult0~16\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \pwm|LessThan2~12_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[109]~9_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[109]~17_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[108]~19_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[108]~25_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[107]~33_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[106]~38_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[106]~41_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[105]~49_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[104]~57_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_7~33_sumout\ : std_logic;
SIGNAL \pwm|Mult0~15\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[115]~42_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[114]~47_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[114]~50_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[113]~58_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[112]~66_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \pwm|Mult0~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[117]~18_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[117]~26_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[116]~28_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[116]~34_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[133]~36_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[125]~27_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[125]~35_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[124]~37_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[124]~43_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[123]~51_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[122]~56_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[122]~59_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[121]~67_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[120]~3_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_9~33_sumout\ : std_logic;
SIGNAL \pwm|Mult0~13\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[133]~44_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[132]~46_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[132]~52_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[131]~60_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[130]~65_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[130]~68_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[129]~4_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[128]~118_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_10~33_sumout\ : std_logic;
SIGNAL \pwm|Mult0~12\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ : std_logic;
SIGNAL \pwm|LessThan2~2_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[141]~45_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[141]~53_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[140]~55_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[140]~61_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[139]~69_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[138]~2_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[138]~5_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[137]~119_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[136]~128_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_11~33_sumout\ : std_logic;
SIGNAL \pwm|Mult0~11\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ : std_logic;
SIGNAL \pwm|LessThan2~15_combout\ : std_logic;
SIGNAL \pwm|LessThan2~6_combout\ : std_logic;
SIGNAL \pwm|LessThan2~5_combout\ : std_logic;
SIGNAL \pwm|LessThan2~7_combout\ : std_logic;
SIGNAL \pwm|LessThan2~1_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[149]~54_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[149]~62_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[148]~64_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[148]~70_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[147]~6_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[146]~117_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[146]~120_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[145]~129_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[144]~133_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_12~33_sumout\ : std_logic;
SIGNAL \pwm|Mult0~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ : std_logic;
SIGNAL \pwm|LessThan2~13_combout\ : std_logic;
SIGNAL \pwm|LessThan2~16_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[157]~63_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[157]~71_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[156]~1_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[156]~7_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[155]~121_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[154]~127_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[154]~130_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[153]~134_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[152]~136_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_14~33_sumout\ : std_logic;
SIGNAL \pwm|Mult0~9\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~34\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~30\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~26\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~22\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~18\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~14\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~10\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ : std_logic;
SIGNAL \pwm|LessThan2~14_combout\ : std_logic;
SIGNAL \pwm|LessThan2~17_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[165]~0_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[165]~8_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[164]~116_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[164]~122_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[163]~131_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[162]~132_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[162]~135_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[161]~137_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|StageOut[160]~138_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_15~33_sumout\ : std_logic;
SIGNAL \pwm|Mult0~8_resulta\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_16~38_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_16~34_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_16~30_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_16~26_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_16~22_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_16~18_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_16~14_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_16~10_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_16~6_cout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|op_16~1_sumout\ : std_logic;
SIGNAL \pwm|LessThan2~8_combout\ : std_logic;
SIGNAL \pwm|led_on_off~4_combout\ : std_logic;
SIGNAL \pwm|led_on_off~q\ : std_logic;
SIGNAL \c_disp_ctrl|Mux6~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux5~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux4~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux3~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux2~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux1~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux0~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux13~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux12~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux11~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux10~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux9~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux8~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux7~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux15~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux15~1_combout\ : std_logic;
SIGNAL \c_disp_ctrl|Mux15~2_combout\ : std_logic;
SIGNAL \pwm|pwm_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \uart|received_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart|rx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \c_disp_ctrl|hex3\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \uart|tx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart|tx_byte_saved\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \key_ctrl|counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \c_disp_ctrl|hex1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \c_disp_ctrl|hex2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \c_disp_ctrl|transmit_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart|tx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart|rx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b_gen_pll:i_reset_ctrl|reset_cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \c_disp_ctrl|bcd|rom_addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c_disp_ctrl|send_x\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b_gen_pll:i_startup_reset|reset_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \key_ctrl|key_n_r2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm|previous_duty_cycle\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \key_ctrl|key_n_r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart|rx_byte_int\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|locked_wire\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_pwm_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\ : std_logic;
SIGNAL \uart|ALT_INV_rx_state.s_stop_bit~q\ : std_logic;
SIGNAL \uart|ALT_INV_tx_state.s_stop_bit~q\ : std_logic;
SIGNAL \uart|ALT_INV_tx_state.s_tx_data~q\ : std_logic;
SIGNAL \uart|ALT_INV_received_error~_Duplicate_1_q\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_myArray[1][0]~q\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_myArray[0][0]~q\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_myArray[2][0]~q\ : std_logic;
SIGNAL \uart|ALT_INV_tx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart|ALT_INV_tx_bit_cnt_en~q\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~5_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \uart|ALT_INV_rx_state.s_rx_data~q\ : std_logic;
SIGNAL \uart|ALT_INV_rx_bit_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart|ALT_INV_tx_state.s_start_bit~q\ : std_logic;
SIGNAL \uart|ALT_INV_transmit_ready_int~q\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~9_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~9_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~30\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~29\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~28\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~27\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~26\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~25\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~24\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~23\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~22\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~21\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~20\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~19\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~18\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~17\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~16\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~15\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~14\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~13\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~12\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~11\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~10\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~9\ : std_logic;
SIGNAL \pwm|ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \uart|ALT_INV_received_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \key_ctrl|ALT_INV_counter\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \pwm|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \pwm|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_myArray[1][1]~q\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_myArray[2][1]~q\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_myArray[0][1]~q\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~33_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\ : std_logic;
SIGNAL \pwm|ALT_INV_led_on_off~3_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_led_on_off~2_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_led_on_off~1_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~12_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~11_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~10_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~9_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~8_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_led_on_off~0_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_pwm_state.pwm_refresh_dc~q\ : std_logic;
SIGNAL \pwm|ALT_INV_pwm_state.pwm_idel~q\ : std_logic;
SIGNAL \pwm|ALT_INV_pwm_state.pwm_down~q\ : std_logic;
SIGNAL \pwm|ALT_INV_p_main:pwm_active~q\ : std_logic;
SIGNAL \pwm|ALT_INV_pwm_state.pwm_off~q\ : std_logic;
SIGNAL \uart|ALT_INV_reset_2r~q\ : std_logic;
SIGNAL \uart|ALT_INV_rx_bit_cnt_wrap~q\ : std_logic;
SIGNAL \uart|ALT_INV_rx_2r~q\ : std_logic;
SIGNAL \uart|ALT_INV_tx_byte_saved\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \uart|ALT_INV_tx_state.s_idle~q\ : std_logic;
SIGNAL \pwm|ALT_INV_led_on_off~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~25_sumout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_myArray[1][3]~q\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_myArray[2][3]~q\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~17_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~21_sumout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_myArray[1][2]~q\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_myArray[2][2]~q\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~25_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~21_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~13_sumout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~17_sumout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \uart|ALT_INV_tx_bit_no~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_send_x\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \c_disp_ctrl|ALT_INV_transmit_data\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \c_disp_ctrl|ALT_INV_send_data~q\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_wait_one_clockCycle~q\ : std_logic;
SIGNAL \uart|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pwm|ALT_INV_pwm_counter[13]~3_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_pwm_counter[13]~2_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_pwm_counter[13]~1_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_Selector11~1_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_pwm_state.pwm_up~q\ : std_logic;
SIGNAL \pwm|ALT_INV_pwm_state.pwm_on~q\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \serial_ctrl|ALT_INV_key_up~q\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_key_up~q\ : std_logic;
SIGNAL \pwm|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \serial_ctrl|ALT_INV_key_down~q\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_key_down~q\ : std_logic;
SIGNAL \pwm|ALT_INV_Selector29~0_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \serial_ctrl|ALT_INV_key_off~q\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_key_off~q\ : std_logic;
SIGNAL \serial_ctrl|ALT_INV_key_on~q\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_key_on~q\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \uart|ALT_INV_rx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \uart|ALT_INV_rx_bit_cnt_en~q\ : std_logic;
SIGNAL \uart|ALT_INV_rx_r~q\ : std_logic;
SIGNAL \uart|ALT_INV_tx_bit_no\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart|ALT_INV_Selector30~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_transmit_valid~q\ : std_logic;
SIGNAL \uart|ALT_INV_tx_bit_cnt_wrap~q\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|bcd|ALT_INV_rom_data_valid~q\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~76_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~75_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~74_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~73_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~72_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[157]~71_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[148]~70_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[139]~69_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~68_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~67_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~66_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~65_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[148]~64_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[157]~63_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[149]~62_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~61_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[131]~60_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~59_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[113]~58_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[104]~57_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~56_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~55_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[149]~54_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~53_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~52_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[123]~51_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[114]~50_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~49_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[96]~48_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[114]~47_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~46_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~45_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[133]~44_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[124]~43_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[115]~42_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[106]~41_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[97]~40_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[88]~39_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[106]~38_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[124]~37_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[133]~36_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[125]~35_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[116]~34_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[107]~33_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[98]~32_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[89]~31_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[80]~30_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[98]~29_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[116]~28_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[125]~27_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~26_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[108]~25_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[99]~24_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~23_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~22_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[72]~21_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~20_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[108]~19_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~18_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[109]~17_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~16_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[91]~15_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~14_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[73]~13_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~12_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~11_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~10_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[109]~9_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[165]~8_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[156]~7_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[147]~6_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[138]~5_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[129]~4_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~3_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[138]~2_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[156]~1_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[165]~0_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_p_main~0_combout\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_key_n_r2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \serial_ctrl|ALT_INV_key_on~0_combout\ : std_logic;
SIGNAL \uart|ALT_INV_received_data_valid~q\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_cnt_enabled_t~q\ : std_logic;
SIGNAL \pwm|ALT_INV_duty_cycle[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|ALT_INV_duty_cycle[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|ALT_INV_duty_cycle[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|ALT_INV_duty_cycle[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|ALT_INV_duty_cycle[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|ALT_INV_duty_cycle[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \uart|ALT_INV_rx_bit_no~0_combout\ : std_logic;
SIGNAL \uart|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \uart|ALT_INV_rx_bit_cnt_half~q\ : std_logic;
SIGNAL \uart|ALT_INV_rx_state.s_idle~q\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \b_gen_pll:i_startup_reset|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_previous_duty_cycle\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~126_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~125_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~124_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~123_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[164]~122_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[155]~121_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~120_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~119_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[128]~118_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~117_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[164]~116_combout\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_key_n_r\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart|ALT_INV_rx_byte_int\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pwm|ALT_INV_duty_cycle[2]~3_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_Selector29~1_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_duty_cycle[2]~1_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_duty_cycle[2]~0_combout\ : std_logic;
SIGNAL \uart|ALT_INV_rx_bit_cnt_half~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_send_data~0_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_current_dc_update~q\ : std_logic;
SIGNAL \pwm|ALT_INV_duty_cycle[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[93]~115_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~114_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~113_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~112_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~111_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[48]~110_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~109_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~108_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[93]~107_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~106_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~105_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[83]~104_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~103_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~102_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~101_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~100_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~99_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~98_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~97_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~96_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~95_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~94_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~93_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~92_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~91_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~90_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~89_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~88_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[59]~87_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~86_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~85_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~84_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~83_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~82_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~81_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~80_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~79_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~78_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~77_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_send_x[0]~DUPLICATE_q\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_send_x[2]~DUPLICATE_q\ : std_logic;
SIGNAL \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|ALT_INV_rx_bit_no[1]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|ALT_INV_rx_bit_no[0]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|ALT_INV_rx_bit_cnt_en~DUPLICATE_q\ : std_logic;
SIGNAL \uart|ALT_INV_tx_bit_no[2]~DUPLICATE_q\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_transmit_valid~DUPLICATE_q\ : std_logic;
SIGNAL \pwm|ALT_INV_pwm_state.pwm_refresh_dc~DUPLICATE_q\ : std_logic;
SIGNAL \pwm|ALT_INV_pwm_state.pwm_idel~DUPLICATE_q\ : std_logic;
SIGNAL \pwm|ALT_INV_pwm_state.pwm_down~DUPLICATE_q\ : std_logic;
SIGNAL \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\ : std_logic;
SIGNAL \uart|ALT_INV_received_data[4]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_counter[11]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_counter[12]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_counter[17]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_counter[15]~DUPLICATE_q\ : std_logic;
SIGNAL \key_ctrl|ALT_INV_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|ALT_INV_tx_bit_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\ : std_logic;
SIGNAL \uart|ALT_INV_rx_bit_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|ALT_INV_transmit_ready_int~DUPLICATE_q\ : std_logic;
SIGNAL \pwm|ALT_INV_pwm_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm|ALT_INV_pwm_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\ : std_logic;
SIGNAL \uart|ALT_INV_tx_state.s_tx_data~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_key_n[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_key_n[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_key_n[0]~input_o\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~17_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~16_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~15_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~14_combout\ : std_logic;
SIGNAL \pwm|ALT_INV_LessThan2~13_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[160]~138_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[161]~137_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[152]~136_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_transmit_data~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_p_main~0_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_myArray[2][4]~q\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_first_valuable_nummber_detected~q\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[162]~135_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[153]~134_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[144]~133_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[162]~132_combout\ : std_logic;
SIGNAL \c_disp_ctrl|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[163]~131_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[154]~130_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[145]~129_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[136]~128_combout\ : std_logic;
SIGNAL \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[154]~127_combout\ : std_logic;
SIGNAL \uart|ALT_INV_rx_byte_int[2]~DUPLICATE_q\ : std_logic;
SIGNAL \uart|ALT_INV_rx_byte_int[5]~DUPLICATE_q\ : std_logic;
SIGNAL \pwm|ALT_INV_current_dc_update~DUPLICATE_q\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ww_key_n <= key_n;
ww_fpga_in_rx <= fpga_in_rx;
fpga_out_tx <= ww_fpga_out_tx;
ledr <= ww_ledr;
ledg <= ww_ledg;
hex0_n <= ww_hex0_n;
hex1_n <= ww_hex1_n;
hex2_n <= ww_hex2_n;
hex3_n <= ww_hex3_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\c_disp_ctrl|bcd|rom_addr\(6) & \c_disp_ctrl|bcd|rom_addr\(5) & \c_disp_ctrl|bcd|rom_addr\(4) & \c_disp_ctrl|bcd|rom_addr\(3) & \c_disp_ctrl|bcd|rom_addr\(2) & 
\c_disp_ctrl|bcd|rom_addr\(1) & \c_disp_ctrl|bcd|rom_addr\(0));

\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\ <= \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\ <= \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\ <= \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\ <= \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\ <= \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ <= \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\ <= \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a8\ <= \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a9\ <= \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);

\pwm|Mult0~8_ACLR_bus\ <= (gnd & NOT \b_gen_pll:i_reset_ctrl|reset_out~q\);

\pwm|Mult0~8_CLK_bus\ <= (gnd & gnd & \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\);

\pwm|Mult0~8_ENA_bus\ <= (vcc & vcc & \pwm|duty_cycle[2]~2_combout\);

\pwm|Mult0~8_AX_bus\ <= (\pwm|Selector0~0_combout\ & \pwm|Selector1~0_combout\ & \pwm|Selector2~0_combout\ & \pwm|Selector3~0_combout\ & \pwm|Selector4~0_combout\ & \pwm|Selector5~0_combout\ & \pwm|Selector6~0_combout\);

\pwm|Mult0~8_AY_bus\ <= (vcc & vcc & gnd & gnd & gnd & gnd & vcc & vcc & gnd & vcc & gnd & vcc & gnd & gnd & gnd & gnd);

\pwm|Mult0~8_resulta\ <= \pwm|Mult0~8_RESULTA_bus\(0);
\pwm|Mult0~9\ <= \pwm|Mult0~8_RESULTA_bus\(1);
\pwm|Mult0~10\ <= \pwm|Mult0~8_RESULTA_bus\(2);
\pwm|Mult0~11\ <= \pwm|Mult0~8_RESULTA_bus\(3);
\pwm|Mult0~12\ <= \pwm|Mult0~8_RESULTA_bus\(4);
\pwm|Mult0~13\ <= \pwm|Mult0~8_RESULTA_bus\(5);
\pwm|Mult0~14\ <= \pwm|Mult0~8_RESULTA_bus\(6);
\pwm|Mult0~15\ <= \pwm|Mult0~8_RESULTA_bus\(7);
\pwm|Mult0~16\ <= \pwm|Mult0~8_RESULTA_bus\(8);
\pwm|Mult0~17\ <= \pwm|Mult0~8_RESULTA_bus\(9);
\pwm|Mult0~18\ <= \pwm|Mult0~8_RESULTA_bus\(10);
\pwm|Mult0~19\ <= \pwm|Mult0~8_RESULTA_bus\(11);
\pwm|Mult0~20\ <= \pwm|Mult0~8_RESULTA_bus\(12);
\pwm|Mult0~21\ <= \pwm|Mult0~8_RESULTA_bus\(13);
\pwm|Mult0~22\ <= \pwm|Mult0~8_RESULTA_bus\(14);
\pwm|Mult0~23\ <= \pwm|Mult0~8_RESULTA_bus\(15);
\pwm|Mult0~24\ <= \pwm|Mult0~8_RESULTA_bus\(16);
\pwm|Mult0~25\ <= \pwm|Mult0~8_RESULTA_bus\(17);
\pwm|Mult0~26\ <= \pwm|Mult0~8_RESULTA_bus\(18);
\pwm|Mult0~27\ <= \pwm|Mult0~8_RESULTA_bus\(19);
\pwm|Mult0~28\ <= \pwm|Mult0~8_RESULTA_bus\(20);
\pwm|Mult0~29\ <= \pwm|Mult0~8_RESULTA_bus\(21);
\pwm|Mult0~30\ <= \pwm|Mult0~8_RESULTA_bus\(22);
\pwm|Mult0~31\ <= \pwm|Mult0~8_RESULTA_bus\(23);
\pwm|Mult0~32\ <= \pwm|Mult0~8_RESULTA_bus\(24);
\pwm|Mult0~33\ <= \pwm|Mult0~8_RESULTA_bus\(25);
\pwm|Mult0~34\ <= \pwm|Mult0~8_RESULTA_bus\(26);
\pwm|Mult0~35\ <= \pwm|Mult0~8_RESULTA_bus\(27);
\pwm|Mult0~36\ <= \pwm|Mult0~8_RESULTA_bus\(28);
\pwm|Mult0~37\ <= \pwm|Mult0~8_RESULTA_bus\(29);
\pwm|Mult0~38\ <= \pwm|Mult0~8_RESULTA_bus\(30);
\pwm|Mult0~39\ <= \pwm|Mult0~8_RESULTA_bus\(31);
\pwm|Mult0~40\ <= \pwm|Mult0~8_RESULTA_bus\(32);
\pwm|Mult0~41\ <= \pwm|Mult0~8_RESULTA_bus\(33);
\pwm|Mult0~42\ <= \pwm|Mult0~8_RESULTA_bus\(34);
\pwm|Mult0~43\ <= \pwm|Mult0~8_RESULTA_bus\(35);
\pwm|Mult0~44\ <= \pwm|Mult0~8_RESULTA_bus\(36);
\pwm|Mult0~45\ <= \pwm|Mult0~8_RESULTA_bus\(37);
\pwm|Mult0~46\ <= \pwm|Mult0~8_RESULTA_bus\(38);
\pwm|Mult0~47\ <= \pwm|Mult0~8_RESULTA_bus\(39);
\pwm|Mult0~48\ <= \pwm|Mult0~8_RESULTA_bus\(40);
\pwm|Mult0~49\ <= \pwm|Mult0~8_RESULTA_bus\(41);
\pwm|Mult0~50\ <= \pwm|Mult0~8_RESULTA_bus\(42);
\pwm|Mult0~51\ <= \pwm|Mult0~8_RESULTA_bus\(43);
\pwm|Mult0~52\ <= \pwm|Mult0~8_RESULTA_bus\(44);
\pwm|Mult0~53\ <= \pwm|Mult0~8_RESULTA_bus\(45);
\pwm|Mult0~54\ <= \pwm|Mult0~8_RESULTA_bus\(46);
\pwm|Mult0~55\ <= \pwm|Mult0~8_RESULTA_bus\(47);
\pwm|Mult0~56\ <= \pwm|Mult0~8_RESULTA_bus\(48);
\pwm|Mult0~57\ <= \pwm|Mult0~8_RESULTA_bus\(49);
\pwm|Mult0~58\ <= \pwm|Mult0~8_RESULTA_bus\(50);
\pwm|Mult0~59\ <= \pwm|Mult0~8_RESULTA_bus\(51);
\pwm|Mult0~60\ <= \pwm|Mult0~8_RESULTA_bus\(52);
\pwm|Mult0~61\ <= \pwm|Mult0~8_RESULTA_bus\(53);
\pwm|Mult0~62\ <= \pwm|Mult0~8_RESULTA_bus\(54);
\pwm|Mult0~63\ <= \pwm|Mult0~8_RESULTA_bus\(55);
\pwm|Mult0~64\ <= \pwm|Mult0~8_RESULTA_bus\(56);
\pwm|Mult0~65\ <= \pwm|Mult0~8_RESULTA_bus\(57);
\pwm|Mult0~66\ <= \pwm|Mult0~8_RESULTA_bus\(58);
\pwm|Mult0~67\ <= \pwm|Mult0~8_RESULTA_bus\(59);
\pwm|Mult0~68\ <= \pwm|Mult0~8_RESULTA_bus\(60);
\pwm|Mult0~69\ <= \pwm|Mult0~8_RESULTA_bus\(61);
\pwm|Mult0~70\ <= \pwm|Mult0~8_RESULTA_bus\(62);
\pwm|Mult0~71\ <= \pwm|Mult0~8_RESULTA_bus\(63);

\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \clock_50~input_o\);

\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & 
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & 
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & 
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\ <= \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(5);

\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & 
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & 
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & 
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\;
\pwm|ALT_INV_pwm_counter\(13) <= NOT \pwm|pwm_counter\(13);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\;
\pwm|ALT_INV_pwm_counter\(14) <= NOT \pwm|pwm_counter\(14);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\;
\pwm|ALT_INV_pwm_counter\(1) <= NOT \pwm|pwm_counter\(1);
\pwm|ALT_INV_pwm_counter\(0) <= NOT \pwm|pwm_counter\(0);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\;
\pwm|ALT_INV_pwm_counter\(2) <= NOT \pwm|pwm_counter\(2);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\;
\pwm|ALT_INV_pwm_counter\(3) <= NOT \pwm|pwm_counter\(3);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\;
\pwm|ALT_INV_pwm_counter\(4) <= NOT \pwm|pwm_counter\(4);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\;
\pwm|ALT_INV_pwm_counter\(5) <= NOT \pwm|pwm_counter\(5);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\;
\pwm|ALT_INV_pwm_counter\(6) <= NOT \pwm|pwm_counter\(6);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\;
\pwm|ALT_INV_pwm_counter\(7) <= NOT \pwm|pwm_counter\(7);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_16~1_sumout\;
\pwm|ALT_INV_pwm_counter\(15) <= NOT \pwm|pwm_counter\(15);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\;
\uart|ALT_INV_rx_state.s_stop_bit~q\ <= NOT \uart|rx_state.s_stop_bit~q\;
\uart|ALT_INV_tx_state.s_stop_bit~q\ <= NOT \uart|tx_state.s_stop_bit~q\;
\uart|ALT_INV_tx_state.s_tx_data~q\ <= NOT \uart|tx_state.s_tx_data~q\;
\uart|ALT_INV_received_error~_Duplicate_1_q\ <= NOT \uart|received_error~_Duplicate_1_q\;
\c_disp_ctrl|ALT_INV_myArray[1][0]~q\ <= NOT \c_disp_ctrl|myArray[1][0]~q\;
\c_disp_ctrl|ALT_INV_myArray[0][0]~q\ <= NOT \c_disp_ctrl|myArray[0][0]~q\;
\c_disp_ctrl|ALT_INV_myArray[2][0]~q\ <= NOT \c_disp_ctrl|myArray[2][0]~q\;
\uart|ALT_INV_tx_bit_cnt\(3) <= NOT \uart|tx_bit_cnt\(3);
\uart|ALT_INV_tx_bit_cnt\(2) <= NOT \uart|tx_bit_cnt\(2);
\uart|ALT_INV_tx_bit_cnt\(1) <= NOT \uart|tx_bit_cnt\(1);
\uart|ALT_INV_tx_bit_cnt\(0) <= NOT \uart|tx_bit_cnt\(0);
\uart|ALT_INV_tx_bit_cnt\(5) <= NOT \uart|tx_bit_cnt\(5);
\uart|ALT_INV_tx_bit_cnt\(4) <= NOT \uart|tx_bit_cnt\(4);
\uart|ALT_INV_tx_bit_cnt\(6) <= NOT \uart|tx_bit_cnt\(6);
\uart|ALT_INV_tx_bit_cnt\(8) <= NOT \uart|tx_bit_cnt\(8);
\uart|ALT_INV_tx_bit_cnt\(7) <= NOT \uart|tx_bit_cnt\(7);
\uart|ALT_INV_tx_bit_cnt_en~q\ <= NOT \uart|tx_bit_cnt_en~q\;
\pwm|ALT_INV_Add2~61_sumout\ <= NOT \pwm|Add2~61_sumout\;
\pwm|ALT_INV_Add2~57_sumout\ <= NOT \pwm|Add2~57_sumout\;
\pwm|ALT_INV_Add2~53_sumout\ <= NOT \pwm|Add2~53_sumout\;
\pwm|ALT_INV_Add2~49_sumout\ <= NOT \pwm|Add2~49_sumout\;
\pwm|ALT_INV_Add2~45_sumout\ <= NOT \pwm|Add2~45_sumout\;
\pwm|ALT_INV_Add2~41_sumout\ <= NOT \pwm|Add2~41_sumout\;
\pwm|ALT_INV_Add2~37_sumout\ <= NOT \pwm|Add2~37_sumout\;
\pwm|ALT_INV_Add2~33_sumout\ <= NOT \pwm|Add2~33_sumout\;
\pwm|ALT_INV_Add2~29_sumout\ <= NOT \pwm|Add2~29_sumout\;
\pwm|ALT_INV_Add2~25_sumout\ <= NOT \pwm|Add2~25_sumout\;
\pwm|ALT_INV_Add2~21_sumout\ <= NOT \pwm|Add2~21_sumout\;
\pwm|ALT_INV_Add2~17_sumout\ <= NOT \pwm|Add2~17_sumout\;
\pwm|ALT_INV_Add2~13_sumout\ <= NOT \pwm|Add2~13_sumout\;
\pwm|ALT_INV_Add2~9_sumout\ <= NOT \pwm|Add2~9_sumout\;
\pwm|ALT_INV_Add2~5_sumout\ <= NOT \pwm|Add2~5_sumout\;
\pwm|ALT_INV_Add2~1_sumout\ <= NOT \pwm|Add2~1_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~5_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\;
\pwm|ALT_INV_Add1~25_sumout\ <= NOT \pwm|Add1~25_sumout\;
\pwm|ALT_INV_Add1~21_sumout\ <= NOT \pwm|Add1~21_sumout\;
\pwm|ALT_INV_Add1~17_sumout\ <= NOT \pwm|Add1~17_sumout\;
\pwm|ALT_INV_Add1~13_sumout\ <= NOT \pwm|Add1~13_sumout\;
\pwm|ALT_INV_Add1~9_sumout\ <= NOT \pwm|Add1~9_sumout\;
\pwm|ALT_INV_Add1~5_sumout\ <= NOT \pwm|Add1~5_sumout\;
\pwm|ALT_INV_Add1~1_sumout\ <= NOT \pwm|Add1~1_sumout\;
\uart|ALT_INV_rx_state.s_rx_data~q\ <= NOT \uart|rx_state.s_rx_data~q\;
\uart|ALT_INV_rx_bit_cnt\(1) <= NOT \uart|rx_bit_cnt\(1);
\uart|ALT_INV_rx_bit_cnt\(0) <= NOT \uart|rx_bit_cnt\(0);
\uart|ALT_INV_rx_bit_cnt\(3) <= NOT \uart|rx_bit_cnt\(3);
\uart|ALT_INV_rx_bit_cnt\(2) <= NOT \uart|rx_bit_cnt\(2);
\uart|ALT_INV_rx_bit_cnt\(4) <= NOT \uart|rx_bit_cnt\(4);
\uart|ALT_INV_rx_bit_cnt\(5) <= NOT \uart|rx_bit_cnt\(5);
\uart|ALT_INV_rx_bit_cnt\(6) <= NOT \uart|rx_bit_cnt\(6);
\uart|ALT_INV_rx_bit_cnt\(8) <= NOT \uart|rx_bit_cnt\(8);
\uart|ALT_INV_rx_bit_cnt\(7) <= NOT \uart|rx_bit_cnt\(7);
\uart|ALT_INV_tx_state.s_start_bit~q\ <= NOT \uart|tx_state.s_start_bit~q\;
\uart|ALT_INV_transmit_ready_int~q\ <= NOT \uart|transmit_ready_int~q\;
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\;
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\;
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\;
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\;
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\;
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\;
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\;
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a8\;
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a9\;
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\;
\pwm|ALT_INV_pwm_counter\(9) <= NOT \pwm|pwm_counter\(9);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\;
\pwm|ALT_INV_pwm_counter\(8) <= NOT \pwm|pwm_counter\(8);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\;
\pwm|ALT_INV_pwm_counter\(10) <= NOT \pwm|pwm_counter\(10);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\;
\pwm|ALT_INV_pwm_counter\(11) <= NOT \pwm|pwm_counter\(11);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\;
\pwm|ALT_INV_pwm_counter\(12) <= NOT \pwm|pwm_counter\(12);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_22~9_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_4~9_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_3~9_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_5~9_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_7~9_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_6~9_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_9~9_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_8~9_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_11~9_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_10~9_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_12~9_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_15~9_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_14~9_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_21~9_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_sumout\;
\pwm|ALT_INV_Mult0~30\ <= NOT \pwm|Mult0~30\;
\pwm|ALT_INV_Mult0~29\ <= NOT \pwm|Mult0~29\;
\pwm|ALT_INV_Mult0~28\ <= NOT \pwm|Mult0~28\;
\pwm|ALT_INV_Mult0~27\ <= NOT \pwm|Mult0~27\;
\pwm|ALT_INV_Mult0~26\ <= NOT \pwm|Mult0~26\;
\pwm|ALT_INV_Mult0~25\ <= NOT \pwm|Mult0~25\;
\pwm|ALT_INV_Mult0~24\ <= NOT \pwm|Mult0~24\;
\pwm|ALT_INV_Mult0~23\ <= NOT \pwm|Mult0~23\;
\pwm|ALT_INV_Mult0~22\ <= NOT \pwm|Mult0~22\;
\pwm|ALT_INV_Mult0~21\ <= NOT \pwm|Mult0~21\;
\pwm|ALT_INV_Mult0~20\ <= NOT \pwm|Mult0~20\;
\pwm|ALT_INV_Mult0~19\ <= NOT \pwm|Mult0~19\;
\pwm|ALT_INV_Mult0~18\ <= NOT \pwm|Mult0~18\;
\pwm|ALT_INV_Mult0~17\ <= NOT \pwm|Mult0~17\;
\pwm|ALT_INV_Mult0~16\ <= NOT \pwm|Mult0~16\;
\pwm|ALT_INV_Mult0~15\ <= NOT \pwm|Mult0~15\;
\pwm|ALT_INV_Mult0~14\ <= NOT \pwm|Mult0~14\;
\pwm|ALT_INV_Mult0~13\ <= NOT \pwm|Mult0~13\;
\pwm|ALT_INV_Mult0~12\ <= NOT \pwm|Mult0~12\;
\pwm|ALT_INV_Mult0~11\ <= NOT \pwm|Mult0~11\;
\pwm|ALT_INV_Mult0~10\ <= NOT \pwm|Mult0~10\;
\pwm|ALT_INV_Mult0~9\ <= NOT \pwm|Mult0~9\;
\pwm|ALT_INV_Mult0~8_resulta\ <= NOT \pwm|Mult0~8_resulta\;
\uart|ALT_INV_received_data\(7) <= NOT \uart|received_data\(7);
\uart|ALT_INV_received_data\(3) <= NOT \uart|received_data\(3);
\uart|ALT_INV_received_data\(1) <= NOT \uart|received_data\(1);
\uart|ALT_INV_received_data\(6) <= NOT \uart|received_data\(6);
\uart|ALT_INV_received_data\(4) <= NOT \uart|received_data\(4);
\uart|ALT_INV_received_data\(2) <= NOT \uart|received_data\(2);
\uart|ALT_INV_received_data\(5) <= NOT \uart|received_data\(5);
\uart|ALT_INV_received_data\(0) <= NOT \uart|received_data\(0);
\key_ctrl|ALT_INV_counter\(0) <= NOT \key_ctrl|counter\(0);
\key_ctrl|ALT_INV_counter\(1) <= NOT \key_ctrl|counter\(1);
\key_ctrl|ALT_INV_counter\(7) <= NOT \key_ctrl|counter\(7);
\key_ctrl|ALT_INV_counter\(10) <= NOT \key_ctrl|counter\(10);
\key_ctrl|ALT_INV_counter\(11) <= NOT \key_ctrl|counter\(11);
\key_ctrl|ALT_INV_counter\(13) <= NOT \key_ctrl|counter\(13);
\key_ctrl|ALT_INV_counter\(14) <= NOT \key_ctrl|counter\(14);
\key_ctrl|ALT_INV_counter\(12) <= NOT \key_ctrl|counter\(12);
\key_ctrl|ALT_INV_counter\(16) <= NOT \key_ctrl|counter\(16);
\key_ctrl|ALT_INV_counter\(4) <= NOT \key_ctrl|counter\(4);
\key_ctrl|ALT_INV_counter\(17) <= NOT \key_ctrl|counter\(17);
\key_ctrl|ALT_INV_counter\(18) <= NOT \key_ctrl|counter\(18);
\key_ctrl|ALT_INV_counter\(9) <= NOT \key_ctrl|counter\(9);
\key_ctrl|ALT_INV_counter\(8) <= NOT \key_ctrl|counter\(8);
\key_ctrl|ALT_INV_counter\(6) <= NOT \key_ctrl|counter\(6);
\key_ctrl|ALT_INV_counter\(15) <= NOT \key_ctrl|counter\(15);
\key_ctrl|ALT_INV_counter\(3) <= NOT \key_ctrl|counter\(3);
\key_ctrl|ALT_INV_counter\(2) <= NOT \key_ctrl|counter\(2);
\key_ctrl|ALT_INV_counter\(5) <= NOT \key_ctrl|counter\(5);
\pwm|ALT_INV_Add1~29_sumout\ <= NOT \pwm|Add1~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_5~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_22~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_21~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_23~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_3~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_4~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_21~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_22~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_23~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_3~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_21~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_22~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_23~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_21~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_22~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_8~33_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_7~33_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_10~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_9~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_11~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_12~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_14~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_7~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_6~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_9~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_8~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_10~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_11~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_12~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_6~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_5~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_8~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_7~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_9~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_10~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_11~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_5~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_4~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_7~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_6~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_8~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_9~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_10~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_4~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_3~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_6~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_5~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_7~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_8~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_9~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_3~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_23~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_5~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_4~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_6~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_7~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_8~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_23~9_sumout\;
\pwm|ALT_INV_Add0~29_sumout\ <= NOT \pwm|Add0~29_sumout\;
\pwm|ALT_INV_Add0~25_sumout\ <= NOT \pwm|Add0~25_sumout\;
\pwm|ALT_INV_Add0~21_sumout\ <= NOT \pwm|Add0~21_sumout\;
\pwm|ALT_INV_Add0~17_sumout\ <= NOT \pwm|Add0~17_sumout\;
\pwm|ALT_INV_Add0~13_sumout\ <= NOT \pwm|Add0~13_sumout\;
\pwm|ALT_INV_Add0~9_sumout\ <= NOT \pwm|Add0~9_sumout\;
\pwm|ALT_INV_Add0~5_sumout\ <= NOT \pwm|Add0~5_sumout\;
\pwm|ALT_INV_Add0~1_sumout\ <= NOT \pwm|Add0~1_sumout\;
\c_disp_ctrl|ALT_INV_myArray[1][1]~q\ <= NOT \c_disp_ctrl|myArray[1][1]~q\;
\c_disp_ctrl|ALT_INV_myArray[2][1]~q\ <= NOT \c_disp_ctrl|myArray[2][1]~q\;
\c_disp_ctrl|ALT_INV_myArray[0][1]~q\ <= NOT \c_disp_ctrl|myArray[0][1]~q\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_21~33_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_23~33_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_22~33_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_3~33_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_4~33_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_22~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_21~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_3~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_23~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_4~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_6~33_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_5~33_sumout\;
\b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\ <= NOT \b_gen_pll:i_reset_ctrl|reset_out~q\;
\pwm|ALT_INV_led_on_off~3_combout\ <= NOT \pwm|led_on_off~3_combout\;
\pwm|ALT_INV_led_on_off~2_combout\ <= NOT \pwm|led_on_off~2_combout\;
\pwm|ALT_INV_led_on_off~1_combout\ <= NOT \pwm|led_on_off~1_combout\;
\pwm|ALT_INV_LessThan2~12_combout\ <= NOT \pwm|LessThan2~12_combout\;
\pwm|ALT_INV_LessThan2~11_combout\ <= NOT \pwm|LessThan2~11_combout\;
\pwm|ALT_INV_LessThan2~10_combout\ <= NOT \pwm|LessThan2~10_combout\;
\pwm|ALT_INV_LessThan2~9_combout\ <= NOT \pwm|LessThan2~9_combout\;
\pwm|ALT_INV_LessThan2~8_combout\ <= NOT \pwm|LessThan2~8_combout\;
\pwm|ALT_INV_LessThan2~7_combout\ <= NOT \pwm|LessThan2~7_combout\;
\pwm|ALT_INV_LessThan2~6_combout\ <= NOT \pwm|LessThan2~6_combout\;
\pwm|ALT_INV_LessThan2~5_combout\ <= NOT \pwm|LessThan2~5_combout\;
\pwm|ALT_INV_LessThan2~4_combout\ <= NOT \pwm|LessThan2~4_combout\;
\pwm|ALT_INV_LessThan2~3_combout\ <= NOT \pwm|LessThan2~3_combout\;
\pwm|ALT_INV_LessThan2~2_combout\ <= NOT \pwm|LessThan2~2_combout\;
\pwm|ALT_INV_LessThan2~1_combout\ <= NOT \pwm|LessThan2~1_combout\;
\pwm|ALT_INV_LessThan2~0_combout\ <= NOT \pwm|LessThan2~0_combout\;
\pwm|ALT_INV_led_on_off~0_combout\ <= NOT \pwm|led_on_off~0_combout\;
\pwm|ALT_INV_pwm_state.pwm_refresh_dc~q\ <= NOT \pwm|pwm_state.pwm_refresh_dc~q\;
\pwm|ALT_INV_pwm_state.pwm_idel~q\ <= NOT \pwm|pwm_state.pwm_idel~q\;
\pwm|ALT_INV_pwm_state.pwm_down~q\ <= NOT \pwm|pwm_state.pwm_down~q\;
\pwm|ALT_INV_p_main:pwm_active~q\ <= NOT \pwm|p_main:pwm_active~q\;
\pwm|ALT_INV_pwm_state.pwm_off~q\ <= NOT \pwm|pwm_state.pwm_off~q\;
\uart|ALT_INV_reset_2r~q\ <= NOT \uart|reset_2r~q\;
\uart|ALT_INV_rx_bit_cnt_wrap~q\ <= NOT \uart|rx_bit_cnt_wrap~q\;
\uart|ALT_INV_rx_2r~q\ <= NOT \uart|rx_2r~q\;
\uart|ALT_INV_tx_byte_saved\(0) <= NOT \uart|tx_byte_saved\(0);
\uart|ALT_INV_tx_state.s_idle~q\ <= NOT \uart|tx_state.s_idle~q\;
\pwm|ALT_INV_led_on_off~_Duplicate_1_q\ <= NOT \pwm|led_on_off~_Duplicate_1_q\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_15~33_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_15~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_14~33_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_12~33_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_15~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_14~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_11~33_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_12~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_15~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_14~25_sumout\;
\c_disp_ctrl|ALT_INV_myArray[1][3]~q\ <= NOT \c_disp_ctrl|myArray[1][3]~q\;
\c_disp_ctrl|ALT_INV_myArray[2][3]~q\ <= NOT \c_disp_ctrl|myArray[2][3]~q\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_11~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_10~33_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_12~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_15~17_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_14~21_sumout\;
\c_disp_ctrl|ALT_INV_myArray[1][2]~q\ <= NOT \c_disp_ctrl|myArray[1][2]~q\;
\c_disp_ctrl|ALT_INV_myArray[2][2]~q\ <= NOT \c_disp_ctrl|myArray[2][2]~q\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_9~33_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~25_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_11~25_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_10~29_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~21_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_12~21_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~13_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_15~13_sumout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~17_sumout\ <= NOT \pwm|Div0|auto_generated|divider|divider|op_14~17_sumout\;
\b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(5) <= NOT \b_gen_pll:i_startup_reset|reset_cnt\(5);
\b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(4) <= NOT \b_gen_pll:i_startup_reset|reset_cnt\(4);
\uart|ALT_INV_tx_bit_no~0_combout\ <= NOT \uart|tx_bit_no~0_combout\;
\c_disp_ctrl|ALT_INV_Mux27~0_combout\ <= NOT \c_disp_ctrl|Mux27~0_combout\;
\c_disp_ctrl|ALT_INV_send_x\(0) <= NOT \c_disp_ctrl|send_x\(0);
\c_disp_ctrl|ALT_INV_send_x\(1) <= NOT \c_disp_ctrl|send_x\(1);
\c_disp_ctrl|ALT_INV_send_x\(2) <= NOT \c_disp_ctrl|send_x\(2);
\c_disp_ctrl|ALT_INV_transmit_data\(1) <= NOT \c_disp_ctrl|transmit_data\(1);
\uart|ALT_INV_tx_byte_saved\(2) <= NOT \uart|tx_byte_saved\(2);
\c_disp_ctrl|ALT_INV_send_data~q\ <= NOT \c_disp_ctrl|send_data~q\;
\c_disp_ctrl|ALT_INV_wait_one_clockCycle~q\ <= NOT \c_disp_ctrl|wait_one_clockCycle~q\;
\uart|ALT_INV_LessThan2~0_combout\ <= NOT \uart|LessThan2~0_combout\;
\b_gen_pll:i_reset_ctrl|ALT_INV_LessThan0~1_combout\ <= NOT \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\;
\b_gen_pll:i_reset_ctrl|ALT_INV_LessThan0~0_combout\ <= NOT \b_gen_pll:i_reset_ctrl|LessThan0~0_combout\;
\b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(3) <= NOT \b_gen_pll:i_reset_ctrl|reset_cnt\(3);
\b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(4) <= NOT \b_gen_pll:i_reset_ctrl|reset_cnt\(4);
\b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(5) <= NOT \b_gen_pll:i_reset_ctrl|reset_cnt\(5);
\b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(6) <= NOT \b_gen_pll:i_reset_ctrl|reset_cnt\(6);
\b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(0) <= NOT \b_gen_pll:i_reset_ctrl|reset_cnt\(0);
\b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(1) <= NOT \b_gen_pll:i_reset_ctrl|reset_cnt\(1);
\b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(2) <= NOT \b_gen_pll:i_reset_ctrl|reset_cnt\(2);
\pwm|ALT_INV_pwm_counter[13]~3_combout\ <= NOT \pwm|pwm_counter[13]~3_combout\;
\pwm|ALT_INV_pwm_counter[13]~2_combout\ <= NOT \pwm|pwm_counter[13]~2_combout\;
\pwm|ALT_INV_pwm_counter[13]~1_combout\ <= NOT \pwm|pwm_counter[13]~1_combout\;
\pwm|ALT_INV_Selector11~1_combout\ <= NOT \pwm|Selector11~1_combout\;
\pwm|ALT_INV_Selector11~0_combout\ <= NOT \pwm|Selector11~0_combout\;
\pwm|ALT_INV_pwm_state.pwm_up~q\ <= NOT \pwm|pwm_state.pwm_up~q\;
\pwm|ALT_INV_pwm_state.pwm_on~q\ <= NOT \pwm|pwm_state.pwm_on~q\;
\pwm|ALT_INV_LessThan1~1_combout\ <= NOT \pwm|LessThan1~1_combout\;
\pwm|ALT_INV_Selector10~1_combout\ <= NOT \pwm|Selector10~1_combout\;
\serial_ctrl|ALT_INV_key_up~q\ <= NOT \serial_ctrl|key_up~q\;
\key_ctrl|ALT_INV_key_up~q\ <= NOT \key_ctrl|key_up~q\;
\pwm|ALT_INV_Selector10~0_combout\ <= NOT \pwm|Selector10~0_combout\;
\serial_ctrl|ALT_INV_key_down~q\ <= NOT \serial_ctrl|key_down~q\;
\key_ctrl|ALT_INV_key_down~q\ <= NOT \key_ctrl|key_down~q\;
\pwm|ALT_INV_Selector29~0_combout\ <= NOT \pwm|Selector29~0_combout\;
\pwm|ALT_INV_Selector8~0_combout\ <= NOT \pwm|Selector8~0_combout\;
\serial_ctrl|ALT_INV_key_off~q\ <= NOT \serial_ctrl|key_off~q\;
\key_ctrl|ALT_INV_key_off~q\ <= NOT \key_ctrl|key_off~q\;
\serial_ctrl|ALT_INV_key_on~q\ <= NOT \serial_ctrl|key_on~q\;
\key_ctrl|ALT_INV_key_on~q\ <= NOT \key_ctrl|key_on~q\;
\pwm|ALT_INV_LessThan1~0_combout\ <= NOT \pwm|LessThan1~0_combout\;
\uart|ALT_INV_rx_bit_no\(1) <= NOT \uart|rx_bit_no\(1);
\uart|ALT_INV_rx_bit_no\(0) <= NOT \uart|rx_bit_no\(0);
\uart|ALT_INV_rx_bit_no\(2) <= NOT \uart|rx_bit_no\(2);
\uart|ALT_INV_LessThan0~0_combout\ <= NOT \uart|LessThan0~0_combout\;
\uart|ALT_INV_rx_bit_cnt_en~q\ <= NOT \uart|rx_bit_cnt_en~q\;
\uart|ALT_INV_rx_r~q\ <= NOT \uart|rx_r~q\;
\uart|ALT_INV_tx_bit_no\(1) <= NOT \uart|tx_bit_no\(1);
\uart|ALT_INV_tx_bit_no\(0) <= NOT \uart|tx_bit_no\(0);
\uart|ALT_INV_tx_bit_no\(2) <= NOT \uart|tx_bit_no\(2);
\c_disp_ctrl|ALT_INV_transmit_data\(0) <= NOT \c_disp_ctrl|transmit_data\(0);
\uart|ALT_INV_tx_byte_saved\(1) <= NOT \uart|tx_byte_saved\(1);
\uart|ALT_INV_Selector30~0_combout\ <= NOT \uart|Selector30~0_combout\;
\c_disp_ctrl|ALT_INV_transmit_valid~q\ <= NOT \c_disp_ctrl|transmit_valid~q\;
\uart|ALT_INV_tx_bit_cnt_wrap~q\ <= NOT \uart|tx_bit_cnt_wrap~q\;
\c_disp_ctrl|ALT_INV_Mux15~2_combout\ <= NOT \c_disp_ctrl|Mux15~2_combout\;
\c_disp_ctrl|ALT_INV_Mux15~1_combout\ <= NOT \c_disp_ctrl|Mux15~1_combout\;
\c_disp_ctrl|ALT_INV_Mux15~0_combout\ <= NOT \c_disp_ctrl|Mux15~0_combout\;
\c_disp_ctrl|ALT_INV_Mux7~0_combout\ <= NOT \c_disp_ctrl|Mux7~0_combout\;
\c_disp_ctrl|ALT_INV_Mux8~0_combout\ <= NOT \c_disp_ctrl|Mux8~0_combout\;
\c_disp_ctrl|ALT_INV_Mux9~0_combout\ <= NOT \c_disp_ctrl|Mux9~0_combout\;
\c_disp_ctrl|ALT_INV_Mux10~0_combout\ <= NOT \c_disp_ctrl|Mux10~0_combout\;
\c_disp_ctrl|ALT_INV_Mux11~0_combout\ <= NOT \c_disp_ctrl|Mux11~0_combout\;
\c_disp_ctrl|ALT_INV_Mux12~0_combout\ <= NOT \c_disp_ctrl|Mux12~0_combout\;
\c_disp_ctrl|ALT_INV_Mux13~0_combout\ <= NOT \c_disp_ctrl|Mux13~0_combout\;
\c_disp_ctrl|ALT_INV_Mux0~0_combout\ <= NOT \c_disp_ctrl|Mux0~0_combout\;
\c_disp_ctrl|ALT_INV_Mux1~0_combout\ <= NOT \c_disp_ctrl|Mux1~0_combout\;
\c_disp_ctrl|ALT_INV_Mux2~0_combout\ <= NOT \c_disp_ctrl|Mux2~0_combout\;
\c_disp_ctrl|ALT_INV_Mux3~0_combout\ <= NOT \c_disp_ctrl|Mux3~0_combout\;
\c_disp_ctrl|ALT_INV_Mux4~0_combout\ <= NOT \c_disp_ctrl|Mux4~0_combout\;
\c_disp_ctrl|ALT_INV_Mux5~0_combout\ <= NOT \c_disp_ctrl|Mux5~0_combout\;
\c_disp_ctrl|bcd|ALT_INV_rom_data_valid~q\ <= NOT \c_disp_ctrl|bcd|rom_data_valid~q\;
\c_disp_ctrl|ALT_INV_Mux6~0_combout\ <= NOT \c_disp_ctrl|Mux6~0_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~76_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[52]~76_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~75_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[52]~75_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~74_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[61]~74_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~73_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[53]~73_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~72_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[157]~71_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[157]~71_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[148]~70_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[148]~70_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[139]~69_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[139]~69_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~68_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[130]~68_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~67_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[121]~67_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~66_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[112]~66_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~65_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[130]~65_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[148]~64_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[148]~64_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[157]~63_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[157]~63_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[149]~62_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[149]~62_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~61_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[140]~61_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[131]~60_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[131]~60_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~59_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[122]~59_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[113]~58_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[113]~58_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[104]~57_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[104]~57_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~56_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[122]~56_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~55_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[140]~55_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[149]~54_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[149]~54_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~53_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[141]~53_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~52_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[132]~52_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[123]~51_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[123]~51_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[114]~50_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[114]~50_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~49_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[105]~49_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[96]~48_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[96]~48_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[114]~47_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[114]~47_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~46_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[132]~46_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~45_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[141]~45_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[133]~44_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[133]~44_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[124]~43_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[124]~43_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[115]~42_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[115]~42_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[106]~41_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[106]~41_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[97]~40_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[97]~40_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[88]~39_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[88]~39_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[106]~38_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[106]~38_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[124]~37_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[124]~37_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[133]~36_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[133]~36_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[125]~35_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[125]~35_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[116]~34_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[116]~34_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[107]~33_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[107]~33_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[98]~32_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[98]~32_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[89]~31_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[89]~31_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[80]~30_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[80]~30_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[98]~29_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[98]~29_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[116]~28_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[116]~28_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[125]~27_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[125]~27_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~26_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[117]~26_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[108]~25_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[108]~25_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[99]~24_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[99]~24_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~23_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[90]~23_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~22_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[81]~22_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[72]~21_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[72]~21_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~20_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[90]~20_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[108]~19_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[108]~19_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~18_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[117]~18_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[109]~17_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[109]~17_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~16_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[100]~16_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[91]~15_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[91]~15_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~14_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[82]~14_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[73]~13_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[73]~13_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~12_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[64]~12_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~11_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[82]~11_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~10_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[100]~10_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[109]~9_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[109]~9_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[165]~8_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[165]~8_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[156]~7_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[156]~7_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[147]~6_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[147]~6_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[138]~5_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[138]~5_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[129]~4_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[129]~4_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~3_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[120]~3_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[138]~2_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[138]~2_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[156]~1_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[156]~1_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[165]~0_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[165]~0_combout\;
\pwm|ALT_INV_Selector9~0_combout\ <= NOT \pwm|Selector9~0_combout\;
\pwm|ALT_INV_p_main~0_combout\ <= NOT \pwm|p_main~0_combout\;
\key_ctrl|ALT_INV_key_n_r2\(3) <= NOT \key_ctrl|key_n_r2\(3);
\key_ctrl|ALT_INV_key_n_r2\(2) <= NOT \key_ctrl|key_n_r2\(2);
\key_ctrl|ALT_INV_key_n_r2\(0) <= NOT \key_ctrl|key_n_r2\(0);
\serial_ctrl|ALT_INV_key_on~0_combout\ <= NOT \serial_ctrl|key_on~0_combout\;
\uart|ALT_INV_received_data_valid~q\ <= NOT \uart|received_data_valid~q\;
\key_ctrl|ALT_INV_Equal1~2_combout\ <= NOT \key_ctrl|Equal1~2_combout\;
\key_ctrl|ALT_INV_Equal1~1_combout\ <= NOT \key_ctrl|Equal1~1_combout\;
\key_ctrl|ALT_INV_Equal1~0_combout\ <= NOT \key_ctrl|Equal1~0_combout\;
\key_ctrl|ALT_INV_cnt_enabled_t~q\ <= NOT \key_ctrl|cnt_enabled_t~q\;
\key_ctrl|ALT_INV_key_n_r2\(1) <= NOT \key_ctrl|key_n_r2\(1);
\pwm|ALT_INV_duty_cycle[2]~_Duplicate_1_q\ <= NOT \pwm|duty_cycle[2]~_Duplicate_1_q\;
\pwm|ALT_INV_duty_cycle[1]~_Duplicate_1_q\ <= NOT \pwm|duty_cycle[1]~_Duplicate_1_q\;
\pwm|ALT_INV_duty_cycle[3]~_Duplicate_1_q\ <= NOT \pwm|duty_cycle[3]~_Duplicate_1_q\;
\pwm|ALT_INV_duty_cycle[5]~_Duplicate_1_q\ <= NOT \pwm|duty_cycle[5]~_Duplicate_1_q\;
\pwm|ALT_INV_duty_cycle[4]~_Duplicate_1_q\ <= NOT \pwm|duty_cycle[4]~_Duplicate_1_q\;
\pwm|ALT_INV_duty_cycle[6]~_Duplicate_1_q\ <= NOT \pwm|duty_cycle[6]~_Duplicate_1_q\;
\uart|ALT_INV_rx_bit_no~0_combout\ <= NOT \uart|rx_bit_no~0_combout\;
\uart|ALT_INV_Selector2~0_combout\ <= NOT \uart|Selector2~0_combout\;
\uart|ALT_INV_rx_bit_cnt_half~q\ <= NOT \uart|rx_bit_cnt_half~q\;
\uart|ALT_INV_rx_state.s_idle~q\ <= NOT \uart|rx_state.s_idle~q\;
\b_gen_pll:i_startup_reset|ALT_INV_LessThan0~2_combout\ <= NOT \b_gen_pll:i_startup_reset|LessThan0~2_combout\;
\b_gen_pll:i_startup_reset|ALT_INV_LessThan0~1_combout\ <= NOT \b_gen_pll:i_startup_reset|LessThan0~1_combout\;
\b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(9) <= NOT \b_gen_pll:i_startup_reset|reset_cnt\(9);
\b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(8) <= NOT \b_gen_pll:i_startup_reset|reset_cnt\(8);
\b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(7) <= NOT \b_gen_pll:i_startup_reset|reset_cnt\(7);
\b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(6) <= NOT \b_gen_pll:i_startup_reset|reset_cnt\(6);
\b_gen_pll:i_startup_reset|ALT_INV_LessThan0~0_combout\ <= NOT \b_gen_pll:i_startup_reset|LessThan0~0_combout\;
\b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(3) <= NOT \b_gen_pll:i_startup_reset|reset_cnt\(3);
\b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(2) <= NOT \b_gen_pll:i_startup_reset|reset_cnt\(2);
\b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(1) <= NOT \b_gen_pll:i_startup_reset|reset_cnt\(1);
\b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(0) <= NOT \b_gen_pll:i_startup_reset|reset_cnt\(0);
\c_disp_ctrl|ALT_INV_Mux25~0_combout\ <= NOT \c_disp_ctrl|Mux25~0_combout\;
\c_disp_ctrl|ALT_INV_transmit_data\(3) <= NOT \c_disp_ctrl|transmit_data\(3);
\uart|ALT_INV_tx_byte_saved\(4) <= NOT \uart|tx_byte_saved\(4);
\pwm|ALT_INV_previous_duty_cycle\(0) <= NOT \pwm|previous_duty_cycle\(0);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~126_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[49]~126_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~125_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[49]~125_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~124_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[51]~124_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~123_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[51]~123_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[164]~122_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[164]~122_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[155]~121_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[155]~121_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~120_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[146]~120_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~119_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[137]~119_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[128]~118_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[128]~118_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~117_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[146]~117_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[164]~116_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[164]~116_combout\;
\key_ctrl|ALT_INV_key_n_r\(3) <= NOT \key_ctrl|key_n_r\(3);
\key_ctrl|ALT_INV_key_n_r\(2) <= NOT \key_ctrl|key_n_r\(2);
\key_ctrl|ALT_INV_key_n_r\(0) <= NOT \key_ctrl|key_n_r\(0);
\uart|ALT_INV_rx_byte_int\(3) <= NOT \uart|rx_byte_int\(3);
\uart|ALT_INV_rx_byte_int\(1) <= NOT \uart|rx_byte_int\(1);
\uart|ALT_INV_rx_byte_int\(6) <= NOT \uart|rx_byte_int\(6);
\uart|ALT_INV_rx_byte_int\(4) <= NOT \uart|rx_byte_int\(4);
\uart|ALT_INV_rx_byte_int\(2) <= NOT \uart|rx_byte_int\(2);
\uart|ALT_INV_rx_byte_int\(5) <= NOT \uart|rx_byte_int\(5);
\uart|ALT_INV_rx_byte_int\(0) <= NOT \uart|rx_byte_int\(0);
\pwm|ALT_INV_previous_duty_cycle\(2) <= NOT \pwm|previous_duty_cycle\(2);
\pwm|ALT_INV_previous_duty_cycle\(1) <= NOT \pwm|previous_duty_cycle\(1);
\pwm|ALT_INV_duty_cycle[2]~3_combout\ <= NOT \pwm|duty_cycle[2]~3_combout\;
\pwm|ALT_INV_previous_duty_cycle\(3) <= NOT \pwm|previous_duty_cycle\(3);
\pwm|ALT_INV_previous_duty_cycle\(5) <= NOT \pwm|previous_duty_cycle\(5);
\pwm|ALT_INV_previous_duty_cycle\(4) <= NOT \pwm|previous_duty_cycle\(4);
\pwm|ALT_INV_LessThan0~1_combout\ <= NOT \pwm|LessThan0~1_combout\;
\pwm|ALT_INV_LessThan0~0_combout\ <= NOT \pwm|LessThan0~0_combout\;
\pwm|ALT_INV_Selector29~1_combout\ <= NOT \pwm|Selector29~1_combout\;
\pwm|ALT_INV_previous_duty_cycle\(6) <= NOT \pwm|previous_duty_cycle\(6);
\pwm|ALT_INV_duty_cycle[2]~1_combout\ <= NOT \pwm|duty_cycle[2]~1_combout\;
\pwm|ALT_INV_duty_cycle[2]~0_combout\ <= NOT \pwm|duty_cycle[2]~0_combout\;
\uart|ALT_INV_rx_bit_cnt_half~0_combout\ <= NOT \uart|rx_bit_cnt_half~0_combout\;
\c_disp_ctrl|ALT_INV_Equal1~0_combout\ <= NOT \c_disp_ctrl|Equal1~0_combout\;
\c_disp_ctrl|ALT_INV_Mux26~0_combout\ <= NOT \c_disp_ctrl|Mux26~0_combout\;
\c_disp_ctrl|ALT_INV_transmit_data\(2) <= NOT \c_disp_ctrl|transmit_data\(2);
\uart|ALT_INV_tx_byte_saved\(3) <= NOT \uart|tx_byte_saved\(3);
\c_disp_ctrl|ALT_INV_send_data~0_combout\ <= NOT \c_disp_ctrl|send_data~0_combout\;
\pwm|ALT_INV_current_dc_update~q\ <= NOT \pwm|current_dc_update~q\;
\pwm|ALT_INV_duty_cycle[0]~_Duplicate_1_q\ <= NOT \pwm|duty_cycle[0]~_Duplicate_1_q\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[93]~115_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[93]~115_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~114_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[84]~114_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~113_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[75]~113_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~112_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[66]~112_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~111_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[57]~111_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[48]~110_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[48]~110_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~109_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[66]~109_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~108_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[84]~108_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[93]~107_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[93]~107_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~106_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[101]~106_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~105_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[92]~105_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[83]~104_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[83]~104_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~103_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[74]~103_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~102_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[65]~102_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~101_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[56]~101_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~100_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[74]~100_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~99_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[92]~99_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~98_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[101]~98_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~97_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[85]~97_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~96_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[76]~96_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~95_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[67]~95_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~94_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[58]~94_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~93_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[49]~93_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~92_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[58]~92_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~91_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[76]~91_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~90_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[85]~90_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~89_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[77]~89_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~88_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[68]~88_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[59]~87_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~86_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[50]~86_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~85_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[50]~85_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~84_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[68]~84_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~83_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[77]~83_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~82_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[69]~82_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~81_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[60]~81_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~80_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~79_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[60]~79_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~78_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[69]~78_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~77_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[61]~77_combout\;
\c_disp_ctrl|ALT_INV_send_x[0]~DUPLICATE_q\ <= NOT \c_disp_ctrl|send_x[0]~DUPLICATE_q\;
\c_disp_ctrl|ALT_INV_send_x[2]~DUPLICATE_q\ <= NOT \c_disp_ctrl|send_x[2]~DUPLICATE_q\;
\b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt[2]~DUPLICATE_q\ <= NOT \b_gen_pll:i_reset_ctrl|reset_cnt[2]~DUPLICATE_q\;
\uart|ALT_INV_rx_bit_no[1]~DUPLICATE_q\ <= NOT \uart|rx_bit_no[1]~DUPLICATE_q\;
\uart|ALT_INV_rx_bit_no[0]~DUPLICATE_q\ <= NOT \uart|rx_bit_no[0]~DUPLICATE_q\;
\uart|ALT_INV_rx_bit_cnt_en~DUPLICATE_q\ <= NOT \uart|rx_bit_cnt_en~DUPLICATE_q\;
\uart|ALT_INV_tx_bit_no[2]~DUPLICATE_q\ <= NOT \uart|tx_bit_no[2]~DUPLICATE_q\;
\c_disp_ctrl|ALT_INV_transmit_valid~DUPLICATE_q\ <= NOT \c_disp_ctrl|transmit_valid~DUPLICATE_q\;
\pwm|ALT_INV_pwm_state.pwm_refresh_dc~DUPLICATE_q\ <= NOT \pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\;
\pwm|ALT_INV_pwm_state.pwm_idel~DUPLICATE_q\ <= NOT \pwm|pwm_state.pwm_idel~DUPLICATE_q\;
\pwm|ALT_INV_pwm_state.pwm_down~DUPLICATE_q\ <= NOT \pwm|pwm_state.pwm_down~DUPLICATE_q\;
\uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\ <= NOT \uart|rx_bit_cnt_wrap~DUPLICATE_q\;
\uart|ALT_INV_received_data[4]~DUPLICATE_q\ <= NOT \uart|received_data[4]~DUPLICATE_q\;
\key_ctrl|ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \key_ctrl|counter[1]~DUPLICATE_q\;
\key_ctrl|ALT_INV_counter[7]~DUPLICATE_q\ <= NOT \key_ctrl|counter[7]~DUPLICATE_q\;
\key_ctrl|ALT_INV_counter[11]~DUPLICATE_q\ <= NOT \key_ctrl|counter[11]~DUPLICATE_q\;
\key_ctrl|ALT_INV_counter[12]~DUPLICATE_q\ <= NOT \key_ctrl|counter[12]~DUPLICATE_q\;
\key_ctrl|ALT_INV_counter[4]~DUPLICATE_q\ <= NOT \key_ctrl|counter[4]~DUPLICATE_q\;
\key_ctrl|ALT_INV_counter[17]~DUPLICATE_q\ <= NOT \key_ctrl|counter[17]~DUPLICATE_q\;
\key_ctrl|ALT_INV_counter[15]~DUPLICATE_q\ <= NOT \key_ctrl|counter[15]~DUPLICATE_q\;
\key_ctrl|ALT_INV_counter[2]~DUPLICATE_q\ <= NOT \key_ctrl|counter[2]~DUPLICATE_q\;
\uart|ALT_INV_tx_bit_cnt[6]~DUPLICATE_q\ <= NOT \uart|tx_bit_cnt[6]~DUPLICATE_q\;
\uart|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\ <= NOT \uart|rx_state.s_rx_data~DUPLICATE_q\;
\uart|ALT_INV_rx_bit_cnt[3]~DUPLICATE_q\ <= NOT \uart|rx_bit_cnt[3]~DUPLICATE_q\;
\uart|ALT_INV_transmit_ready_int~DUPLICATE_q\ <= NOT \uart|transmit_ready_int~DUPLICATE_q\;
\pwm|ALT_INV_pwm_counter[1]~DUPLICATE_q\ <= NOT \pwm|pwm_counter[1]~DUPLICATE_q\;
\pwm|ALT_INV_pwm_counter[6]~DUPLICATE_q\ <= NOT \pwm|pwm_counter[6]~DUPLICATE_q\;
\uart|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\ <= NOT \uart|rx_state.s_stop_bit~DUPLICATE_q\;
\uart|ALT_INV_tx_state.s_tx_data~DUPLICATE_q\ <= NOT \uart|tx_state.s_tx_data~DUPLICATE_q\;
\ALT_INV_key_n[3]~input_o\ <= NOT \key_n[3]~input_o\;
\ALT_INV_key_n[2]~input_o\ <= NOT \key_n[2]~input_o\;
\ALT_INV_key_n[0]~input_o\ <= NOT \key_n[0]~input_o\;
\pwm|ALT_INV_LessThan2~17_combout\ <= NOT \pwm|LessThan2~17_combout\;
\pwm|ALT_INV_LessThan2~16_combout\ <= NOT \pwm|LessThan2~16_combout\;
\pwm|ALT_INV_LessThan2~15_combout\ <= NOT \pwm|LessThan2~15_combout\;
\pwm|ALT_INV_LessThan2~14_combout\ <= NOT \pwm|LessThan2~14_combout\;
\pwm|ALT_INV_LessThan2~13_combout\ <= NOT \pwm|LessThan2~13_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[160]~138_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[160]~138_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[161]~137_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[161]~137_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[152]~136_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[152]~136_combout\;
\c_disp_ctrl|ALT_INV_transmit_data~0_combout\ <= NOT \c_disp_ctrl|transmit_data~0_combout\;
\c_disp_ctrl|ALT_INV_p_main~0_combout\ <= NOT \c_disp_ctrl|p_main~0_combout\;
\c_disp_ctrl|ALT_INV_myArray[2][4]~q\ <= NOT \c_disp_ctrl|myArray[2][4]~q\;
\c_disp_ctrl|ALT_INV_first_valuable_nummber_detected~q\ <= NOT \c_disp_ctrl|first_valuable_nummber_detected~q\;
\c_disp_ctrl|ALT_INV_transmit_data\(5) <= NOT \c_disp_ctrl|transmit_data\(5);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[162]~135_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[162]~135_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[153]~134_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[153]~134_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[144]~133_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[144]~133_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[162]~132_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[162]~132_combout\;
\c_disp_ctrl|ALT_INV_Mux24~0_combout\ <= NOT \c_disp_ctrl|Mux24~0_combout\;
\c_disp_ctrl|ALT_INV_transmit_data\(4) <= NOT \c_disp_ctrl|transmit_data\(4);
\uart|ALT_INV_tx_byte_saved\(5) <= NOT \uart|tx_byte_saved\(5);
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[163]~131_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[163]~131_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[154]~130_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[154]~130_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[145]~129_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[145]~129_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[136]~128_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[136]~128_combout\;
\pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[154]~127_combout\ <= NOT \pwm|Div0|auto_generated|divider|divider|StageOut[154]~127_combout\;
\uart|ALT_INV_rx_byte_int[2]~DUPLICATE_q\ <= NOT \uart|rx_byte_int[2]~DUPLICATE_q\;
\uart|ALT_INV_rx_byte_int[5]~DUPLICATE_q\ <= NOT \uart|rx_byte_int[5]~DUPLICATE_q\;
\pwm|ALT_INV_current_dc_update~DUPLICATE_q\ <= NOT \pwm|current_dc_update~DUPLICATE_q\;

-- Location: IOOBUF_X50_Y0_N93
\fpga_out_tx~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uart|tx~q\,
	devoe => ww_devoe,
	o => ww_fpga_out_tx);

-- Location: IOOBUF_X32_Y0_N36
\ledr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \uart|received_error~q\,
	devoe => ww_devoe,
	o => ww_ledr(0));

-- Location: IOOBUF_X64_Y0_N53
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

-- Location: IOOBUF_X64_Y0_N19
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

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X72_Y0_N36
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

-- Location: IOOBUF_X2_Y81_N42
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

-- Location: IOOBUF_X40_Y81_N36
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

-- Location: IOOBUF_X10_Y81_N93
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

-- Location: IOOBUF_X38_Y81_N2
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

-- Location: IOOBUF_X89_Y11_N62
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

-- Location: IOOBUF_X30_Y0_N19
\ledg[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm|led_on_off~q\,
	devoe => ww_devoe,
	o => ww_ledg(0));

-- Location: IOOBUF_X76_Y0_N53
\ledg[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledg(1));

-- Location: IOOBUF_X52_Y0_N53
\ledg[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledg(2));

-- Location: IOOBUF_X82_Y0_N42
\ledg[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledg(3));

-- Location: IOOBUF_X8_Y81_N36
\ledg[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledg(4));

-- Location: IOOBUF_X54_Y0_N19
\ledg[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledg(5));

-- Location: IOOBUF_X62_Y0_N19
\ledg[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledg(6));

-- Location: IOOBUF_X60_Y0_N19
\ledg[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledg(7));

-- Location: IOOBUF_X36_Y0_N19
\hex0_n[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex1\(0),
	devoe => ww_devoe,
	o => ww_hex0_n(0));

-- Location: IOOBUF_X38_Y0_N2
\hex0_n[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex1\(1),
	devoe => ww_devoe,
	o => ww_hex0_n(1));

-- Location: IOOBUF_X36_Y0_N2
\hex0_n[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex1\(2),
	devoe => ww_devoe,
	o => ww_hex0_n(2));

-- Location: IOOBUF_X36_Y0_N36
\hex0_n[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex1\(3),
	devoe => ww_devoe,
	o => ww_hex0_n(3));

-- Location: IOOBUF_X34_Y0_N59
\hex0_n[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex1\(4),
	devoe => ww_devoe,
	o => ww_hex0_n(4));

-- Location: IOOBUF_X34_Y0_N93
\hex0_n[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex1\(5),
	devoe => ww_devoe,
	o => ww_hex0_n(5));

-- Location: IOOBUF_X40_Y0_N36
\hex0_n[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex1\(6),
	devoe => ww_devoe,
	o => ww_hex0_n(6));

-- Location: IOOBUF_X38_Y0_N36
\hex1_n[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex2\(0),
	devoe => ww_devoe,
	o => ww_hex1_n(0));

-- Location: IOOBUF_X36_Y0_N53
\hex1_n[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex2\(1),
	devoe => ww_devoe,
	o => ww_hex1_n(1));

-- Location: IOOBUF_X40_Y0_N2
\hex1_n[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex2\(2),
	devoe => ww_devoe,
	o => ww_hex1_n(2));

-- Location: IOOBUF_X30_Y0_N53
\hex1_n[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex2\(3),
	devoe => ww_devoe,
	o => ww_hex1_n(3));

-- Location: IOOBUF_X40_Y0_N19
\hex1_n[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex2\(4),
	devoe => ww_devoe,
	o => ww_hex1_n(4));

-- Location: IOOBUF_X50_Y0_N76
\hex1_n[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex2\(5),
	devoe => ww_devoe,
	o => ww_hex1_n(5));

-- Location: IOOBUF_X40_Y0_N53
\hex1_n[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex2\(6),
	devoe => ww_devoe,
	o => ww_hex1_n(6));

-- Location: IOOBUF_X58_Y0_N93
\hex2_n[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex3\(0),
	devoe => ww_devoe,
	o => ww_hex2_n(0));

-- Location: IOOBUF_X89_Y4_N45
\hex2_n[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex3\(1),
	devoe => ww_devoe,
	o => ww_hex2_n(1));

-- Location: IOOBUF_X32_Y0_N53
\hex2_n[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex3\(2),
	devoe => ww_devoe,
	o => ww_hex2_n(2));

-- Location: IOOBUF_X58_Y0_N42
\hex2_n[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex3\(3),
	devoe => ww_devoe,
	o => ww_hex2_n(3));

-- Location: IOOBUF_X38_Y0_N53
\hex2_n[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex3\(4),
	devoe => ww_devoe,
	o => ww_hex2_n(4));

-- Location: IOOBUF_X89_Y4_N62
\hex2_n[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex3\(5),
	devoe => ww_devoe,
	o => ww_hex2_n(5));

-- Location: IOOBUF_X38_Y0_N19
\hex2_n[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_disp_ctrl|hex3\(6),
	devoe => ww_devoe,
	o => ww_hex2_n(6));

-- Location: IOOBUF_X80_Y0_N53
\hex3_n[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex3_n(0));

-- Location: IOOBUF_X20_Y0_N53
\hex3_n[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex3_n(1));

-- Location: IOOBUF_X89_Y6_N56
\hex3_n[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex3_n(2));

-- Location: IOOBUF_X60_Y0_N53
\hex3_n[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex3_n(3));

-- Location: IOOBUF_X64_Y0_N2
\hex3_n[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex3_n(4));

-- Location: IOOBUF_X32_Y81_N2
\hex3_n[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex3_n(5));

-- Location: IOOBUF_X2_Y0_N93
\hex3_n[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex3_n(6));

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

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: CLKCTRL_G4
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

-- Location: LABCELL_X10_Y29_N33
\b_gen_pll:i_startup_reset|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_startup_reset|Add0~13_sumout\ = SUM(( \b_gen_pll:i_startup_reset|reset_cnt\(2) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~10\ ))
-- \b_gen_pll:i_startup_reset|Add0~14\ = CARRY(( \b_gen_pll:i_startup_reset|reset_cnt\(2) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(2),
	cin => \b_gen_pll:i_startup_reset|Add0~10\,
	sumout => \b_gen_pll:i_startup_reset|Add0~13_sumout\,
	cout => \b_gen_pll:i_startup_reset|Add0~14\);

-- Location: LABCELL_X10_Y29_N36
\b_gen_pll:i_startup_reset|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_startup_reset|Add0~17_sumout\ = SUM(( \b_gen_pll:i_startup_reset|reset_cnt\(3) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~14\ ))
-- \b_gen_pll:i_startup_reset|Add0~18\ = CARRY(( \b_gen_pll:i_startup_reset|reset_cnt\(3) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(3),
	cin => \b_gen_pll:i_startup_reset|Add0~14\,
	sumout => \b_gen_pll:i_startup_reset|Add0~17_sumout\,
	cout => \b_gen_pll:i_startup_reset|Add0~18\);

-- Location: FF_X10_Y29_N38
\b_gen_pll:i_startup_reset|reset_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \b_gen_pll:i_startup_reset|Add0~17_sumout\,
	ena => \b_gen_pll:i_startup_reset|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_startup_reset|reset_cnt\(3));

-- Location: LABCELL_X10_Y29_N39
\b_gen_pll:i_startup_reset|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_startup_reset|Add0~1_sumout\ = SUM(( \b_gen_pll:i_startup_reset|reset_cnt\(4) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~18\ ))
-- \b_gen_pll:i_startup_reset|Add0~2\ = CARRY(( \b_gen_pll:i_startup_reset|reset_cnt\(4) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(4),
	cin => \b_gen_pll:i_startup_reset|Add0~18\,
	sumout => \b_gen_pll:i_startup_reset|Add0~1_sumout\,
	cout => \b_gen_pll:i_startup_reset|Add0~2\);

-- Location: FF_X10_Y29_N40
\b_gen_pll:i_startup_reset|reset_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \b_gen_pll:i_startup_reset|Add0~1_sumout\,
	ena => \b_gen_pll:i_startup_reset|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_startup_reset|reset_cnt\(4));

-- Location: LABCELL_X10_Y29_N42
\b_gen_pll:i_startup_reset|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_startup_reset|Add0~5_sumout\ = SUM(( \b_gen_pll:i_startup_reset|reset_cnt\(5) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~2\ ))
-- \b_gen_pll:i_startup_reset|Add0~6\ = CARRY(( \b_gen_pll:i_startup_reset|reset_cnt\(5) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(5),
	cin => \b_gen_pll:i_startup_reset|Add0~2\,
	sumout => \b_gen_pll:i_startup_reset|Add0~5_sumout\,
	cout => \b_gen_pll:i_startup_reset|Add0~6\);

-- Location: FF_X10_Y29_N44
\b_gen_pll:i_startup_reset|reset_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \b_gen_pll:i_startup_reset|Add0~5_sumout\,
	ena => \b_gen_pll:i_startup_reset|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_startup_reset|reset_cnt\(5));

-- Location: LABCELL_X10_Y29_N45
\b_gen_pll:i_startup_reset|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_startup_reset|Add0~21_sumout\ = SUM(( \b_gen_pll:i_startup_reset|reset_cnt\(6) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~6\ ))
-- \b_gen_pll:i_startup_reset|Add0~22\ = CARRY(( \b_gen_pll:i_startup_reset|reset_cnt\(6) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(6),
	cin => \b_gen_pll:i_startup_reset|Add0~6\,
	sumout => \b_gen_pll:i_startup_reset|Add0~21_sumout\,
	cout => \b_gen_pll:i_startup_reset|Add0~22\);

-- Location: FF_X10_Y29_N47
\b_gen_pll:i_startup_reset|reset_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \b_gen_pll:i_startup_reset|Add0~21_sumout\,
	ena => \b_gen_pll:i_startup_reset|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_startup_reset|reset_cnt\(6));

-- Location: LABCELL_X10_Y29_N48
\b_gen_pll:i_startup_reset|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_startup_reset|Add0~25_sumout\ = SUM(( \b_gen_pll:i_startup_reset|reset_cnt\(7) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~22\ ))
-- \b_gen_pll:i_startup_reset|Add0~26\ = CARRY(( \b_gen_pll:i_startup_reset|reset_cnt\(7) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(7),
	cin => \b_gen_pll:i_startup_reset|Add0~22\,
	sumout => \b_gen_pll:i_startup_reset|Add0~25_sumout\,
	cout => \b_gen_pll:i_startup_reset|Add0~26\);

-- Location: FF_X10_Y29_N50
\b_gen_pll:i_startup_reset|reset_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \b_gen_pll:i_startup_reset|Add0~25_sumout\,
	ena => \b_gen_pll:i_startup_reset|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_startup_reset|reset_cnt\(7));

-- Location: LABCELL_X10_Y29_N51
\b_gen_pll:i_startup_reset|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_startup_reset|Add0~29_sumout\ = SUM(( \b_gen_pll:i_startup_reset|reset_cnt\(8) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~26\ ))
-- \b_gen_pll:i_startup_reset|Add0~30\ = CARRY(( \b_gen_pll:i_startup_reset|reset_cnt\(8) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(8),
	cin => \b_gen_pll:i_startup_reset|Add0~26\,
	sumout => \b_gen_pll:i_startup_reset|Add0~29_sumout\,
	cout => \b_gen_pll:i_startup_reset|Add0~30\);

-- Location: FF_X10_Y29_N52
\b_gen_pll:i_startup_reset|reset_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \b_gen_pll:i_startup_reset|Add0~29_sumout\,
	ena => \b_gen_pll:i_startup_reset|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_startup_reset|reset_cnt\(8));

-- Location: LABCELL_X10_Y29_N54
\b_gen_pll:i_startup_reset|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_startup_reset|Add0~33_sumout\ = SUM(( \b_gen_pll:i_startup_reset|reset_cnt\(9) ) + ( GND ) + ( \b_gen_pll:i_startup_reset|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(9),
	cin => \b_gen_pll:i_startup_reset|Add0~30\,
	sumout => \b_gen_pll:i_startup_reset|Add0~33_sumout\);

-- Location: FF_X10_Y29_N56
\b_gen_pll:i_startup_reset|reset_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \b_gen_pll:i_startup_reset|Add0~33_sumout\,
	ena => \b_gen_pll:i_startup_reset|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_startup_reset|reset_cnt\(9));

-- Location: LABCELL_X10_Y29_N12
\b_gen_pll:i_startup_reset|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_startup_reset|LessThan0~1_combout\ = ( \b_gen_pll:i_startup_reset|reset_cnt\(7) & ( (\b_gen_pll:i_startup_reset|reset_cnt\(8) & (\b_gen_pll:i_startup_reset|reset_cnt\(9) & \b_gen_pll:i_startup_reset|reset_cnt\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(8),
	datac => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(9),
	datad => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(6),
	dataf => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(7),
	combout => \b_gen_pll:i_startup_reset|LessThan0~1_combout\);

-- Location: LABCELL_X10_Y29_N9
\b_gen_pll:i_startup_reset|reset_cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_startup_reset|reset_cnt[0]~0_combout\ = ( \b_gen_pll:i_startup_reset|reset_cnt\(4) & ( !\b_gen_pll:i_startup_reset|reset_cnt\(0) $ (((\b_gen_pll:i_startup_reset|LessThan0~0_combout\ & (\b_gen_pll:i_startup_reset|LessThan0~1_combout\ & 
-- \b_gen_pll:i_startup_reset|reset_cnt\(5))))) ) ) # ( !\b_gen_pll:i_startup_reset|reset_cnt\(4) & ( !\b_gen_pll:i_startup_reset|reset_cnt\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111110000000011111111000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_startup_reset|ALT_INV_LessThan0~0_combout\,
	datab => \b_gen_pll:i_startup_reset|ALT_INV_LessThan0~1_combout\,
	datac => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(5),
	datad => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(0),
	dataf => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(4),
	combout => \b_gen_pll:i_startup_reset|reset_cnt[0]~0_combout\);

-- Location: FF_X10_Y29_N11
\b_gen_pll:i_startup_reset|reset_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \b_gen_pll:i_startup_reset|reset_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_startup_reset|reset_cnt\(0));

-- Location: LABCELL_X10_Y29_N30
\b_gen_pll:i_startup_reset|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_startup_reset|Add0~9_sumout\ = SUM(( \b_gen_pll:i_startup_reset|reset_cnt\(1) ) + ( \b_gen_pll:i_startup_reset|reset_cnt\(0) ) + ( !VCC ))
-- \b_gen_pll:i_startup_reset|Add0~10\ = CARRY(( \b_gen_pll:i_startup_reset|reset_cnt\(1) ) + ( \b_gen_pll:i_startup_reset|reset_cnt\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(0),
	datad => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(1),
	cin => GND,
	sumout => \b_gen_pll:i_startup_reset|Add0~9_sumout\,
	cout => \b_gen_pll:i_startup_reset|Add0~10\);

-- Location: FF_X10_Y29_N32
\b_gen_pll:i_startup_reset|reset_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \b_gen_pll:i_startup_reset|Add0~9_sumout\,
	ena => \b_gen_pll:i_startup_reset|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_startup_reset|reset_cnt\(1));

-- Location: FF_X10_Y29_N35
\b_gen_pll:i_startup_reset|reset_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \b_gen_pll:i_startup_reset|Add0~13_sumout\,
	ena => \b_gen_pll:i_startup_reset|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_startup_reset|reset_cnt\(2));

-- Location: LABCELL_X10_Y29_N15
\b_gen_pll:i_startup_reset|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_startup_reset|LessThan0~0_combout\ = ( \b_gen_pll:i_startup_reset|reset_cnt\(0) & ( (\b_gen_pll:i_startup_reset|reset_cnt\(2) & (\b_gen_pll:i_startup_reset|reset_cnt\(1) & \b_gen_pll:i_startup_reset|reset_cnt\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(2),
	datac => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(1),
	datad => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(3),
	dataf => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(0),
	combout => \b_gen_pll:i_startup_reset|LessThan0~0_combout\);

-- Location: LABCELL_X10_Y29_N6
\b_gen_pll:i_startup_reset|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_startup_reset|LessThan0~2_combout\ = ( \b_gen_pll:i_startup_reset|reset_cnt\(5) & ( (!\b_gen_pll:i_startup_reset|LessThan0~0_combout\) # ((!\b_gen_pll:i_startup_reset|LessThan0~1_combout\) # (!\b_gen_pll:i_startup_reset|reset_cnt\(4))) ) ) # 
-- ( !\b_gen_pll:i_startup_reset|reset_cnt\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_startup_reset|ALT_INV_LessThan0~0_combout\,
	datab => \b_gen_pll:i_startup_reset|ALT_INV_LessThan0~1_combout\,
	datac => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(4),
	dataf => \b_gen_pll:i_startup_reset|ALT_INV_reset_cnt\(5),
	combout => \b_gen_pll:i_startup_reset|LessThan0~2_combout\);

-- Location: LABCELL_X10_Y29_N24
\b_gen_pll:i_startup_reset|startup_reset_out~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_startup_reset|startup_reset_out~feeder_combout\ = ( \b_gen_pll:i_startup_reset|LessThan0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b_gen_pll:i_startup_reset|ALT_INV_LessThan0~2_combout\,
	combout => \b_gen_pll:i_startup_reset|startup_reset_out~feeder_combout\);

-- Location: FF_X10_Y29_N25
\b_gen_pll:i_startup_reset|startup_reset_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \b_gen_pll:i_startup_reset|startup_reset_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_startup_reset|startup_reset_out~q\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 4000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 6,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 6,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \b_gen_pll:i_startup_reset|startup_reset_out~q\,
	refclkin => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|fboutclk_wire\(0),
	lock => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|locked_wire\(0),
	tclk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y19_N1
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 3,
	dprio0_cnt_lo_div => 3,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "50.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 5)
-- pragma translate_on
PORT MAP (
	nen0 => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\,
	tclk0 => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire\(1));

-- Location: CLKCTRL_G7
\b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire\(1),
	outclk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\);

-- Location: LABCELL_X42_Y4_N0
\uart|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add3~21_sumout\ = SUM(( \uart|tx_bit_cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \uart|Add3~22\ = CARRY(( \uart|tx_bit_cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_tx_bit_cnt\(0),
	cin => GND,
	sumout => \uart|Add3~21_sumout\,
	cout => \uart|Add3~22\);

-- Location: FF_X31_Y5_N35
\b_gen_pll:i_reset_ctrl|reset_cnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \b_gen_pll:i_reset_ctrl|Add0~1_sumout\,
	clrn => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|locked_wire\(0),
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_reset_ctrl|reset_cnt[2]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y5_N30
\b_gen_pll:i_reset_ctrl|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|Add0~5_sumout\ = SUM(( \b_gen_pll:i_reset_ctrl|reset_cnt\(1) ) + ( \b_gen_pll:i_reset_ctrl|reset_cnt\(0) ) + ( !VCC ))
-- \b_gen_pll:i_reset_ctrl|Add0~6\ = CARRY(( \b_gen_pll:i_reset_ctrl|reset_cnt\(1) ) + ( \b_gen_pll:i_reset_ctrl|reset_cnt\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(0),
	datad => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(1),
	cin => GND,
	sumout => \b_gen_pll:i_reset_ctrl|Add0~5_sumout\,
	cout => \b_gen_pll:i_reset_ctrl|Add0~6\);

-- Location: FF_X31_Y5_N32
\b_gen_pll:i_reset_ctrl|reset_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \b_gen_pll:i_reset_ctrl|Add0~5_sumout\,
	clrn => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|locked_wire\(0),
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_reset_ctrl|reset_cnt\(1));

-- Location: LABCELL_X31_Y5_N54
\b_gen_pll:i_reset_ctrl|reset_cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_cnt[0]~0_combout\ = ( \b_gen_pll:i_reset_ctrl|reset_cnt\(0) & ( \b_gen_pll:i_reset_ctrl|LessThan0~0_combout\ & ( (\b_gen_pll:i_reset_ctrl|reset_cnt[2]~DUPLICATE_q\ & \b_gen_pll:i_reset_ctrl|reset_cnt\(1)) ) ) ) # ( 
-- !\b_gen_pll:i_reset_ctrl|reset_cnt\(0) & ( \b_gen_pll:i_reset_ctrl|LessThan0~0_combout\ ) ) # ( !\b_gen_pll:i_reset_ctrl|reset_cnt\(0) & ( !\b_gen_pll:i_reset_ctrl|LessThan0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt[2]~DUPLICATE_q\,
	datab => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(1),
	datae => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(0),
	dataf => \b_gen_pll:i_reset_ctrl|ALT_INV_LessThan0~0_combout\,
	combout => \b_gen_pll:i_reset_ctrl|reset_cnt[0]~0_combout\);

-- Location: FF_X31_Y5_N56
\b_gen_pll:i_reset_ctrl|reset_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \b_gen_pll:i_reset_ctrl|reset_cnt[0]~0_combout\,
	clrn => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_reset_ctrl|reset_cnt\(0));

-- Location: LABCELL_X31_Y5_N33
\b_gen_pll:i_reset_ctrl|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|Add0~1_sumout\ = SUM(( \b_gen_pll:i_reset_ctrl|reset_cnt\(2) ) + ( GND ) + ( \b_gen_pll:i_reset_ctrl|Add0~6\ ))
-- \b_gen_pll:i_reset_ctrl|Add0~2\ = CARRY(( \b_gen_pll:i_reset_ctrl|reset_cnt\(2) ) + ( GND ) + ( \b_gen_pll:i_reset_ctrl|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(2),
	cin => \b_gen_pll:i_reset_ctrl|Add0~6\,
	sumout => \b_gen_pll:i_reset_ctrl|Add0~1_sumout\,
	cout => \b_gen_pll:i_reset_ctrl|Add0~2\);

-- Location: FF_X31_Y5_N34
\b_gen_pll:i_reset_ctrl|reset_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \b_gen_pll:i_reset_ctrl|Add0~1_sumout\,
	clrn => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|locked_wire\(0),
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_reset_ctrl|reset_cnt\(2));

-- Location: LABCELL_X31_Y5_N36
\b_gen_pll:i_reset_ctrl|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|Add0~21_sumout\ = SUM(( \b_gen_pll:i_reset_ctrl|reset_cnt\(3) ) + ( GND ) + ( \b_gen_pll:i_reset_ctrl|Add0~2\ ))
-- \b_gen_pll:i_reset_ctrl|Add0~22\ = CARRY(( \b_gen_pll:i_reset_ctrl|reset_cnt\(3) ) + ( GND ) + ( \b_gen_pll:i_reset_ctrl|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(3),
	cin => \b_gen_pll:i_reset_ctrl|Add0~2\,
	sumout => \b_gen_pll:i_reset_ctrl|Add0~21_sumout\,
	cout => \b_gen_pll:i_reset_ctrl|Add0~22\);

-- Location: FF_X31_Y5_N38
\b_gen_pll:i_reset_ctrl|reset_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \b_gen_pll:i_reset_ctrl|Add0~21_sumout\,
	clrn => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|locked_wire\(0),
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_reset_ctrl|reset_cnt\(3));

-- Location: LABCELL_X31_Y5_N39
\b_gen_pll:i_reset_ctrl|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|Add0~17_sumout\ = SUM(( \b_gen_pll:i_reset_ctrl|reset_cnt\(4) ) + ( GND ) + ( \b_gen_pll:i_reset_ctrl|Add0~22\ ))
-- \b_gen_pll:i_reset_ctrl|Add0~18\ = CARRY(( \b_gen_pll:i_reset_ctrl|reset_cnt\(4) ) + ( GND ) + ( \b_gen_pll:i_reset_ctrl|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(4),
	cin => \b_gen_pll:i_reset_ctrl|Add0~22\,
	sumout => \b_gen_pll:i_reset_ctrl|Add0~17_sumout\,
	cout => \b_gen_pll:i_reset_ctrl|Add0~18\);

-- Location: FF_X31_Y5_N41
\b_gen_pll:i_reset_ctrl|reset_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \b_gen_pll:i_reset_ctrl|Add0~17_sumout\,
	clrn => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|locked_wire\(0),
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_reset_ctrl|reset_cnt\(4));

-- Location: LABCELL_X31_Y5_N42
\b_gen_pll:i_reset_ctrl|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|Add0~13_sumout\ = SUM(( \b_gen_pll:i_reset_ctrl|reset_cnt\(5) ) + ( GND ) + ( \b_gen_pll:i_reset_ctrl|Add0~18\ ))
-- \b_gen_pll:i_reset_ctrl|Add0~14\ = CARRY(( \b_gen_pll:i_reset_ctrl|reset_cnt\(5) ) + ( GND ) + ( \b_gen_pll:i_reset_ctrl|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(5),
	cin => \b_gen_pll:i_reset_ctrl|Add0~18\,
	sumout => \b_gen_pll:i_reset_ctrl|Add0~13_sumout\,
	cout => \b_gen_pll:i_reset_ctrl|Add0~14\);

-- Location: FF_X31_Y5_N43
\b_gen_pll:i_reset_ctrl|reset_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \b_gen_pll:i_reset_ctrl|Add0~13_sumout\,
	clrn => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|locked_wire\(0),
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_reset_ctrl|reset_cnt\(5));

-- Location: LABCELL_X31_Y5_N45
\b_gen_pll:i_reset_ctrl|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|Add0~9_sumout\ = SUM(( \b_gen_pll:i_reset_ctrl|reset_cnt\(6) ) + ( GND ) + ( \b_gen_pll:i_reset_ctrl|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(6),
	cin => \b_gen_pll:i_reset_ctrl|Add0~14\,
	sumout => \b_gen_pll:i_reset_ctrl|Add0~9_sumout\);

-- Location: FF_X31_Y5_N47
\b_gen_pll:i_reset_ctrl|reset_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \b_gen_pll:i_reset_ctrl|Add0~9_sumout\,
	clrn => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|locked_wire\(0),
	ena => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_reset_ctrl|reset_cnt\(6));

-- Location: LABCELL_X31_Y5_N48
\b_gen_pll:i_reset_ctrl|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|LessThan0~0_combout\ = ( \b_gen_pll:i_reset_ctrl|reset_cnt\(5) & ( (\b_gen_pll:i_reset_ctrl|reset_cnt\(4) & (\b_gen_pll:i_reset_ctrl|reset_cnt\(3) & \b_gen_pll:i_reset_ctrl|reset_cnt\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(4),
	datac => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(3),
	datad => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(6),
	dataf => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(5),
	combout => \b_gen_pll:i_reset_ctrl|LessThan0~0_combout\);

-- Location: LABCELL_X31_Y5_N51
\b_gen_pll:i_reset_ctrl|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\ = ( \b_gen_pll:i_reset_ctrl|reset_cnt\(2) & ( (!\b_gen_pll:i_reset_ctrl|LessThan0~0_combout\) # ((!\b_gen_pll:i_reset_ctrl|reset_cnt\(1)) # (!\b_gen_pll:i_reset_ctrl|reset_cnt\(0))) ) ) # ( 
-- !\b_gen_pll:i_reset_ctrl|reset_cnt\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b_gen_pll:i_reset_ctrl|ALT_INV_LessThan0~0_combout\,
	datac => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(1),
	datad => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(0),
	dataf => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_cnt\(2),
	combout => \b_gen_pll:i_reset_ctrl|LessThan0~1_combout\);

-- Location: LABCELL_X31_Y5_N15
\b_gen_pll:i_reset_ctrl|reset_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_gen_pll:i_reset_ctrl|reset_out~0_combout\ = ( !\b_gen_pll:i_reset_ctrl|LessThan0~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b_gen_pll:i_reset_ctrl|ALT_INV_LessThan0~1_combout\,
	combout => \b_gen_pll:i_reset_ctrl|reset_out~0_combout\);

-- Location: FF_X31_Y5_N17
\b_gen_pll:i_reset_ctrl|reset_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \b_gen_pll:i_reset_ctrl|reset_out~0_combout\,
	clrn => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_gen_pll:i_reset_ctrl|reset_out~q\);

-- Location: LABCELL_X37_Y4_N3
\uart|reset_r~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|reset_r~0_combout\ = ( !\b_gen_pll:i_reset_ctrl|reset_out~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	combout => \uart|reset_r~0_combout\);

-- Location: FF_X37_Y4_N5
\uart|reset_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|reset_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|reset_r~q\);

-- Location: FF_X37_Y4_N14
\uart|reset_2r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \uart|reset_r~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|reset_2r~q\);

-- Location: LABCELL_X42_Y3_N15
\uart|tx_state~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|tx_state~7_combout\ = ( !\uart|reset_2r~q\ & ( \uart|Selector30~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart|ALT_INV_Selector30~0_combout\,
	dataf => \uart|ALT_INV_reset_2r~q\,
	combout => \uart|tx_state~7_combout\);

-- Location: FF_X42_Y3_N17
\uart|tx_state.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|tx_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_state.s_idle~q\);

-- Location: FF_X28_Y13_N50
\pwm|pwm_state.pwm_idel~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector11~2_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_state.pwm_idel~DUPLICATE_q\);

-- Location: IOIBUF_X18_Y0_N41
\key_n[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n(2),
	o => \key_n[2]~input_o\);

-- Location: LABCELL_X18_Y1_N33
\key_ctrl|key_n_r[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|key_n_r[2]~feeder_combout\ = ( \key_n[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_key_n[2]~input_o\,
	combout => \key_ctrl|key_n_r[2]~feeder_combout\);

-- Location: FF_X18_Y1_N35
\key_ctrl|key_n_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|key_n_r[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|key_n_r\(2));

-- Location: LABCELL_X18_Y1_N42
\key_ctrl|key_n_r2[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|key_n_r2[2]~feeder_combout\ = \key_ctrl|key_n_r\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \key_ctrl|ALT_INV_key_n_r\(2),
	combout => \key_ctrl|key_n_r2[2]~feeder_combout\);

-- Location: FF_X18_Y1_N43
\key_ctrl|key_n_r2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|key_n_r2[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|key_n_r2\(2));

-- Location: IOIBUF_X18_Y0_N75
\key_n[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n(0),
	o => \key_n[0]~input_o\);

-- Location: LABCELL_X18_Y1_N15
\key_ctrl|key_n_r[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|key_n_r[0]~feeder_combout\ = ( \key_n[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_key_n[0]~input_o\,
	combout => \key_ctrl|key_n_r[0]~feeder_combout\);

-- Location: FF_X18_Y1_N17
\key_ctrl|key_n_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|key_n_r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|key_n_r\(0));

-- Location: LABCELL_X18_Y1_N36
\key_ctrl|key_n_r2[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|key_n_r2[0]~feeder_combout\ = \key_ctrl|key_n_r\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|ALT_INV_key_n_r\(0),
	combout => \key_ctrl|key_n_r2[0]~feeder_combout\);

-- Location: FF_X18_Y1_N37
\key_ctrl|key_n_r2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|key_n_r2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|key_n_r2\(0));

-- Location: IOIBUF_X22_Y0_N18
\key_n[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n(1),
	o => \key_n[1]~input_o\);

-- Location: FF_X28_Y12_N35
\key_ctrl|key_n_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \key_n[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|key_n_r\(1));

-- Location: FF_X28_Y12_N26
\key_ctrl|key_n_r2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \key_ctrl|key_n_r\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|key_n_r2\(1));

-- Location: IOIBUF_X22_Y0_N52
\key_n[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_n(3),
	o => \key_n[3]~input_o\);

-- Location: LABCELL_X22_Y1_N9
\key_ctrl|key_n_r[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|key_n_r[3]~feeder_combout\ = ( \key_n[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_key_n[3]~input_o\,
	combout => \key_ctrl|key_n_r[3]~feeder_combout\);

-- Location: FF_X22_Y1_N11
\key_ctrl|key_n_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|key_n_r[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|key_n_r\(3));

-- Location: LABCELL_X22_Y1_N15
\key_ctrl|key_n_r2[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|key_n_r2[3]~feeder_combout\ = \key_ctrl|key_n_r\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \key_ctrl|ALT_INV_key_n_r\(3),
	combout => \key_ctrl|key_n_r2[3]~feeder_combout\);

-- Location: FF_X22_Y1_N16
\key_ctrl|key_n_r2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|key_n_r2[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|key_n_r2\(3));

-- Location: MLABCELL_X28_Y12_N24
\key_ctrl|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Equal0~0_combout\ = ( \key_ctrl|key_n_r2\(1) & ( \key_ctrl|key_n_r2\(3) & ( (!\key_ctrl|key_n_r2\(2)) # (!\key_ctrl|key_n_r2\(0)) ) ) ) # ( !\key_ctrl|key_n_r2\(1) & ( \key_ctrl|key_n_r2\(3) ) ) # ( \key_ctrl|key_n_r2\(1) & ( 
-- !\key_ctrl|key_n_r2\(3) ) ) # ( !\key_ctrl|key_n_r2\(1) & ( !\key_ctrl|key_n_r2\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|ALT_INV_key_n_r2\(2),
	datac => \key_ctrl|ALT_INV_key_n_r2\(0),
	datae => \key_ctrl|ALT_INV_key_n_r2\(1),
	dataf => \key_ctrl|ALT_INV_key_n_r2\(3),
	combout => \key_ctrl|Equal0~0_combout\);

-- Location: FF_X28_Y12_N10
\key_ctrl|cnt_enabled_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \key_ctrl|Equal0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|cnt_enabled_t~q\);

-- Location: LABCELL_X27_Y12_N0
\key_ctrl|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~73_sumout\ = SUM(( \key_ctrl|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \key_ctrl|Add0~74\ = CARRY(( \key_ctrl|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \key_ctrl|ALT_INV_counter\(0),
	cin => GND,
	sumout => \key_ctrl|Add0~73_sumout\,
	cout => \key_ctrl|Add0~74\);

-- Location: FF_X27_Y12_N1
\key_ctrl|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~73_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(0));

-- Location: LABCELL_X27_Y12_N3
\key_ctrl|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~69_sumout\ = SUM(( \key_ctrl|counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \key_ctrl|Add0~74\ ))
-- \key_ctrl|Add0~70\ = CARRY(( \key_ctrl|counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \key_ctrl|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_counter[1]~DUPLICATE_q\,
	cin => \key_ctrl|Add0~74\,
	sumout => \key_ctrl|Add0~69_sumout\,
	cout => \key_ctrl|Add0~70\);

-- Location: FF_X27_Y12_N5
\key_ctrl|counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~69_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y12_N6
\key_ctrl|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~5_sumout\ = SUM(( \key_ctrl|counter\(2) ) + ( GND ) + ( \key_ctrl|Add0~70\ ))
-- \key_ctrl|Add0~6\ = CARRY(( \key_ctrl|counter\(2) ) + ( GND ) + ( \key_ctrl|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|ALT_INV_counter\(2),
	cin => \key_ctrl|Add0~70\,
	sumout => \key_ctrl|Add0~5_sumout\,
	cout => \key_ctrl|Add0~6\);

-- Location: LABCELL_X27_Y12_N9
\key_ctrl|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~9_sumout\ = SUM(( \key_ctrl|counter\(3) ) + ( GND ) + ( \key_ctrl|Add0~6\ ))
-- \key_ctrl|Add0~10\ = CARRY(( \key_ctrl|counter\(3) ) + ( GND ) + ( \key_ctrl|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_counter\(3),
	cin => \key_ctrl|Add0~6\,
	sumout => \key_ctrl|Add0~9_sumout\,
	cout => \key_ctrl|Add0~10\);

-- Location: FF_X27_Y12_N10
\key_ctrl|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~9_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(3));

-- Location: LABCELL_X27_Y12_N12
\key_ctrl|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~37_sumout\ = SUM(( \key_ctrl|counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \key_ctrl|Add0~10\ ))
-- \key_ctrl|Add0~38\ = CARRY(( \key_ctrl|counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \key_ctrl|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|ALT_INV_counter[4]~DUPLICATE_q\,
	cin => \key_ctrl|Add0~10\,
	sumout => \key_ctrl|Add0~37_sumout\,
	cout => \key_ctrl|Add0~38\);

-- Location: FF_X27_Y12_N14
\key_ctrl|counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~37_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter[4]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y12_N15
\key_ctrl|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~1_sumout\ = SUM(( \key_ctrl|counter\(5) ) + ( GND ) + ( \key_ctrl|Add0~38\ ))
-- \key_ctrl|Add0~2\ = CARRY(( \key_ctrl|counter\(5) ) + ( GND ) + ( \key_ctrl|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \key_ctrl|ALT_INV_counter\(5),
	cin => \key_ctrl|Add0~38\,
	sumout => \key_ctrl|Add0~1_sumout\,
	cout => \key_ctrl|Add0~2\);

-- Location: FF_X27_Y12_N16
\key_ctrl|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~1_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(5));

-- Location: LABCELL_X27_Y12_N18
\key_ctrl|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~17_sumout\ = SUM(( \key_ctrl|counter\(6) ) + ( GND ) + ( \key_ctrl|Add0~2\ ))
-- \key_ctrl|Add0~18\ = CARRY(( \key_ctrl|counter\(6) ) + ( GND ) + ( \key_ctrl|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|ALT_INV_counter\(6),
	cin => \key_ctrl|Add0~2\,
	sumout => \key_ctrl|Add0~17_sumout\,
	cout => \key_ctrl|Add0~18\);

-- Location: FF_X27_Y12_N19
\key_ctrl|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~17_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(6));

-- Location: LABCELL_X27_Y12_N21
\key_ctrl|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~65_sumout\ = SUM(( \key_ctrl|counter\(7) ) + ( GND ) + ( \key_ctrl|Add0~18\ ))
-- \key_ctrl|Add0~66\ = CARRY(( \key_ctrl|counter\(7) ) + ( GND ) + ( \key_ctrl|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_counter\(7),
	cin => \key_ctrl|Add0~18\,
	sumout => \key_ctrl|Add0~65_sumout\,
	cout => \key_ctrl|Add0~66\);

-- Location: FF_X27_Y12_N23
\key_ctrl|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~65_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(7));

-- Location: LABCELL_X27_Y12_N24
\key_ctrl|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~21_sumout\ = SUM(( \key_ctrl|counter\(8) ) + ( GND ) + ( \key_ctrl|Add0~66\ ))
-- \key_ctrl|Add0~22\ = CARRY(( \key_ctrl|counter\(8) ) + ( GND ) + ( \key_ctrl|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|ALT_INV_counter\(8),
	cin => \key_ctrl|Add0~66\,
	sumout => \key_ctrl|Add0~21_sumout\,
	cout => \key_ctrl|Add0~22\);

-- Location: FF_X27_Y12_N25
\key_ctrl|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~21_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(8));

-- Location: LABCELL_X27_Y12_N27
\key_ctrl|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~25_sumout\ = SUM(( \key_ctrl|counter\(9) ) + ( GND ) + ( \key_ctrl|Add0~22\ ))
-- \key_ctrl|Add0~26\ = CARRY(( \key_ctrl|counter\(9) ) + ( GND ) + ( \key_ctrl|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \key_ctrl|ALT_INV_counter\(9),
	cin => \key_ctrl|Add0~22\,
	sumout => \key_ctrl|Add0~25_sumout\,
	cout => \key_ctrl|Add0~26\);

-- Location: FF_X27_Y12_N28
\key_ctrl|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~25_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(9));

-- Location: LABCELL_X27_Y12_N30
\key_ctrl|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~61_sumout\ = SUM(( \key_ctrl|counter\(10) ) + ( GND ) + ( \key_ctrl|Add0~26\ ))
-- \key_ctrl|Add0~62\ = CARRY(( \key_ctrl|counter\(10) ) + ( GND ) + ( \key_ctrl|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \key_ctrl|ALT_INV_counter\(10),
	cin => \key_ctrl|Add0~26\,
	sumout => \key_ctrl|Add0~61_sumout\,
	cout => \key_ctrl|Add0~62\);

-- Location: FF_X27_Y12_N31
\key_ctrl|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~61_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(10));

-- Location: FF_X27_Y12_N35
\key_ctrl|counter[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~57_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter[11]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y12_N33
\key_ctrl|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~57_sumout\ = SUM(( \key_ctrl|counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \key_ctrl|Add0~62\ ))
-- \key_ctrl|Add0~58\ = CARRY(( \key_ctrl|counter[11]~DUPLICATE_q\ ) + ( GND ) + ( \key_ctrl|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_counter[11]~DUPLICATE_q\,
	cin => \key_ctrl|Add0~62\,
	sumout => \key_ctrl|Add0~57_sumout\,
	cout => \key_ctrl|Add0~58\);

-- Location: FF_X27_Y12_N34
\key_ctrl|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~57_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(11));

-- Location: LABCELL_X27_Y12_N36
\key_ctrl|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~45_sumout\ = SUM(( \key_ctrl|counter\(12) ) + ( GND ) + ( \key_ctrl|Add0~58\ ))
-- \key_ctrl|Add0~46\ = CARRY(( \key_ctrl|counter\(12) ) + ( GND ) + ( \key_ctrl|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_counter\(12),
	cin => \key_ctrl|Add0~58\,
	sumout => \key_ctrl|Add0~45_sumout\,
	cout => \key_ctrl|Add0~46\);

-- Location: FF_X27_Y12_N38
\key_ctrl|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~45_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(12));

-- Location: LABCELL_X27_Y12_N39
\key_ctrl|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~53_sumout\ = SUM(( \key_ctrl|counter\(13) ) + ( GND ) + ( \key_ctrl|Add0~46\ ))
-- \key_ctrl|Add0~54\ = CARRY(( \key_ctrl|counter\(13) ) + ( GND ) + ( \key_ctrl|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \key_ctrl|ALT_INV_counter\(13),
	cin => \key_ctrl|Add0~46\,
	sumout => \key_ctrl|Add0~53_sumout\,
	cout => \key_ctrl|Add0~54\);

-- Location: FF_X27_Y12_N40
\key_ctrl|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~53_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(13));

-- Location: FF_X27_Y12_N4
\key_ctrl|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~69_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(1));

-- Location: FF_X27_Y12_N22
\key_ctrl|counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~65_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter[7]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y12_N54
\key_ctrl|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Equal1~2_combout\ = ( !\key_ctrl|counter[7]~DUPLICATE_q\ & ( !\key_ctrl|counter\(0) & ( (!\key_ctrl|counter\(10) & (!\key_ctrl|counter\(11) & (\key_ctrl|counter\(13) & !\key_ctrl|counter\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_counter\(10),
	datab => \key_ctrl|ALT_INV_counter\(11),
	datac => \key_ctrl|ALT_INV_counter\(13),
	datad => \key_ctrl|ALT_INV_counter\(1),
	datae => \key_ctrl|ALT_INV_counter[7]~DUPLICATE_q\,
	dataf => \key_ctrl|ALT_INV_counter\(0),
	combout => \key_ctrl|Equal1~2_combout\);

-- Location: FF_X27_Y12_N13
\key_ctrl|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~37_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(4));

-- Location: LABCELL_X27_Y12_N42
\key_ctrl|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~49_sumout\ = SUM(( \key_ctrl|counter\(14) ) + ( GND ) + ( \key_ctrl|Add0~54\ ))
-- \key_ctrl|Add0~50\ = CARRY(( \key_ctrl|counter\(14) ) + ( GND ) + ( \key_ctrl|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \key_ctrl|ALT_INV_counter\(14),
	cin => \key_ctrl|Add0~54\,
	sumout => \key_ctrl|Add0~49_sumout\,
	cout => \key_ctrl|Add0~50\);

-- Location: FF_X27_Y12_N43
\key_ctrl|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~49_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(14));

-- Location: FF_X27_Y12_N37
\key_ctrl|counter[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~45_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter[12]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y12_N45
\key_ctrl|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~13_sumout\ = SUM(( \key_ctrl|counter\(15) ) + ( GND ) + ( \key_ctrl|Add0~50\ ))
-- \key_ctrl|Add0~14\ = CARRY(( \key_ctrl|counter\(15) ) + ( GND ) + ( \key_ctrl|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|ALT_INV_counter\(15),
	cin => \key_ctrl|Add0~50\,
	sumout => \key_ctrl|Add0~13_sumout\,
	cout => \key_ctrl|Add0~14\);

-- Location: FF_X27_Y12_N47
\key_ctrl|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~13_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(15));

-- Location: LABCELL_X27_Y12_N48
\key_ctrl|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~41_sumout\ = SUM(( \key_ctrl|counter\(16) ) + ( GND ) + ( \key_ctrl|Add0~14\ ))
-- \key_ctrl|Add0~42\ = CARRY(( \key_ctrl|counter\(16) ) + ( GND ) + ( \key_ctrl|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|ALT_INV_counter\(16),
	cin => \key_ctrl|Add0~14\,
	sumout => \key_ctrl|Add0~41_sumout\,
	cout => \key_ctrl|Add0~42\);

-- Location: FF_X27_Y12_N49
\key_ctrl|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~41_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(16));

-- Location: LABCELL_X27_Y12_N51
\key_ctrl|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~33_sumout\ = SUM(( \key_ctrl|counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \key_ctrl|Add0~42\ ))
-- \key_ctrl|Add0~34\ = CARRY(( \key_ctrl|counter[17]~DUPLICATE_q\ ) + ( GND ) + ( \key_ctrl|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_counter[17]~DUPLICATE_q\,
	cin => \key_ctrl|Add0~42\,
	sumout => \key_ctrl|Add0~33_sumout\,
	cout => \key_ctrl|Add0~34\);

-- Location: FF_X27_Y12_N53
\key_ctrl|counter[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~33_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter[17]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y12_N54
\key_ctrl|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Add0~29_sumout\ = SUM(( \key_ctrl|counter\(18) ) + ( GND ) + ( \key_ctrl|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \key_ctrl|ALT_INV_counter\(18),
	cin => \key_ctrl|Add0~34\,
	sumout => \key_ctrl|Add0~29_sumout\);

-- Location: FF_X27_Y12_N55
\key_ctrl|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~29_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(18));

-- Location: FF_X27_Y12_N52
\key_ctrl|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~33_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(17));

-- Location: MLABCELL_X28_Y12_N48
\key_ctrl|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Equal1~1_combout\ = ( \key_ctrl|counter\(16) & ( \key_ctrl|counter\(17) & ( (!\key_ctrl|counter\(4) & (!\key_ctrl|counter\(14) & (!\key_ctrl|counter[12]~DUPLICATE_q\ & \key_ctrl|counter\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_counter\(4),
	datab => \key_ctrl|ALT_INV_counter\(14),
	datac => \key_ctrl|ALT_INV_counter[12]~DUPLICATE_q\,
	datad => \key_ctrl|ALT_INV_counter\(18),
	datae => \key_ctrl|ALT_INV_counter\(16),
	dataf => \key_ctrl|ALT_INV_counter\(17),
	combout => \key_ctrl|Equal1~1_combout\);

-- Location: MLABCELL_X28_Y12_N39
\key_ctrl|key_off~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|key_off~1_combout\ = ( \key_ctrl|Equal1~1_combout\ & ( (!\key_ctrl|cnt_enabled_t~q\) # ((\key_ctrl|Equal1~2_combout\ & (\key_ctrl|Equal1~0_combout\ & \key_ctrl|counter\(5)))) ) ) # ( !\key_ctrl|Equal1~1_combout\ & ( !\key_ctrl|cnt_enabled_t~q\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_Equal1~2_combout\,
	datab => \key_ctrl|ALT_INV_Equal1~0_combout\,
	datac => \key_ctrl|ALT_INV_counter\(5),
	datad => \key_ctrl|ALT_INV_cnt_enabled_t~q\,
	dataf => \key_ctrl|ALT_INV_Equal1~1_combout\,
	combout => \key_ctrl|key_off~1_combout\);

-- Location: FF_X27_Y12_N8
\key_ctrl|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~5_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter\(2));

-- Location: FF_X27_Y12_N7
\key_ctrl|counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~5_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter[2]~DUPLICATE_q\);

-- Location: FF_X27_Y12_N46
\key_ctrl|counter[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|Add0~13_sumout\,
	sclr => \key_ctrl|key_off~1_combout\,
	ena => \key_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|counter[15]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y12_N6
\key_ctrl|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|Equal1~0_combout\ = ( !\key_ctrl|counter\(9) & ( \key_ctrl|counter\(8) & ( (!\key_ctrl|counter[2]~DUPLICATE_q\ & (!\key_ctrl|counter\(3) & (\key_ctrl|counter[15]~DUPLICATE_q\ & !\key_ctrl|counter\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_counter[2]~DUPLICATE_q\,
	datab => \key_ctrl|ALT_INV_counter\(3),
	datac => \key_ctrl|ALT_INV_counter[15]~DUPLICATE_q\,
	datad => \key_ctrl|ALT_INV_counter\(6),
	datae => \key_ctrl|ALT_INV_counter\(9),
	dataf => \key_ctrl|ALT_INV_counter\(8),
	combout => \key_ctrl|Equal1~0_combout\);

-- Location: MLABCELL_X28_Y12_N0
\key_ctrl|key_up~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|key_up~0_combout\ = ( \key_ctrl|Equal1~2_combout\ & ( !\key_ctrl|key_n_r2\(3) & ( (!\key_ctrl|cnt_enabled_t~q\) # ((\key_ctrl|Equal1~0_combout\ & (\key_ctrl|Equal1~1_combout\ & \key_ctrl|counter\(5)))) ) ) ) # ( !\key_ctrl|Equal1~2_combout\ & ( 
-- !\key_ctrl|key_n_r2\(3) & ( !\key_ctrl|cnt_enabled_t~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_cnt_enabled_t~q\,
	datab => \key_ctrl|ALT_INV_Equal1~0_combout\,
	datac => \key_ctrl|ALT_INV_Equal1~1_combout\,
	datad => \key_ctrl|ALT_INV_counter\(5),
	datae => \key_ctrl|ALT_INV_Equal1~2_combout\,
	dataf => \key_ctrl|ALT_INV_key_n_r2\(3),
	combout => \key_ctrl|key_up~0_combout\);

-- Location: FF_X28_Y12_N2
\key_ctrl|key_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|key_up~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|key_up~q\);

-- Location: MLABCELL_X39_Y4_N0
\uart|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add2~29_sumout\ = SUM(( \uart|rx_bit_cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \uart|Add2~30\ = CARRY(( \uart|rx_bit_cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_rx_bit_cnt\(0),
	cin => GND,
	sumout => \uart|Add2~29_sumout\,
	cout => \uart|Add2~30\);

-- Location: FF_X39_Y4_N11
\uart|rx_bit_cnt[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add2~25_sumout\,
	sclr => \uart|rx_bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt[3]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y4_N48
\uart|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|LessThan0~0_combout\ = ( \uart|rx_bit_cnt\(0) & ( \uart|rx_bit_cnt\(2) & ( (\uart|rx_bit_cnt\(5) & \uart|rx_bit_cnt\(4)) ) ) ) # ( !\uart|rx_bit_cnt\(0) & ( \uart|rx_bit_cnt\(2) & ( (\uart|rx_bit_cnt\(5) & \uart|rx_bit_cnt\(4)) ) ) ) # ( 
-- \uart|rx_bit_cnt\(0) & ( !\uart|rx_bit_cnt\(2) & ( (\uart|rx_bit_cnt\(5) & \uart|rx_bit_cnt\(4)) ) ) ) # ( !\uart|rx_bit_cnt\(0) & ( !\uart|rx_bit_cnt\(2) & ( (\uart|rx_bit_cnt\(5) & (\uart|rx_bit_cnt\(4) & ((\uart|rx_bit_cnt[3]~DUPLICATE_q\) # 
-- (\uart|rx_bit_cnt\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_bit_cnt\(5),
	datab => \uart|ALT_INV_rx_bit_cnt\(4),
	datac => \uart|ALT_INV_rx_bit_cnt\(1),
	datad => \uart|ALT_INV_rx_bit_cnt[3]~DUPLICATE_q\,
	datae => \uart|ALT_INV_rx_bit_cnt\(0),
	dataf => \uart|ALT_INV_rx_bit_cnt\(2),
	combout => \uart|LessThan0~0_combout\);

-- Location: FF_X39_Y4_N38
\uart|rx_bit_cnt_wrap\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|rx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt_wrap~q\);

-- Location: FF_X37_Y4_N37
\uart|rx_state.s_stop_bit~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector4~0_combout\,
	sclr => \uart|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_state.s_stop_bit~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y4_N30
\uart|rx_bit_cnt_half~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|rx_bit_cnt_half~0_combout\ = ( \uart|rx_bit_cnt\(4) & ( (!\uart|rx_bit_cnt\(5) & !\uart|rx_bit_cnt\(3)) ) ) # ( !\uart|rx_bit_cnt\(4) & ( !\uart|rx_bit_cnt\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart|ALT_INV_rx_bit_cnt\(5),
	datad => \uart|ALT_INV_rx_bit_cnt\(3),
	dataf => \uart|ALT_INV_rx_bit_cnt\(4),
	combout => \uart|rx_bit_cnt_half~0_combout\);

-- Location: FF_X39_Y4_N55
\uart|rx_bit_cnt_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt_en~q\);

-- Location: MLABCELL_X39_Y4_N21
\uart|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add2~1_sumout\ = SUM(( \uart|rx_bit_cnt\(7) ) + ( GND ) + ( \uart|Add2~10\ ))
-- \uart|Add2~2\ = CARRY(( \uart|rx_bit_cnt\(7) ) + ( GND ) + ( \uart|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_rx_bit_cnt\(7),
	cin => \uart|Add2~10\,
	sumout => \uart|Add2~1_sumout\,
	cout => \uart|Add2~2\);

-- Location: MLABCELL_X39_Y4_N24
\uart|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add2~5_sumout\ = SUM(( \uart|rx_bit_cnt\(8) ) + ( GND ) + ( \uart|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_rx_bit_cnt\(8),
	cin => \uart|Add2~2\,
	sumout => \uart|Add2~5_sumout\);

-- Location: FF_X39_Y4_N26
\uart|rx_bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add2~5_sumout\,
	sclr => \uart|rx_bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt\(8));

-- Location: MLABCELL_X39_Y4_N33
\uart|rx_bit_cnt_half~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|rx_bit_cnt_half~1_combout\ = ( \uart|rx_bit_cnt\(8) & ( \uart|rx_bit_cnt_en~q\ ) ) # ( !\uart|rx_bit_cnt\(8) & ( (\uart|rx_bit_cnt\(7) & (!\uart|rx_bit_cnt_half~0_combout\ & (\uart|rx_bit_cnt_en~q\ & \uart|rx_bit_cnt\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_bit_cnt\(7),
	datab => \uart|ALT_INV_rx_bit_cnt_half~0_combout\,
	datac => \uart|ALT_INV_rx_bit_cnt_en~q\,
	datad => \uart|ALT_INV_rx_bit_cnt\(6),
	dataf => \uart|ALT_INV_rx_bit_cnt\(8),
	combout => \uart|rx_bit_cnt_half~1_combout\);

-- Location: FF_X39_Y4_N34
\uart|rx_bit_cnt_half\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|rx_bit_cnt_half~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt_half~q\);

-- Location: MLABCELL_X39_Y4_N57
\uart|rx_state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|rx_state~10_combout\ = ( \uart|rx_bit_cnt_half~q\ & ( (!\uart|reset_2r~q\ & ((!\uart|rx_bit_cnt_wrap~q\) # (!\uart|rx_state.s_stop_bit~DUPLICATE_q\))) ) ) # ( !\uart|rx_bit_cnt_half~q\ & ( (!\uart|reset_2r~q\ & (\uart|rx_state.s_idle~q\ & 
-- ((!\uart|rx_bit_cnt_wrap~q\) # (!\uart|rx_state.s_stop_bit~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_bit_cnt_wrap~q\,
	datab => \uart|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\,
	datac => \uart|ALT_INV_reset_2r~q\,
	datad => \uart|ALT_INV_rx_state.s_idle~q\,
	dataf => \uart|ALT_INV_rx_bit_cnt_half~q\,
	combout => \uart|rx_state~10_combout\);

-- Location: FF_X39_Y4_N58
\uart|rx_state.s_idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|rx_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_state.s_idle~q\);

-- Location: IOIBUF_X34_Y0_N75
\fpga_in_rx~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fpga_in_rx,
	o => \fpga_in_rx~input_o\);

-- Location: FF_X39_Y4_N47
\uart|rx_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \fpga_in_rx~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_r~q\);

-- Location: MLABCELL_X39_Y4_N42
\uart|rx_2r~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|rx_2r~feeder_combout\ = \uart|rx_r~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart|ALT_INV_rx_r~q\,
	combout => \uart|rx_2r~feeder_combout\);

-- Location: FF_X39_Y4_N43
\uart|rx_2r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|rx_2r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_2r~q\);

-- Location: MLABCELL_X39_Y4_N54
\uart|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector0~0_combout\ = ( \uart|rx_2r~q\ & ( (\uart|rx_state.s_idle~q\ & ((!\uart|rx_bit_cnt_wrap~q\) # (!\uart|rx_state.s_stop_bit~DUPLICATE_q\))) ) ) # ( !\uart|rx_2r~q\ & ( (!\uart|rx_bit_cnt_wrap~q\ & (((!\uart|rx_bit_cnt_half~q\) # 
-- (\uart|rx_state.s_idle~q\)))) # (\uart|rx_bit_cnt_wrap~q\ & (!\uart|rx_state.s_stop_bit~DUPLICATE_q\ & ((!\uart|rx_bit_cnt_half~q\) # (\uart|rx_state.s_idle~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000001110111011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_bit_cnt_wrap~q\,
	datab => \uart|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\,
	datac => \uart|ALT_INV_rx_state.s_idle~q\,
	datad => \uart|ALT_INV_rx_bit_cnt_half~q\,
	dataf => \uart|ALT_INV_rx_2r~q\,
	combout => \uart|Selector0~0_combout\);

-- Location: FF_X39_Y4_N56
\uart|rx_bit_cnt_en~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt_en~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y4_N39
\uart|rx_bit_cnt[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|rx_bit_cnt[2]~0_combout\ = ( \uart|rx_bit_cnt\(8) & ( (!\uart|rx_bit_cnt_en~DUPLICATE_q\) # ((\uart|rx_bit_cnt\(7) & ((\uart|rx_bit_cnt\(6)) # (\uart|LessThan0~0_combout\)))) ) ) # ( !\uart|rx_bit_cnt\(8) & ( !\uart|rx_bit_cnt_en~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110001111101011111000111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_bit_cnt\(7),
	datab => \uart|ALT_INV_LessThan0~0_combout\,
	datac => \uart|ALT_INV_rx_bit_cnt_en~DUPLICATE_q\,
	datad => \uart|ALT_INV_rx_bit_cnt\(6),
	dataf => \uart|ALT_INV_rx_bit_cnt\(8),
	combout => \uart|rx_bit_cnt[2]~0_combout\);

-- Location: FF_X39_Y4_N2
\uart|rx_bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add2~29_sumout\,
	sclr => \uart|rx_bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt\(0));

-- Location: MLABCELL_X39_Y4_N3
\uart|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add2~33_sumout\ = SUM(( \uart|rx_bit_cnt\(1) ) + ( GND ) + ( \uart|Add2~30\ ))
-- \uart|Add2~34\ = CARRY(( \uart|rx_bit_cnt\(1) ) + ( GND ) + ( \uart|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_rx_bit_cnt\(1),
	cin => \uart|Add2~30\,
	sumout => \uart|Add2~33_sumout\,
	cout => \uart|Add2~34\);

-- Location: FF_X39_Y4_N5
\uart|rx_bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add2~33_sumout\,
	sclr => \uart|rx_bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt\(1));

-- Location: MLABCELL_X39_Y4_N6
\uart|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add2~21_sumout\ = SUM(( \uart|rx_bit_cnt\(2) ) + ( GND ) + ( \uart|Add2~34\ ))
-- \uart|Add2~22\ = CARRY(( \uart|rx_bit_cnt\(2) ) + ( GND ) + ( \uart|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_rx_bit_cnt\(2),
	cin => \uart|Add2~34\,
	sumout => \uart|Add2~21_sumout\,
	cout => \uart|Add2~22\);

-- Location: FF_X39_Y4_N8
\uart|rx_bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add2~21_sumout\,
	sclr => \uart|rx_bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt\(2));

-- Location: MLABCELL_X39_Y4_N9
\uart|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add2~25_sumout\ = SUM(( \uart|rx_bit_cnt\(3) ) + ( GND ) + ( \uart|Add2~22\ ))
-- \uart|Add2~26\ = CARRY(( \uart|rx_bit_cnt\(3) ) + ( GND ) + ( \uart|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_rx_bit_cnt\(3),
	cin => \uart|Add2~22\,
	sumout => \uart|Add2~25_sumout\,
	cout => \uart|Add2~26\);

-- Location: FF_X39_Y4_N10
\uart|rx_bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add2~25_sumout\,
	sclr => \uart|rx_bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt\(3));

-- Location: MLABCELL_X39_Y4_N12
\uart|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add2~17_sumout\ = SUM(( \uart|rx_bit_cnt\(4) ) + ( GND ) + ( \uart|Add2~26\ ))
-- \uart|Add2~18\ = CARRY(( \uart|rx_bit_cnt\(4) ) + ( GND ) + ( \uart|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_rx_bit_cnt\(4),
	cin => \uart|Add2~26\,
	sumout => \uart|Add2~17_sumout\,
	cout => \uart|Add2~18\);

-- Location: FF_X39_Y4_N14
\uart|rx_bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add2~17_sumout\,
	sclr => \uart|rx_bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt\(4));

-- Location: MLABCELL_X39_Y4_N15
\uart|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add2~13_sumout\ = SUM(( \uart|rx_bit_cnt\(5) ) + ( GND ) + ( \uart|Add2~18\ ))
-- \uart|Add2~14\ = CARRY(( \uart|rx_bit_cnt\(5) ) + ( GND ) + ( \uart|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_rx_bit_cnt\(5),
	cin => \uart|Add2~18\,
	sumout => \uart|Add2~13_sumout\,
	cout => \uart|Add2~14\);

-- Location: FF_X39_Y4_N16
\uart|rx_bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add2~13_sumout\,
	sclr => \uart|rx_bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt\(5));

-- Location: MLABCELL_X39_Y4_N18
\uart|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add2~9_sumout\ = SUM(( \uart|rx_bit_cnt\(6) ) + ( GND ) + ( \uart|Add2~14\ ))
-- \uart|Add2~10\ = CARRY(( \uart|rx_bit_cnt\(6) ) + ( GND ) + ( \uart|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_rx_bit_cnt\(6),
	cin => \uart|Add2~14\,
	sumout => \uart|Add2~9_sumout\,
	cout => \uart|Add2~10\);

-- Location: FF_X39_Y4_N20
\uart|rx_bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add2~9_sumout\,
	sclr => \uart|rx_bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt\(6));

-- Location: FF_X39_Y4_N23
\uart|rx_bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add2~1_sumout\,
	sclr => \uart|rx_bit_cnt[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt\(7));

-- Location: MLABCELL_X39_Y4_N36
\uart|rx_bit_cnt_wrap~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|rx_bit_cnt_wrap~0_combout\ = ( \uart|rx_bit_cnt_en~DUPLICATE_q\ & ( (\uart|rx_bit_cnt\(7) & (\uart|rx_bit_cnt\(8) & ((\uart|rx_bit_cnt\(6)) # (\uart|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_bit_cnt\(7),
	datab => \uart|ALT_INV_LessThan0~0_combout\,
	datac => \uart|ALT_INV_rx_bit_cnt\(8),
	datad => \uart|ALT_INV_rx_bit_cnt\(6),
	dataf => \uart|ALT_INV_rx_bit_cnt_en~DUPLICATE_q\,
	combout => \uart|rx_bit_cnt_wrap~0_combout\);

-- Location: FF_X39_Y4_N37
\uart|rx_bit_cnt_wrap~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|rx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_cnt_wrap~DUPLICATE_q\);

-- Location: FF_X37_Y4_N43
\uart|rx_state.s_rx_data~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector2~1_combout\,
	sclr => \uart|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_state.s_rx_data~DUPLICATE_q\);

-- Location: FF_X37_Y4_N59
\uart|rx_bit_no[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_no[0]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y4_N24
\uart|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector12~0_combout\ = ( \uart|rx_bit_no\(2) & ( \uart|rx_state.s_rx_data~DUPLICATE_q\ ) ) # ( !\uart|rx_bit_no\(2) & ( \uart|rx_state.s_rx_data~DUPLICATE_q\ & ( (\uart|rx_bit_no[0]~DUPLICATE_q\ & (\uart|rx_bit_cnt_wrap~DUPLICATE_q\ & 
-- \uart|rx_bit_no\(1))) ) ) ) # ( \uart|rx_bit_no\(2) & ( !\uart|rx_state.s_rx_data~DUPLICATE_q\ & ( \uart|rx_state.s_stop_bit~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_state.s_stop_bit~q\,
	datab => \uart|ALT_INV_rx_bit_no[0]~DUPLICATE_q\,
	datac => \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\,
	datad => \uart|ALT_INV_rx_bit_no\(1),
	datae => \uart|ALT_INV_rx_bit_no\(2),
	dataf => \uart|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	combout => \uart|Selector12~0_combout\);

-- Location: FF_X37_Y4_N25
\uart|rx_bit_no[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_no\(2));

-- Location: LABCELL_X37_Y4_N21
\uart|rx_bit_no~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|rx_bit_no~0_combout\ = ( \uart|rx_bit_no\(2) & ( (\uart|rx_bit_cnt_wrap~DUPLICATE_q\ & ((!\uart|rx_bit_no\(1)) # (!\uart|rx_bit_no[0]~DUPLICATE_q\))) ) ) # ( !\uart|rx_bit_no\(2) & ( \uart|rx_bit_cnt_wrap~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010001000101010101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\,
	datab => \uart|ALT_INV_rx_bit_no\(1),
	datad => \uart|ALT_INV_rx_bit_no[0]~DUPLICATE_q\,
	dataf => \uart|ALT_INV_rx_bit_no\(2),
	combout => \uart|rx_bit_no~0_combout\);

-- Location: LABCELL_X37_Y4_N57
\uart|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector14~0_combout\ = ( \uart|rx_bit_no~0_combout\ & ( (!\uart|rx_bit_no\(0) & ((\uart|rx_state.s_rx_data~q\))) # (\uart|rx_bit_no\(0) & (\uart|rx_state.s_stop_bit~q\)) ) ) # ( !\uart|rx_bit_no~0_combout\ & ( (\uart|rx_bit_no\(0) & 
-- ((\uart|rx_state.s_rx_data~q\) # (\uart|rx_state.s_stop_bit~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_state.s_stop_bit~q\,
	datab => \uart|ALT_INV_rx_state.s_rx_data~q\,
	datad => \uart|ALT_INV_rx_bit_no\(0),
	dataf => \uart|ALT_INV_rx_bit_no~0_combout\,
	combout => \uart|Selector14~0_combout\);

-- Location: FF_X37_Y4_N58
\uart|rx_bit_no[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_no\(0));

-- Location: LABCELL_X37_Y4_N54
\uart|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector13~0_combout\ = ( \uart|rx_bit_no~0_combout\ & ( (!\uart|rx_bit_no\(1) & (((\uart|rx_state.s_rx_data~q\ & \uart|rx_bit_no\(0))))) # (\uart|rx_bit_no\(1) & (((\uart|rx_state.s_rx_data~q\ & !\uart|rx_bit_no\(0))) # 
-- (\uart|rx_state.s_stop_bit~q\))) ) ) # ( !\uart|rx_bit_no~0_combout\ & ( (\uart|rx_bit_no\(1) & ((\uart|rx_state.s_rx_data~q\) # (\uart|rx_state.s_stop_bit~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000011011101010000001101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_state.s_stop_bit~q\,
	datab => \uart|ALT_INV_rx_state.s_rx_data~q\,
	datac => \uart|ALT_INV_rx_bit_no\(0),
	datad => \uart|ALT_INV_rx_bit_no\(1),
	dataf => \uart|ALT_INV_rx_bit_no~0_combout\,
	combout => \uart|Selector13~0_combout\);

-- Location: FF_X37_Y4_N55
\uart|rx_bit_no[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_no\(1));

-- Location: LABCELL_X37_Y4_N18
\uart|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector2~0_combout\ = ( \uart|rx_bit_no\(2) & ( (\uart|rx_bit_cnt_wrap~DUPLICATE_q\ & (\uart|rx_bit_no\(1) & \uart|rx_bit_no[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\,
	datab => \uart|ALT_INV_rx_bit_no\(1),
	datad => \uart|ALT_INV_rx_bit_no[0]~DUPLICATE_q\,
	dataf => \uart|ALT_INV_rx_bit_no\(2),
	combout => \uart|Selector2~0_combout\);

-- Location: LABCELL_X37_Y4_N42
\uart|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector2~1_combout\ = ( \uart|Selector2~0_combout\ & ( (\uart|rx_bit_cnt_half~q\ & !\uart|rx_state.s_idle~q\) ) ) # ( !\uart|Selector2~0_combout\ & ( ((\uart|rx_bit_cnt_half~q\ & !\uart|rx_state.s_idle~q\)) # (\uart|rx_state.s_rx_data~DUPLICATE_q\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	datac => \uart|ALT_INV_rx_bit_cnt_half~q\,
	datad => \uart|ALT_INV_rx_state.s_idle~q\,
	dataf => \uart|ALT_INV_Selector2~0_combout\,
	combout => \uart|Selector2~1_combout\);

-- Location: FF_X37_Y4_N44
\uart|rx_state.s_rx_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector2~1_combout\,
	sclr => \uart|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_state.s_rx_data~q\);

-- Location: FF_X37_Y4_N56
\uart|rx_bit_no[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_bit_no[1]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y4_N36
\uart|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector4~0_combout\ = ( \uart|rx_state.s_stop_bit~q\ & ( \uart|rx_bit_no\(2) & ( (!\uart|rx_bit_cnt_wrap~DUPLICATE_q\) # ((\uart|rx_state.s_rx_data~q\ & (\uart|rx_bit_no[1]~DUPLICATE_q\ & \uart|rx_bit_no[0]~DUPLICATE_q\))) ) ) ) # ( 
-- !\uart|rx_state.s_stop_bit~q\ & ( \uart|rx_bit_no\(2) & ( (\uart|rx_bit_cnt_wrap~DUPLICATE_q\ & (\uart|rx_state.s_rx_data~q\ & (\uart|rx_bit_no[1]~DUPLICATE_q\ & \uart|rx_bit_no[0]~DUPLICATE_q\))) ) ) ) # ( \uart|rx_state.s_stop_bit~q\ & ( 
-- !\uart|rx_bit_no\(2) & ( !\uart|rx_bit_cnt_wrap~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000011010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\,
	datab => \uart|ALT_INV_rx_state.s_rx_data~q\,
	datac => \uart|ALT_INV_rx_bit_no[1]~DUPLICATE_q\,
	datad => \uart|ALT_INV_rx_bit_no[0]~DUPLICATE_q\,
	datae => \uart|ALT_INV_rx_state.s_stop_bit~q\,
	dataf => \uart|ALT_INV_rx_bit_no\(2),
	combout => \uart|Selector4~0_combout\);

-- Location: FF_X37_Y4_N38
\uart|rx_state.s_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector4~0_combout\,
	sclr => \uart|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_state.s_stop_bit~q\);

-- Location: LABCELL_X37_Y4_N0
\uart|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector5~0_combout\ = ( \uart|rx_2r~q\ & ( (!\uart|rx_state.s_rx_data~q\ & (((\uart|rx_state.s_stop_bit~q\ & \uart|rx_byte_int\(6))))) # (\uart|rx_state.s_rx_data~q\ & (((\uart|rx_byte_int\(6))) # (\uart|rx_bit_cnt_wrap~DUPLICATE_q\))) ) ) # ( 
-- !\uart|rx_2r~q\ & ( (\uart|rx_byte_int\(6) & (((!\uart|rx_bit_cnt_wrap~DUPLICATE_q\ & \uart|rx_state.s_rx_data~q\)) # (\uart|rx_state.s_stop_bit~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101111000000000010111100010001001111110001000100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\,
	datab => \uart|ALT_INV_rx_state.s_rx_data~q\,
	datac => \uart|ALT_INV_rx_state.s_stop_bit~q\,
	datad => \uart|ALT_INV_rx_byte_int\(6),
	dataf => \uart|ALT_INV_rx_2r~q\,
	combout => \uart|Selector5~0_combout\);

-- Location: FF_X37_Y4_N1
\uart|rx_byte_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_byte_int\(6));

-- Location: LABCELL_X37_Y7_N51
\uart|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector6~0_combout\ = ( \uart|rx_bit_cnt_wrap~DUPLICATE_q\ & ( (!\uart|rx_state.s_stop_bit~DUPLICATE_q\ & (\uart|rx_state.s_rx_data~q\ & (\uart|rx_byte_int\(6)))) # (\uart|rx_state.s_stop_bit~DUPLICATE_q\ & (((\uart|rx_state.s_rx_data~q\ & 
-- \uart|rx_byte_int\(6))) # (\uart|rx_byte_int\(5)))) ) ) # ( !\uart|rx_bit_cnt_wrap~DUPLICATE_q\ & ( (\uart|rx_byte_int\(5) & ((\uart|rx_state.s_rx_data~q\) # (\uart|rx_state.s_stop_bit~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\,
	datab => \uart|ALT_INV_rx_state.s_rx_data~q\,
	datac => \uart|ALT_INV_rx_byte_int\(6),
	datad => \uart|ALT_INV_rx_byte_int\(5),
	dataf => \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\,
	combout => \uart|Selector6~0_combout\);

-- Location: FF_X37_Y7_N52
\uart|rx_byte_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_byte_int\(5));

-- Location: LABCELL_X37_Y7_N21
\uart|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector7~0_combout\ = ( \uart|rx_byte_int\(5) & ( (!\uart|rx_state.s_rx_data~q\ & (\uart|rx_state.s_stop_bit~DUPLICATE_q\ & ((\uart|rx_byte_int\(4))))) # (\uart|rx_state.s_rx_data~q\ & (((\uart|rx_byte_int\(4)) # 
-- (\uart|rx_bit_cnt_wrap~DUPLICATE_q\)))) ) ) # ( !\uart|rx_byte_int\(5) & ( (\uart|rx_byte_int\(4) & (((!\uart|rx_bit_cnt_wrap~DUPLICATE_q\ & \uart|rx_state.s_rx_data~q\)) # (\uart|rx_state.s_stop_bit~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101000000000101110100000011010111110000001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\,
	datab => \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\,
	datac => \uart|ALT_INV_rx_state.s_rx_data~q\,
	datad => \uart|ALT_INV_rx_byte_int\(4),
	dataf => \uart|ALT_INV_rx_byte_int\(5),
	combout => \uart|Selector7~0_combout\);

-- Location: FF_X37_Y7_N23
\uart|rx_byte_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_byte_int\(4));

-- Location: LABCELL_X37_Y7_N42
\uart|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector8~0_combout\ = ( \uart|rx_bit_cnt_wrap~DUPLICATE_q\ & ( (!\uart|rx_state.s_stop_bit~DUPLICATE_q\ & (\uart|rx_state.s_rx_data~q\ & (\uart|rx_byte_int\(4)))) # (\uart|rx_state.s_stop_bit~DUPLICATE_q\ & (((\uart|rx_state.s_rx_data~q\ & 
-- \uart|rx_byte_int\(4))) # (\uart|rx_byte_int\(3)))) ) ) # ( !\uart|rx_bit_cnt_wrap~DUPLICATE_q\ & ( (\uart|rx_byte_int\(3) & ((\uart|rx_state.s_rx_data~q\) # (\uart|rx_state.s_stop_bit~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\,
	datab => \uart|ALT_INV_rx_state.s_rx_data~q\,
	datac => \uart|ALT_INV_rx_byte_int\(4),
	datad => \uart|ALT_INV_rx_byte_int\(3),
	dataf => \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\,
	combout => \uart|Selector8~0_combout\);

-- Location: FF_X37_Y7_N44
\uart|rx_byte_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_byte_int\(3));

-- Location: LABCELL_X37_Y7_N45
\uart|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector9~0_combout\ = ( \uart|rx_bit_cnt_wrap~DUPLICATE_q\ & ( (!\uart|rx_state.s_stop_bit~DUPLICATE_q\ & (\uart|rx_state.s_rx_data~q\ & (\uart|rx_byte_int\(3)))) # (\uart|rx_state.s_stop_bit~DUPLICATE_q\ & (((\uart|rx_state.s_rx_data~q\ & 
-- \uart|rx_byte_int\(3))) # (\uart|rx_byte_int\(2)))) ) ) # ( !\uart|rx_bit_cnt_wrap~DUPLICATE_q\ & ( (\uart|rx_byte_int\(2) & ((\uart|rx_state.s_rx_data~q\) # (\uart|rx_state.s_stop_bit~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\,
	datab => \uart|ALT_INV_rx_state.s_rx_data~q\,
	datac => \uart|ALT_INV_rx_byte_int\(3),
	datad => \uart|ALT_INV_rx_byte_int\(2),
	dataf => \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\,
	combout => \uart|Selector9~0_combout\);

-- Location: FF_X37_Y7_N46
\uart|rx_byte_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_byte_int\(2));

-- Location: LABCELL_X37_Y7_N48
\uart|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector10~0_combout\ = ( \uart|rx_byte_int\(2) & ( (!\uart|rx_state.s_rx_data~q\ & (\uart|rx_state.s_stop_bit~DUPLICATE_q\ & ((\uart|rx_byte_int\(1))))) # (\uart|rx_state.s_rx_data~q\ & (((\uart|rx_byte_int\(1)) # 
-- (\uart|rx_bit_cnt_wrap~DUPLICATE_q\)))) ) ) # ( !\uart|rx_byte_int\(2) & ( (\uart|rx_byte_int\(1) & (((\uart|rx_state.s_rx_data~q\ & !\uart|rx_bit_cnt_wrap~DUPLICATE_q\)) # (\uart|rx_state.s_stop_bit~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110101000000000111010100000011011101110000001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\,
	datab => \uart|ALT_INV_rx_state.s_rx_data~q\,
	datac => \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\,
	datad => \uart|ALT_INV_rx_byte_int\(1),
	dataf => \uart|ALT_INV_rx_byte_int\(2),
	combout => \uart|Selector10~0_combout\);

-- Location: FF_X37_Y7_N49
\uart|rx_byte_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_byte_int\(1));

-- Location: LABCELL_X37_Y4_N45
\uart|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector11~0_combout\ = ( \uart|rx_bit_cnt_wrap~DUPLICATE_q\ & ( (!\uart|rx_state.s_stop_bit~q\ & (\uart|rx_state.s_rx_data~DUPLICATE_q\ & (\uart|rx_byte_int\(1)))) # (\uart|rx_state.s_stop_bit~q\ & (((\uart|rx_state.s_rx_data~DUPLICATE_q\ & 
-- \uart|rx_byte_int\(1))) # (\uart|rx_byte_int\(0)))) ) ) # ( !\uart|rx_bit_cnt_wrap~DUPLICATE_q\ & ( (\uart|rx_byte_int\(0) & ((\uart|rx_state.s_rx_data~DUPLICATE_q\) # (\uart|rx_state.s_stop_bit~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000011010101110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_state.s_stop_bit~q\,
	datab => \uart|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	datac => \uart|ALT_INV_rx_byte_int\(1),
	datad => \uart|ALT_INV_rx_byte_int\(0),
	dataf => \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\,
	combout => \uart|Selector11~0_combout\);

-- Location: FF_X37_Y4_N46
\uart|rx_byte_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_byte_int\(0));

-- Location: LABCELL_X35_Y8_N0
\uart|received_data[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|received_data[0]~feeder_combout\ = ( \uart|rx_byte_int\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \uart|ALT_INV_rx_byte_int\(0),
	combout => \uart|received_data[0]~feeder_combout\);

-- Location: LABCELL_X37_Y4_N15
\uart|received_data[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|received_data[5]~0_combout\ = ( \uart|rx_state.s_rx_data~DUPLICATE_q\ & ( \uart|reset_2r~q\ ) ) # ( !\uart|rx_state.s_rx_data~DUPLICATE_q\ & ( \uart|reset_2r~q\ ) ) # ( \uart|rx_state.s_rx_data~DUPLICATE_q\ & ( !\uart|reset_2r~q\ & ( 
-- (\uart|rx_bit_cnt_wrap~DUPLICATE_q\ & (\uart|rx_bit_no[0]~DUPLICATE_q\ & (\uart|rx_bit_no\(2) & \uart|rx_bit_no[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\,
	datab => \uart|ALT_INV_rx_bit_no[0]~DUPLICATE_q\,
	datac => \uart|ALT_INV_rx_bit_no\(2),
	datad => \uart|ALT_INV_rx_bit_no[1]~DUPLICATE_q\,
	datae => \uart|ALT_INV_rx_state.s_rx_data~DUPLICATE_q\,
	dataf => \uart|ALT_INV_reset_2r~q\,
	combout => \uart|received_data[5]~0_combout\);

-- Location: FF_X35_Y8_N1
\uart|received_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|received_data[0]~feeder_combout\,
	sclr => \uart|reset_2r~q\,
	ena => \uart|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|received_data\(0));

-- Location: FF_X37_Y7_N47
\uart|rx_byte_int[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_byte_int[2]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y7_N6
\uart|received_data[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|received_data[2]~feeder_combout\ = \uart|rx_byte_int[2]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart|ALT_INV_rx_byte_int[2]~DUPLICATE_q\,
	combout => \uart|received_data[2]~feeder_combout\);

-- Location: FF_X37_Y7_N8
\uart|received_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|received_data[2]~feeder_combout\,
	sclr => \uart|reset_2r~q\,
	ena => \uart|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|received_data\(2));

-- Location: LABCELL_X37_Y7_N9
\uart|received_data[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|received_data[4]~feeder_combout\ = \uart|rx_byte_int\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_byte_int\(4),
	combout => \uart|received_data[4]~feeder_combout\);

-- Location: FF_X37_Y7_N11
\uart|received_data[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|received_data[4]~feeder_combout\,
	sclr => \uart|reset_2r~q\,
	ena => \uart|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|received_data[4]~DUPLICATE_q\);

-- Location: FF_X37_Y7_N37
\uart|received_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \uart|rx_byte_int\(6),
	sclr => \uart|reset_2r~q\,
	sload => VCC,
	ena => \uart|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|received_data\(6));

-- Location: FF_X37_Y7_N56
\uart|received_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \uart|rx_byte_int\(1),
	sclr => \uart|reset_2r~q\,
	sload => VCC,
	ena => \uart|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|received_data\(1));

-- Location: LABCELL_X37_Y7_N57
\uart|received_data[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|received_data[3]~feeder_combout\ = \uart|rx_byte_int\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart|ALT_INV_rx_byte_int\(3),
	combout => \uart|received_data[3]~feeder_combout\);

-- Location: FF_X37_Y7_N59
\uart|received_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|received_data[3]~feeder_combout\,
	sclr => \uart|reset_2r~q\,
	ena => \uart|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|received_data\(3));

-- Location: FF_X37_Y7_N41
\uart|received_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \uart|rx_2r~q\,
	sclr => \uart|reset_2r~q\,
	sload => VCC,
	ena => \uart|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|received_data\(7));

-- Location: LABCELL_X37_Y7_N18
\uart|received_data_valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|received_data_valid~0_combout\ = (\uart|rx_state.s_stop_bit~DUPLICATE_q\ & (\uart|rx_bit_cnt_wrap~DUPLICATE_q\ & \uart|rx_2r~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\,
	datab => \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\,
	datad => \uart|ALT_INV_rx_2r~q\,
	combout => \uart|received_data_valid~0_combout\);

-- Location: FF_X37_Y7_N20
\uart|received_data_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|received_data_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|received_data_valid~q\);

-- Location: LABCELL_X37_Y7_N39
\serial_ctrl|key_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial_ctrl|key_on~0_combout\ = ( !\uart|received_data\(7) & ( \uart|received_data_valid~q\ & ( (!\uart|received_data\(1) & (!\uart|received_data\(3) & \b_gen_pll:i_reset_ctrl|reset_out~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_received_data\(1),
	datab => \uart|ALT_INV_received_data\(3),
	datac => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	datae => \uart|ALT_INV_received_data\(7),
	dataf => \uart|ALT_INV_received_data_valid~q\,
	combout => \serial_ctrl|key_on~0_combout\);

-- Location: LABCELL_X37_Y7_N15
\serial_ctrl|key_up~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial_ctrl|key_up~0_combout\ = ( \serial_ctrl|key_on~0_combout\ & ( (\uart|received_data\(0) & (\uart|received_data\(2) & (\uart|received_data[4]~DUPLICATE_q\ & \uart|received_data\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_received_data\(0),
	datab => \uart|ALT_INV_received_data\(2),
	datac => \uart|ALT_INV_received_data[4]~DUPLICATE_q\,
	datad => \uart|ALT_INV_received_data\(6),
	dataf => \serial_ctrl|ALT_INV_key_on~0_combout\,
	combout => \serial_ctrl|key_up~0_combout\);

-- Location: FF_X37_Y7_N16
\serial_ctrl|key_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \serial_ctrl|key_up~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_ctrl|key_up~q\);

-- Location: FF_X37_Y7_N53
\uart|rx_byte_int[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|rx_byte_int[5]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y7_N27
\uart|received_data[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|received_data[5]~feeder_combout\ = \uart|rx_byte_int[5]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_rx_byte_int[5]~DUPLICATE_q\,
	combout => \uart|received_data[5]~feeder_combout\);

-- Location: FF_X37_Y7_N29
\uart|received_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|received_data[5]~feeder_combout\,
	sclr => \uart|reset_2r~q\,
	ena => \uart|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|received_data\(5));

-- Location: LABCELL_X37_Y7_N30
\serial_ctrl|key_off~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial_ctrl|key_off~0_combout\ = ( !\uart|received_data\(6) & ( !\uart|received_data\(2) & ( (\uart|received_data\(5) & (\uart|received_data[4]~DUPLICATE_q\ & (!\uart|received_data\(0) & \serial_ctrl|key_on~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_received_data\(5),
	datab => \uart|ALT_INV_received_data[4]~DUPLICATE_q\,
	datac => \uart|ALT_INV_received_data\(0),
	datad => \serial_ctrl|ALT_INV_key_on~0_combout\,
	datae => \uart|ALT_INV_received_data\(6),
	dataf => \uart|ALT_INV_received_data\(2),
	combout => \serial_ctrl|key_off~0_combout\);

-- Location: FF_X37_Y7_N31
\serial_ctrl|key_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \serial_ctrl|key_off~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_ctrl|key_off~q\);

-- Location: MLABCELL_X28_Y12_N42
\key_ctrl|key_off~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|key_off~0_combout\ = ( \key_ctrl|Equal1~2_combout\ & ( !\key_ctrl|key_n_r2\(0) & ( (!\key_ctrl|cnt_enabled_t~q\) # ((\key_ctrl|Equal1~0_combout\ & (\key_ctrl|Equal1~1_combout\ & \key_ctrl|counter\(5)))) ) ) ) # ( !\key_ctrl|Equal1~2_combout\ & ( 
-- !\key_ctrl|key_n_r2\(0) & ( !\key_ctrl|cnt_enabled_t~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_cnt_enabled_t~q\,
	datab => \key_ctrl|ALT_INV_Equal1~0_combout\,
	datac => \key_ctrl|ALT_INV_Equal1~1_combout\,
	datad => \key_ctrl|ALT_INV_counter\(5),
	datae => \key_ctrl|ALT_INV_Equal1~2_combout\,
	dataf => \key_ctrl|ALT_INV_key_n_r2\(0),
	combout => \key_ctrl|key_off~0_combout\);

-- Location: FF_X28_Y12_N44
\key_ctrl|key_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|key_off~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|key_off~q\);

-- Location: MLABCELL_X28_Y12_N3
\key_ctrl|key_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|key_on~0_combout\ = ( \key_ctrl|Equal1~2_combout\ & ( !\key_ctrl|key_n_r2\(1) & ( (!\key_ctrl|cnt_enabled_t~q\) # ((\key_ctrl|Equal1~0_combout\ & (\key_ctrl|counter\(5) & \key_ctrl|Equal1~1_combout\))) ) ) ) # ( !\key_ctrl|Equal1~2_combout\ & ( 
-- !\key_ctrl|key_n_r2\(1) & ( !\key_ctrl|cnt_enabled_t~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_cnt_enabled_t~q\,
	datab => \key_ctrl|ALT_INV_Equal1~0_combout\,
	datac => \key_ctrl|ALT_INV_counter\(5),
	datad => \key_ctrl|ALT_INV_Equal1~1_combout\,
	datae => \key_ctrl|ALT_INV_Equal1~2_combout\,
	dataf => \key_ctrl|ALT_INV_key_n_r2\(1),
	combout => \key_ctrl|key_on~0_combout\);

-- Location: FF_X28_Y12_N5
\key_ctrl|key_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|key_on~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|key_on~q\);

-- Location: LABCELL_X37_Y7_N0
\serial_ctrl|key_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial_ctrl|key_on~1_combout\ = ( !\uart|received_data\(6) & ( !\uart|received_data\(2) & ( (\uart|received_data\(5) & (\uart|received_data[4]~DUPLICATE_q\ & (\uart|received_data\(0) & \serial_ctrl|key_on~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_received_data\(5),
	datab => \uart|ALT_INV_received_data[4]~DUPLICATE_q\,
	datac => \uart|ALT_INV_received_data\(0),
	datad => \serial_ctrl|ALT_INV_key_on~0_combout\,
	datae => \uart|ALT_INV_received_data\(6),
	dataf => \uart|ALT_INV_received_data\(2),
	combout => \serial_ctrl|key_on~1_combout\);

-- Location: FF_X37_Y7_N1
\serial_ctrl|key_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \serial_ctrl|key_on~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_ctrl|key_on~q\);

-- Location: MLABCELL_X28_Y12_N18
\pwm|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector10~1_combout\ = ( !\key_ctrl|key_on~q\ & ( !\serial_ctrl|key_on~q\ & ( (!\key_ctrl|key_up~q\ & (!\serial_ctrl|key_up~q\ & (!\serial_ctrl|key_off~q\ & !\key_ctrl|key_off~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_key_up~q\,
	datab => \serial_ctrl|ALT_INV_key_up~q\,
	datac => \serial_ctrl|ALT_INV_key_off~q\,
	datad => \key_ctrl|ALT_INV_key_off~q\,
	datae => \key_ctrl|ALT_INV_key_on~q\,
	dataf => \serial_ctrl|ALT_INV_key_on~q\,
	combout => \pwm|Selector10~1_combout\);

-- Location: LABCELL_X27_Y13_N0
\pwm|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add1~29_sumout\ = SUM(( \pwm|duty_cycle[0]~_Duplicate_1_q\ ) + ( VCC ) + ( !VCC ))
-- \pwm|Add1~30\ = CARRY(( \pwm|duty_cycle[0]~_Duplicate_1_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_duty_cycle[0]~_Duplicate_1_q\,
	cin => GND,
	sumout => \pwm|Add1~29_sumout\,
	cout => \pwm|Add1~30\);

-- Location: FF_X28_Y13_N7
\pwm|pwm_state.pwm_down~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector10~2_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_state.pwm_down~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y13_N9
\pwm|duty_cycle[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|duty_cycle[2]~1_combout\ = ( \pwm|pwm_state.pwm_up~q\ & ( !\pwm|pwm_state.pwm_down~DUPLICATE_q\ ) ) # ( !\pwm|pwm_state.pwm_up~q\ & ( (!\pwm|pwm_state.pwm_down~DUPLICATE_q\ & \pwm|pwm_state.pwm_off~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_down~DUPLICATE_q\,
	datac => \pwm|ALT_INV_pwm_state.pwm_off~q\,
	dataf => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	combout => \pwm|duty_cycle[2]~1_combout\);

-- Location: MLABCELL_X25_Y13_N30
\pwm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add0~25_sumout\ = SUM(( \pwm|duty_cycle[0]~_Duplicate_1_q\ ) + ( VCC ) + ( !VCC ))
-- \pwm|Add0~26\ = CARRY(( \pwm|duty_cycle[0]~_Duplicate_1_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_duty_cycle[0]~_Duplicate_1_q\,
	cin => GND,
	sumout => \pwm|Add0~25_sumout\,
	cout => \pwm|Add0~26\);

-- Location: FF_X25_Y13_N46
\pwm|previous_duty_cycle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \pwm|duty_cycle[0]~_Duplicate_1_q\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	sload => VCC,
	ena => \pwm|pwm_state.pwm_off~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|previous_duty_cycle\(0));

-- Location: MLABCELL_X25_Y13_N12
\pwm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector6~0_combout\ = ( \pwm|previous_duty_cycle\(0) & ( \pwm|duty_cycle[2]~0_combout\ & ( (!\pwm|pwm_state.pwm_down~DUPLICATE_q\ & ((\pwm|Add0~25_sumout\))) # (\pwm|pwm_state.pwm_down~DUPLICATE_q\ & (\pwm|Add1~29_sumout\)) ) ) ) # ( 
-- !\pwm|previous_duty_cycle\(0) & ( \pwm|duty_cycle[2]~0_combout\ & ( (!\pwm|pwm_state.pwm_down~DUPLICATE_q\ & ((\pwm|Add0~25_sumout\))) # (\pwm|pwm_state.pwm_down~DUPLICATE_q\ & (\pwm|Add1~29_sumout\)) ) ) ) # ( \pwm|previous_duty_cycle\(0) & ( 
-- !\pwm|duty_cycle[2]~0_combout\ & ( (!\pwm|pwm_state.pwm_down~DUPLICATE_q\ & ((!\pwm|duty_cycle[2]~1_combout\))) # (\pwm|pwm_state.pwm_down~DUPLICATE_q\ & (\pwm|Add1~29_sumout\)) ) ) ) # ( !\pwm|previous_duty_cycle\(0) & ( !\pwm|duty_cycle[2]~0_combout\ & 
-- ( (\pwm|Add1~29_sumout\ & \pwm|pwm_state.pwm_down~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101110001011100010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Add1~29_sumout\,
	datab => \pwm|ALT_INV_duty_cycle[2]~1_combout\,
	datac => \pwm|ALT_INV_pwm_state.pwm_down~DUPLICATE_q\,
	datad => \pwm|ALT_INV_Add0~25_sumout\,
	datae => \pwm|ALT_INV_previous_duty_cycle\(0),
	dataf => \pwm|ALT_INV_duty_cycle[2]~0_combout\,
	combout => \pwm|Selector6~0_combout\);

-- Location: MLABCELL_X25_Y13_N39
\pwm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add0~17_sumout\ = SUM(( \pwm|duty_cycle[3]~_Duplicate_1_q\ ) + ( GND ) + ( \pwm|Add0~22\ ))
-- \pwm|Add0~18\ = CARRY(( \pwm|duty_cycle[3]~_Duplicate_1_q\ ) + ( GND ) + ( \pwm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_duty_cycle[3]~_Duplicate_1_q\,
	cin => \pwm|Add0~22\,
	sumout => \pwm|Add0~17_sumout\,
	cout => \pwm|Add0~18\);

-- Location: MLABCELL_X25_Y13_N42
\pwm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add0~5_sumout\ = SUM(( \pwm|duty_cycle[4]~_Duplicate_1_q\ ) + ( GND ) + ( \pwm|Add0~18\ ))
-- \pwm|Add0~6\ = CARRY(( \pwm|duty_cycle[4]~_Duplicate_1_q\ ) + ( GND ) + ( \pwm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_duty_cycle[4]~_Duplicate_1_q\,
	cin => \pwm|Add0~18\,
	sumout => \pwm|Add0~5_sumout\,
	cout => \pwm|Add0~6\);

-- Location: MLABCELL_X25_Y13_N48
\pwm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add0~1_sumout\ = SUM(( \pwm|duty_cycle[6]~_Duplicate_1_q\ ) + ( GND ) + ( \pwm|Add0~14\ ))
-- \pwm|Add0~2\ = CARRY(( \pwm|duty_cycle[6]~_Duplicate_1_q\ ) + ( GND ) + ( \pwm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_duty_cycle[6]~_Duplicate_1_q\,
	cin => \pwm|Add0~14\,
	sumout => \pwm|Add0~1_sumout\,
	cout => \pwm|Add0~2\);

-- Location: MLABCELL_X25_Y13_N51
\pwm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add0~9_sumout\ = SUM(( GND ) + ( GND ) + ( \pwm|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Add0~2\,
	sumout => \pwm|Add0~9_sumout\);

-- Location: MLABCELL_X25_Y13_N33
\pwm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add0~29_sumout\ = SUM(( \pwm|duty_cycle[1]~_Duplicate_1_q\ ) + ( GND ) + ( \pwm|Add0~26\ ))
-- \pwm|Add0~30\ = CARRY(( \pwm|duty_cycle[1]~_Duplicate_1_q\ ) + ( GND ) + ( \pwm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_duty_cycle[1]~_Duplicate_1_q\,
	cin => \pwm|Add0~26\,
	sumout => \pwm|Add0~29_sumout\,
	cout => \pwm|Add0~30\);

-- Location: MLABCELL_X25_Y13_N6
\pwm|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan0~0_combout\ = ( \pwm|Add0~29_sumout\ & ( \pwm|Add0~21_sumout\ ) ) # ( !\pwm|Add0~29_sumout\ & ( (\pwm|Add0~25_sumout\ & \pwm|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_Add0~25_sumout\,
	datac => \pwm|ALT_INV_Add0~21_sumout\,
	dataf => \pwm|ALT_INV_Add0~29_sumout\,
	combout => \pwm|LessThan0~0_combout\);

-- Location: MLABCELL_X25_Y13_N18
\pwm|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan0~1_combout\ = ( \pwm|Add0~13_sumout\ & ( \pwm|Add0~17_sumout\ & ( (!\pwm|Add0~1_sumout\ & !\pwm|Add0~9_sumout\) ) ) ) # ( !\pwm|Add0~13_sumout\ & ( \pwm|Add0~17_sumout\ & ( !\pwm|Add0~9_sumout\ ) ) ) # ( \pwm|Add0~13_sumout\ & ( 
-- !\pwm|Add0~17_sumout\ & ( (!\pwm|Add0~9_sumout\ & ((!\pwm|Add0~1_sumout\) # ((!\pwm|Add0~5_sumout\ & !\pwm|LessThan0~0_combout\)))) ) ) ) # ( !\pwm|Add0~13_sumout\ & ( !\pwm|Add0~17_sumout\ & ( !\pwm|Add0~9_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111000001010000011110000111100001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Add0~1_sumout\,
	datab => \pwm|ALT_INV_Add0~5_sumout\,
	datac => \pwm|ALT_INV_Add0~9_sumout\,
	datad => \pwm|ALT_INV_LessThan0~0_combout\,
	datae => \pwm|ALT_INV_Add0~13_sumout\,
	dataf => \pwm|ALT_INV_Add0~17_sumout\,
	combout => \pwm|LessThan0~1_combout\);

-- Location: LABCELL_X27_Y13_N15
\pwm|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add1~13_sumout\ = SUM(( \pwm|duty_cycle[5]~_Duplicate_1_q\ ) + ( VCC ) + ( \pwm|Add1~10\ ))
-- \pwm|Add1~14\ = CARRY(( \pwm|duty_cycle[5]~_Duplicate_1_q\ ) + ( VCC ) + ( \pwm|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_duty_cycle[5]~_Duplicate_1_q\,
	cin => \pwm|Add1~10\,
	sumout => \pwm|Add1~13_sumout\,
	cout => \pwm|Add1~14\);

-- Location: LABCELL_X27_Y13_N3
\pwm|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add1~21_sumout\ = SUM(( \pwm|duty_cycle[1]~_Duplicate_1_q\ ) + ( VCC ) + ( \pwm|Add1~30\ ))
-- \pwm|Add1~22\ = CARRY(( \pwm|duty_cycle[1]~_Duplicate_1_q\ ) + ( VCC ) + ( \pwm|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_duty_cycle[1]~_Duplicate_1_q\,
	cin => \pwm|Add1~30\,
	sumout => \pwm|Add1~21_sumout\,
	cout => \pwm|Add1~22\);

-- Location: LABCELL_X27_Y13_N6
\pwm|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add1~25_sumout\ = SUM(( \pwm|duty_cycle[2]~_Duplicate_1_q\ ) + ( VCC ) + ( \pwm|Add1~22\ ))
-- \pwm|Add1~26\ = CARRY(( \pwm|duty_cycle[2]~_Duplicate_1_q\ ) + ( VCC ) + ( \pwm|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_duty_cycle[2]~_Duplicate_1_q\,
	cin => \pwm|Add1~22\,
	sumout => \pwm|Add1~25_sumout\,
	cout => \pwm|Add1~26\);

-- Location: LABCELL_X27_Y13_N12
\pwm|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add1~9_sumout\ = SUM(( \pwm|duty_cycle[4]~_Duplicate_1_q\ ) + ( VCC ) + ( \pwm|Add1~18\ ))
-- \pwm|Add1~10\ = CARRY(( \pwm|duty_cycle[4]~_Duplicate_1_q\ ) + ( VCC ) + ( \pwm|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_duty_cycle[4]~_Duplicate_1_q\,
	cin => \pwm|Add1~18\,
	sumout => \pwm|Add1~9_sumout\,
	cout => \pwm|Add1~10\);

-- Location: LABCELL_X27_Y13_N9
\pwm|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add1~17_sumout\ = SUM(( \pwm|duty_cycle[3]~_Duplicate_1_q\ ) + ( VCC ) + ( \pwm|Add1~26\ ))
-- \pwm|Add1~18\ = CARRY(( \pwm|duty_cycle[3]~_Duplicate_1_q\ ) + ( VCC ) + ( \pwm|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_duty_cycle[3]~_Duplicate_1_q\,
	cin => \pwm|Add1~26\,
	sumout => \pwm|Add1~17_sumout\,
	cout => \pwm|Add1~18\);

-- Location: MLABCELL_X28_Y13_N24
\pwm|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan1~1_combout\ = ( !\pwm|Add1~9_sumout\ & ( \pwm|Add1~17_sumout\ & ( (!\pwm|Add1~13_sumout\ & (!\pwm|Add1~5_sumout\ & (!\pwm|Add1~25_sumout\ & !\pwm|Add1~21_sumout\))) ) ) ) # ( !\pwm|Add1~9_sumout\ & ( !\pwm|Add1~17_sumout\ & ( 
-- (!\pwm|Add1~13_sumout\ & !\pwm|Add1~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Add1~13_sumout\,
	datab => \pwm|ALT_INV_Add1~5_sumout\,
	datac => \pwm|ALT_INV_Add1~25_sumout\,
	datad => \pwm|ALT_INV_Add1~21_sumout\,
	datae => \pwm|ALT_INV_Add1~9_sumout\,
	dataf => \pwm|ALT_INV_Add1~17_sumout\,
	combout => \pwm|LessThan1~1_combout\);

-- Location: MLABCELL_X28_Y13_N36
\pwm|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan1~0_combout\ = ( !\pwm|Add1~9_sumout\ & ( \pwm|Add1~17_sumout\ & ( (!\pwm|Add1~13_sumout\ & (!\pwm|Add1~21_sumout\ & !\pwm|Add1~25_sumout\)) ) ) ) # ( !\pwm|Add1~9_sumout\ & ( !\pwm|Add1~17_sumout\ & ( !\pwm|Add1~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Add1~13_sumout\,
	datab => \pwm|ALT_INV_Add1~21_sumout\,
	datac => \pwm|ALT_INV_Add1~25_sumout\,
	datae => \pwm|ALT_INV_Add1~9_sumout\,
	dataf => \pwm|ALT_INV_Add1~17_sumout\,
	combout => \pwm|LessThan1~0_combout\);

-- Location: MLABCELL_X28_Y13_N42
\pwm|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector12~0_combout\ = ( !\pwm|pwm_state.pwm_refresh_dc~q\ & ( \pwm|Add1~1_sumout\ & ( !\pwm|Selector11~0_combout\ ) ) ) # ( !\pwm|pwm_state.pwm_refresh_dc~q\ & ( !\pwm|Add1~1_sumout\ & ( (!\pwm|Selector11~0_combout\) # ((\pwm|pwm_state.pwm_down~q\ 
-- & ((!\pwm|LessThan1~0_combout\) # (\pwm|Add1~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011110011000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_LessThan1~0_combout\,
	datab => \pwm|ALT_INV_pwm_state.pwm_down~q\,
	datac => \pwm|ALT_INV_Selector11~0_combout\,
	datad => \pwm|ALT_INV_Add1~5_sumout\,
	datae => \pwm|ALT_INV_pwm_state.pwm_refresh_dc~q\,
	dataf => \pwm|ALT_INV_Add1~1_sumout\,
	combout => \pwm|Selector12~0_combout\);

-- Location: FF_X28_Y13_N44
\pwm|pwm_state.pwm_refresh_dc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector12~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_state.pwm_refresh_dc~q\);

-- Location: MLABCELL_X28_Y13_N54
\pwm|Selector29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector29~1_combout\ = ( !\pwm|pwm_state.pwm_refresh_dc~q\ & ( \pwm|pwm_state.pwm_idel~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_pwm_state.pwm_idel~DUPLICATE_q\,
	dataf => \pwm|ALT_INV_pwm_state.pwm_refresh_dc~q\,
	combout => \pwm|Selector29~1_combout\);

-- Location: LABCELL_X27_Y13_N33
\pwm|duty_cycle[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|duty_cycle[2]~2_combout\ = ( !\pwm|Add1~1_sumout\ & ( \pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( (!\pwm|LessThan1~1_combout\ & (\pwm|Selector29~1_combout\ & ((!\pwm|duty_cycle[2]~0_combout\) # (\pwm|LessThan0~1_combout\)))) ) ) ) # ( 
-- \pwm|Add1~1_sumout\ & ( !\pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( (\pwm|Selector29~1_combout\ & ((!\pwm|duty_cycle[2]~0_combout\) # (\pwm|LessThan0~1_combout\))) ) ) ) # ( !\pwm|Add1~1_sumout\ & ( !\pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( 
-- (\pwm|Selector29~1_combout\ & ((!\pwm|duty_cycle[2]~0_combout\) # (\pwm|LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000011110000010100001100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_LessThan0~1_combout\,
	datab => \pwm|ALT_INV_LessThan1~1_combout\,
	datac => \pwm|ALT_INV_Selector29~1_combout\,
	datad => \pwm|ALT_INV_duty_cycle[2]~0_combout\,
	datae => \pwm|ALT_INV_Add1~1_sumout\,
	dataf => \pwm|ALT_INV_pwm_state.pwm_down~DUPLICATE_q\,
	combout => \pwm|duty_cycle[2]~2_combout\);

-- Location: FF_X25_Y13_N14
\pwm|duty_cycle[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector6~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	ena => \pwm|duty_cycle[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|duty_cycle[0]~_Duplicate_1_q\);

-- Location: FF_X28_Y13_N43
\pwm|pwm_state.pwm_refresh_dc~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector12~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\);

-- Location: LABCELL_X19_Y27_N12
\pwm|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector29~0_combout\ = ( \pwm|p_main:pwm_active~q\ & ( !\pwm|pwm_state.pwm_off~q\ ) ) # ( !\pwm|p_main:pwm_active~q\ & ( !\pwm|pwm_state.pwm_off~q\ & ( (!\pwm|pwm_state.pwm_down~DUPLICATE_q\ & (\pwm|pwm_state.pwm_idel~q\ & 
-- !\pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_down~DUPLICATE_q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_idel~q\,
	datac => \pwm|ALT_INV_pwm_state.pwm_refresh_dc~DUPLICATE_q\,
	datae => \pwm|ALT_INV_p_main:pwm_active~q\,
	dataf => \pwm|ALT_INV_pwm_state.pwm_off~q\,
	combout => \pwm|Selector29~0_combout\);

-- Location: LABCELL_X19_Y27_N39
\pwm|p_main:pwm_active~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|p_main:pwm_active~feeder_combout\ = ( \pwm|Selector29~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm|ALT_INV_Selector29~0_combout\,
	combout => \pwm|p_main:pwm_active~feeder_combout\);

-- Location: FF_X19_Y27_N40
\pwm|p_main:pwm_active\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|p_main:pwm_active~feeder_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|p_main:pwm_active~q\);

-- Location: LABCELL_X27_Y13_N36
\pwm|duty_cycle[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|duty_cycle[2]~3_combout\ = ( !\pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( (!\pwm|pwm_state.pwm_up~q\) # (!\pwm|p_main:pwm_active~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datab => \pwm|ALT_INV_p_main:pwm_active~q\,
	dataf => \pwm|ALT_INV_pwm_state.pwm_down~DUPLICATE_q\,
	combout => \pwm|duty_cycle[2]~3_combout\);

-- Location: FF_X27_Y13_N38
\pwm|previous_duty_cycle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \pwm|duty_cycle[1]~_Duplicate_1_q\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	sload => VCC,
	ena => \pwm|pwm_state.pwm_off~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|previous_duty_cycle\(1));

-- Location: LABCELL_X27_Y13_N54
\pwm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector5~0_combout\ = ( \pwm|duty_cycle[2]~3_combout\ & ( \pwm|previous_duty_cycle\(1) & ( (!\pwm|duty_cycle[2]~1_combout\) # (\pwm|pwm_state.pwm_up~q\) ) ) ) # ( !\pwm|duty_cycle[2]~3_combout\ & ( \pwm|previous_duty_cycle\(1) & ( 
-- (!\pwm|duty_cycle[2]~1_combout\ & (\pwm|Add1~21_sumout\)) # (\pwm|duty_cycle[2]~1_combout\ & ((\pwm|Add0~29_sumout\))) ) ) ) # ( \pwm|duty_cycle[2]~3_combout\ & ( !\pwm|previous_duty_cycle\(1) & ( (\pwm|duty_cycle[2]~1_combout\ & \pwm|pwm_state.pwm_up~q\) 
-- ) ) ) # ( !\pwm|duty_cycle[2]~3_combout\ & ( !\pwm|previous_duty_cycle\(1) & ( (!\pwm|duty_cycle[2]~1_combout\ & (\pwm|Add1~21_sumout\)) # (\pwm|duty_cycle[2]~1_combout\ & ((\pwm|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Add1~21_sumout\,
	datab => \pwm|ALT_INV_Add0~29_sumout\,
	datac => \pwm|ALT_INV_duty_cycle[2]~1_combout\,
	datad => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datae => \pwm|ALT_INV_duty_cycle[2]~3_combout\,
	dataf => \pwm|ALT_INV_previous_duty_cycle\(1),
	combout => \pwm|Selector5~0_combout\);

-- Location: FF_X27_Y13_N56
\pwm|duty_cycle[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector5~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	ena => \pwm|duty_cycle[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|duty_cycle[1]~_Duplicate_1_q\);

-- Location: MLABCELL_X25_Y13_N36
\pwm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add0~21_sumout\ = SUM(( \pwm|duty_cycle[2]~_Duplicate_1_q\ ) + ( GND ) + ( \pwm|Add0~30\ ))
-- \pwm|Add0~22\ = CARRY(( \pwm|duty_cycle[2]~_Duplicate_1_q\ ) + ( GND ) + ( \pwm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_duty_cycle[2]~_Duplicate_1_q\,
	cin => \pwm|Add0~30\,
	sumout => \pwm|Add0~21_sumout\,
	cout => \pwm|Add0~22\);

-- Location: MLABCELL_X25_Y13_N0
\pwm|previous_duty_cycle[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|previous_duty_cycle[2]~2_combout\ = !\pwm|duty_cycle[2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_duty_cycle[2]~_Duplicate_1_q\,
	combout => \pwm|previous_duty_cycle[2]~2_combout\);

-- Location: FF_X25_Y13_N1
\pwm|previous_duty_cycle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|previous_duty_cycle[2]~2_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	ena => \pwm|pwm_state.pwm_off~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|previous_duty_cycle\(2));

-- Location: MLABCELL_X25_Y13_N54
\pwm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector4~0_combout\ = ( \pwm|Add1~25_sumout\ & ( \pwm|duty_cycle[2]~0_combout\ & ( (\pwm|pwm_state.pwm_down~DUPLICATE_q\) # (\pwm|Add0~21_sumout\) ) ) ) # ( !\pwm|Add1~25_sumout\ & ( \pwm|duty_cycle[2]~0_combout\ & ( (\pwm|Add0~21_sumout\ & 
-- !\pwm|pwm_state.pwm_down~DUPLICATE_q\) ) ) ) # ( \pwm|Add1~25_sumout\ & ( !\pwm|duty_cycle[2]~0_combout\ & ( ((!\pwm|previous_duty_cycle\(2) & !\pwm|duty_cycle[2]~1_combout\)) # (\pwm|pwm_state.pwm_down~DUPLICATE_q\) ) ) ) # ( !\pwm|Add1~25_sumout\ & ( 
-- !\pwm|duty_cycle[2]~0_combout\ & ( (!\pwm|previous_duty_cycle\(2) & (!\pwm|pwm_state.pwm_down~DUPLICATE_q\ & !\pwm|duty_cycle[2]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110011110000111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Add0~21_sumout\,
	datab => \pwm|ALT_INV_previous_duty_cycle\(2),
	datac => \pwm|ALT_INV_pwm_state.pwm_down~DUPLICATE_q\,
	datad => \pwm|ALT_INV_duty_cycle[2]~1_combout\,
	datae => \pwm|ALT_INV_Add1~25_sumout\,
	dataf => \pwm|ALT_INV_duty_cycle[2]~0_combout\,
	combout => \pwm|Selector4~0_combout\);

-- Location: FF_X25_Y13_N56
\pwm|duty_cycle[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector4~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	ena => \pwm|duty_cycle[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|duty_cycle[2]~_Duplicate_1_q\);

-- Location: FF_X27_Y13_N32
\pwm|previous_duty_cycle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \pwm|duty_cycle[3]~_Duplicate_1_q\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	sload => VCC,
	ena => \pwm|pwm_state.pwm_off~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|previous_duty_cycle\(3));

-- Location: LABCELL_X27_Y13_N24
\pwm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector3~0_combout\ = ( \pwm|duty_cycle[2]~3_combout\ & ( \pwm|pwm_state.pwm_up~q\ & ( (\pwm|duty_cycle[2]~1_combout\) # (\pwm|previous_duty_cycle\(3)) ) ) ) # ( !\pwm|duty_cycle[2]~3_combout\ & ( \pwm|pwm_state.pwm_up~q\ & ( 
-- (!\pwm|duty_cycle[2]~1_combout\ & ((\pwm|Add1~17_sumout\))) # (\pwm|duty_cycle[2]~1_combout\ & (\pwm|Add0~17_sumout\)) ) ) ) # ( \pwm|duty_cycle[2]~3_combout\ & ( !\pwm|pwm_state.pwm_up~q\ & ( (\pwm|previous_duty_cycle\(3) & 
-- !\pwm|duty_cycle[2]~1_combout\) ) ) ) # ( !\pwm|duty_cycle[2]~3_combout\ & ( !\pwm|pwm_state.pwm_up~q\ & ( (!\pwm|duty_cycle[2]~1_combout\ & ((\pwm|Add1~17_sumout\))) # (\pwm|duty_cycle[2]~1_combout\ & (\pwm|Add0~17_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Add0~17_sumout\,
	datab => \pwm|ALT_INV_previous_duty_cycle\(3),
	datac => \pwm|ALT_INV_duty_cycle[2]~1_combout\,
	datad => \pwm|ALT_INV_Add1~17_sumout\,
	datae => \pwm|ALT_INV_duty_cycle[2]~3_combout\,
	dataf => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	combout => \pwm|Selector3~0_combout\);

-- Location: FF_X27_Y13_N26
\pwm|duty_cycle[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector3~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	ena => \pwm|duty_cycle[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|duty_cycle[3]~_Duplicate_1_q\);

-- Location: LABCELL_X27_Y13_N18
\pwm|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add1~5_sumout\ = SUM(( \pwm|duty_cycle[6]~_Duplicate_1_q\ ) + ( VCC ) + ( \pwm|Add1~14\ ))
-- \pwm|Add1~6\ = CARRY(( \pwm|duty_cycle[6]~_Duplicate_1_q\ ) + ( VCC ) + ( \pwm|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_duty_cycle[6]~_Duplicate_1_q\,
	cin => \pwm|Add1~14\,
	sumout => \pwm|Add1~5_sumout\,
	cout => \pwm|Add1~6\);

-- Location: LABCELL_X27_Y13_N21
\pwm|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add1~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Add1~6\,
	sumout => \pwm|Add1~1_sumout\);

-- Location: MLABCELL_X28_Y12_N30
\pwm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector9~0_combout\ = ( !\key_ctrl|key_on~q\ & ( !\serial_ctrl|key_on~q\ & ( (!\serial_ctrl|key_off~q\ & (!\key_ctrl|key_off~q\ & ((\serial_ctrl|key_up~q\) # (\key_ctrl|key_up~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_key_up~q\,
	datab => \serial_ctrl|ALT_INV_key_up~q\,
	datac => \serial_ctrl|ALT_INV_key_off~q\,
	datad => \key_ctrl|ALT_INV_key_off~q\,
	datae => \key_ctrl|ALT_INV_key_on~q\,
	dataf => \serial_ctrl|ALT_INV_key_on~q\,
	combout => \pwm|Selector9~0_combout\);

-- Location: MLABCELL_X28_Y13_N15
\pwm|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector9~1_combout\ = ( \pwm|LessThan1~0_combout\ & ( \pwm|Selector9~0_combout\ & ( (!\pwm|pwm_state.pwm_idel~DUPLICATE_q\) # ((\pwm|pwm_state.pwm_down~q\ & ((!\pwm|Add1~5_sumout\) # (\pwm|Add1~1_sumout\)))) ) ) ) # ( !\pwm|LessThan1~0_combout\ & ( 
-- \pwm|Selector9~0_combout\ & ( (!\pwm|pwm_state.pwm_idel~DUPLICATE_q\) # ((\pwm|pwm_state.pwm_down~q\ & \pwm|Add1~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101110111011101010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_idel~DUPLICATE_q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_down~q\,
	datac => \pwm|ALT_INV_Add1~5_sumout\,
	datad => \pwm|ALT_INV_Add1~1_sumout\,
	datae => \pwm|ALT_INV_LessThan1~0_combout\,
	dataf => \pwm|ALT_INV_Selector9~0_combout\,
	combout => \pwm|Selector9~1_combout\);

-- Location: FF_X28_Y13_N16
\pwm|pwm_state.pwm_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector9~1_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_state.pwm_up~q\);

-- Location: LABCELL_X27_Y13_N39
\pwm|duty_cycle[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|duty_cycle[2]~0_combout\ = (\pwm|pwm_state.pwm_up~q\ & \pwm|p_main:pwm_active~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datab => \pwm|ALT_INV_p_main:pwm_active~q\,
	combout => \pwm|duty_cycle[2]~0_combout\);

-- Location: FF_X25_Y13_N22
\pwm|previous_duty_cycle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \pwm|duty_cycle[4]~_Duplicate_1_q\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	sload => VCC,
	ena => \pwm|pwm_state.pwm_off~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|previous_duty_cycle\(4));

-- Location: MLABCELL_X25_Y13_N24
\pwm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector2~0_combout\ = ( \pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( \pwm|previous_duty_cycle\(4) & ( \pwm|Add1~9_sumout\ ) ) ) # ( !\pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( \pwm|previous_duty_cycle\(4) & ( (!\pwm|duty_cycle[2]~0_combout\ & 
-- (!\pwm|duty_cycle[2]~1_combout\)) # (\pwm|duty_cycle[2]~0_combout\ & ((\pwm|Add0~5_sumout\))) ) ) ) # ( \pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( !\pwm|previous_duty_cycle\(4) & ( \pwm|Add1~9_sumout\ ) ) ) # ( !\pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( 
-- !\pwm|previous_duty_cycle\(4) & ( (\pwm|duty_cycle[2]~0_combout\ & \pwm|Add0~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110000111110001000110111010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_duty_cycle[2]~0_combout\,
	datab => \pwm|ALT_INV_duty_cycle[2]~1_combout\,
	datac => \pwm|ALT_INV_Add1~9_sumout\,
	datad => \pwm|ALT_INV_Add0~5_sumout\,
	datae => \pwm|ALT_INV_pwm_state.pwm_down~DUPLICATE_q\,
	dataf => \pwm|ALT_INV_previous_duty_cycle\(4),
	combout => \pwm|Selector2~0_combout\);

-- Location: FF_X25_Y13_N26
\pwm|duty_cycle[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector2~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	ena => \pwm|duty_cycle[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|duty_cycle[4]~_Duplicate_1_q\);

-- Location: MLABCELL_X25_Y13_N45
\pwm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add0~13_sumout\ = SUM(( \pwm|duty_cycle[5]~_Duplicate_1_q\ ) + ( GND ) + ( \pwm|Add0~6\ ))
-- \pwm|Add0~14\ = CARRY(( \pwm|duty_cycle[5]~_Duplicate_1_q\ ) + ( GND ) + ( \pwm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_duty_cycle[5]~_Duplicate_1_q\,
	cin => \pwm|Add0~6\,
	sumout => \pwm|Add0~13_sumout\,
	cout => \pwm|Add0~14\);

-- Location: MLABCELL_X28_Y13_N21
\pwm|previous_duty_cycle[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|previous_duty_cycle[5]~1_combout\ = ( !\pwm|duty_cycle[5]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm|ALT_INV_duty_cycle[5]~_Duplicate_1_q\,
	combout => \pwm|previous_duty_cycle[5]~1_combout\);

-- Location: FF_X27_Y13_N41
\pwm|previous_duty_cycle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \pwm|previous_duty_cycle[5]~1_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	sload => VCC,
	ena => \pwm|pwm_state.pwm_off~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|previous_duty_cycle\(5));

-- Location: LABCELL_X27_Y13_N42
\pwm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector1~0_combout\ = ( \pwm|duty_cycle[2]~1_combout\ & ( \pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( \pwm|Add1~13_sumout\ ) ) ) # ( !\pwm|duty_cycle[2]~1_combout\ & ( \pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( \pwm|Add1~13_sumout\ ) ) ) # ( 
-- \pwm|duty_cycle[2]~1_combout\ & ( !\pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( (\pwm|Add0~13_sumout\ & \pwm|duty_cycle[2]~0_combout\) ) ) ) # ( !\pwm|duty_cycle[2]~1_combout\ & ( !\pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( (!\pwm|duty_cycle[2]~0_combout\ & 
-- ((!\pwm|previous_duty_cycle\(5)))) # (\pwm|duty_cycle[2]~0_combout\ & (\pwm|Add0~13_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000101000001010000010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Add0~13_sumout\,
	datab => \pwm|ALT_INV_Add1~13_sumout\,
	datac => \pwm|ALT_INV_duty_cycle[2]~0_combout\,
	datad => \pwm|ALT_INV_previous_duty_cycle\(5),
	datae => \pwm|ALT_INV_duty_cycle[2]~1_combout\,
	dataf => \pwm|ALT_INV_pwm_state.pwm_down~DUPLICATE_q\,
	combout => \pwm|Selector1~0_combout\);

-- Location: FF_X27_Y13_N44
\pwm|duty_cycle[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector1~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	ena => \pwm|duty_cycle[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|duty_cycle[5]~_Duplicate_1_q\);

-- Location: MLABCELL_X25_Y13_N3
\pwm|previous_duty_cycle[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|previous_duty_cycle[6]~0_combout\ = ( !\pwm|duty_cycle[6]~_Duplicate_1_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm|ALT_INV_duty_cycle[6]~_Duplicate_1_q\,
	combout => \pwm|previous_duty_cycle[6]~0_combout\);

-- Location: FF_X25_Y13_N4
\pwm|previous_duty_cycle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|previous_duty_cycle[6]~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	ena => \pwm|pwm_state.pwm_off~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|previous_duty_cycle\(6));

-- Location: LABCELL_X27_Y13_N48
\pwm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector0~0_combout\ = ( \pwm|duty_cycle[2]~1_combout\ & ( \pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( \pwm|Add1~5_sumout\ ) ) ) # ( !\pwm|duty_cycle[2]~1_combout\ & ( \pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( \pwm|Add1~5_sumout\ ) ) ) # ( 
-- \pwm|duty_cycle[2]~1_combout\ & ( !\pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( (\pwm|Add0~1_sumout\ & \pwm|duty_cycle[2]~0_combout\) ) ) ) # ( !\pwm|duty_cycle[2]~1_combout\ & ( !\pwm|pwm_state.pwm_down~DUPLICATE_q\ & ( (!\pwm|duty_cycle[2]~0_combout\ & 
-- ((!\pwm|previous_duty_cycle\(6)))) # (\pwm|duty_cycle[2]~0_combout\ & (\pwm|Add0~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000011000000110000001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Add1~5_sumout\,
	datab => \pwm|ALT_INV_Add0~1_sumout\,
	datac => \pwm|ALT_INV_duty_cycle[2]~0_combout\,
	datad => \pwm|ALT_INV_previous_duty_cycle\(6),
	datae => \pwm|ALT_INV_duty_cycle[2]~1_combout\,
	dataf => \pwm|ALT_INV_pwm_state.pwm_down~DUPLICATE_q\,
	combout => \pwm|Selector0~0_combout\);

-- Location: FF_X27_Y13_N50
\pwm|duty_cycle[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector0~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	ena => \pwm|duty_cycle[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|duty_cycle[6]~_Duplicate_1_q\);

-- Location: FF_X37_Y7_N10
\uart|received_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|received_data[4]~feeder_combout\,
	sclr => \uart|reset_2r~q\,
	ena => \uart|received_data[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|received_data\(4));

-- Location: LABCELL_X37_Y7_N12
\serial_ctrl|key_down~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \serial_ctrl|key_down~0_combout\ = ( \serial_ctrl|key_on~0_combout\ & ( (!\uart|received_data\(0) & (\uart|received_data\(2) & (!\uart|received_data\(4) & \uart|received_data\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_received_data\(0),
	datab => \uart|ALT_INV_received_data\(2),
	datac => \uart|ALT_INV_received_data\(4),
	datad => \uart|ALT_INV_received_data\(6),
	dataf => \serial_ctrl|ALT_INV_key_on~0_combout\,
	combout => \serial_ctrl|key_down~0_combout\);

-- Location: FF_X37_Y7_N13
\serial_ctrl|key_down\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \serial_ctrl|key_down~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_ctrl|key_down~q\);

-- Location: MLABCELL_X28_Y12_N45
\key_ctrl|key_down~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \key_ctrl|key_down~0_combout\ = ( \key_ctrl|Equal1~2_combout\ & ( !\key_ctrl|key_n_r2\(2) & ( (!\key_ctrl|cnt_enabled_t~q\) # ((\key_ctrl|Equal1~0_combout\ & (\key_ctrl|counter\(5) & \key_ctrl|Equal1~1_combout\))) ) ) ) # ( !\key_ctrl|Equal1~2_combout\ & 
-- ( !\key_ctrl|key_n_r2\(2) & ( !\key_ctrl|cnt_enabled_t~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_cnt_enabled_t~q\,
	datab => \key_ctrl|ALT_INV_Equal1~0_combout\,
	datac => \key_ctrl|ALT_INV_counter\(5),
	datad => \key_ctrl|ALT_INV_Equal1~1_combout\,
	datae => \key_ctrl|ALT_INV_Equal1~2_combout\,
	dataf => \key_ctrl|ALT_INV_key_n_r2\(2),
	combout => \key_ctrl|key_down~0_combout\);

-- Location: FF_X28_Y12_N46
\key_ctrl|key_down\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \key_ctrl|key_down~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_ctrl|key_down~q\);

-- Location: MLABCELL_X28_Y13_N18
\pwm|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector10~0_combout\ = ( !\pwm|pwm_state.pwm_idel~DUPLICATE_q\ & ( (\key_ctrl|key_down~q\) # (\serial_ctrl|key_down~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \serial_ctrl|ALT_INV_key_down~q\,
	datac => \key_ctrl|ALT_INV_key_down~q\,
	dataf => \pwm|ALT_INV_pwm_state.pwm_idel~DUPLICATE_q\,
	combout => \pwm|Selector10~0_combout\);

-- Location: MLABCELL_X28_Y13_N6
\pwm|Selector10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector10~2_combout\ = ( \pwm|pwm_state.pwm_down~q\ & ( \pwm|Selector10~0_combout\ & ( \pwm|Selector10~1_combout\ ) ) ) # ( !\pwm|pwm_state.pwm_down~q\ & ( \pwm|Selector10~0_combout\ & ( \pwm|Selector10~1_combout\ ) ) ) # ( 
-- \pwm|pwm_state.pwm_down~q\ & ( !\pwm|Selector10~0_combout\ & ( (\pwm|Selector10~1_combout\ & (((!\pwm|Add1~5_sumout\ & \pwm|LessThan1~0_combout\)) # (\pwm|Add1~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Selector10~1_combout\,
	datab => \pwm|ALT_INV_Add1~5_sumout\,
	datac => \pwm|ALT_INV_LessThan1~0_combout\,
	datad => \pwm|ALT_INV_Add1~1_sumout\,
	datae => \pwm|ALT_INV_pwm_state.pwm_down~q\,
	dataf => \pwm|ALT_INV_Selector10~0_combout\,
	combout => \pwm|Selector10~2_combout\);

-- Location: FF_X28_Y13_N8
\pwm|pwm_state.pwm_down\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector10~2_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_state.pwm_down~q\);

-- Location: MLABCELL_X28_Y12_N15
\pwm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector8~0_combout\ = ( !\key_ctrl|key_on~q\ & ( !\serial_ctrl|key_on~q\ & ( (\key_ctrl|key_off~q\) # (\serial_ctrl|key_off~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \serial_ctrl|ALT_INV_key_off~q\,
	datac => \key_ctrl|ALT_INV_key_off~q\,
	datae => \key_ctrl|ALT_INV_key_on~q\,
	dataf => \serial_ctrl|ALT_INV_key_on~q\,
	combout => \pwm|Selector8~0_combout\);

-- Location: MLABCELL_X28_Y13_N12
\pwm|Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector8~1_combout\ = ( \pwm|LessThan1~0_combout\ & ( \pwm|Selector8~0_combout\ & ( (!\pwm|pwm_state.pwm_idel~DUPLICATE_q\) # ((\pwm|pwm_state.pwm_down~q\ & ((!\pwm|Add1~5_sumout\) # (\pwm|Add1~1_sumout\)))) ) ) ) # ( !\pwm|LessThan1~0_combout\ & ( 
-- \pwm|Selector8~0_combout\ & ( (!\pwm|pwm_state.pwm_idel~DUPLICATE_q\) # ((\pwm|pwm_state.pwm_down~q\ & \pwm|Add1~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101011101010111011101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_idel~DUPLICATE_q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_down~q\,
	datac => \pwm|ALT_INV_Add1~1_sumout\,
	datad => \pwm|ALT_INV_Add1~5_sumout\,
	datae => \pwm|ALT_INV_LessThan1~0_combout\,
	dataf => \pwm|ALT_INV_Selector8~0_combout\,
	combout => \pwm|Selector8~1_combout\);

-- Location: FF_X28_Y13_N14
\pwm|pwm_state.pwm_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector8~1_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_state.pwm_off~q\);

-- Location: MLABCELL_X28_Y12_N36
\pwm|p_main~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|p_main~0_combout\ = ( !\serial_ctrl|key_on~q\ & ( !\key_ctrl|key_on~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \key_ctrl|ALT_INV_key_on~q\,
	dataf => \serial_ctrl|ALT_INV_key_on~q\,
	combout => \pwm|p_main~0_combout\);

-- Location: MLABCELL_X28_Y13_N30
\pwm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector7~0_combout\ = ( \pwm|LessThan1~0_combout\ & ( \pwm|Add1~5_sumout\ & ( (!\pwm|p_main~0_combout\ & ((!\pwm|pwm_state.pwm_idel~DUPLICATE_q\) # ((\pwm|pwm_state.pwm_down~q\ & \pwm|Add1~1_sumout\)))) ) ) ) # ( !\pwm|LessThan1~0_combout\ & ( 
-- \pwm|Add1~5_sumout\ & ( (!\pwm|p_main~0_combout\ & ((!\pwm|pwm_state.pwm_idel~DUPLICATE_q\) # ((\pwm|pwm_state.pwm_down~q\ & \pwm|Add1~1_sumout\)))) ) ) ) # ( \pwm|LessThan1~0_combout\ & ( !\pwm|Add1~5_sumout\ & ( (!\pwm|p_main~0_combout\ & 
-- ((!\pwm|pwm_state.pwm_idel~DUPLICATE_q\) # (\pwm|pwm_state.pwm_down~q\))) ) ) ) # ( !\pwm|LessThan1~0_combout\ & ( !\pwm|Add1~5_sumout\ & ( (!\pwm|p_main~0_combout\ & ((!\pwm|pwm_state.pwm_idel~DUPLICATE_q\) # ((\pwm|pwm_state.pwm_down~q\ & 
-- \pwm|Add1~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101100000000101110110000000010101011000000001010101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_idel~DUPLICATE_q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_down~q\,
	datac => \pwm|ALT_INV_Add1~1_sumout\,
	datad => \pwm|ALT_INV_p_main~0_combout\,
	datae => \pwm|ALT_INV_LessThan1~0_combout\,
	dataf => \pwm|ALT_INV_Add1~5_sumout\,
	combout => \pwm|Selector7~0_combout\);

-- Location: FF_X28_Y13_N31
\pwm|pwm_state.pwm_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector7~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_state.pwm_on~q\);

-- Location: MLABCELL_X28_Y13_N0
\pwm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector11~0_combout\ = ( !\pwm|pwm_state.pwm_up~q\ & ( (!\pwm|pwm_state.pwm_off~q\ & !\pwm|pwm_state.pwm_on~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_pwm_state.pwm_off~q\,
	datac => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	dataf => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	combout => \pwm|Selector11~0_combout\);

-- Location: MLABCELL_X28_Y13_N3
\pwm|Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector11~1_combout\ = ( !\pwm|pwm_state.pwm_idel~DUPLICATE_q\ & ( (!\key_ctrl|key_down~q\ & (!\serial_ctrl|key_down~q\ & \pwm|Selector10~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \key_ctrl|ALT_INV_key_down~q\,
	datac => \serial_ctrl|ALT_INV_key_down~q\,
	datad => \pwm|ALT_INV_Selector10~1_combout\,
	dataf => \pwm|ALT_INV_pwm_state.pwm_idel~DUPLICATE_q\,
	combout => \pwm|Selector11~1_combout\);

-- Location: MLABCELL_X28_Y13_N48
\pwm|Selector11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector11~2_combout\ = ( \pwm|Add1~1_sumout\ & ( \pwm|LessThan1~1_combout\ & ( (!\pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\ & ((!\pwm|Selector11~0_combout\) # (!\pwm|Selector11~1_combout\))) ) ) ) # ( !\pwm|Add1~1_sumout\ & ( 
-- \pwm|LessThan1~1_combout\ & ( (!\pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\ & ((!\pwm|Selector11~0_combout\) # (!\pwm|Selector11~1_combout\))) ) ) ) # ( \pwm|Add1~1_sumout\ & ( !\pwm|LessThan1~1_combout\ & ( (!\pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\ & 
-- ((!\pwm|Selector11~0_combout\) # (!\pwm|Selector11~1_combout\))) ) ) ) # ( !\pwm|Add1~1_sumout\ & ( !\pwm|LessThan1~1_combout\ & ( (!\pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\ & ((!\pwm|Selector11~0_combout\) # ((!\pwm|Selector11~1_combout\) # 
-- (\pwm|pwm_state.pwm_down~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101100000000111110100000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Selector11~0_combout\,
	datab => \pwm|ALT_INV_pwm_state.pwm_down~q\,
	datac => \pwm|ALT_INV_Selector11~1_combout\,
	datad => \pwm|ALT_INV_pwm_state.pwm_refresh_dc~DUPLICATE_q\,
	datae => \pwm|ALT_INV_Add1~1_sumout\,
	dataf => \pwm|ALT_INV_LessThan1~1_combout\,
	combout => \pwm|Selector11~2_combout\);

-- Location: FF_X28_Y13_N49
\pwm|pwm_state.pwm_idel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector11~2_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_state.pwm_idel~q\);

-- Location: FF_X27_Y11_N8
\pwm|current_dc_update\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector30~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|current_dc_update~q\);

-- Location: LABCELL_X27_Y11_N6
\pwm|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Selector30~0_combout\ = ( \pwm|current_dc_update~q\ & ( !\pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\ ) ) # ( !\pwm|current_dc_update~q\ & ( !\pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\ & ( !\pwm|pwm_state.pwm_idel~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_pwm_state.pwm_idel~q\,
	datae => \pwm|ALT_INV_current_dc_update~q\,
	dataf => \pwm|ALT_INV_pwm_state.pwm_refresh_dc~DUPLICATE_q\,
	combout => \pwm|Selector30~0_combout\);

-- Location: FF_X27_Y11_N7
\pwm|current_dc_update~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|Selector30~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|current_dc_update~DUPLICATE_q\);

-- Location: LABCELL_X33_Y11_N12
\c_disp_ctrl|bcd|addr_valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|bcd|addr_valid~0_combout\ = ( !\pwm|current_dc_update~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \pwm|ALT_INV_current_dc_update~DUPLICATE_q\,
	combout => \c_disp_ctrl|bcd|addr_valid~0_combout\);

-- Location: FF_X33_Y11_N13
\c_disp_ctrl|bcd|addr_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|bcd|addr_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|bcd|addr_valid~q\);

-- Location: FF_X42_Y4_N29
\c_disp_ctrl|bcd|rom_data_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \c_disp_ctrl|bcd|addr_valid~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|bcd|rom_data_valid~q\);

-- Location: FF_X40_Y3_N38
\c_disp_ctrl|send_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|send_x~1_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	ena => \c_disp_ctrl|transmit_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|send_x\(0));

-- Location: LABCELL_X40_Y3_N57
\c_disp_ctrl|Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux27~1_combout\ = !\c_disp_ctrl|send_x\(0) $ (!\c_disp_ctrl|send_x\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|ALT_INV_send_x\(0),
	datad => \c_disp_ctrl|ALT_INV_send_x\(1),
	combout => \c_disp_ctrl|Mux27~1_combout\);

-- Location: FF_X40_Y3_N59
\c_disp_ctrl|send_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|Mux27~1_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	ena => \c_disp_ctrl|transmit_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|send_x\(1));

-- Location: LABCELL_X40_Y3_N54
\c_disp_ctrl|send_x~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|send_x~0_combout\ = (!\c_disp_ctrl|send_x\(0) & (\c_disp_ctrl|send_x\(1) & \c_disp_ctrl|send_x\(2))) # (\c_disp_ctrl|send_x\(0) & (!\c_disp_ctrl|send_x\(1) $ (!\c_disp_ctrl|send_x\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101100110000100010110011000010001011001100001000101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|ALT_INV_send_x\(0),
	datab => \c_disp_ctrl|ALT_INV_send_x\(1),
	datad => \c_disp_ctrl|ALT_INV_send_x\(2),
	combout => \c_disp_ctrl|send_x~0_combout\);

-- Location: FF_X40_Y3_N56
\c_disp_ctrl|send_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|send_x~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	ena => \c_disp_ctrl|transmit_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|send_x\(2));

-- Location: LABCELL_X40_Y3_N6
\c_disp_ctrl|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Equal1~0_combout\ = ( !\c_disp_ctrl|send_x\(1) & ( (\c_disp_ctrl|send_x\(2) & !\c_disp_ctrl|send_x[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c_disp_ctrl|ALT_INV_send_x\(2),
	datad => \c_disp_ctrl|ALT_INV_send_x[0]~DUPLICATE_q\,
	dataf => \c_disp_ctrl|ALT_INV_send_x\(1),
	combout => \c_disp_ctrl|Equal1~0_combout\);

-- Location: LABCELL_X40_Y3_N36
\c_disp_ctrl|send_x~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|send_x~1_combout\ = ( !\c_disp_ctrl|Equal1~0_combout\ & ( !\c_disp_ctrl|send_x\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c_disp_ctrl|ALT_INV_send_x\(0),
	dataf => \c_disp_ctrl|ALT_INV_Equal1~0_combout\,
	combout => \c_disp_ctrl|send_x~1_combout\);

-- Location: FF_X40_Y3_N37
\c_disp_ctrl|send_x[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|send_x~1_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	ena => \c_disp_ctrl|transmit_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|send_x[0]~DUPLICATE_q\);

-- Location: FF_X42_Y3_N38
\uart|transmit_ready_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector25~0_combout\,
	sclr => \uart|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|transmit_ready_int~q\);

-- Location: FF_X42_Y3_N58
\c_disp_ctrl|transmit_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \c_disp_ctrl|transmit_valid~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|transmit_valid~q\);

-- Location: LABCELL_X42_Y3_N36
\uart|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector25~0_combout\ = ( \c_disp_ctrl|transmit_valid~q\ & ( (!\uart|tx_state.s_idle~q\ & (((!\uart|transmit_ready_int~q\)))) # (\uart|tx_state.s_idle~q\ & (((\uart|tx_state.s_stop_bit~q\ & \uart|tx_bit_cnt_wrap~q\)) # 
-- (\uart|transmit_ready_int~q\))) ) ) # ( !\c_disp_ctrl|transmit_valid~q\ & ( (!\uart|tx_state.s_idle~q\) # (((\uart|tx_state.s_stop_bit~q\ & \uart|tx_bit_cnt_wrap~q\)) # (\uart|transmit_ready_int~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111111110011011111111111001101001100111100110100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_state.s_stop_bit~q\,
	datab => \uart|ALT_INV_tx_state.s_idle~q\,
	datac => \uart|ALT_INV_tx_bit_cnt_wrap~q\,
	datad => \uart|ALT_INV_transmit_ready_int~q\,
	dataf => \c_disp_ctrl|ALT_INV_transmit_valid~q\,
	combout => \uart|Selector25~0_combout\);

-- Location: FF_X42_Y3_N37
\uart|transmit_ready_int~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector25~0_combout\,
	sclr => \uart|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|transmit_ready_int~DUPLICATE_q\);

-- Location: FF_X40_Y3_N55
\c_disp_ctrl|send_x[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|send_x~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	ena => \c_disp_ctrl|transmit_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|send_x[2]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y4_N54
\c_disp_ctrl|send_data~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|send_data~0_combout\ = ( \c_disp_ctrl|send_data~q\ & ( !\c_disp_ctrl|wait_one_clockCycle~q\ & ( (!\c_disp_ctrl|send_x[0]~DUPLICATE_q\ & (\uart|transmit_ready_int~DUPLICATE_q\ & (!\c_disp_ctrl|send_x\(1) & 
-- \c_disp_ctrl|send_x[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|ALT_INV_send_x[0]~DUPLICATE_q\,
	datab => \uart|ALT_INV_transmit_ready_int~DUPLICATE_q\,
	datac => \c_disp_ctrl|ALT_INV_send_x\(1),
	datad => \c_disp_ctrl|ALT_INV_send_x[2]~DUPLICATE_q\,
	datae => \c_disp_ctrl|ALT_INV_send_data~q\,
	dataf => \c_disp_ctrl|ALT_INV_wait_one_clockCycle~q\,
	combout => \c_disp_ctrl|send_data~0_combout\);

-- Location: LABCELL_X42_Y4_N45
\c_disp_ctrl|send_data~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|send_data~1_combout\ = ( !\c_disp_ctrl|send_data~0_combout\ & ( (\c_disp_ctrl|send_data~q\) # (\c_disp_ctrl|bcd|rom_data_valid~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|bcd|ALT_INV_rom_data_valid~q\,
	datad => \c_disp_ctrl|ALT_INV_send_data~q\,
	dataf => \c_disp_ctrl|ALT_INV_send_data~0_combout\,
	combout => \c_disp_ctrl|send_data~1_combout\);

-- Location: FF_X42_Y4_N47
\c_disp_ctrl|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|send_data~1_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|send_data~q\);

-- Location: LABCELL_X42_Y4_N42
\c_disp_ctrl|wait_one_clockCycle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|wait_one_clockCycle~0_combout\ = ( \uart|transmit_ready_int~DUPLICATE_q\ & ( !\c_disp_ctrl|send_data~q\ $ (!\c_disp_ctrl|wait_one_clockCycle~q\) ) ) # ( !\uart|transmit_ready_int~DUPLICATE_q\ & ( (!\c_disp_ctrl|send_data~q\ & 
-- \c_disp_ctrl|wait_one_clockCycle~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c_disp_ctrl|ALT_INV_send_data~q\,
	datad => \c_disp_ctrl|ALT_INV_wait_one_clockCycle~q\,
	dataf => \uart|ALT_INV_transmit_ready_int~DUPLICATE_q\,
	combout => \c_disp_ctrl|wait_one_clockCycle~0_combout\);

-- Location: FF_X42_Y4_N44
\c_disp_ctrl|wait_one_clockCycle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|wait_one_clockCycle~0_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|wait_one_clockCycle~q\);

-- Location: LABCELL_X42_Y4_N39
\c_disp_ctrl|transmit_valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|transmit_valid~0_combout\ = ( \uart|transmit_ready_int~DUPLICATE_q\ & ( (!\c_disp_ctrl|wait_one_clockCycle~q\ & \c_disp_ctrl|send_data~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c_disp_ctrl|ALT_INV_wait_one_clockCycle~q\,
	datac => \c_disp_ctrl|ALT_INV_send_data~q\,
	dataf => \uart|ALT_INV_transmit_ready_int~DUPLICATE_q\,
	combout => \c_disp_ctrl|transmit_valid~0_combout\);

-- Location: FF_X42_Y3_N59
\c_disp_ctrl|transmit_valid~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \c_disp_ctrl|transmit_valid~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|transmit_valid~DUPLICATE_q\);

-- Location: LABCELL_X42_Y3_N39
\uart|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector30~0_combout\ = ( \uart|tx_bit_cnt_wrap~q\ & ( (!\uart|tx_state.s_stop_bit~q\ & (((\c_disp_ctrl|transmit_valid~DUPLICATE_q\ & \uart|transmit_ready_int~DUPLICATE_q\)) # (\uart|tx_state.s_idle~q\))) ) ) # ( !\uart|tx_bit_cnt_wrap~q\ & ( 
-- ((\c_disp_ctrl|transmit_valid~DUPLICATE_q\ & \uart|transmit_ready_int~DUPLICATE_q\)) # (\uart|tx_state.s_idle~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111100100010001010100010001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_state.s_stop_bit~q\,
	datab => \uart|ALT_INV_tx_state.s_idle~q\,
	datac => \c_disp_ctrl|ALT_INV_transmit_valid~DUPLICATE_q\,
	datad => \uart|ALT_INV_transmit_ready_int~DUPLICATE_q\,
	dataf => \uart|ALT_INV_tx_bit_cnt_wrap~q\,
	combout => \uart|Selector30~0_combout\);

-- Location: FF_X42_Y3_N41
\uart|tx_bit_cnt_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector30~0_combout\,
	sclr => \uart|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_cnt_en~q\);

-- Location: LABCELL_X42_Y4_N48
\uart|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|LessThan2~0_combout\ = ( \uart|tx_bit_cnt\(0) & ( \uart|tx_bit_cnt\(4) & ( \uart|tx_bit_cnt\(5) ) ) ) # ( !\uart|tx_bit_cnt\(0) & ( \uart|tx_bit_cnt\(4) & ( (\uart|tx_bit_cnt\(5) & (((\uart|tx_bit_cnt\(3)) # (\uart|tx_bit_cnt\(2))) # 
-- (\uart|tx_bit_cnt\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_bit_cnt\(1),
	datab => \uart|ALT_INV_tx_bit_cnt\(5),
	datac => \uart|ALT_INV_tx_bit_cnt\(2),
	datad => \uart|ALT_INV_tx_bit_cnt\(3),
	datae => \uart|ALT_INV_tx_bit_cnt\(0),
	dataf => \uart|ALT_INV_tx_bit_cnt\(4),
	combout => \uart|LessThan2~0_combout\);

-- Location: LABCELL_X42_Y4_N21
\uart|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add3~1_sumout\ = SUM(( \uart|tx_bit_cnt\(7) ) + ( GND ) + ( \uart|Add3~10\ ))
-- \uart|Add3~2\ = CARRY(( \uart|tx_bit_cnt\(7) ) + ( GND ) + ( \uart|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_tx_bit_cnt\(7),
	cin => \uart|Add3~10\,
	sumout => \uart|Add3~1_sumout\,
	cout => \uart|Add3~2\);

-- Location: LABCELL_X42_Y4_N24
\uart|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add3~5_sumout\ = SUM(( \uart|tx_bit_cnt\(8) ) + ( GND ) + ( \uart|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_tx_bit_cnt\(8),
	cin => \uart|Add3~2\,
	sumout => \uart|Add3~5_sumout\);

-- Location: FF_X42_Y4_N25
\uart|tx_bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add3~5_sumout\,
	sclr => \uart|tx_bit_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_cnt\(8));

-- Location: LABCELL_X42_Y4_N30
\uart|tx_bit_cnt[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|tx_bit_cnt[4]~0_combout\ = ( \uart|tx_bit_cnt\(8) & ( (!\uart|tx_bit_cnt_en~q\) # ((\uart|tx_bit_cnt\(7) & ((\uart|LessThan2~0_combout\) # (\uart|tx_bit_cnt\(6))))) ) ) # ( !\uart|tx_bit_cnt\(8) & ( !\uart|tx_bit_cnt_en~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001101110111011100110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_bit_cnt\(7),
	datab => \uart|ALT_INV_tx_bit_cnt_en~q\,
	datac => \uart|ALT_INV_tx_bit_cnt\(6),
	datad => \uart|ALT_INV_LessThan2~0_combout\,
	dataf => \uart|ALT_INV_tx_bit_cnt\(8),
	combout => \uart|tx_bit_cnt[4]~0_combout\);

-- Location: FF_X42_Y4_N2
\uart|tx_bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add3~21_sumout\,
	sclr => \uart|tx_bit_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_cnt\(0));

-- Location: LABCELL_X42_Y4_N3
\uart|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add3~25_sumout\ = SUM(( \uart|tx_bit_cnt\(1) ) + ( GND ) + ( \uart|Add3~22\ ))
-- \uart|Add3~26\ = CARRY(( \uart|tx_bit_cnt\(1) ) + ( GND ) + ( \uart|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_tx_bit_cnt\(1),
	cin => \uart|Add3~22\,
	sumout => \uart|Add3~25_sumout\,
	cout => \uart|Add3~26\);

-- Location: FF_X42_Y4_N5
\uart|tx_bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add3~25_sumout\,
	sclr => \uart|tx_bit_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_cnt\(1));

-- Location: LABCELL_X42_Y4_N6
\uart|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add3~29_sumout\ = SUM(( \uart|tx_bit_cnt\(2) ) + ( GND ) + ( \uart|Add3~26\ ))
-- \uart|Add3~30\ = CARRY(( \uart|tx_bit_cnt\(2) ) + ( GND ) + ( \uart|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_tx_bit_cnt\(2),
	cin => \uart|Add3~26\,
	sumout => \uart|Add3~29_sumout\,
	cout => \uart|Add3~30\);

-- Location: FF_X42_Y4_N7
\uart|tx_bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add3~29_sumout\,
	sclr => \uart|tx_bit_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_cnt\(2));

-- Location: LABCELL_X42_Y4_N9
\uart|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add3~33_sumout\ = SUM(( \uart|tx_bit_cnt\(3) ) + ( GND ) + ( \uart|Add3~30\ ))
-- \uart|Add3~34\ = CARRY(( \uart|tx_bit_cnt\(3) ) + ( GND ) + ( \uart|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_tx_bit_cnt\(3),
	cin => \uart|Add3~30\,
	sumout => \uart|Add3~33_sumout\,
	cout => \uart|Add3~34\);

-- Location: FF_X42_Y4_N11
\uart|tx_bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add3~33_sumout\,
	sclr => \uart|tx_bit_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_cnt\(3));

-- Location: LABCELL_X42_Y4_N12
\uart|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add3~13_sumout\ = SUM(( \uart|tx_bit_cnt\(4) ) + ( GND ) + ( \uart|Add3~34\ ))
-- \uart|Add3~14\ = CARRY(( \uart|tx_bit_cnt\(4) ) + ( GND ) + ( \uart|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_tx_bit_cnt\(4),
	cin => \uart|Add3~34\,
	sumout => \uart|Add3~13_sumout\,
	cout => \uart|Add3~14\);

-- Location: FF_X42_Y4_N14
\uart|tx_bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add3~13_sumout\,
	sclr => \uart|tx_bit_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_cnt\(4));

-- Location: LABCELL_X42_Y4_N15
\uart|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add3~17_sumout\ = SUM(( \uart|tx_bit_cnt\(5) ) + ( GND ) + ( \uart|Add3~14\ ))
-- \uart|Add3~18\ = CARRY(( \uart|tx_bit_cnt\(5) ) + ( GND ) + ( \uart|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_tx_bit_cnt\(5),
	cin => \uart|Add3~14\,
	sumout => \uart|Add3~17_sumout\,
	cout => \uart|Add3~18\);

-- Location: FF_X42_Y4_N17
\uart|tx_bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add3~17_sumout\,
	sclr => \uart|tx_bit_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_cnt\(5));

-- Location: LABCELL_X42_Y4_N18
\uart|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Add3~9_sumout\ = SUM(( \uart|tx_bit_cnt\(6) ) + ( GND ) + ( \uart|Add3~18\ ))
-- \uart|Add3~10\ = CARRY(( \uart|tx_bit_cnt\(6) ) + ( GND ) + ( \uart|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart|ALT_INV_tx_bit_cnt\(6),
	cin => \uart|Add3~18\,
	sumout => \uart|Add3~9_sumout\,
	cout => \uart|Add3~10\);

-- Location: FF_X42_Y4_N20
\uart|tx_bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add3~9_sumout\,
	sclr => \uart|tx_bit_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_cnt\(6));

-- Location: FF_X42_Y4_N23
\uart|tx_bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add3~1_sumout\,
	sclr => \uart|tx_bit_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_cnt\(7));

-- Location: FF_X42_Y4_N19
\uart|tx_bit_cnt[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Add3~9_sumout\,
	sclr => \uart|tx_bit_cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_cnt[6]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y4_N33
\uart|tx_bit_cnt_wrap~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|tx_bit_cnt_wrap~0_combout\ = ( \uart|tx_bit_cnt\(8) & ( (\uart|tx_bit_cnt\(7) & (\uart|tx_bit_cnt_en~q\ & ((\uart|LessThan2~0_combout\) # (\uart|tx_bit_cnt[6]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_bit_cnt\(7),
	datab => \uart|ALT_INV_tx_bit_cnt_en~q\,
	datac => \uart|ALT_INV_tx_bit_cnt[6]~DUPLICATE_q\,
	datad => \uart|ALT_INV_LessThan2~0_combout\,
	dataf => \uart|ALT_INV_tx_bit_cnt\(8),
	combout => \uart|tx_bit_cnt_wrap~0_combout\);

-- Location: FF_X42_Y4_N34
\uart|tx_bit_cnt_wrap\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|tx_bit_cnt_wrap~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_cnt_wrap~q\);

-- Location: LABCELL_X42_Y3_N18
\uart|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector27~0_combout\ = ( \c_disp_ctrl|transmit_valid~q\ & ( (!\uart|tx_bit_cnt_wrap~q\ & (((!\uart|tx_state.s_idle~q\ & \uart|transmit_ready_int~q\)) # (\uart|tx_state.s_start_bit~q\))) # (\uart|tx_bit_cnt_wrap~q\ & (!\uart|tx_state.s_idle~q\ & 
-- (\uart|transmit_ready_int~q\))) ) ) # ( !\c_disp_ctrl|transmit_valid~q\ & ( (!\uart|tx_bit_cnt_wrap~q\ & \uart|tx_state.s_start_bit~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001100101011100000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_bit_cnt_wrap~q\,
	datab => \uart|ALT_INV_tx_state.s_idle~q\,
	datac => \uart|ALT_INV_transmit_ready_int~q\,
	datad => \uart|ALT_INV_tx_state.s_start_bit~q\,
	dataf => \c_disp_ctrl|ALT_INV_transmit_valid~q\,
	combout => \uart|Selector27~0_combout\);

-- Location: FF_X42_Y3_N20
\uart|tx_state.s_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector27~0_combout\,
	sclr => \uart|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_state.s_start_bit~q\);

-- Location: LABCELL_X42_Y3_N0
\uart|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector32~0_combout\ = ( \uart|tx_bit_no\(0) & ( (!\uart|tx_state.s_tx_data~q\ & (\uart|tx_state.s_idle~q\ & ((\uart|tx_bit_no\(1))))) # (\uart|tx_state.s_tx_data~q\ & ((!\uart|tx_bit_no~0_combout\ $ (!\uart|tx_bit_no\(1))))) ) ) # ( 
-- !\uart|tx_bit_no\(0) & ( (\uart|tx_bit_no\(1) & ((\uart|tx_state.s_idle~q\) # (\uart|tx_state.s_tx_data~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000101011100100000010101110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_state.s_tx_data~q\,
	datab => \uart|ALT_INV_tx_state.s_idle~q\,
	datac => \uart|ALT_INV_tx_bit_no~0_combout\,
	datad => \uart|ALT_INV_tx_bit_no\(1),
	dataf => \uart|ALT_INV_tx_bit_no\(0),
	combout => \uart|Selector32~0_combout\);

-- Location: FF_X42_Y3_N2
\uart|tx_bit_no[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_no\(1));

-- Location: FF_X42_Y3_N43
\uart|tx_bit_no[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_no\(2));

-- Location: LABCELL_X42_Y3_N42
\uart|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector31~0_combout\ = ( \uart|tx_bit_no\(2) & ( \uart|tx_bit_no\(0) & ( (\uart|tx_state.s_idle~q\) # (\uart|tx_state.s_tx_data~q\) ) ) ) # ( !\uart|tx_bit_no\(2) & ( \uart|tx_bit_no\(0) & ( (\uart|tx_state.s_tx_data~q\ & (\uart|tx_bit_no\(1) & 
-- \uart|tx_bit_cnt_wrap~q\)) ) ) ) # ( \uart|tx_bit_no\(2) & ( !\uart|tx_bit_no\(0) & ( (\uart|tx_state.s_idle~q\) # (\uart|tx_state.s_tx_data~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100000000000001010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_state.s_tx_data~q\,
	datab => \uart|ALT_INV_tx_state.s_idle~q\,
	datac => \uart|ALT_INV_tx_bit_no\(1),
	datad => \uart|ALT_INV_tx_bit_cnt_wrap~q\,
	datae => \uart|ALT_INV_tx_bit_no\(2),
	dataf => \uart|ALT_INV_tx_bit_no\(0),
	combout => \uart|Selector31~0_combout\);

-- Location: FF_X42_Y3_N44
\uart|tx_bit_no[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_no[2]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y3_N21
\uart|tx_bit_no~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|tx_bit_no~0_combout\ = ( \uart|tx_bit_no[2]~DUPLICATE_q\ & ( (\uart|tx_bit_cnt_wrap~q\ & ((!\uart|tx_bit_no\(0)) # (!\uart|tx_bit_no\(1)))) ) ) # ( !\uart|tx_bit_no[2]~DUPLICATE_q\ & ( \uart|tx_bit_cnt_wrap~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_bit_cnt_wrap~q\,
	datac => \uart|ALT_INV_tx_bit_no\(0),
	datad => \uart|ALT_INV_tx_bit_no\(1),
	dataf => \uart|ALT_INV_tx_bit_no[2]~DUPLICATE_q\,
	combout => \uart|tx_bit_no~0_combout\);

-- Location: LABCELL_X42_Y3_N3
\uart|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector33~0_combout\ = ( \uart|tx_bit_no~0_combout\ & ( (!\uart|tx_state.s_tx_data~q\ & (\uart|tx_state.s_idle~q\ & \uart|tx_bit_no\(0))) # (\uart|tx_state.s_tx_data~q\ & ((!\uart|tx_bit_no\(0)))) ) ) # ( !\uart|tx_bit_no~0_combout\ & ( 
-- (\uart|tx_bit_no\(0) & ((\uart|tx_state.s_idle~q\) # (\uart|tx_state.s_tx_data~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011101010101001000100101010100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_state.s_tx_data~q\,
	datab => \uart|ALT_INV_tx_state.s_idle~q\,
	datad => \uart|ALT_INV_tx_bit_no\(0),
	dataf => \uart|ALT_INV_tx_bit_no~0_combout\,
	combout => \uart|Selector33~0_combout\);

-- Location: FF_X42_Y3_N4
\uart|tx_bit_no[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_bit_no\(0));

-- Location: LABCELL_X42_Y3_N48
\uart|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector28~0_combout\ = ( \uart|tx_state.s_tx_data~q\ & ( \uart|tx_bit_no\(2) & ( ((!\uart|tx_bit_no\(0)) # ((!\uart|tx_bit_no\(1)) # (!\uart|tx_bit_cnt_wrap~q\))) # (\uart|tx_state.s_start_bit~q\) ) ) ) # ( !\uart|tx_state.s_tx_data~q\ & ( 
-- \uart|tx_bit_no\(2) & ( (\uart|tx_state.s_start_bit~q\ & \uart|tx_bit_cnt_wrap~q\) ) ) ) # ( \uart|tx_state.s_tx_data~q\ & ( !\uart|tx_bit_no\(2) ) ) # ( !\uart|tx_state.s_tx_data~q\ & ( !\uart|tx_bit_no\(2) & ( (\uart|tx_state.s_start_bit~q\ & 
-- \uart|tx_bit_cnt_wrap~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111111111111100000000010101011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_state.s_start_bit~q\,
	datab => \uart|ALT_INV_tx_bit_no\(0),
	datac => \uart|ALT_INV_tx_bit_no\(1),
	datad => \uart|ALT_INV_tx_bit_cnt_wrap~q\,
	datae => \uart|ALT_INV_tx_state.s_tx_data~q\,
	dataf => \uart|ALT_INV_tx_bit_no\(2),
	combout => \uart|Selector28~0_combout\);

-- Location: FF_X42_Y3_N50
\uart|tx_state.s_tx_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector28~0_combout\,
	sclr => \uart|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_state.s_tx_data~q\);

-- Location: LABCELL_X42_Y3_N54
\uart|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector29~0_combout\ = ( \uart|tx_state.s_stop_bit~q\ & ( \uart|tx_bit_no\(0) & ( (!\uart|tx_bit_cnt_wrap~q\) # ((\uart|tx_state.s_tx_data~q\ & (\uart|tx_bit_no[2]~DUPLICATE_q\ & \uart|tx_bit_no\(1)))) ) ) ) # ( !\uart|tx_state.s_stop_bit~q\ & ( 
-- \uart|tx_bit_no\(0) & ( (\uart|tx_state.s_tx_data~q\ & (\uart|tx_bit_no[2]~DUPLICATE_q\ & (\uart|tx_bit_no\(1) & \uart|tx_bit_cnt_wrap~q\))) ) ) ) # ( \uart|tx_state.s_stop_bit~q\ & ( !\uart|tx_bit_no\(0) & ( !\uart|tx_bit_cnt_wrap~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_state.s_tx_data~q\,
	datab => \uart|ALT_INV_tx_bit_no[2]~DUPLICATE_q\,
	datac => \uart|ALT_INV_tx_bit_no\(1),
	datad => \uart|ALT_INV_tx_bit_cnt_wrap~q\,
	datae => \uart|ALT_INV_tx_state.s_stop_bit~q\,
	dataf => \uart|ALT_INV_tx_bit_no\(0),
	combout => \uart|Selector29~0_combout\);

-- Location: FF_X42_Y3_N56
\uart|tx_state.s_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector29~0_combout\,
	sclr => \uart|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_state.s_stop_bit~q\);

-- Location: LABCELL_X29_Y11_N48
\c_disp_ctrl|bcd|rom_addr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|bcd|rom_addr~0_combout\ = ( \pwm|duty_cycle[0]~_Duplicate_1_q\ & ( !\pwm|current_dc_update~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_current_dc_update~DUPLICATE_q\,
	dataf => \pwm|ALT_INV_duty_cycle[0]~_Duplicate_1_q\,
	combout => \c_disp_ctrl|bcd|rom_addr~0_combout\);

-- Location: FF_X29_Y11_N49
\c_disp_ctrl|bcd|rom_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|bcd|rom_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|bcd|rom_addr\(0));

-- Location: LABCELL_X29_Y11_N21
\c_disp_ctrl|bcd|rom_addr~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|bcd|rom_addr~1_combout\ = ( !\pwm|current_dc_update~DUPLICATE_q\ & ( \pwm|duty_cycle[1]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|ALT_INV_current_dc_update~DUPLICATE_q\,
	dataf => \pwm|ALT_INV_duty_cycle[1]~_Duplicate_1_q\,
	combout => \c_disp_ctrl|bcd|rom_addr~1_combout\);

-- Location: FF_X29_Y11_N22
\c_disp_ctrl|bcd|rom_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|bcd|rom_addr~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|bcd|rom_addr\(1));

-- Location: LABCELL_X29_Y11_N0
\c_disp_ctrl|bcd|rom_addr~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|bcd|rom_addr~2_combout\ = ( !\pwm|current_dc_update~DUPLICATE_q\ & ( \pwm|duty_cycle[2]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|ALT_INV_current_dc_update~DUPLICATE_q\,
	dataf => \pwm|ALT_INV_duty_cycle[2]~_Duplicate_1_q\,
	combout => \c_disp_ctrl|bcd|rom_addr~2_combout\);

-- Location: FF_X29_Y11_N1
\c_disp_ctrl|bcd|rom_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|bcd|rom_addr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|bcd|rom_addr\(2));

-- Location: LABCELL_X27_Y11_N15
\c_disp_ctrl|bcd|rom_addr~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|bcd|rom_addr~3_combout\ = ( \pwm|duty_cycle[3]~_Duplicate_1_q\ & ( !\pwm|current_dc_update~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_current_dc_update~q\,
	datae => \pwm|ALT_INV_duty_cycle[3]~_Duplicate_1_q\,
	combout => \c_disp_ctrl|bcd|rom_addr~3_combout\);

-- Location: FF_X27_Y11_N17
\c_disp_ctrl|bcd|rom_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|bcd|rom_addr~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|bcd|rom_addr\(3));

-- Location: LABCELL_X29_Y11_N54
\c_disp_ctrl|bcd|rom_addr~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|bcd|rom_addr~4_combout\ = ( \pwm|duty_cycle[4]~_Duplicate_1_q\ & ( !\pwm|current_dc_update~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_current_dc_update~DUPLICATE_q\,
	dataf => \pwm|ALT_INV_duty_cycle[4]~_Duplicate_1_q\,
	combout => \c_disp_ctrl|bcd|rom_addr~4_combout\);

-- Location: FF_X29_Y11_N55
\c_disp_ctrl|bcd|rom_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|bcd|rom_addr~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|bcd|rom_addr\(4));

-- Location: LABCELL_X29_Y11_N27
\c_disp_ctrl|bcd|rom_addr~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|bcd|rom_addr~5_combout\ = ( !\pwm|current_dc_update~DUPLICATE_q\ & ( \pwm|duty_cycle[5]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|ALT_INV_current_dc_update~DUPLICATE_q\,
	dataf => \pwm|ALT_INV_duty_cycle[5]~_Duplicate_1_q\,
	combout => \c_disp_ctrl|bcd|rom_addr~5_combout\);

-- Location: FF_X29_Y11_N28
\c_disp_ctrl|bcd|rom_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|bcd|rom_addr~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|bcd|rom_addr\(5));

-- Location: LABCELL_X29_Y11_N6
\c_disp_ctrl|bcd|rom_addr~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|bcd|rom_addr~6_combout\ = ( !\pwm|current_dc_update~DUPLICATE_q\ & ( \pwm|duty_cycle[6]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|ALT_INV_current_dc_update~DUPLICATE_q\,
	dataf => \pwm|ALT_INV_duty_cycle[6]~_Duplicate_1_q\,
	combout => \c_disp_ctrl|bcd|rom_addr~6_combout\);

-- Location: FF_X29_Y11_N8
\c_disp_ctrl|bcd|rom_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|bcd|rom_addr~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|bcd|rom_addr\(6));

-- Location: M10K_X38_Y3_N0
\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => "00127001260012500124001230012200121001200011900118001170011600115001140011300112001110011000109001080010700106001050010400103001",
	mem_init0 => "02001010010000099000980009700096000950009400093000920009100090000890008800087000860008500084000830008200081000800007900078000770007600075000740007300072000710007000069000680006700066000650006400063000620006100060000590005800057000560005500054000530005200051000500004900048000470004600045000440004300042000410004000039000380003700036000350003400033000320003100030000290002800027000260002500024000230002200021000200001900018000170001600015000140001300012000110001000009000080000700006000050000400003000020000100000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/lab7_top_level.ram0_bcd_decode_rom_eb028e2c.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "c_disp_ctrl:c_disp_ctrl|bcd_decode_rom:bcd|altsyncram:bcd_rom_rtl_0|altsyncram_2ie1:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	portaaddr => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: MLABCELL_X39_Y3_N15
\c_disp_ctrl|myArray[2][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|myArray[2][0]~feeder_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	combout => \c_disp_ctrl|myArray[2][0]~feeder_combout\);

-- Location: LABCELL_X42_Y4_N36
\c_disp_ctrl|send_data~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|send_data~2_combout\ = ( \c_disp_ctrl|Equal1~0_combout\ & ( ((\uart|transmit_ready_int~DUPLICATE_q\ & (!\c_disp_ctrl|wait_one_clockCycle~q\ & \c_disp_ctrl|send_data~q\))) # (\c_disp_ctrl|bcd|rom_data_valid~q\) ) ) # ( 
-- !\c_disp_ctrl|Equal1~0_combout\ & ( \c_disp_ctrl|bcd|rom_data_valid~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_transmit_ready_int~DUPLICATE_q\,
	datab => \c_disp_ctrl|ALT_INV_wait_one_clockCycle~q\,
	datac => \c_disp_ctrl|bcd|ALT_INV_rom_data_valid~q\,
	datad => \c_disp_ctrl|ALT_INV_send_data~q\,
	dataf => \c_disp_ctrl|ALT_INV_Equal1~0_combout\,
	combout => \c_disp_ctrl|send_data~2_combout\);

-- Location: FF_X39_Y3_N16
\c_disp_ctrl|myArray[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|myArray[2][0]~feeder_combout\,
	sclr => \c_disp_ctrl|send_data~0_combout\,
	ena => \c_disp_ctrl|send_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|myArray[2][0]~q\);

-- Location: FF_X39_Y3_N40
\c_disp_ctrl|myArray[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\,
	sclr => \c_disp_ctrl|send_data~0_combout\,
	sload => VCC,
	ena => \c_disp_ctrl|send_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|myArray[1][0]~q\);

-- Location: MLABCELL_X39_Y3_N42
\c_disp_ctrl|myArray[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|myArray[0][0]~feeder_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a8\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	combout => \c_disp_ctrl|myArray[0][0]~feeder_combout\);

-- Location: FF_X39_Y3_N43
\c_disp_ctrl|myArray[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|myArray[0][0]~feeder_combout\,
	sclr => \c_disp_ctrl|send_data~0_combout\,
	ena => \c_disp_ctrl|send_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|myArray[0][0]~q\);

-- Location: LABCELL_X40_Y3_N45
\c_disp_ctrl|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux27~0_combout\ = ( \c_disp_ctrl|send_x[0]~DUPLICATE_q\ & ( \c_disp_ctrl|myArray[0][0]~q\ & ( ((\c_disp_ctrl|myArray[1][0]~q\) # (\c_disp_ctrl|send_x\(1))) # (\c_disp_ctrl|send_x\(2)) ) ) ) # ( !\c_disp_ctrl|send_x[0]~DUPLICATE_q\ & ( 
-- \c_disp_ctrl|myArray[0][0]~q\ & ( ((!\c_disp_ctrl|send_x\(1)) # (\c_disp_ctrl|myArray[2][0]~q\)) # (\c_disp_ctrl|send_x\(2)) ) ) ) # ( \c_disp_ctrl|send_x[0]~DUPLICATE_q\ & ( !\c_disp_ctrl|myArray[0][0]~q\ & ( ((\c_disp_ctrl|myArray[1][0]~q\) # 
-- (\c_disp_ctrl|send_x\(1))) # (\c_disp_ctrl|send_x\(2)) ) ) ) # ( !\c_disp_ctrl|send_x[0]~DUPLICATE_q\ & ( !\c_disp_ctrl|myArray[0][0]~q\ & ( ((\c_disp_ctrl|send_x\(1) & \c_disp_ctrl|myArray[2][0]~q\)) # (\c_disp_ctrl|send_x\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010111011101111111111111011111110111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|ALT_INV_send_x\(2),
	datab => \c_disp_ctrl|ALT_INV_send_x\(1),
	datac => \c_disp_ctrl|ALT_INV_myArray[2][0]~q\,
	datad => \c_disp_ctrl|ALT_INV_myArray[1][0]~q\,
	datae => \c_disp_ctrl|ALT_INV_send_x[0]~DUPLICATE_q\,
	dataf => \c_disp_ctrl|ALT_INV_myArray[0][0]~q\,
	combout => \c_disp_ctrl|Mux27~0_combout\);

-- Location: FF_X42_Y3_N29
\c_disp_ctrl|transmit_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \c_disp_ctrl|Mux27~0_combout\,
	sload => VCC,
	ena => \c_disp_ctrl|transmit_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|transmit_data\(0));

-- Location: FF_X39_Y3_N22
\c_disp_ctrl|myArray[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\,
	sclr => \c_disp_ctrl|send_data~0_combout\,
	sload => VCC,
	ena => \c_disp_ctrl|send_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|myArray[1][3]~q\);

-- Location: FF_X39_Y3_N10
\c_disp_ctrl|myArray[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\,
	sclr => \c_disp_ctrl|send_data~0_combout\,
	sload => VCC,
	ena => \c_disp_ctrl|send_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|myArray[2][3]~q\);

-- Location: LABCELL_X40_Y3_N51
\c_disp_ctrl|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux24~0_combout\ = ( \c_disp_ctrl|send_x[0]~DUPLICATE_q\ & ( \c_disp_ctrl|send_x\(2) ) ) # ( !\c_disp_ctrl|send_x[0]~DUPLICATE_q\ & ( \c_disp_ctrl|send_x\(2) ) ) # ( \c_disp_ctrl|send_x[0]~DUPLICATE_q\ & ( !\c_disp_ctrl|send_x\(2) & ( 
-- (\c_disp_ctrl|myArray[1][3]~q\ & !\c_disp_ctrl|send_x\(1)) ) ) ) # ( !\c_disp_ctrl|send_x[0]~DUPLICATE_q\ & ( !\c_disp_ctrl|send_x\(2) & ( (\c_disp_ctrl|send_x\(1) & \c_disp_ctrl|myArray[2][3]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000100010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|ALT_INV_myArray[1][3]~q\,
	datab => \c_disp_ctrl|ALT_INV_send_x\(1),
	datac => \c_disp_ctrl|ALT_INV_myArray[2][3]~q\,
	datae => \c_disp_ctrl|ALT_INV_send_x[0]~DUPLICATE_q\,
	dataf => \c_disp_ctrl|ALT_INV_send_x\(2),
	combout => \c_disp_ctrl|Mux24~0_combout\);

-- Location: FF_X40_Y3_N43
\c_disp_ctrl|transmit_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \c_disp_ctrl|Mux24~0_combout\,
	sload => VCC,
	ena => \c_disp_ctrl|transmit_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|transmit_data\(3));

-- Location: MLABCELL_X39_Y3_N48
\c_disp_ctrl|myArray[2][4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|myArray[2][4]~0_combout\ = ( !\c_disp_ctrl|send_data~0_combout\ & ( (\c_disp_ctrl|myArray[2][4]~q\) # (\c_disp_ctrl|bcd|rom_data_valid~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c_disp_ctrl|bcd|ALT_INV_rom_data_valid~q\,
	datad => \c_disp_ctrl|ALT_INV_myArray[2][4]~q\,
	dataf => \c_disp_ctrl|ALT_INV_send_data~0_combout\,
	combout => \c_disp_ctrl|myArray[2][4]~0_combout\);

-- Location: FF_X39_Y3_N49
\c_disp_ctrl|myArray[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|myArray[2][4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|myArray[2][4]~q\);

-- Location: LABCELL_X40_Y3_N24
\c_disp_ctrl|transmit_data~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|transmit_data~0_combout\ = (!\c_disp_ctrl|send_x\(2) & (\c_disp_ctrl|myArray[2][4]~q\ & ((!\c_disp_ctrl|send_x\(1)) # (!\c_disp_ctrl|send_x\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000001010100000000000101010000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|ALT_INV_send_x\(2),
	datab => \c_disp_ctrl|ALT_INV_send_x\(1),
	datac => \c_disp_ctrl|ALT_INV_send_x\(0),
	datad => \c_disp_ctrl|ALT_INV_myArray[2][4]~q\,
	combout => \c_disp_ctrl|transmit_data~0_combout\);

-- Location: FF_X39_Y3_N46
\c_disp_ctrl|myArray[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\,
	sclr => \c_disp_ctrl|send_data~0_combout\,
	sload => VCC,
	ena => \c_disp_ctrl|send_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|myArray[2][2]~q\);

-- Location: MLABCELL_X39_Y3_N18
\c_disp_ctrl|myArray[1][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|myArray[1][2]~feeder_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \c_disp_ctrl|myArray[1][2]~feeder_combout\);

-- Location: FF_X39_Y3_N19
\c_disp_ctrl|myArray[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|myArray[1][2]~feeder_combout\,
	sclr => \c_disp_ctrl|send_data~0_combout\,
	ena => \c_disp_ctrl|send_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|myArray[1][2]~q\);

-- Location: LABCELL_X40_Y3_N3
\c_disp_ctrl|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux25~0_combout\ = ( \c_disp_ctrl|send_x\(2) ) # ( !\c_disp_ctrl|send_x\(2) & ( (!\c_disp_ctrl|send_x\(1) & (((\c_disp_ctrl|myArray[1][2]~q\ & \c_disp_ctrl|send_x[0]~DUPLICATE_q\)))) # (\c_disp_ctrl|send_x\(1) & 
-- (((\c_disp_ctrl|send_x[0]~DUPLICATE_q\)) # (\c_disp_ctrl|myArray[2][2]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100111111000001010011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|ALT_INV_myArray[2][2]~q\,
	datab => \c_disp_ctrl|ALT_INV_myArray[1][2]~q\,
	datac => \c_disp_ctrl|ALT_INV_send_x\(1),
	datad => \c_disp_ctrl|ALT_INV_send_x[0]~DUPLICATE_q\,
	dataf => \c_disp_ctrl|ALT_INV_send_x\(2),
	combout => \c_disp_ctrl|Mux25~0_combout\);

-- Location: MLABCELL_X39_Y3_N12
\c_disp_ctrl|myArray[2][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|myArray[2][1]~feeder_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	combout => \c_disp_ctrl|myArray[2][1]~feeder_combout\);

-- Location: FF_X39_Y3_N13
\c_disp_ctrl|myArray[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|myArray[2][1]~feeder_combout\,
	sclr => \c_disp_ctrl|send_data~0_combout\,
	ena => \c_disp_ctrl|send_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|myArray[2][1]~q\);

-- Location: FF_X39_Y3_N25
\c_disp_ctrl|myArray[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\,
	sclr => \c_disp_ctrl|send_data~0_combout\,
	sload => VCC,
	ena => \c_disp_ctrl|send_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|myArray[1][1]~q\);

-- Location: MLABCELL_X39_Y3_N6
\c_disp_ctrl|myArray[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|myArray[0][1]~feeder_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a9\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	combout => \c_disp_ctrl|myArray[0][1]~feeder_combout\);

-- Location: FF_X39_Y3_N7
\c_disp_ctrl|myArray[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|myArray[0][1]~feeder_combout\,
	sclr => \c_disp_ctrl|send_data~0_combout\,
	ena => \c_disp_ctrl|send_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|myArray[0][1]~q\);

-- Location: LABCELL_X40_Y3_N15
\c_disp_ctrl|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux26~0_combout\ = ( \c_disp_ctrl|send_x[0]~DUPLICATE_q\ & ( \c_disp_ctrl|myArray[0][1]~q\ & ( (\c_disp_ctrl|myArray[1][1]~q\ & (!\c_disp_ctrl|send_x\(1) & !\c_disp_ctrl|send_x\(2))) ) ) ) # ( !\c_disp_ctrl|send_x[0]~DUPLICATE_q\ & ( 
-- \c_disp_ctrl|myArray[0][1]~q\ & ( (!\c_disp_ctrl|send_x\(2) & ((!\c_disp_ctrl|send_x\(1)) # (\c_disp_ctrl|myArray[2][1]~q\))) ) ) ) # ( \c_disp_ctrl|send_x[0]~DUPLICATE_q\ & ( !\c_disp_ctrl|myArray[0][1]~q\ & ( (\c_disp_ctrl|myArray[1][1]~q\ & 
-- (!\c_disp_ctrl|send_x\(1) & !\c_disp_ctrl|send_x\(2))) ) ) ) # ( !\c_disp_ctrl|send_x[0]~DUPLICATE_q\ & ( !\c_disp_ctrl|myArray[0][1]~q\ & ( (\c_disp_ctrl|myArray[2][1]~q\ & (\c_disp_ctrl|send_x\(1) & !\c_disp_ctrl|send_x\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000001100000000000011110101000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|ALT_INV_myArray[2][1]~q\,
	datab => \c_disp_ctrl|ALT_INV_myArray[1][1]~q\,
	datac => \c_disp_ctrl|ALT_INV_send_x\(1),
	datad => \c_disp_ctrl|ALT_INV_send_x\(2),
	datae => \c_disp_ctrl|ALT_INV_send_x[0]~DUPLICATE_q\,
	dataf => \c_disp_ctrl|ALT_INV_myArray[0][1]~q\,
	combout => \c_disp_ctrl|Mux26~0_combout\);

-- Location: LABCELL_X40_Y3_N30
\c_disp_ctrl|first_valuable_nummber_detected~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|first_valuable_nummber_detected~0_combout\ = ( \c_disp_ctrl|Mux27~0_combout\ & ( \c_disp_ctrl|Mux26~0_combout\ & ( !\c_disp_ctrl|Equal1~0_combout\ ) ) ) # ( !\c_disp_ctrl|Mux27~0_combout\ & ( \c_disp_ctrl|Mux26~0_combout\ & ( 
-- !\c_disp_ctrl|Equal1~0_combout\ ) ) ) # ( \c_disp_ctrl|Mux27~0_combout\ & ( !\c_disp_ctrl|Mux26~0_combout\ & ( !\c_disp_ctrl|Equal1~0_combout\ ) ) ) # ( !\c_disp_ctrl|Mux27~0_combout\ & ( !\c_disp_ctrl|Mux26~0_combout\ & ( (!\c_disp_ctrl|Equal1~0_combout\ 
-- & (((!\c_disp_ctrl|p_main~0_combout\) # (\c_disp_ctrl|Mux25~0_combout\)) # (\c_disp_ctrl|Mux24~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|ALT_INV_Mux24~0_combout\,
	datab => \c_disp_ctrl|ALT_INV_p_main~0_combout\,
	datac => \c_disp_ctrl|ALT_INV_Mux25~0_combout\,
	datad => \c_disp_ctrl|ALT_INV_Equal1~0_combout\,
	datae => \c_disp_ctrl|ALT_INV_Mux27~0_combout\,
	dataf => \c_disp_ctrl|ALT_INV_Mux26~0_combout\,
	combout => \c_disp_ctrl|first_valuable_nummber_detected~0_combout\);

-- Location: FF_X40_Y3_N31
\c_disp_ctrl|first_valuable_nummber_detected\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|first_valuable_nummber_detected~0_combout\,
	ena => \c_disp_ctrl|transmit_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|first_valuable_nummber_detected~q\);

-- Location: LABCELL_X40_Y3_N39
\c_disp_ctrl|p_main~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|p_main~0_combout\ = ( !\c_disp_ctrl|first_valuable_nummber_detected~q\ & ( (\c_disp_ctrl|myArray[2][4]~q\ & (!\c_disp_ctrl|send_x\(1) & !\c_disp_ctrl|send_x\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c_disp_ctrl|ALT_INV_myArray[2][4]~q\,
	datac => \c_disp_ctrl|ALT_INV_send_x\(1),
	datad => \c_disp_ctrl|ALT_INV_send_x\(2),
	dataf => \c_disp_ctrl|ALT_INV_first_valuable_nummber_detected~q\,
	combout => \c_disp_ctrl|p_main~0_combout\);

-- Location: LABCELL_X40_Y3_N18
\c_disp_ctrl|transmit_data~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|transmit_data~1_combout\ = ( \c_disp_ctrl|Mux25~0_combout\ & ( \c_disp_ctrl|Mux26~0_combout\ & ( \c_disp_ctrl|transmit_data~0_combout\ ) ) ) # ( !\c_disp_ctrl|Mux25~0_combout\ & ( \c_disp_ctrl|Mux26~0_combout\ & ( 
-- \c_disp_ctrl|transmit_data~0_combout\ ) ) ) # ( \c_disp_ctrl|Mux25~0_combout\ & ( !\c_disp_ctrl|Mux26~0_combout\ & ( \c_disp_ctrl|transmit_data~0_combout\ ) ) ) # ( !\c_disp_ctrl|Mux25~0_combout\ & ( !\c_disp_ctrl|Mux26~0_combout\ & ( 
-- (\c_disp_ctrl|transmit_data~0_combout\ & (((!\c_disp_ctrl|p_main~0_combout\) # (\c_disp_ctrl|Mux24~0_combout\)) # (\c_disp_ctrl|Mux27~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|ALT_INV_transmit_data~0_combout\,
	datab => \c_disp_ctrl|ALT_INV_Mux27~0_combout\,
	datac => \c_disp_ctrl|ALT_INV_Mux24~0_combout\,
	datad => \c_disp_ctrl|ALT_INV_p_main~0_combout\,
	datae => \c_disp_ctrl|ALT_INV_Mux25~0_combout\,
	dataf => \c_disp_ctrl|ALT_INV_Mux26~0_combout\,
	combout => \c_disp_ctrl|transmit_data~1_combout\);

-- Location: FF_X40_Y3_N20
\c_disp_ctrl|transmit_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|transmit_data~1_combout\,
	ena => \c_disp_ctrl|transmit_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|transmit_data\(4));

-- Location: FF_X42_Y3_N49
\uart|tx_state.s_tx_data~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector28~0_combout\,
	sclr => \uart|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_state.s_tx_data~DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N27
\c_disp_ctrl|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux22~0_combout\ = (!\c_disp_ctrl|send_x\(2) & (((\c_disp_ctrl|send_x\(1) & \c_disp_ctrl|send_x[0]~DUPLICATE_q\)) # (\c_disp_ctrl|myArray[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000101010000010100010101000001010001010100000101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|ALT_INV_send_x\(2),
	datab => \c_disp_ctrl|ALT_INV_send_x\(1),
	datac => \c_disp_ctrl|ALT_INV_myArray[2][4]~q\,
	datad => \c_disp_ctrl|ALT_INV_send_x[0]~DUPLICATE_q\,
	combout => \c_disp_ctrl|Mux22~0_combout\);

-- Location: FF_X40_Y3_N29
\c_disp_ctrl|transmit_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|Mux22~0_combout\,
	ena => \c_disp_ctrl|transmit_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|transmit_data\(5));

-- Location: LABCELL_X40_Y3_N9
\uart|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector19~0_combout\ = ( !\uart|tx_state.s_tx_data~DUPLICATE_q\ & ( \c_disp_ctrl|transmit_data\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|ALT_INV_transmit_data\(5),
	dataf => \uart|ALT_INV_tx_state.s_tx_data~DUPLICATE_q\,
	combout => \uart|Selector19~0_combout\);

-- Location: LABCELL_X42_Y3_N24
\uart|tx_byte_saved[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|tx_byte_saved[0]~0_combout\ = ( \uart|transmit_ready_int~DUPLICATE_q\ & ( \uart|tx_state.s_tx_data~q\ & ( ((!\uart|tx_state.s_idle~q\ & \c_disp_ctrl|transmit_valid~DUPLICATE_q\)) # (\uart|tx_bit_cnt_wrap~q\) ) ) ) # ( 
-- !\uart|transmit_ready_int~DUPLICATE_q\ & ( \uart|tx_state.s_tx_data~q\ & ( \uart|tx_bit_cnt_wrap~q\ ) ) ) # ( \uart|transmit_ready_int~DUPLICATE_q\ & ( !\uart|tx_state.s_tx_data~q\ & ( (!\uart|tx_state.s_idle~q\ & \c_disp_ctrl|transmit_valid~DUPLICATE_q\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110001010101010101010101010111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_bit_cnt_wrap~q\,
	datab => \uart|ALT_INV_tx_state.s_idle~q\,
	datad => \c_disp_ctrl|ALT_INV_transmit_valid~DUPLICATE_q\,
	datae => \uart|ALT_INV_transmit_ready_int~DUPLICATE_q\,
	dataf => \uart|ALT_INV_tx_state.s_tx_data~q\,
	combout => \uart|tx_byte_saved[0]~0_combout\);

-- Location: FF_X40_Y3_N10
\uart|tx_byte_saved[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector19~0_combout\,
	ena => \uart|tx_byte_saved[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_byte_saved\(5));

-- Location: LABCELL_X40_Y3_N0
\uart|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector20~0_combout\ = ( \uart|tx_byte_saved\(5) & ( (\uart|tx_state.s_tx_data~DUPLICATE_q\) # (\c_disp_ctrl|transmit_data\(4)) ) ) # ( !\uart|tx_byte_saved\(5) & ( (\c_disp_ctrl|transmit_data\(4) & !\uart|tx_state.s_tx_data~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c_disp_ctrl|ALT_INV_transmit_data\(4),
	datad => \uart|ALT_INV_tx_state.s_tx_data~DUPLICATE_q\,
	dataf => \uart|ALT_INV_tx_byte_saved\(5),
	combout => \uart|Selector20~0_combout\);

-- Location: FF_X40_Y3_N1
\uart|tx_byte_saved[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector20~0_combout\,
	ena => \uart|tx_byte_saved[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_byte_saved\(4));

-- Location: LABCELL_X42_Y3_N9
\uart|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector21~0_combout\ = ( \uart|tx_byte_saved\(4) & ( (\c_disp_ctrl|transmit_data\(3)) # (\uart|tx_state.s_tx_data~q\) ) ) # ( !\uart|tx_byte_saved\(4) & ( (!\uart|tx_state.s_tx_data~q\ & \c_disp_ctrl|transmit_data\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_state.s_tx_data~q\,
	datac => \c_disp_ctrl|ALT_INV_transmit_data\(3),
	dataf => \uart|ALT_INV_tx_byte_saved\(4),
	combout => \uart|Selector21~0_combout\);

-- Location: FF_X42_Y3_N11
\uart|tx_byte_saved[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector21~0_combout\,
	ena => \uart|tx_byte_saved[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_byte_saved\(3));

-- Location: FF_X40_Y3_N49
\c_disp_ctrl|transmit_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \c_disp_ctrl|Mux25~0_combout\,
	sload => VCC,
	ena => \c_disp_ctrl|transmit_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|transmit_data\(2));

-- Location: LABCELL_X42_Y3_N6
\uart|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector22~0_combout\ = ( \c_disp_ctrl|transmit_data\(2) & ( (!\uart|tx_state.s_tx_data~q\) # (\uart|tx_byte_saved\(3)) ) ) # ( !\c_disp_ctrl|transmit_data\(2) & ( (\uart|tx_state.s_tx_data~q\ & \uart|tx_byte_saved\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_state.s_tx_data~q\,
	datab => \uart|ALT_INV_tx_byte_saved\(3),
	dataf => \c_disp_ctrl|ALT_INV_transmit_data\(2),
	combout => \uart|Selector22~0_combout\);

-- Location: FF_X42_Y3_N8
\uart|tx_byte_saved[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector22~0_combout\,
	ena => \uart|tx_byte_saved[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_byte_saved\(2));

-- Location: FF_X40_Y3_N13
\c_disp_ctrl|transmit_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \c_disp_ctrl|Mux26~0_combout\,
	sload => VCC,
	ena => \c_disp_ctrl|transmit_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|transmit_data\(1));

-- Location: LABCELL_X42_Y3_N33
\uart|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector23~0_combout\ = (!\uart|tx_state.s_tx_data~q\ & ((\c_disp_ctrl|transmit_data\(1)))) # (\uart|tx_state.s_tx_data~q\ & (\uart|tx_byte_saved\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_state.s_tx_data~q\,
	datab => \uart|ALT_INV_tx_byte_saved\(2),
	datac => \c_disp_ctrl|ALT_INV_transmit_data\(1),
	combout => \uart|Selector23~0_combout\);

-- Location: FF_X42_Y3_N34
\uart|tx_byte_saved[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector23~0_combout\,
	ena => \uart|tx_byte_saved[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_byte_saved\(1));

-- Location: LABCELL_X42_Y3_N30
\uart|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector24~0_combout\ = (!\uart|tx_state.s_tx_data~q\ & (\c_disp_ctrl|transmit_data\(0))) # (\uart|tx_state.s_tx_data~q\ & ((\uart|tx_byte_saved\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_state.s_tx_data~q\,
	datac => \c_disp_ctrl|ALT_INV_transmit_data\(0),
	datad => \uart|ALT_INV_tx_byte_saved\(1),
	combout => \uart|Selector24~0_combout\);

-- Location: FF_X42_Y3_N32
\uart|tx_byte_saved[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector24~0_combout\,
	ena => \uart|tx_byte_saved[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx_byte_saved\(0));

-- Location: LABCELL_X42_Y3_N12
\uart|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|Selector34~0_combout\ = ( \uart|tx_byte_saved\(0) & ( ((!\uart|tx_state.s_idle~q\) # (\uart|tx_state.s_tx_data~q\)) # (\uart|tx_state.s_stop_bit~q\) ) ) # ( !\uart|tx_byte_saved\(0) & ( (!\uart|tx_state.s_idle~q\) # (\uart|tx_state.s_stop_bit~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart|ALT_INV_tx_state.s_stop_bit~q\,
	datab => \uart|ALT_INV_tx_state.s_idle~q\,
	datac => \uart|ALT_INV_tx_state.s_tx_data~q\,
	dataf => \uart|ALT_INV_tx_byte_saved\(0),
	combout => \uart|Selector34~0_combout\);

-- Location: DDIOOUTCELL_X50_Y0_N101
\uart|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|tx~q\);

-- Location: FF_X37_Y3_N14
\uart|received_error~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|received_error~0_combout\,
	sclr => \uart|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|received_error~_Duplicate_1_q\);

-- Location: LABCELL_X37_Y3_N12
\uart|received_error~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart|received_error~0_combout\ = ( \uart|received_error~_Duplicate_1_q\ & ( \uart|rx_2r~q\ & ( (!\uart|rx_bit_cnt_wrap~DUPLICATE_q\) # (!\uart|rx_state.s_stop_bit~DUPLICATE_q\) ) ) ) # ( \uart|received_error~_Duplicate_1_q\ & ( !\uart|rx_2r~q\ ) ) # ( 
-- !\uart|received_error~_Duplicate_1_q\ & ( !\uart|rx_2r~q\ & ( (\uart|rx_bit_cnt_wrap~DUPLICATE_q\ & \uart|rx_state.s_stop_bit~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart|ALT_INV_rx_bit_cnt_wrap~DUPLICATE_q\,
	datac => \uart|ALT_INV_rx_state.s_stop_bit~DUPLICATE_q\,
	datae => \uart|ALT_INV_received_error~_Duplicate_1_q\,
	dataf => \uart|ALT_INV_rx_2r~q\,
	combout => \uart|received_error~0_combout\);

-- Location: DDIOOUTCELL_X32_Y0_N44
\uart|received_error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \uart|received_error~0_combout\,
	sclr => \uart|reset_2r~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|received_error~q\);

-- Location: MLABCELL_X21_Y26_N0
\pwm|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~29_sumout\ = SUM(( \pwm|pwm_counter\(0) ) + ( VCC ) + ( !VCC ))
-- \pwm|Add2~30\ = CARRY(( \pwm|pwm_counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_pwm_counter\(0),
	cin => GND,
	sumout => \pwm|Add2~29_sumout\,
	cout => \pwm|Add2~30\);

-- Location: LABCELL_X22_Y26_N15
\pwm|pwm_counter~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~11_combout\ = ( \pwm|pwm_counter\(0) & ( \pwm|Add2~29_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\)))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(0) & ( \pwm|Add2~29_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(0) & ( !\pwm|Add2~29_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # 
-- (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001101000000001111000011111000111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datac => \pwm|ALT_INV_Selector29~0_combout\,
	datad => \pwm|ALT_INV_p_main:pwm_active~q\,
	datae => \pwm|ALT_INV_pwm_counter\(0),
	dataf => \pwm|ALT_INV_Add2~29_sumout\,
	combout => \pwm|pwm_counter~11_combout\);

-- Location: FF_X22_Y26_N16
\pwm|pwm_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~11_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(0));

-- Location: MLABCELL_X21_Y26_N48
\pwm|pwm_counter[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter[13]~3_combout\ = ( !\pwm|pwm_counter\(7) & ( (\pwm|pwm_counter\(9) & (!\pwm|pwm_counter\(0) & \pwm|pwm_counter\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_pwm_counter\(9),
	datac => \pwm|ALT_INV_pwm_counter\(0),
	datad => \pwm|ALT_INV_pwm_counter\(8),
	dataf => \pwm|ALT_INV_pwm_counter\(7),
	combout => \pwm|pwm_counter[13]~3_combout\);

-- Location: FF_X22_Y26_N8
\pwm|pwm_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~12_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(1));

-- Location: MLABCELL_X21_Y26_N3
\pwm|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~33_sumout\ = SUM(( \pwm|pwm_counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \pwm|Add2~30\ ))
-- \pwm|Add2~34\ = CARRY(( \pwm|pwm_counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \pwm|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_pwm_counter[1]~DUPLICATE_q\,
	cin => \pwm|Add2~30\,
	sumout => \pwm|Add2~33_sumout\,
	cout => \pwm|Add2~34\);

-- Location: LABCELL_X22_Y26_N6
\pwm|pwm_counter~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~12_combout\ = ( \pwm|pwm_counter\(1) & ( \pwm|Add2~33_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\)))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(1) & ( \pwm|Add2~33_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(1) & ( !\pwm|Add2~33_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # 
-- (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100011010000000000000000111111111000110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datac => \pwm|ALT_INV_p_main:pwm_active~q\,
	datad => \pwm|ALT_INV_Selector29~0_combout\,
	datae => \pwm|ALT_INV_pwm_counter\(1),
	dataf => \pwm|ALT_INV_Add2~33_sumout\,
	combout => \pwm|pwm_counter~12_combout\);

-- Location: FF_X22_Y26_N7
\pwm|pwm_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~12_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter[1]~DUPLICATE_q\);

-- Location: MLABCELL_X21_Y26_N6
\pwm|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~25_sumout\ = SUM(( \pwm|pwm_counter\(2) ) + ( GND ) + ( \pwm|Add2~34\ ))
-- \pwm|Add2~26\ = CARRY(( \pwm|pwm_counter\(2) ) + ( GND ) + ( \pwm|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_pwm_counter\(2),
	cin => \pwm|Add2~34\,
	sumout => \pwm|Add2~25_sumout\,
	cout => \pwm|Add2~26\);

-- Location: LABCELL_X22_Y26_N12
\pwm|pwm_counter~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~10_combout\ = ( \pwm|pwm_counter\(2) & ( \pwm|Add2~25_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\)))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(2) & ( \pwm|Add2~25_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(2) & ( !\pwm|Add2~25_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # 
-- (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100011010000000000000000111111111000110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datac => \pwm|ALT_INV_p_main:pwm_active~q\,
	datad => \pwm|ALT_INV_Selector29~0_combout\,
	datae => \pwm|ALT_INV_pwm_counter\(2),
	dataf => \pwm|ALT_INV_Add2~25_sumout\,
	combout => \pwm|pwm_counter~10_combout\);

-- Location: FF_X22_Y26_N13
\pwm|pwm_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~10_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(2));

-- Location: MLABCELL_X21_Y26_N9
\pwm|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~21_sumout\ = SUM(( \pwm|pwm_counter\(3) ) + ( GND ) + ( \pwm|Add2~26\ ))
-- \pwm|Add2~22\ = CARRY(( \pwm|pwm_counter\(3) ) + ( GND ) + ( \pwm|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_pwm_counter\(3),
	cin => \pwm|Add2~26\,
	sumout => \pwm|Add2~21_sumout\,
	cout => \pwm|Add2~22\);

-- Location: LABCELL_X22_Y26_N39
\pwm|pwm_counter~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~9_combout\ = ( \pwm|pwm_counter\(3) & ( \pwm|Add2~21_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & ((!\pwm|pwm_state.pwm_on~q\))) # (\pwm|pwm_state.pwm_up~q\ & (\pwm|p_main:pwm_active~q\))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(3) & ( \pwm|Add2~21_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(3) & ( !\pwm|Add2~21_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & ((!\pwm|pwm_state.pwm_on~q\))) # 
-- (\pwm|pwm_state.pwm_up~q\ & (\pwm|p_main:pwm_active~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000100010000110011001100111111001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_p_main:pwm_active~q\,
	datab => \pwm|ALT_INV_Selector29~0_combout\,
	datac => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datad => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datae => \pwm|ALT_INV_pwm_counter\(3),
	dataf => \pwm|ALT_INV_Add2~21_sumout\,
	combout => \pwm|pwm_counter~9_combout\);

-- Location: FF_X22_Y26_N40
\pwm|pwm_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~9_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(3));

-- Location: MLABCELL_X21_Y26_N54
\pwm|pwm_counter[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter[13]~1_combout\ = ( !\pwm|pwm_counter\(3) & ( !\pwm|pwm_counter\(11) & ( (!\pwm|pwm_counter\(13) & (!\pwm|pwm_counter\(10) & !\pwm|pwm_counter\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_pwm_counter\(13),
	datac => \pwm|ALT_INV_pwm_counter\(10),
	datad => \pwm|ALT_INV_pwm_counter\(2),
	datae => \pwm|ALT_INV_pwm_counter\(3),
	dataf => \pwm|ALT_INV_pwm_counter\(11),
	combout => \pwm|pwm_counter[13]~1_combout\);

-- Location: MLABCELL_X21_Y26_N12
\pwm|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~17_sumout\ = SUM(( \pwm|pwm_counter\(4) ) + ( GND ) + ( \pwm|Add2~22\ ))
-- \pwm|Add2~18\ = CARRY(( \pwm|pwm_counter\(4) ) + ( GND ) + ( \pwm|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_pwm_counter\(4),
	cin => \pwm|Add2~22\,
	sumout => \pwm|Add2~17_sumout\,
	cout => \pwm|Add2~18\);

-- Location: LABCELL_X22_Y26_N9
\pwm|pwm_counter~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~8_combout\ = ( \pwm|pwm_counter\(4) & ( \pwm|Add2~17_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\)))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(4) & ( \pwm|Add2~17_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(4) & ( !\pwm|Add2~17_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # 
-- (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001101000000001111000011111000111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datac => \pwm|ALT_INV_Selector29~0_combout\,
	datad => \pwm|ALT_INV_p_main:pwm_active~q\,
	datae => \pwm|ALT_INV_pwm_counter\(4),
	dataf => \pwm|ALT_INV_Add2~17_sumout\,
	combout => \pwm|pwm_counter~8_combout\);

-- Location: FF_X22_Y26_N10
\pwm|pwm_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~8_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(4));

-- Location: MLABCELL_X21_Y26_N15
\pwm|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~13_sumout\ = SUM(( \pwm|pwm_counter\(5) ) + ( GND ) + ( \pwm|Add2~18\ ))
-- \pwm|Add2~14\ = CARRY(( \pwm|pwm_counter\(5) ) + ( GND ) + ( \pwm|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_pwm_counter\(5),
	cin => \pwm|Add2~18\,
	sumout => \pwm|Add2~13_sumout\,
	cout => \pwm|Add2~14\);

-- Location: LABCELL_X22_Y26_N51
\pwm|pwm_counter~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~7_combout\ = ( \pwm|pwm_counter\(5) & ( \pwm|Add2~13_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\)))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(5) & ( \pwm|Add2~13_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(5) & ( !\pwm|Add2~13_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # 
-- (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001101000000001111000011111000111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datac => \pwm|ALT_INV_Selector29~0_combout\,
	datad => \pwm|ALT_INV_p_main:pwm_active~q\,
	datae => \pwm|ALT_INV_pwm_counter\(5),
	dataf => \pwm|ALT_INV_Add2~13_sumout\,
	combout => \pwm|pwm_counter~7_combout\);

-- Location: FF_X22_Y26_N52
\pwm|pwm_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~7_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(5));

-- Location: LABCELL_X22_Y26_N3
\pwm|pwm_counter[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter[13]~2_combout\ = ( \pwm|pwm_counter\(6) & ( (\pwm|pwm_counter\(4) & (\pwm|pwm_counter\(15) & (!\pwm|pwm_counter\(5) & \pwm|pwm_counter\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(4),
	datab => \pwm|ALT_INV_pwm_counter\(15),
	datac => \pwm|ALT_INV_pwm_counter\(5),
	datad => \pwm|ALT_INV_pwm_counter\(14),
	dataf => \pwm|ALT_INV_pwm_counter\(6),
	combout => \pwm|pwm_counter[13]~2_combout\);

-- Location: LABCELL_X22_Y26_N42
\pwm|pwm_counter[13]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter[13]~4_combout\ = ( \pwm|pwm_counter[13]~2_combout\ & ( !\pwm|pwm_counter\(1) & ( (!\pwm|pwm_counter\(12) & (\pwm|pwm_counter[13]~3_combout\ & (\pwm|pwm_counter[13]~1_combout\ & \pwm|Selector29~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(12),
	datab => \pwm|ALT_INV_pwm_counter[13]~3_combout\,
	datac => \pwm|ALT_INV_pwm_counter[13]~1_combout\,
	datad => \pwm|ALT_INV_Selector29~0_combout\,
	datae => \pwm|ALT_INV_pwm_counter[13]~2_combout\,
	dataf => \pwm|ALT_INV_pwm_counter\(1),
	combout => \pwm|pwm_counter[13]~4_combout\);

-- Location: FF_X22_Y26_N50
\pwm|pwm_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~6_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(6));

-- Location: MLABCELL_X21_Y26_N18
\pwm|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~9_sumout\ = SUM(( \pwm|pwm_counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \pwm|Add2~14\ ))
-- \pwm|Add2~10\ = CARRY(( \pwm|pwm_counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \pwm|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_pwm_counter[6]~DUPLICATE_q\,
	cin => \pwm|Add2~14\,
	sumout => \pwm|Add2~9_sumout\,
	cout => \pwm|Add2~10\);

-- Location: LABCELL_X22_Y26_N48
\pwm|pwm_counter~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~6_combout\ = ( \pwm|pwm_counter\(6) & ( \pwm|Add2~9_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\)))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(6) & ( \pwm|Add2~9_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(6) & ( !\pwm|Add2~9_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # (\pwm|pwm_state.pwm_up~q\ 
-- & ((\pwm|p_main:pwm_active~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100011010000000000000000111111111000110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datac => \pwm|ALT_INV_p_main:pwm_active~q\,
	datad => \pwm|ALT_INV_Selector29~0_combout\,
	datae => \pwm|ALT_INV_pwm_counter\(6),
	dataf => \pwm|ALT_INV_Add2~9_sumout\,
	combout => \pwm|pwm_counter~6_combout\);

-- Location: FF_X22_Y26_N49
\pwm|pwm_counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~6_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter[6]~DUPLICATE_q\);

-- Location: MLABCELL_X21_Y26_N21
\pwm|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~5_sumout\ = SUM(( \pwm|pwm_counter\(7) ) + ( GND ) + ( \pwm|Add2~10\ ))
-- \pwm|Add2~6\ = CARRY(( \pwm|pwm_counter\(7) ) + ( GND ) + ( \pwm|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_pwm_counter\(7),
	cin => \pwm|Add2~10\,
	sumout => \pwm|Add2~5_sumout\,
	cout => \pwm|Add2~6\);

-- Location: LABCELL_X22_Y26_N21
\pwm|pwm_counter~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~5_combout\ = ( \pwm|pwm_counter\(7) & ( \pwm|Add2~5_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & ((!\pwm|pwm_state.pwm_on~q\))) # (\pwm|pwm_state.pwm_up~q\ & (\pwm|p_main:pwm_active~q\))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(7) & ( \pwm|Add2~5_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(7) & ( !\pwm|Add2~5_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & ((!\pwm|pwm_state.pwm_on~q\))) # 
-- (\pwm|pwm_state.pwm_up~q\ & (\pwm|p_main:pwm_active~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000101000000001111000011111100111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_p_main:pwm_active~q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datac => \pwm|ALT_INV_Selector29~0_combout\,
	datad => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datae => \pwm|ALT_INV_pwm_counter\(7),
	dataf => \pwm|ALT_INV_Add2~5_sumout\,
	combout => \pwm|pwm_counter~5_combout\);

-- Location: FF_X22_Y26_N22
\pwm|pwm_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~5_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(7));

-- Location: MLABCELL_X21_Y26_N24
\pwm|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~57_sumout\ = SUM(( \pwm|pwm_counter\(8) ) + ( GND ) + ( \pwm|Add2~6\ ))
-- \pwm|Add2~58\ = CARRY(( \pwm|pwm_counter\(8) ) + ( GND ) + ( \pwm|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_pwm_counter\(8),
	cin => \pwm|Add2~6\,
	sumout => \pwm|Add2~57_sumout\,
	cout => \pwm|Add2~58\);

-- Location: LABCELL_X22_Y26_N30
\pwm|pwm_counter~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~18_combout\ = ( \pwm|pwm_counter\(8) & ( \pwm|Add2~57_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & ((!\pwm|pwm_state.pwm_on~q\))) # (\pwm|pwm_state.pwm_up~q\ & (\pwm|p_main:pwm_active~q\))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(8) & ( \pwm|Add2~57_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(8) & ( !\pwm|Add2~57_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & ((!\pwm|pwm_state.pwm_on~q\))) # 
-- (\pwm|pwm_state.pwm_up~q\ & (\pwm|p_main:pwm_active~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001010000000000000000111111111100010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_p_main:pwm_active~q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datac => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datad => \pwm|ALT_INV_Selector29~0_combout\,
	datae => \pwm|ALT_INV_pwm_counter\(8),
	dataf => \pwm|ALT_INV_Add2~57_sumout\,
	combout => \pwm|pwm_counter~18_combout\);

-- Location: FF_X22_Y26_N31
\pwm|pwm_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~18_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(8));

-- Location: MLABCELL_X21_Y26_N27
\pwm|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~61_sumout\ = SUM(( \pwm|pwm_counter\(9) ) + ( GND ) + ( \pwm|Add2~58\ ))
-- \pwm|Add2~62\ = CARRY(( \pwm|pwm_counter\(9) ) + ( GND ) + ( \pwm|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_pwm_counter\(9),
	cin => \pwm|Add2~58\,
	sumout => \pwm|Add2~61_sumout\,
	cout => \pwm|Add2~62\);

-- Location: LABCELL_X22_Y26_N33
\pwm|pwm_counter~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~19_combout\ = ( \pwm|pwm_counter\(9) & ( \pwm|Add2~61_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & ((!\pwm|pwm_state.pwm_on~q\))) # (\pwm|pwm_state.pwm_up~q\ & (\pwm|p_main:pwm_active~q\))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(9) & ( \pwm|Add2~61_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(9) & ( !\pwm|Add2~61_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & ((!\pwm|pwm_state.pwm_on~q\))) # 
-- (\pwm|pwm_state.pwm_up~q\ & (\pwm|p_main:pwm_active~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000101000000001111000011111100111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_p_main:pwm_active~q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datac => \pwm|ALT_INV_Selector29~0_combout\,
	datad => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datae => \pwm|ALT_INV_pwm_counter\(9),
	dataf => \pwm|ALT_INV_Add2~61_sumout\,
	combout => \pwm|pwm_counter~19_combout\);

-- Location: FF_X22_Y26_N34
\pwm|pwm_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~19_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(9));

-- Location: MLABCELL_X21_Y26_N30
\pwm|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~53_sumout\ = SUM(( \pwm|pwm_counter\(10) ) + ( GND ) + ( \pwm|Add2~62\ ))
-- \pwm|Add2~54\ = CARRY(( \pwm|pwm_counter\(10) ) + ( GND ) + ( \pwm|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_pwm_counter\(10),
	cin => \pwm|Add2~62\,
	sumout => \pwm|Add2~53_sumout\,
	cout => \pwm|Add2~54\);

-- Location: LABCELL_X22_Y26_N18
\pwm|pwm_counter~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~17_combout\ = ( \pwm|pwm_counter\(10) & ( \pwm|Add2~53_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & ((!\pwm|pwm_state.pwm_on~q\))) # (\pwm|pwm_state.pwm_up~q\ & (\pwm|p_main:pwm_active~q\))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(10) & ( \pwm|Add2~53_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(10) & ( !\pwm|Add2~53_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & ((!\pwm|pwm_state.pwm_on~q\))) # 
-- (\pwm|pwm_state.pwm_up~q\ & (\pwm|p_main:pwm_active~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001010000000000000000111111111100010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_p_main:pwm_active~q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datac => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datad => \pwm|ALT_INV_Selector29~0_combout\,
	datae => \pwm|ALT_INV_pwm_counter\(10),
	dataf => \pwm|ALT_INV_Add2~53_sumout\,
	combout => \pwm|pwm_counter~17_combout\);

-- Location: FF_X22_Y26_N19
\pwm|pwm_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~17_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(10));

-- Location: MLABCELL_X21_Y26_N33
\pwm|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~49_sumout\ = SUM(( \pwm|pwm_counter\(11) ) + ( GND ) + ( \pwm|Add2~54\ ))
-- \pwm|Add2~50\ = CARRY(( \pwm|pwm_counter\(11) ) + ( GND ) + ( \pwm|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(11),
	cin => \pwm|Add2~54\,
	sumout => \pwm|Add2~49_sumout\,
	cout => \pwm|Add2~50\);

-- Location: LABCELL_X22_Y26_N54
\pwm|pwm_counter~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~16_combout\ = ( \pwm|pwm_counter\(11) & ( \pwm|Add2~49_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\)))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(11) & ( \pwm|Add2~49_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(11) & ( !\pwm|Add2~49_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # 
-- (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100011010000000000000000111111111000110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datac => \pwm|ALT_INV_p_main:pwm_active~q\,
	datad => \pwm|ALT_INV_Selector29~0_combout\,
	datae => \pwm|ALT_INV_pwm_counter\(11),
	dataf => \pwm|ALT_INV_Add2~49_sumout\,
	combout => \pwm|pwm_counter~16_combout\);

-- Location: FF_X22_Y26_N55
\pwm|pwm_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~16_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(11));

-- Location: MLABCELL_X21_Y26_N36
\pwm|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~45_sumout\ = SUM(( \pwm|pwm_counter\(12) ) + ( GND ) + ( \pwm|Add2~50\ ))
-- \pwm|Add2~46\ = CARRY(( \pwm|pwm_counter\(12) ) + ( GND ) + ( \pwm|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_pwm_counter\(12),
	cin => \pwm|Add2~50\,
	sumout => \pwm|Add2~45_sumout\,
	cout => \pwm|Add2~46\);

-- Location: LABCELL_X22_Y26_N27
\pwm|pwm_counter~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~15_combout\ = ( \pwm|pwm_counter\(12) & ( \pwm|Add2~45_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\)))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(12) & ( \pwm|Add2~45_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(12) & ( !\pwm|Add2~45_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # 
-- (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001101000000001111000011111000111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datac => \pwm|ALT_INV_Selector29~0_combout\,
	datad => \pwm|ALT_INV_p_main:pwm_active~q\,
	datae => \pwm|ALT_INV_pwm_counter\(12),
	dataf => \pwm|ALT_INV_Add2~45_sumout\,
	combout => \pwm|pwm_counter~15_combout\);

-- Location: FF_X22_Y26_N29
\pwm|pwm_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~15_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(12));

-- Location: MLABCELL_X21_Y26_N39
\pwm|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~41_sumout\ = SUM(( \pwm|pwm_counter\(13) ) + ( GND ) + ( \pwm|Add2~46\ ))
-- \pwm|Add2~42\ = CARRY(( \pwm|pwm_counter\(13) ) + ( GND ) + ( \pwm|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_pwm_counter\(13),
	cin => \pwm|Add2~46\,
	sumout => \pwm|Add2~41_sumout\,
	cout => \pwm|Add2~42\);

-- Location: LABCELL_X22_Y26_N24
\pwm|pwm_counter~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~14_combout\ = ( \pwm|pwm_counter\(13) & ( \pwm|Add2~41_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\)))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(13) & ( \pwm|Add2~41_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(13) & ( !\pwm|Add2~41_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # 
-- (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100011010000000000000000111111111000110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datac => \pwm|ALT_INV_p_main:pwm_active~q\,
	datad => \pwm|ALT_INV_Selector29~0_combout\,
	datae => \pwm|ALT_INV_pwm_counter\(13),
	dataf => \pwm|ALT_INV_Add2~41_sumout\,
	combout => \pwm|pwm_counter~14_combout\);

-- Location: FF_X22_Y26_N25
\pwm|pwm_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~14_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(13));

-- Location: MLABCELL_X21_Y26_N42
\pwm|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~37_sumout\ = SUM(( \pwm|pwm_counter\(14) ) + ( GND ) + ( \pwm|Add2~42\ ))
-- \pwm|Add2~38\ = CARRY(( \pwm|pwm_counter\(14) ) + ( GND ) + ( \pwm|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_pwm_counter\(14),
	cin => \pwm|Add2~42\,
	sumout => \pwm|Add2~37_sumout\,
	cout => \pwm|Add2~38\);

-- Location: LABCELL_X22_Y26_N57
\pwm|pwm_counter~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~13_combout\ = ( \pwm|pwm_counter\(14) & ( \pwm|Add2~37_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\)))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(14) & ( \pwm|Add2~37_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(14) & ( !\pwm|Add2~37_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & (!\pwm|pwm_state.pwm_on~q\)) # 
-- (\pwm|pwm_state.pwm_up~q\ & ((\pwm|p_main:pwm_active~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001101000000001111000011111000111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datac => \pwm|ALT_INV_Selector29~0_combout\,
	datad => \pwm|ALT_INV_p_main:pwm_active~q\,
	datae => \pwm|ALT_INV_pwm_counter\(14),
	dataf => \pwm|ALT_INV_Add2~37_sumout\,
	combout => \pwm|pwm_counter~13_combout\);

-- Location: FF_X22_Y26_N58
\pwm|pwm_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~13_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(14));

-- Location: MLABCELL_X21_Y26_N45
\pwm|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Add2~1_sumout\ = SUM(( \pwm|pwm_counter\(15) ) + ( GND ) + ( \pwm|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(15),
	cin => \pwm|Add2~38\,
	sumout => \pwm|Add2~1_sumout\);

-- Location: LABCELL_X22_Y26_N36
\pwm|pwm_counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|pwm_counter~0_combout\ = ( \pwm|pwm_counter\(15) & ( \pwm|Add2~1_sumout\ & ( ((!\pwm|pwm_state.pwm_up~q\ & ((!\pwm|pwm_state.pwm_on~q\))) # (\pwm|pwm_state.pwm_up~q\ & (\pwm|p_main:pwm_active~q\))) # (\pwm|Selector29~0_combout\) ) ) ) # ( 
-- !\pwm|pwm_counter\(15) & ( \pwm|Add2~1_sumout\ & ( \pwm|Selector29~0_combout\ ) ) ) # ( \pwm|pwm_counter\(15) & ( !\pwm|Add2~1_sumout\ & ( (!\pwm|Selector29~0_combout\ & ((!\pwm|pwm_state.pwm_up~q\ & ((!\pwm|pwm_state.pwm_on~q\))) # 
-- (\pwm|pwm_state.pwm_up~q\ & (\pwm|p_main:pwm_active~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001000000010000110011001100111111011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_p_main:pwm_active~q\,
	datab => \pwm|ALT_INV_Selector29~0_combout\,
	datac => \pwm|ALT_INV_pwm_state.pwm_up~q\,
	datad => \pwm|ALT_INV_pwm_state.pwm_on~q\,
	datae => \pwm|ALT_INV_pwm_counter\(15),
	dataf => \pwm|ALT_INV_Add2~1_sumout\,
	combout => \pwm|pwm_counter~0_combout\);

-- Location: FF_X22_Y26_N37
\pwm|pwm_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|pwm_counter~0_combout\,
	sclr => \pwm|pwm_counter[13]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|pwm_counter\(15));

-- Location: DSP_X20_Y28_N0
\pwm|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 7,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 16,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \pwm|Mult0~8_ACLR_bus\,
	clk => \pwm|Mult0~8_CLK_bus\,
	ena => \pwm|Mult0~8_ENA_bus\,
	ax => \pwm|Mult0~8_AX_bus\,
	ay => \pwm|Mult0~8_AY_bus\,
	resulta => \pwm|Mult0~8_RESULTA_bus\);

-- Location: MLABCELL_X21_Y28_N30
\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\ = SUM(( \pwm|Mult0~24\ ) + ( !VCC ) + ( !VCC ))
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ = CARRY(( \pwm|Mult0~24\ ) + ( !VCC ) + ( !VCC ))
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_Mult0~24\,
	cin => GND,
	sharein => GND,
	sumout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\,
	shareout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\);

-- Location: MLABCELL_X21_Y28_N33
\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\ = SUM(( !\pwm|Mult0~25\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ = CARRY(( !\pwm|Mult0~25\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ = SHARE(\pwm|Mult0~25\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \pwm|ALT_INV_Mult0~25\,
	cin => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~30\,
	sharein => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~31\,
	sumout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\,
	shareout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\);

-- Location: MLABCELL_X21_Y28_N36
\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\ = SUM(( \pwm|Mult0~26\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ = CARRY(( \pwm|Mult0~26\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \pwm|ALT_INV_Mult0~26\,
	cin => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~26\,
	sharein => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~27\,
	sumout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\,
	shareout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\);

-- Location: MLABCELL_X21_Y28_N39
\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~17_sumout\ = SUM(( !\pwm|Mult0~27\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~18\ = CARRY(( !\pwm|Mult0~27\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~19\ = SHARE(\pwm|Mult0~27\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \pwm|ALT_INV_Mult0~27\,
	cin => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~22\,
	sharein => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~23\,
	sumout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~18\,
	shareout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~19\);

-- Location: MLABCELL_X21_Y28_N42
\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\ = SUM(( !\pwm|Mult0~28\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~19\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ = CARRY(( !\pwm|Mult0~28\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~19\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ = SHARE(\pwm|Mult0~28\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \pwm|ALT_INV_Mult0~28\,
	cin => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~18\,
	sharein => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~19\,
	sumout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\,
	shareout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\);

-- Location: MLABCELL_X21_Y28_N45
\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_sumout\ = SUM(( \pwm|Mult0~29\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ ))
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ = CARRY(( \pwm|Mult0~29\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\ ))
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_Mult0~29\,
	cin => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~14\,
	sharein => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~15\,
	sumout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\,
	shareout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: MLABCELL_X21_Y28_N48
\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\ = SUM(( \pwm|Mult0~30\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ ))
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\ = CARRY(( \pwm|Mult0~30\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ ))
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_Mult0~30\,
	cin => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\,
	sharein => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	sumout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\,
	shareout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\);

-- Location: MLABCELL_X21_Y28_N51
\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ = SUM(( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\ ) + ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~6\,
	sharein => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~7\,
	sumout => \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\);

-- Location: MLABCELL_X21_Y28_N24
\pwm|Div0|auto_generated|divider|divider|StageOut[53]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[53]~73_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~9_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[53]~73_combout\);

-- Location: MLABCELL_X21_Y28_N3
\pwm|Div0|auto_generated|divider|divider|StageOut[53]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\ = ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \pwm|Mult0~29\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_Mult0~29\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\);

-- Location: MLABCELL_X21_Y28_N9
\pwm|Div0|auto_generated|divider|divider|StageOut[51]~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[51]~123_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~17_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[51]~123_combout\);

-- Location: MLABCELL_X21_Y28_N21
\pwm|Div0|auto_generated|divider|divider|StageOut[51]~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[51]~124_combout\ = ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \pwm|Mult0~27\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|ALT_INV_Mult0~27\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[51]~124_combout\);

-- Location: MLABCELL_X21_Y28_N0
\pwm|Div0|auto_generated|divider|divider|StageOut[49]~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[49]~125_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~25_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[49]~125_combout\);

-- Location: MLABCELL_X21_Y28_N27
\pwm|Div0|auto_generated|divider|divider|StageOut[49]~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[49]~126_combout\ = ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \pwm|Mult0~25\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|ALT_INV_Mult0~25\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[49]~126_combout\);

-- Location: LABCELL_X22_Y28_N0
\pwm|Div0|auto_generated|divider|divider|op_21~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_21~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_21~38_cout\);

-- Location: LABCELL_X22_Y28_N3
\pwm|Div0|auto_generated|divider|divider|op_21~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_21~29_sumout\ = SUM(( \pwm|Mult0~23\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_21~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_21~30\ = CARRY(( \pwm|Mult0~23\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_21~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|ALT_INV_Mult0~23\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_21~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_21~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_21~30\);

-- Location: LABCELL_X22_Y28_N6
\pwm|Div0|auto_generated|divider|divider|op_21~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_21~33_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\)) # 
-- (\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\pwm|Mult0~24\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_21~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_21~34\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\)) # 
-- (\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\pwm|Mult0~24\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_21~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\,
	datab => \pwm|ALT_INV_Mult0~24\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_21~30\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_21~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_21~34\);

-- Location: LABCELL_X22_Y28_N9
\pwm|Div0|auto_generated|divider|divider|op_21~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_21~25_sumout\ = SUM(( (\pwm|Div0|auto_generated|divider|divider|StageOut[49]~126_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[49]~125_combout\) ) + ( GND ) + ( 
-- \pwm|Div0|auto_generated|divider|divider|op_21~34\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_21~26\ = CARRY(( (\pwm|Div0|auto_generated|divider|divider|StageOut[49]~126_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[49]~125_combout\) ) + ( GND ) + ( 
-- \pwm|Div0|auto_generated|divider|divider|op_21~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~125_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~126_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_21~34\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_21~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_21~26\);

-- Location: LABCELL_X22_Y28_N12
\pwm|Div0|auto_generated|divider|divider|op_21~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_21~21_sumout\ = SUM(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\pwm|Mult0~26\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_21~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_21~22\ = CARRY(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\pwm|Mult0~26\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_21~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~26\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_21~26\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_21~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_21~22\);

-- Location: LABCELL_X22_Y28_N15
\pwm|Div0|auto_generated|divider|divider|op_21~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_21~17_sumout\ = SUM(( (\pwm|Div0|auto_generated|divider|divider|StageOut[51]~124_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[51]~123_combout\) ) + ( VCC ) + ( 
-- \pwm|Div0|auto_generated|divider|divider|op_21~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_21~18\ = CARRY(( (\pwm|Div0|auto_generated|divider|divider|StageOut[51]~124_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[51]~123_combout\) ) + ( VCC ) + ( 
-- \pwm|Div0|auto_generated|divider|divider|op_21~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~123_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~124_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_21~22\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_21~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_21~18\);

-- Location: LABCELL_X22_Y28_N18
\pwm|Div0|auto_generated|divider|divider|op_21~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_21~13_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\pwm|Mult0~28\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_21~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_21~14\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\pwm|Mult0~28\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_21~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~28\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_21~18\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_21~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_21~14\);

-- Location: LABCELL_X22_Y28_N21
\pwm|Div0|auto_generated|divider|divider|op_21~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_21~9_sumout\ = SUM(( (\pwm|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[53]~73_combout\) ) + ( GND ) + ( 
-- \pwm|Div0|auto_generated|divider|divider|op_21~14\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_21~10\ = CARRY(( (\pwm|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[53]~73_combout\) ) + ( GND ) + ( 
-- \pwm|Div0|auto_generated|divider|divider|op_21~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~73_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~72_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_21~14\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_21~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_21~10\);

-- Location: LABCELL_X22_Y28_N24
\pwm|Div0|auto_generated|divider|divider|op_21~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_21~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~5_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & (\pwm|Mult0~30\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_21~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_Mult0~30\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[6]~5_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_21~10\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_21~6_cout\);

-- Location: LABCELL_X22_Y28_N27
\pwm|Div0|auto_generated|divider|divider|op_21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_21~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_21~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\);

-- Location: MLABCELL_X21_Y26_N51
\pwm|led_on_off~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|led_on_off~2_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ( \pwm|pwm_counter\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(15),
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	combout => \pwm|led_on_off~2_combout\);

-- Location: LABCELL_X19_Y27_N18
\pwm|led_on_off~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|led_on_off~3_combout\ = ( !\pwm|led_on_off~2_combout\ & ( !\pwm|pwm_state.pwm_off~q\ & ( ((!\pwm|pwm_state.pwm_down~DUPLICATE_q\ & (!\pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\ & \pwm|pwm_state.pwm_idel~q\))) # (\pwm|p_main:pwm_active~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110110011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_down~DUPLICATE_q\,
	datab => \pwm|ALT_INV_p_main:pwm_active~q\,
	datac => \pwm|ALT_INV_pwm_state.pwm_refresh_dc~DUPLICATE_q\,
	datad => \pwm|ALT_INV_pwm_state.pwm_idel~q\,
	datae => \pwm|ALT_INV_led_on_off~2_combout\,
	dataf => \pwm|ALT_INV_pwm_state.pwm_off~q\,
	combout => \pwm|led_on_off~3_combout\);

-- Location: FF_X17_Y27_N55
\pwm|led_on_off~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \pwm|led_on_off~4_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|led_on_off~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y27_N51
\pwm|led_on_off~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|led_on_off~1_combout\ = ( \pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\ & ( !\pwm|pwm_state.pwm_off~q\ & ( (!\pwm|p_main:pwm_active~q\ & \pwm|led_on_off~_Duplicate_1_q\) ) ) ) # ( !\pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\ & ( 
-- !\pwm|pwm_state.pwm_off~q\ & ( (!\pwm|p_main:pwm_active~q\ & (\pwm|led_on_off~_Duplicate_1_q\ & ((!\pwm|pwm_state.pwm_idel~q\) # (\pwm|pwm_state.pwm_down~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_down~DUPLICATE_q\,
	datab => \pwm|ALT_INV_p_main:pwm_active~q\,
	datac => \pwm|ALT_INV_pwm_state.pwm_idel~q\,
	datad => \pwm|ALT_INV_led_on_off~_Duplicate_1_q\,
	datae => \pwm|ALT_INV_pwm_state.pwm_refresh_dc~DUPLICATE_q\,
	dataf => \pwm|ALT_INV_pwm_state.pwm_off~q\,
	combout => \pwm|led_on_off~1_combout\);

-- Location: LABCELL_X22_Y26_N0
\pwm|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~0_combout\ = !\pwm|pwm_counter\(15) $ (!\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_pwm_counter\(15),
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	combout => \pwm|LessThan2~0_combout\);

-- Location: LABCELL_X19_Y27_N54
\pwm|led_on_off~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|led_on_off~0_combout\ = ( \pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\ & ( !\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( (!\pwm|pwm_state.pwm_off~q\ & \pwm|p_main:pwm_active~q\) ) ) ) # ( 
-- !\pwm|pwm_state.pwm_refresh_dc~DUPLICATE_q\ & ( !\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( (!\pwm|pwm_state.pwm_off~q\ & (((!\pwm|pwm_state.pwm_down~DUPLICATE_q\ & \pwm|pwm_state.pwm_idel~q\)) # 
-- (\pwm|p_main:pwm_active~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_state.pwm_down~DUPLICATE_q\,
	datab => \pwm|ALT_INV_pwm_state.pwm_idel~q\,
	datac => \pwm|ALT_INV_pwm_state.pwm_off~q\,
	datad => \pwm|ALT_INV_p_main:pwm_active~q\,
	datae => \pwm|ALT_INV_pwm_state.pwm_refresh_dc~DUPLICATE_q\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \pwm|led_on_off~0_combout\);

-- Location: MLABCELL_X21_Y28_N54
\pwm|Div0|auto_generated|divider|divider|StageOut[51]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ = ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~17_sumout\ & ( (!\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\) # (\pwm|Mult0~27\) ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~17_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & \pwm|Mult0~27\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \pwm|ALT_INV_Mult0~27\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[3]~17_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\);

-- Location: MLABCELL_X21_Y28_N15
\pwm|Div0|auto_generated|divider|divider|StageOut[50]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[50]~85_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[2]~21_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[50]~85_combout\);

-- Location: LABCELL_X23_Y28_N57
\pwm|Div0|auto_generated|divider|divider|StageOut[50]~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[50]~86_combout\ = ( \pwm|Mult0~26\ & ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|ALT_INV_Mult0~26\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[50]~86_combout\);

-- Location: MLABCELL_X21_Y28_N18
\pwm|Div0|auto_generated|divider|divider|StageOut[49]~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[49]~93_combout\ = ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\ & ( (!\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\) # (\pwm|Mult0~25\) ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~25_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & \pwm|Mult0~25\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	datad => \pwm|ALT_INV_Mult0~25\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[1]~25_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[49]~93_combout\);

-- Location: MLABCELL_X21_Y28_N6
\pwm|Div0|auto_generated|divider|divider|StageOut[48]~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[48]~110_combout\ = ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\ & ( (!\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\) # (\pwm|Mult0~24\) ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~29_sumout\ & ( (\pwm|Mult0~24\ & \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_Mult0~24\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[0]~29_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[48]~110_combout\);

-- Location: LABCELL_X22_Y28_N30
\pwm|Div0|auto_generated|divider|divider|op_22~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_22~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_22~38_cout\);

-- Location: LABCELL_X22_Y28_N33
\pwm|Div0|auto_generated|divider|divider|op_22~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_22~9_sumout\ = SUM(( \pwm|Mult0~22\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_22~10\ = CARRY(( \pwm|Mult0~22\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~22\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_22~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_22~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_22~10\);

-- Location: LABCELL_X22_Y28_N36
\pwm|Div0|auto_generated|divider|divider|op_22~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_22~29_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_21~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (\pwm|Mult0~23\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~10\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_22~30\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_21~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (\pwm|Mult0~23\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_Mult0~23\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~29_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_22~10\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_22~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_22~30\);

-- Location: LABCELL_X22_Y28_N39
\pwm|Div0|auto_generated|divider|divider|op_22~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_22~33_sumout\ = SUM(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_21~33_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|StageOut[48]~110_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_22~34\ = CARRY(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_21~33_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ 
-- & (\pwm|Div0|auto_generated|divider|divider|StageOut[48]~110_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[48]~110_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~33_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_22~30\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_22~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_22~34\);

-- Location: LABCELL_X22_Y28_N42
\pwm|Div0|auto_generated|divider|divider|op_22~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_22~25_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_21~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[49]~93_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~34\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_22~26\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_21~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[49]~93_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~93_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~25_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_22~34\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_22~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_22~26\);

-- Location: LABCELL_X22_Y28_N45
\pwm|Div0|auto_generated|divider|divider|op_22~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_22~21_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_21~21_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[50]~86_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[50]~85_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_22~22\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_21~21_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[50]~86_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[50]~85_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~85_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~21_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~86_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_22~26\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_22~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_22~22\);

-- Location: LABCELL_X22_Y28_N48
\pwm|Div0|auto_generated|divider|divider|op_22~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_22~17_sumout\ = SUM(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_21~17_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_22~18\ = CARRY(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_21~17_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ 
-- & (\pwm|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~80_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~17_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_22~22\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_22~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_22~18\);

-- Location: MLABCELL_X21_Y28_N12
\pwm|Div0|auto_generated|divider|divider|StageOut[52]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[52]~75_combout\ = ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~13_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[4]~13_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[52]~75_combout\);

-- Location: MLABCELL_X21_Y28_N57
\pwm|Div0|auto_generated|divider|divider|StageOut[52]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[52]~76_combout\ = ( \pwm|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~1_sumout\ & ( \pwm|Mult0~28\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|ALT_INV_Mult0~28\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[52]~76_combout\);

-- Location: LABCELL_X22_Y28_N51
\pwm|Div0|auto_generated|divider|divider|op_22~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_22~13_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_21~13_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[52]~76_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[52]~75_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_22~14\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_21~13_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[52]~76_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[52]~75_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~75_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~13_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~76_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_22~18\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_22~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_22~14\);

-- Location: LABCELL_X22_Y28_N54
\pwm|Div0|auto_generated|divider|divider|op_22~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_22~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_21~9_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[53]~73_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[53]~72_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~72_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[53]~73_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~9_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_22~14\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_22~6_cout\);

-- Location: LABCELL_X22_Y28_N57
\pwm|Div0|auto_generated|divider|divider|op_22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_22~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_22~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\);

-- Location: LABCELL_X23_Y29_N24
\pwm|Div0|auto_generated|divider|divider|StageOut[60]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[60]~79_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_21~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~17_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[60]~79_combout\);

-- Location: LABCELL_X23_Y29_N21
\pwm|Div0|auto_generated|divider|divider|StageOut[60]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[60]~81_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[51]~80_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[51]~80_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[60]~81_combout\);

-- Location: LABCELL_X23_Y29_N0
\pwm|Div0|auto_generated|divider|divider|StageOut[59]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_21~21_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ( 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[50]~86_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[50]~85_combout\) ) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_21~21_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[50]~86_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[50]~85_combout\) ) ) ) # ( 
-- \pwm|Div0|auto_generated|divider|divider|op_21~21_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~85_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[50]~86_combout\,
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~21_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\);

-- Location: MLABCELL_X21_Y29_N33
\pwm|Div0|auto_generated|divider|divider|StageOut[58]~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[58]~92_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_21~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~25_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[58]~92_combout\);

-- Location: MLABCELL_X21_Y29_N12
\pwm|Div0|auto_generated|divider|divider|StageOut[58]~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[58]~94_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[49]~93_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[49]~93_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[58]~94_combout\);

-- Location: MLABCELL_X21_Y29_N39
\pwm|Div0|auto_generated|divider|divider|StageOut[57]~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[57]~111_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[48]~110_combout\ ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_21~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[48]~110_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~33_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[57]~111_combout\);

-- Location: MLABCELL_X21_Y29_N9
\pwm|Div0|auto_generated|divider|divider|StageOut[56]~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[56]~101_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ( \pwm|Mult0~23\ ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|op_21~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_Mult0~23\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~29_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[56]~101_combout\);

-- Location: LABCELL_X22_Y29_N0
\pwm|Div0|auto_generated|divider|divider|op_23~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_23~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_23~38_cout\);

-- Location: LABCELL_X22_Y29_N3
\pwm|Div0|auto_generated|divider|divider|op_23~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_23~13_sumout\ = SUM(( \pwm|Mult0~21\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_23~14\ = CARRY(( \pwm|Mult0~21\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|ALT_INV_Mult0~21\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_23~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_23~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_23~14\);

-- Location: LABCELL_X22_Y29_N6
\pwm|Div0|auto_generated|divider|divider|op_23~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_23~9_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_22~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (\pwm|Mult0~22\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~14\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_23~10\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_22~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (\pwm|Mult0~22\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~22\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_23~14\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_23~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_23~10\);

-- Location: LABCELL_X22_Y29_N9
\pwm|Div0|auto_generated|divider|divider|op_23~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_23~29_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_22~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[56]~101_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~10\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_23~30\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_22~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[56]~101_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~101_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~29_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_23~10\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_23~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_23~30\);

-- Location: LABCELL_X22_Y29_N12
\pwm|Div0|auto_generated|divider|divider|op_23~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_23~33_sumout\ = SUM(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_22~33_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|StageOut[57]~111_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_23~34\ = CARRY(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_22~33_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ 
-- & (\pwm|Div0|auto_generated|divider|divider|StageOut[57]~111_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~111_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~33_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_23~30\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_23~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_23~34\);

-- Location: LABCELL_X22_Y29_N15
\pwm|Div0|auto_generated|divider|divider|op_23~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_23~25_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_22~25_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[58]~94_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[58]~92_combout\)))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~34\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_23~26\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_22~25_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[58]~94_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[58]~92_combout\)))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~25_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~92_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~94_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_23~34\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_23~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_23~26\);

-- Location: LABCELL_X22_Y29_N18
\pwm|Div0|auto_generated|divider|divider|op_23~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_23~21_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_22~21_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_23~22\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_22~21_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[59]~87_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_23~26\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_23~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_23~22\);

-- Location: LABCELL_X22_Y29_N21
\pwm|Div0|auto_generated|divider|divider|op_23~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_23~17_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_22~17_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[60]~81_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[60]~79_combout\)))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_23~18\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_22~17_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[60]~81_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[60]~79_combout\)))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~79_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~81_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_23~22\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_23~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_23~18\);

-- Location: LABCELL_X23_Y29_N33
\pwm|Div0|auto_generated|divider|divider|StageOut[69]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[69]~78_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_22~17_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~17_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[69]~78_combout\);

-- Location: LABCELL_X23_Y29_N48
\pwm|Div0|auto_generated|divider|divider|StageOut[61]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[61]~74_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_21~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~13_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[61]~74_combout\);

-- Location: MLABCELL_X21_Y29_N48
\pwm|Div0|auto_generated|divider|divider|StageOut[61]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[61]~77_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_21~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[52]~76_combout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[52]~75_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~75_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[52]~76_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_21~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[61]~77_combout\);

-- Location: LABCELL_X22_Y29_N24
\pwm|Div0|auto_generated|divider|divider|op_23~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_23~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_22~13_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[61]~77_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[61]~74_combout\)))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~13_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~74_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[61]~77_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_23~18\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_23~6_cout\);

-- Location: LABCELL_X22_Y29_N27
\pwm|Div0|auto_generated|divider|divider|op_23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_23~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_23~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\);

-- Location: LABCELL_X23_Y29_N9
\pwm|Div0|auto_generated|divider|divider|StageOut[69]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[69]~82_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[60]~81_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|StageOut[60]~81_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[60]~79_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~79_combout\,
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[60]~81_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[69]~82_combout\);

-- Location: LABCELL_X23_Y29_N45
\pwm|Div0|auto_generated|divider|divider|StageOut[68]~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[68]~84_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_22~21_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~21_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[68]~84_combout\);

-- Location: LABCELL_X23_Y29_N15
\pwm|Div0|auto_generated|divider|divider|StageOut[68]~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[68]~88_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[59]~87_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[59]~87_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[68]~88_combout\);

-- Location: MLABCELL_X21_Y29_N21
\pwm|Div0|auto_generated|divider|divider|StageOut[67]~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[67]~95_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[58]~92_combout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[58]~94_combout\) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_22~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~25_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~94_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[58]~92_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[67]~95_combout\);

-- Location: MLABCELL_X21_Y29_N24
\pwm|Div0|auto_generated|divider|divider|StageOut[66]~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[66]~109_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_22~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~33_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[66]~109_combout\);

-- Location: MLABCELL_X21_Y29_N42
\pwm|Div0|auto_generated|divider|divider|StageOut[66]~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[66]~112_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[57]~111_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[57]~111_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[66]~112_combout\);

-- Location: MLABCELL_X21_Y29_N51
\pwm|Div0|auto_generated|divider|divider|StageOut[65]~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[65]~102_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[56]~101_combout\ ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_22~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[56]~101_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~29_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[65]~102_combout\);

-- Location: LABCELL_X23_Y28_N48
\pwm|Div0|auto_generated|divider|divider|StageOut[64]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[64]~12_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_22~9_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( \pwm|Mult0~22\ ) ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_22~9_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( \pwm|Mult0~22\ ) ) ) # ( \pwm|Div0|auto_generated|divider|divider|op_22~9_sumout\ & ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|ALT_INV_Mult0~22\,
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~9_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[64]~12_combout\);

-- Location: LABCELL_X22_Y29_N30
\pwm|Div0|auto_generated|divider|divider|op_3~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_3~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_3~38_cout\);

-- Location: LABCELL_X22_Y29_N33
\pwm|Div0|auto_generated|divider|divider|op_3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_3~17_sumout\ = SUM(( \pwm|Mult0~20\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_3~18\ = CARRY(( \pwm|Mult0~20\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|ALT_INV_Mult0~20\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_3~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_3~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_3~18\);

-- Location: LABCELL_X22_Y29_N36
\pwm|Div0|auto_generated|divider|divider|op_3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_3~13_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_23~13_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (\pwm|Mult0~21\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_3~14\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_23~13_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (\pwm|Mult0~21\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_Mult0~21\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_3~18\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_3~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_3~14\);

-- Location: LABCELL_X22_Y29_N39
\pwm|Div0|auto_generated|divider|divider|op_3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_3~9_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_23~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[64]~12_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~14\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_3~10\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_23~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[64]~12_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~12_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_3~14\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_3~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_3~10\);

-- Location: LABCELL_X22_Y29_N42
\pwm|Div0|auto_generated|divider|divider|op_3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_3~29_sumout\ = SUM(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_23~29_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|StageOut[65]~102_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~10\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_3~30\ = CARRY(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_23~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[65]~102_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~102_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~29_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_3~10\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_3~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_3~30\);

-- Location: LABCELL_X22_Y29_N45
\pwm|Div0|auto_generated|divider|divider|op_3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_3~33_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_23~33_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[66]~112_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[66]~109_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_3~34\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_23~33_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[66]~112_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[66]~109_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~109_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~33_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~112_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_3~30\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_3~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_3~34\);

-- Location: LABCELL_X22_Y29_N48
\pwm|Div0|auto_generated|divider|divider|op_3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_3~25_sumout\ = SUM(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_23~25_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|StageOut[67]~95_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~34\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_3~26\ = CARRY(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_23~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[67]~95_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~95_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~25_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_3~34\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_3~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_3~26\);

-- Location: LABCELL_X22_Y29_N51
\pwm|Div0|auto_generated|divider|divider|op_3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_3~21_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_23~21_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[68]~88_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[68]~84_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_3~22\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_23~21_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[68]~88_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[68]~84_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~84_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~88_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_3~26\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_3~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_3~22\);

-- Location: LABCELL_X22_Y29_N54
\pwm|Div0|auto_generated|divider|divider|op_3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_3~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_23~17_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[69]~82_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[69]~78_combout\)))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~17_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~78_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~82_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_3~22\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_3~6_cout\);

-- Location: LABCELL_X22_Y29_N57
\pwm|Div0|auto_generated|divider|divider|op_3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_3~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_3~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\);

-- Location: LABCELL_X19_Y28_N33
\pwm|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~3_combout\ = ( \pwm|pwm_counter\(13) & ( \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( (!\pwm|pwm_counter\(14) & (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (!\pwm|pwm_counter\(12) $ 
-- (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\)))) ) ) ) # ( !\pwm|pwm_counter\(13) & ( \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( (!\pwm|pwm_counter\(14) & (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & 
-- (!\pwm|pwm_counter\(12) $ (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\)))) ) ) ) # ( \pwm|pwm_counter\(13) & ( !\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( (\pwm|pwm_counter\(14) & 
-- (!\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (!\pwm|pwm_counter\(12) $ (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\)))) ) ) ) # ( !\pwm|pwm_counter\(13) & ( !\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( 
-- (\pwm|pwm_counter\(14) & (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & (!\pwm|pwm_counter\(12) $ (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000100100000000000000000010010000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(12),
	datab => \pwm|ALT_INV_pwm_counter\(14),
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datae => \pwm|ALT_INV_pwm_counter\(13),
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \pwm|LessThan2~3_combout\);

-- Location: MLABCELL_X21_Y29_N36
\pwm|Div0|auto_generated|divider|divider|StageOut[77]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[77]~83_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_23~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~21_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[77]~83_combout\);

-- Location: LABCELL_X23_Y29_N36
\pwm|Div0|auto_generated|divider|divider|StageOut[77]~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[77]~89_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[68]~88_combout\ ) ) # ( 
-- \pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|StageOut[68]~88_combout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[68]~84_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~84_combout\,
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~88_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[77]~89_combout\);

-- Location: MLABCELL_X21_Y29_N30
\pwm|Div0|auto_generated|divider|divider|StageOut[76]~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[76]~91_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_23~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~25_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[76]~91_combout\);

-- Location: MLABCELL_X21_Y29_N6
\pwm|Div0|auto_generated|divider|divider|StageOut[76]~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[76]~96_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[67]~95_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~95_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[76]~96_combout\);

-- Location: MLABCELL_X21_Y29_N45
\pwm|Div0|auto_generated|divider|divider|StageOut[75]~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[75]~113_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[66]~112_combout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[66]~109_combout\) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_23~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~109_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~112_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~33_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[75]~113_combout\);

-- Location: MLABCELL_X21_Y29_N57
\pwm|Div0|auto_generated|divider|divider|StageOut[74]~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[74]~100_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_23~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~29_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[74]~100_combout\);

-- Location: MLABCELL_X21_Y29_N18
\pwm|Div0|auto_generated|divider|divider|StageOut[74]~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[74]~103_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[65]~102_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~102_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[74]~103_combout\);

-- Location: LABCELL_X19_Y28_N24
\pwm|Div0|auto_generated|divider|divider|StageOut[73]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[73]~13_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_23~9_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|StageOut[64]~12_combout\ ) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_23~9_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|StageOut[64]~12_combout\ ) ) ) # ( \pwm|Div0|auto_generated|divider|divider|op_23~9_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~12_combout\,
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~9_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[73]~13_combout\);

-- Location: LABCELL_X16_Y29_N15
\pwm|Div0|auto_generated|divider|divider|StageOut[72]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[72]~21_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_23~13_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( \pwm|Mult0~21\ ) ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_23~13_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & ( \pwm|Mult0~21\ ) ) ) # ( \pwm|Div0|auto_generated|divider|divider|op_23~13_sumout\ & ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_Mult0~21\,
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~13_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[72]~21_combout\);

-- Location: LABCELL_X19_Y29_N0
\pwm|Div0|auto_generated|divider|divider|op_4~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_4~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_4~38_cout\);

-- Location: LABCELL_X19_Y29_N3
\pwm|Div0|auto_generated|divider|divider|op_4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_4~21_sumout\ = SUM(( \pwm|Mult0~19\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_4~22\ = CARRY(( \pwm|Mult0~19\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~19\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_4~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_4~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_4~22\);

-- Location: LABCELL_X19_Y29_N6
\pwm|Div0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_3~17_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\pwm|Mult0~20\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_4~18\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_3~17_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\pwm|Mult0~20\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~20\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_4~22\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_4~18\);

-- Location: LABCELL_X19_Y29_N9
\pwm|Div0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_3~13_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[72]~21_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_4~14\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_3~13_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[72]~21_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[72]~21_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_4~18\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_4~14\);

-- Location: LABCELL_X19_Y29_N12
\pwm|Div0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_3~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[73]~13_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~14\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_4~10\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_3~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[73]~13_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[73]~13_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_4~14\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_4~10\);

-- Location: LABCELL_X19_Y29_N15
\pwm|Div0|auto_generated|divider|divider|op_4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_4~29_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_3~29_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[74]~103_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[74]~100_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~10\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_4~30\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_3~29_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[74]~103_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[74]~100_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~100_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~29_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~103_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_4~10\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_4~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_4~30\);

-- Location: LABCELL_X19_Y29_N18
\pwm|Div0|auto_generated|divider|divider|op_4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_4~33_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_3~33_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[75]~113_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_4~34\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_3~33_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[75]~113_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~113_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~33_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_4~30\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_4~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_4~34\);

-- Location: LABCELL_X19_Y29_N21
\pwm|Div0|auto_generated|divider|divider|op_4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_4~25_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_3~25_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[76]~96_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[76]~91_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~34\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_4~26\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_3~25_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[76]~96_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[76]~91_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~91_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~25_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~96_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_4~34\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_4~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_4~26\);

-- Location: LABCELL_X19_Y29_N24
\pwm|Div0|auto_generated|divider|divider|op_4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_4~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_3~21_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[77]~89_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[77]~83_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~83_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~21_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~89_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_4~26\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_4~6_cout\);

-- Location: LABCELL_X19_Y29_N27
\pwm|Div0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_4~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_4~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\);

-- Location: LABCELL_X19_Y28_N36
\pwm|LessThan2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~10_combout\ = ( \pwm|pwm_counter\(13) & ( \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( (((\pwm|pwm_counter\(12) & \pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\)) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\)) # (\pwm|pwm_counter\(14)) ) ) ) # ( !\pwm|pwm_counter\(13) & ( \pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( ((\pwm|pwm_counter\(12) & 
-- (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & \pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\))) # (\pwm|pwm_counter\(14)) ) ) ) # ( \pwm|pwm_counter\(13) & ( !\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( 
-- (\pwm|pwm_counter\(14) & (((\pwm|pwm_counter\(12) & \pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\))) ) ) ) # ( !\pwm|pwm_counter\(13) & ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_22~1_sumout\ & ( (\pwm|pwm_counter\(12) & (\pwm|pwm_counter\(14) & (\pwm|Div0|auto_generated|divider|divider|op_23~1_sumout\ & \pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000110001001100110011001101110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(12),
	datab => \pwm|ALT_INV_pwm_counter\(14),
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_23~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datae => \pwm|ALT_INV_pwm_counter\(13),
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_22~1_sumout\,
	combout => \pwm|LessThan2~10_combout\);

-- Location: MLABCELL_X21_Y29_N54
\pwm|Div0|auto_generated|divider|divider|StageOut[85]~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[85]~90_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_3~25_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~25_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[85]~90_combout\);

-- Location: MLABCELL_X21_Y29_N27
\pwm|Div0|auto_generated|divider|divider|StageOut[85]~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[85]~97_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[76]~96_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|StageOut[76]~96_combout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[76]~91_combout\ & \pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~91_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~96_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[85]~97_combout\);

-- Location: LABCELL_X19_Y30_N30
\pwm|Div0|auto_generated|divider|divider|StageOut[84]~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[84]~108_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_3~33_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~33_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[84]~108_combout\);

-- Location: LABCELL_X19_Y30_N27
\pwm|Div0|auto_generated|divider|divider|StageOut[84]~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[84]~114_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[75]~113_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~113_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[84]~114_combout\);

-- Location: MLABCELL_X21_Y29_N3
\pwm|Div0|auto_generated|divider|divider|StageOut[83]~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[83]~104_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[74]~103_combout\ & ( (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_3~29_sumout\) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|StageOut[74]~103_combout\ & ( (!\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- ((\pwm|Div0|auto_generated|divider|divider|op_3~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|StageOut[74]~100_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~100_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~29_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~103_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[83]~104_combout\);

-- Location: LABCELL_X19_Y28_N42
\pwm|Div0|auto_generated|divider|divider|StageOut[82]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[82]~11_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_3~9_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[82]~11_combout\);

-- Location: LABCELL_X19_Y28_N15
\pwm|Div0|auto_generated|divider|divider|StageOut[82]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[82]~14_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[73]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[73]~13_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[82]~14_combout\);

-- Location: LABCELL_X17_Y29_N33
\pwm|Div0|auto_generated|divider|divider|StageOut[81]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[81]~22_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[72]~21_combout\ ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_3~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[72]~21_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[81]~22_combout\);

-- Location: LABCELL_X17_Y29_N0
\pwm|Div0|auto_generated|divider|divider|StageOut[80]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[80]~30_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( \pwm|Mult0~20\ ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|op_3~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\,
	datad => \pwm|ALT_INV_Mult0~20\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[80]~30_combout\);

-- Location: LABCELL_X19_Y29_N30
\pwm|Div0|auto_generated|divider|divider|op_5~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_5~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_5~38_cout\);

-- Location: LABCELL_X19_Y29_N33
\pwm|Div0|auto_generated|divider|divider|op_5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_5~25_sumout\ = SUM(( \pwm|Mult0~18\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_5~26\ = CARRY(( \pwm|Mult0~18\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~18\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_5~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_5~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_5~26\);

-- Location: LABCELL_X19_Y29_N36
\pwm|Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_4~21_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\pwm|Mult0~19\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_4~21_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\pwm|Mult0~19\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~19\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_5~26\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X19_Y29_N39
\pwm|Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_4~17_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[80]~30_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_4~17_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[80]~30_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[80]~30_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X19_Y29_N42
\pwm|Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_4~13_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[81]~22_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_4~13_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[81]~22_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~22_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_5~18\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X19_Y29_N45
\pwm|Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_4~9_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[82]~14_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[82]~11_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~14\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_4~9_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[82]~14_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[82]~11_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~11_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~14_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_5~14\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X19_Y29_N48
\pwm|Div0|auto_generated|divider|divider|op_5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_5~33_sumout\ = SUM(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_4~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ 
-- & (\pwm|Div0|auto_generated|divider|divider|StageOut[83]~104_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~10\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_5~34\ = CARRY(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_4~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[83]~104_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[83]~104_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~29_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_5~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_5~34\);

-- Location: LABCELL_X19_Y29_N51
\pwm|Div0|auto_generated|divider|divider|op_5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_5~29_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_4~33_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[84]~114_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[84]~108_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~34\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_5~30\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_4~33_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[84]~114_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[84]~108_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~108_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~33_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~114_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_5~34\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_5~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_5~30\);

-- Location: LABCELL_X19_Y29_N54
\pwm|Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_4~25_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[85]~97_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[85]~90_combout\)))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~25_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~90_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~97_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_5~30\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_5~6_cout\);

-- Location: LABCELL_X19_Y29_N57
\pwm|Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: MLABCELL_X21_Y27_N57
\pwm|LessThan2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~11_combout\ = ( !\pwm|LessThan2~10_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\pwm|LessThan2~3_combout\) # ((!\pwm|pwm_counter\(11) & ((!\pwm|pwm_counter\(10)) # 
-- (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\))) # (\pwm|pwm_counter\(11) & (!\pwm|pwm_counter\(10) & !\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\))) ) ) ) # ( !\pwm|LessThan2~10_combout\ & ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\pwm|pwm_counter\(11)) # ((!\pwm|LessThan2~3_combout\) # (!\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110000000000000000011111110111011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(11),
	datab => \pwm|ALT_INV_LessThan2~3_combout\,
	datac => \pwm|ALT_INV_pwm_counter\(10),
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datae => \pwm|ALT_INV_LessThan2~10_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \pwm|LessThan2~11_combout\);

-- Location: LABCELL_X19_Y30_N6
\pwm|Div0|auto_generated|divider|divider|StageOut[93]~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[93]~107_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_4~33_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~33_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[93]~107_combout\);

-- Location: LABCELL_X19_Y30_N51
\pwm|Div0|auto_generated|divider|divider|StageOut[93]~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[93]~115_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[84]~114_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|StageOut[84]~114_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[84]~108_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~108_combout\,
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~114_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[93]~115_combout\);

-- Location: LABCELL_X17_Y29_N54
\pwm|Div0|auto_generated|divider|divider|StageOut[92]~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[92]~99_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_4~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~29_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[92]~99_combout\);

-- Location: MLABCELL_X21_Y29_N0
\pwm|Div0|auto_generated|divider|divider|StageOut[92]~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[92]~105_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[83]~104_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[83]~104_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[92]~105_combout\);

-- Location: LABCELL_X19_Y28_N57
\pwm|Div0|auto_generated|divider|divider|StageOut[91]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[91]~15_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_4~9_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[82]~11_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[82]~14_combout\) ) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_4~9_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[82]~11_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[82]~14_combout\) ) ) ) # ( 
-- \pwm|Div0|auto_generated|divider|divider|op_4~9_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~14_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~11_combout\,
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[91]~15_combout\);

-- Location: LABCELL_X17_Y29_N39
\pwm|Div0|auto_generated|divider|divider|StageOut[90]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[90]~20_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_4~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[90]~20_combout\);

-- Location: LABCELL_X17_Y29_N12
\pwm|Div0|auto_generated|divider|divider|StageOut[90]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[90]~23_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[81]~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~22_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[90]~23_combout\);

-- Location: LABCELL_X17_Y29_N21
\pwm|Div0|auto_generated|divider|divider|StageOut[89]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[89]~31_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[80]~30_combout\ ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_4~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[80]~30_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[89]~31_combout\);

-- Location: LABCELL_X19_Y28_N21
\pwm|Div0|auto_generated|divider|divider|StageOut[88]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[88]~39_combout\ = ( \pwm|Mult0~19\ & ( \pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ ) ) # ( \pwm|Mult0~19\ & ( !\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|op_4~21_sumout\ ) ) ) # ( !\pwm|Mult0~19\ & ( !\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_4~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\,
	datae => \pwm|ALT_INV_Mult0~19\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[88]~39_combout\);

-- Location: LABCELL_X18_Y29_N30
\pwm|Div0|auto_generated|divider|divider|op_6~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_6~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_6~38_cout\);

-- Location: LABCELL_X18_Y29_N33
\pwm|Div0|auto_generated|divider|divider|op_6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_6~29_sumout\ = SUM(( \pwm|Mult0~17\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_6~30\ = CARRY(( \pwm|Mult0~17\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~17\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_6~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_6~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_6~30\);

-- Location: LABCELL_X18_Y29_N36
\pwm|Div0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_5~25_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\pwm|Mult0~18\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_6~26\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_5~25_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\pwm|Mult0~18\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \pwm|ALT_INV_Mult0~18\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_6~30\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_6~26\);

-- Location: LABCELL_X18_Y29_N39
\pwm|Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[88]~39_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[88]~39_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[88]~39_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_6~26\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_6~22\);

-- Location: LABCELL_X18_Y29_N42
\pwm|Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[89]~31_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_5~17_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[89]~31_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[89]~31_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X18_Y29_N45
\pwm|Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_5~13_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[90]~23_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[90]~20_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_5~13_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[90]~23_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[90]~20_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~20_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~23_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_6~18\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X18_Y29_N48
\pwm|Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[91]~15_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~14\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[91]~15_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[91]~15_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X18_Y29_N51
\pwm|Div0|auto_generated|divider|divider|op_6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_6~33_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_5~33_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[92]~105_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[92]~99_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~10\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_6~34\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_5~33_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[92]~105_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[92]~99_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~99_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~33_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~105_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_6~10\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_6~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_6~34\);

-- Location: LABCELL_X18_Y29_N54
\pwm|Div0|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_5~29_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[93]~115_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[93]~107_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[93]~107_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~29_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[93]~115_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_6~34\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_6~6_cout\);

-- Location: LABCELL_X18_Y29_N57
\pwm|Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: MLABCELL_X21_Y27_N24
\pwm|LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~4_combout\ = ( !\pwm|pwm_counter\(11) & ( \pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ ) ) # ( \pwm|pwm_counter\(11) & ( !\pwm|Div0|auto_generated|divider|divider|op_4~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|ALT_INV_pwm_counter\(11),
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \pwm|LessThan2~4_combout\);

-- Location: MLABCELL_X21_Y27_N36
\pwm|LessThan2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~9_combout\ = ( \pwm|LessThan2~3_combout\ & ( (\pwm|LessThan2~4_combout\ & (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ $ (!\pwm|pwm_counter\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \pwm|ALT_INV_pwm_counter\(10),
	datac => \pwm|ALT_INV_LessThan2~4_combout\,
	dataf => \pwm|ALT_INV_LessThan2~3_combout\,
	combout => \pwm|LessThan2~9_combout\);

-- Location: LABCELL_X17_Y29_N3
\pwm|Div0|auto_generated|divider|divider|StageOut[101]~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[101]~98_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_5~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~33_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[101]~98_combout\);

-- Location: MLABCELL_X21_Y29_N15
\pwm|Div0|auto_generated|divider|divider|StageOut[101]~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[101]~106_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[92]~99_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|StageOut[92]~99_combout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[92]~105_combout\ & \pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~105_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~99_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[101]~106_combout\);

-- Location: LABCELL_X18_Y28_N54
\pwm|Div0|auto_generated|divider|divider|StageOut[100]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[100]~10_combout\ = (\pwm|Div0|auto_generated|divider|divider|op_5~9_sumout\ & !\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[100]~10_combout\);

-- Location: LABCELL_X19_Y28_N6
\pwm|Div0|auto_generated|divider|divider|StageOut[100]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[100]~16_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[91]~15_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[91]~15_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[100]~16_combout\);

-- Location: LABCELL_X17_Y29_N15
\pwm|Div0|auto_generated|divider|divider|StageOut[99]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[99]~24_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[90]~23_combout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[90]~20_combout\) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_5~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~20_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~23_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[99]~24_combout\);

-- Location: LABCELL_X17_Y29_N51
\pwm|Div0|auto_generated|divider|divider|StageOut[98]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[98]~29_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_5~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[98]~29_combout\);

-- Location: LABCELL_X17_Y29_N42
\pwm|Div0|auto_generated|divider|divider|StageOut[98]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[98]~32_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[89]~31_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[89]~31_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[98]~32_combout\);

-- Location: LABCELL_X19_Y28_N48
\pwm|Div0|auto_generated|divider|divider|StageOut[97]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[97]~40_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|StageOut[88]~39_combout\ ) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|StageOut[88]~39_combout\ ) ) ) # ( \pwm|Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[88]~39_combout\,
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[97]~40_combout\);

-- Location: LABCELL_X18_Y28_N51
\pwm|Div0|auto_generated|divider|divider|StageOut[96]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[96]~48_combout\ = (!\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_5~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\pwm|Mult0~18\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~18\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[96]~48_combout\);

-- Location: LABCELL_X18_Y29_N0
\pwm|Div0|auto_generated|divider|divider|op_7~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_7~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_7~38_cout\);

-- Location: LABCELL_X18_Y29_N3
\pwm|Div0|auto_generated|divider|divider|op_7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_7~33_sumout\ = SUM(( \pwm|Mult0~16\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_7~34\ = CARRY(( \pwm|Mult0~16\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~16\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_7~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_7~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_7~34\);

-- Location: LABCELL_X18_Y29_N6
\pwm|Div0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_6~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ 
-- & (\pwm|Mult0~17\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~34\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_7~30\ = CARRY(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_6~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\pwm|Mult0~17\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~17\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_7~34\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_7~30\);

-- Location: LABCELL_X18_Y29_N9
\pwm|Div0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_6~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[96]~48_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_7~26\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_6~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[96]~48_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[96]~48_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_7~30\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_7~26\);

-- Location: LABCELL_X18_Y29_N12
\pwm|Div0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_6~21_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ 
-- & (\pwm|Div0|auto_generated|divider|divider|StageOut[97]~40_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_7~22\ = CARRY(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_6~21_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[97]~40_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[97]~40_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_7~26\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_7~22\);

-- Location: LABCELL_X18_Y29_N15
\pwm|Div0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_6~17_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[98]~32_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[98]~29_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_7~18\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_6~17_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[98]~32_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[98]~29_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[98]~29_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[98]~32_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_7~22\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_7~18\);

-- Location: LABCELL_X18_Y29_N18
\pwm|Div0|auto_generated|divider|divider|op_7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_7~13_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[99]~24_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_7~14\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_6~13_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[99]~24_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[99]~24_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_7~18\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_7~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_7~14\);

-- Location: LABCELL_X18_Y29_N21
\pwm|Div0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_6~9_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[100]~16_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[100]~10_combout\)))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~14\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_7~10\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_6~9_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[100]~16_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[100]~10_combout\)))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~10_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~16_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_7~14\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_7~10\);

-- Location: LABCELL_X18_Y29_N24
\pwm|Div0|auto_generated|divider|divider|op_7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_7~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_6~33_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[101]~106_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[101]~98_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~98_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~33_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~106_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_7~10\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_7~6_cout\);

-- Location: LABCELL_X18_Y29_N27
\pwm|Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_7~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_7~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: MLABCELL_X21_Y27_N48
\pwm|LessThan2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~12_combout\ = ( \pwm|LessThan2~9_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\pwm|LessThan2~11_combout\ & ((!\pwm|pwm_counter\(9) & ((!\pwm|pwm_counter\(8)) # 
-- (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\))) # (\pwm|pwm_counter\(9) & (!\pwm|pwm_counter\(8) & !\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\)))) ) ) ) # ( !\pwm|LessThan2~9_combout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \pwm|LessThan2~11_combout\ ) ) ) # ( \pwm|LessThan2~9_combout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\pwm|LessThan2~11_combout\ & ((!\pwm|pwm_counter\(9)) # 
-- (!\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\))) ) ) ) # ( !\pwm|LessThan2~9_combout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \pwm|LessThan2~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010001000110011001100110011001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(9),
	datab => \pwm|ALT_INV_LessThan2~11_combout\,
	datac => \pwm|ALT_INV_pwm_counter\(8),
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datae => \pwm|ALT_INV_LessThan2~9_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \pwm|LessThan2~12_combout\);

-- Location: LABCELL_X17_Y29_N30
\pwm|Div0|auto_generated|divider|divider|StageOut[109]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[109]~9_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_6~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[109]~9_combout\);

-- Location: LABCELL_X18_Y28_N33
\pwm|Div0|auto_generated|divider|divider|StageOut[109]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[109]~17_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[100]~16_combout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[100]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~10_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~16_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[109]~17_combout\);

-- Location: LABCELL_X17_Y29_N36
\pwm|Div0|auto_generated|divider|divider|StageOut[108]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[108]~19_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_6~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[108]~19_combout\);

-- Location: LABCELL_X17_Y29_N18
\pwm|Div0|auto_generated|divider|divider|StageOut[108]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[108]~25_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[99]~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[99]~24_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[108]~25_combout\);

-- Location: LABCELL_X17_Y29_N45
\pwm|Div0|auto_generated|divider|divider|StageOut[107]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[107]~33_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[98]~32_combout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[98]~29_combout\) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_6~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[98]~29_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[98]~32_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[107]~33_combout\);

-- Location: LABCELL_X18_Y28_N9
\pwm|Div0|auto_generated|divider|divider|StageOut[106]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[106]~38_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_6~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[106]~38_combout\);

-- Location: LABCELL_X18_Y28_N36
\pwm|Div0|auto_generated|divider|divider|StageOut[106]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[106]~41_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[97]~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[97]~40_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[106]~41_combout\);

-- Location: LABCELL_X18_Y28_N0
\pwm|Div0|auto_generated|divider|divider|StageOut[105]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[105]~49_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[96]~48_combout\ ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_6~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[96]~48_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[105]~49_combout\);

-- Location: LABCELL_X17_Y29_N6
\pwm|Div0|auto_generated|divider|divider|StageOut[104]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[104]~57_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \pwm|Mult0~17\ ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|op_6~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~17\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[104]~57_combout\);

-- Location: LABCELL_X17_Y28_N0
\pwm|Div0|auto_generated|divider|divider|op_8~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_8~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_8~38_cout\);

-- Location: LABCELL_X17_Y28_N3
\pwm|Div0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( \pwm|Mult0~15\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_8~10\ = CARRY(( \pwm|Mult0~15\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~15\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_8~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_8~10\);

-- Location: LABCELL_X17_Y28_N6
\pwm|Div0|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_7~33_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\pwm|Mult0~16\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~10\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_8~34\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_7~33_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\pwm|Mult0~16\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~16\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_8~10\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_8~34\);

-- Location: LABCELL_X17_Y28_N9
\pwm|Div0|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_7~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[104]~57_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~34\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_8~30\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_7~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[104]~57_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[104]~57_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_8~34\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_8~30\);

-- Location: LABCELL_X17_Y28_N12
\pwm|Div0|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_7~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[105]~49_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_8~26\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_7~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[105]~49_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~49_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_8~30\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_8~26\);

-- Location: LABCELL_X17_Y28_N15
\pwm|Div0|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_7~21_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[106]~41_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[106]~38_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_8~22\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_7~21_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[106]~41_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[106]~38_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[106]~38_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[106]~41_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_8~26\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_8~22\);

-- Location: LABCELL_X17_Y28_N18
\pwm|Div0|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_7~17_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[107]~33_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_8~18\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_7~17_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[107]~33_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[107]~33_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_8~22\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_8~18\);

-- Location: LABCELL_X17_Y28_N21
\pwm|Div0|auto_generated|divider|divider|op_8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_8~13_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_7~13_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[108]~25_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[108]~19_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_8~14\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_7~13_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[108]~25_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[108]~19_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[108]~19_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[108]~25_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_8~18\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_8~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_8~14\);

-- Location: LABCELL_X17_Y28_N24
\pwm|Div0|auto_generated|divider|divider|op_8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_8~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_7~9_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[109]~17_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[109]~9_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[109]~9_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[109]~17_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_8~14\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_8~6_cout\);

-- Location: LABCELL_X17_Y28_N27
\pwm|Div0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_8~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_8~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X18_Y28_N39
\pwm|Div0|auto_generated|divider|divider|StageOut[115]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[115]~42_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_7~21_sumout\ & ( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\) # 
-- ((\pwm|Div0|auto_generated|divider|divider|StageOut[106]~41_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[106]~38_combout\)) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_7~21_sumout\ & ( 
-- (\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|StageOut[106]~41_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[106]~38_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010110111011111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[106]~38_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[106]~41_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[115]~42_combout\);

-- Location: LABCELL_X18_Y28_N12
\pwm|Div0|auto_generated|divider|divider|StageOut[114]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[114]~47_combout\ = (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & \pwm|Div0|auto_generated|divider|divider|op_7~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[114]~47_combout\);

-- Location: LABCELL_X18_Y28_N27
\pwm|Div0|auto_generated|divider|divider|StageOut[114]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[114]~50_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[105]~49_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~49_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[114]~50_combout\);

-- Location: LABCELL_X17_Y29_N57
\pwm|Div0|auto_generated|divider|divider|StageOut[113]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[113]~58_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[104]~57_combout\ ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_7~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[104]~57_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[113]~58_combout\);

-- Location: LABCELL_X18_Y28_N45
\pwm|Div0|auto_generated|divider|divider|StageOut[112]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[112]~66_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_7~33_sumout\ & ( (!\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\) # (\pwm|Mult0~16\) ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_7~33_sumout\ & ( (\pwm|Mult0~16\ & \pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_Mult0~16\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[112]~66_combout\);

-- Location: LABCELL_X17_Y28_N30
\pwm|Div0|auto_generated|divider|divider|op_9~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_9~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_9~38_cout\);

-- Location: LABCELL_X17_Y28_N33
\pwm|Div0|auto_generated|divider|divider|op_9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_9~33_sumout\ = SUM(( \pwm|Mult0~14\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_9~34\ = CARRY(( \pwm|Mult0~14\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_Mult0~14\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_9~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_9~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_9~34\);

-- Location: LABCELL_X17_Y28_N36
\pwm|Div0|auto_generated|divider|divider|op_9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_9~9_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_8~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\pwm|Mult0~15\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~34\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_9~10\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_8~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\pwm|Mult0~15\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_Mult0~15\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_9~34\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_9~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_9~10\);

-- Location: LABCELL_X17_Y28_N39
\pwm|Div0|auto_generated|divider|divider|op_9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_9~29_sumout\ = SUM(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_8~33_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ 
-- & (\pwm|Div0|auto_generated|divider|divider|StageOut[112]~66_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~10\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_9~30\ = CARRY(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_8~33_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[112]~66_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~66_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_9~10\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_9~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_9~30\);

-- Location: LABCELL_X17_Y28_N42
\pwm|Div0|auto_generated|divider|divider|op_9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_9~25_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_8~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[113]~58_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_9~26\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_8~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[113]~58_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[113]~58_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_9~30\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_9~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_9~26\);

-- Location: LABCELL_X17_Y28_N45
\pwm|Div0|auto_generated|divider|divider|op_9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_9~21_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_8~25_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[114]~50_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[114]~47_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_9~22\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_8~25_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[114]~50_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[114]~47_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[114]~47_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[114]~50_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_9~26\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_9~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_9~22\);

-- Location: LABCELL_X17_Y28_N48
\pwm|Div0|auto_generated|divider|divider|op_9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_9~17_sumout\ = SUM(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_8~21_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ 
-- & (\pwm|Div0|auto_generated|divider|divider|StageOut[115]~42_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_9~18\ = CARRY(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_8~21_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[115]~42_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[115]~42_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_9~22\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_9~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_9~18\);

-- Location: LABCELL_X17_Y29_N9
\pwm|Div0|auto_generated|divider|divider|StageOut[117]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[117]~18_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_7~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~13_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[117]~18_combout\);

-- Location: LABCELL_X16_Y29_N9
\pwm|Div0|auto_generated|divider|divider|StageOut[117]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[117]~26_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[108]~25_combout\ ) ) # ( 
-- \pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|StageOut[108]~25_combout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[108]~19_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[108]~19_combout\,
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[108]~25_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[117]~26_combout\);

-- Location: LABCELL_X17_Y29_N48
\pwm|Div0|auto_generated|divider|divider|StageOut[116]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[116]~28_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_7~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[116]~28_combout\);

-- Location: LABCELL_X17_Y29_N24
\pwm|Div0|auto_generated|divider|divider|StageOut[116]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[116]~34_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[107]~33_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[107]~33_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[116]~34_combout\);

-- Location: LABCELL_X17_Y28_N51
\pwm|Div0|auto_generated|divider|divider|op_9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_9~13_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_8~17_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[116]~34_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[116]~28_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_9~14\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_8~17_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[116]~34_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[116]~28_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[116]~28_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[116]~34_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_9~18\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_9~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_9~14\);

-- Location: LABCELL_X17_Y28_N54
\pwm|Div0|auto_generated|divider|divider|op_9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_9~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_8~13_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[117]~26_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[117]~18_combout\)))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~13_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~18_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~26_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_9~14\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_9~6_cout\);

-- Location: LABCELL_X17_Y28_N57
\pwm|Div0|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_9~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_9~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\);

-- Location: MLABCELL_X15_Y28_N27
\pwm|Div0|auto_generated|divider|divider|StageOut[133]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[133]~36_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_9~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[133]~36_combout\);

-- Location: MLABCELL_X15_Y28_N33
\pwm|Div0|auto_generated|divider|divider|StageOut[125]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[125]~27_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_8~17_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[125]~27_combout\);

-- Location: LABCELL_X17_Y29_N27
\pwm|Div0|auto_generated|divider|divider|StageOut[125]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[125]~35_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[116]~34_combout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[116]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[116]~28_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[116]~34_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[125]~35_combout\);

-- Location: LABCELL_X18_Y28_N6
\pwm|Div0|auto_generated|divider|divider|StageOut[124]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[124]~37_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_8~21_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[124]~37_combout\);

-- Location: LABCELL_X18_Y28_N42
\pwm|Div0|auto_generated|divider|divider|StageOut[124]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[124]~43_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[115]~42_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[115]~42_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[124]~43_combout\);

-- Location: LABCELL_X18_Y28_N24
\pwm|Div0|auto_generated|divider|divider|StageOut[123]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[123]~51_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[114]~47_combout\ & ( (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_8~25_sumout\) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|StageOut[114]~47_combout\ & ( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- ((\pwm|Div0|auto_generated|divider|divider|op_8~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|StageOut[114]~50_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[114]~50_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[114]~47_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[123]~51_combout\);

-- Location: MLABCELL_X15_Y28_N24
\pwm|Div0|auto_generated|divider|divider|StageOut[122]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[122]~56_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_8~29_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[122]~56_combout\);

-- Location: LABCELL_X16_Y29_N42
\pwm|Div0|auto_generated|divider|divider|StageOut[122]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[122]~59_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[113]~58_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[113]~58_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[122]~59_combout\);

-- Location: LABCELL_X18_Y28_N30
\pwm|Div0|auto_generated|divider|divider|StageOut[121]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[121]~67_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_8~33_sumout\ & ( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[112]~66_combout\) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_8~33_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[112]~66_combout\ & 
-- \pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~66_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[121]~67_combout\);

-- Location: LABCELL_X18_Y28_N18
\pwm|Div0|auto_generated|divider|divider|StageOut[120]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[120]~3_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_8~9_sumout\ & ( (!\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\) # (\pwm|Mult0~15\) ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_8~9_sumout\ & ( (\pwm|Mult0~15\ & \pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_Mult0~15\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[120]~3_combout\);

-- Location: LABCELL_X16_Y28_N30
\pwm|Div0|auto_generated|divider|divider|op_10~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_10~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_10~38_cout\);

-- Location: LABCELL_X16_Y28_N33
\pwm|Div0|auto_generated|divider|divider|op_10~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_10~33_sumout\ = SUM(( \pwm|Mult0~13\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_10~34\ = CARRY(( \pwm|Mult0~13\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_Mult0~13\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_10~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_10~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_10~34\);

-- Location: LABCELL_X16_Y28_N36
\pwm|Div0|auto_generated|divider|divider|op_10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_10~29_sumout\ = SUM(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_9~33_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\pwm|Mult0~14\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~34\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_10~30\ = CARRY(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_9~33_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\pwm|Mult0~14\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \pwm|ALT_INV_Mult0~14\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_10~34\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_10~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_10~30\);

-- Location: LABCELL_X16_Y28_N39
\pwm|Div0|auto_generated|divider|divider|op_10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_10~9_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_9~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[120]~3_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_10~10\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_9~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[120]~3_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~3_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_10~30\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_10~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_10~10\);

-- Location: LABCELL_X16_Y28_N42
\pwm|Div0|auto_generated|divider|divider|op_10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_10~25_sumout\ = SUM(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_9~29_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|StageOut[121]~67_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~10\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_10~26\ = CARRY(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_9~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[121]~67_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~67_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_10~10\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_10~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_10~26\);

-- Location: LABCELL_X16_Y28_N45
\pwm|Div0|auto_generated|divider|divider|op_10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_10~21_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_9~25_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[122]~59_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[122]~56_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_10~22\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_9~25_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[122]~59_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[122]~56_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~56_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~59_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_10~26\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_10~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_10~22\);

-- Location: LABCELL_X16_Y28_N48
\pwm|Div0|auto_generated|divider|divider|op_10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_10~17_sumout\ = SUM(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_9~21_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|StageOut[123]~51_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_10~18\ = CARRY(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_9~21_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[123]~51_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[123]~51_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_10~22\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_10~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_10~18\);

-- Location: LABCELL_X16_Y28_N51
\pwm|Div0|auto_generated|divider|divider|op_10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_10~13_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_9~17_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[124]~43_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[124]~37_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_10~14\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_9~17_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[124]~43_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[124]~37_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[124]~37_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[124]~43_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_10~18\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_10~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_10~14\);

-- Location: LABCELL_X16_Y28_N54
\pwm|Div0|auto_generated|divider|divider|op_10~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_10~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_9~13_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[125]~35_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[125]~27_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[125]~27_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~13_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[125]~35_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_10~14\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_10~6_cout\);

-- Location: LABCELL_X16_Y28_N57
\pwm|Div0|auto_generated|divider|divider|op_10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_10~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_10~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\);

-- Location: LABCELL_X18_Y28_N15
\pwm|Div0|auto_generated|divider|divider|StageOut[133]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[133]~44_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[124]~43_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|StageOut[124]~43_combout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[124]~37_combout\ & \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[124]~37_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[124]~43_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[133]~44_combout\);

-- Location: LABCELL_X18_Y28_N21
\pwm|Div0|auto_generated|divider|divider|StageOut[132]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[132]~46_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_9~21_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[132]~46_combout\);

-- Location: LABCELL_X18_Y28_N3
\pwm|Div0|auto_generated|divider|divider|StageOut[132]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[132]~52_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[123]~51_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[123]~51_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[132]~52_combout\);

-- Location: MLABCELL_X15_Y28_N39
\pwm|Div0|auto_generated|divider|divider|StageOut[131]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[131]~60_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[122]~59_combout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[122]~56_combout\) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_9~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~56_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~59_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[131]~60_combout\);

-- Location: MLABCELL_X15_Y28_N45
\pwm|Div0|auto_generated|divider|divider|StageOut[130]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[130]~65_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_9~29_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[130]~65_combout\);

-- Location: LABCELL_X18_Y28_N57
\pwm|Div0|auto_generated|divider|divider|StageOut[130]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[130]~68_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[121]~67_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~67_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[130]~68_combout\);

-- Location: MLABCELL_X15_Y28_N0
\pwm|Div0|auto_generated|divider|divider|StageOut[129]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[129]~4_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[120]~3_combout\ ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_9~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~3_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[129]~4_combout\);

-- Location: MLABCELL_X15_Y28_N42
\pwm|Div0|auto_generated|divider|divider|StageOut[128]~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[128]~118_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ( \pwm|Mult0~14\ ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|op_9~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\,
	datad => \pwm|ALT_INV_Mult0~14\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[128]~118_combout\);

-- Location: LABCELL_X16_Y28_N0
\pwm|Div0|auto_generated|divider|divider|op_11~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_11~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_11~38_cout\);

-- Location: LABCELL_X16_Y28_N3
\pwm|Div0|auto_generated|divider|divider|op_11~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_11~33_sumout\ = SUM(( \pwm|Mult0~12\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_11~34\ = CARRY(( \pwm|Mult0~12\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_Mult0~12\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_11~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_11~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_11~34\);

-- Location: LABCELL_X16_Y28_N6
\pwm|Div0|auto_generated|divider|divider|op_11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_11~29_sumout\ = SUM(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_10~33_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\pwm|Mult0~13\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~34\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_11~30\ = CARRY(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_10~33_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ 
-- & (\pwm|Mult0~13\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~13\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_11~34\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_11~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_11~30\);

-- Location: LABCELL_X16_Y28_N9
\pwm|Div0|auto_generated|divider|divider|op_11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_11~25_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_10~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[128]~118_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_11~26\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_10~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[128]~118_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[128]~118_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_11~30\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_11~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_11~26\);

-- Location: LABCELL_X16_Y28_N12
\pwm|Div0|auto_generated|divider|divider|op_11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_11~9_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_10~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[129]~4_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_11~10\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_10~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[129]~4_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[129]~4_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_11~26\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_11~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_11~10\);

-- Location: LABCELL_X16_Y28_N15
\pwm|Div0|auto_generated|divider|divider|op_11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_11~21_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_10~25_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[130]~68_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[130]~65_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~10\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_11~22\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_10~25_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[130]~68_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[130]~65_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~65_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~68_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_11~10\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_11~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_11~22\);

-- Location: LABCELL_X16_Y28_N18
\pwm|Div0|auto_generated|divider|divider|op_11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_11~17_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_10~21_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[131]~60_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_11~18\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_10~21_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[131]~60_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[131]~60_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_11~22\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_11~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_11~18\);

-- Location: LABCELL_X16_Y28_N21
\pwm|Div0|auto_generated|divider|divider|op_11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_11~13_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_10~17_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[132]~52_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[132]~46_combout\)))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_11~14\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_10~17_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[132]~52_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[132]~46_combout\)))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~46_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~52_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_11~18\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_11~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_11~14\);

-- Location: LABCELL_X16_Y28_N24
\pwm|Div0|auto_generated|divider|divider|op_11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_11~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_10~13_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[133]~44_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[133]~36_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[133]~36_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[133]~44_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_11~14\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_11~6_cout\);

-- Location: LABCELL_X16_Y28_N27
\pwm|Div0|auto_generated|divider|divider|op_11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_11~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_11~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\);

-- Location: LABCELL_X19_Y27_N9
\pwm|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~2_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( ((!\pwm|pwm_counter[6]~DUPLICATE_q\ & (\pwm|pwm_counter\(5) & 
-- \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\)) # (\pwm|pwm_counter[6]~DUPLICATE_q\ & ((\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\) # (\pwm|pwm_counter\(5))))) # (\pwm|pwm_counter\(7)) ) ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( (\pwm|pwm_counter\(7) & ((!\pwm|pwm_counter[6]~DUPLICATE_q\ & (\pwm|pwm_counter\(5) & 
-- \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\)) # (\pwm|pwm_counter[6]~DUPLICATE_q\ & ((\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\) # (\pwm|pwm_counter\(5)))))) ) ) ) # ( \pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( ((\pwm|pwm_counter[6]~DUPLICATE_q\ & \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\)) # (\pwm|pwm_counter\(7)) ) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( (\pwm|pwm_counter\(7) & (\pwm|pwm_counter[6]~DUPLICATE_q\ & \pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001010101010111011100000001000101010101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(7),
	datab => \pwm|ALT_INV_pwm_counter[6]~DUPLICATE_q\,
	datac => \pwm|ALT_INV_pwm_counter\(5),
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \pwm|LessThan2~2_combout\);

-- Location: MLABCELL_X15_Y28_N15
\pwm|Div0|auto_generated|divider|divider|StageOut[141]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[141]~45_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_10~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[141]~45_combout\);

-- Location: LABCELL_X18_Y28_N48
\pwm|Div0|auto_generated|divider|divider|StageOut[141]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[141]~53_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[132]~52_combout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[132]~46_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~46_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~52_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[141]~53_combout\);

-- Location: MLABCELL_X15_Y28_N54
\pwm|Div0|auto_generated|divider|divider|StageOut[140]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[140]~55_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_10~21_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[140]~55_combout\);

-- Location: MLABCELL_X15_Y28_N36
\pwm|Div0|auto_generated|divider|divider|StageOut[140]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[140]~61_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[131]~60_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[131]~60_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[140]~61_combout\);

-- Location: MLABCELL_X15_Y28_N21
\pwm|Div0|auto_generated|divider|divider|StageOut[139]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[139]~69_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[130]~68_combout\ & ( (\pwm|Div0|auto_generated|divider|divider|op_10~25_sumout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|StageOut[130]~68_combout\ & ( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- ((\pwm|Div0|auto_generated|divider|divider|op_10~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|StageOut[130]~65_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~65_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~68_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[139]~69_combout\);

-- Location: MLABCELL_X15_Y28_N18
\pwm|Div0|auto_generated|divider|divider|StageOut[138]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[138]~2_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_10~9_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[138]~2_combout\);

-- Location: MLABCELL_X15_Y28_N51
\pwm|Div0|auto_generated|divider|divider|StageOut[138]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[138]~5_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[129]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[129]~4_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[138]~5_combout\);

-- Location: MLABCELL_X15_Y28_N57
\pwm|Div0|auto_generated|divider|divider|StageOut[137]~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[137]~119_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[128]~118_combout\ & ( (\pwm|Div0|auto_generated|divider|divider|op_10~29_sumout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|StageOut[128]~118_combout\ & ( (!\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- \pwm|Div0|auto_generated|divider|divider|op_10~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[128]~118_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[137]~119_combout\);

-- Location: LABCELL_X18_Y27_N24
\pwm|Div0|auto_generated|divider|divider|StageOut[136]~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[136]~128_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( \pwm|Mult0~13\ ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|op_10~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_Mult0~13\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[136]~128_combout\);

-- Location: MLABCELL_X15_Y27_N30
\pwm|Div0|auto_generated|divider|divider|op_12~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_12~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_12~38_cout\);

-- Location: MLABCELL_X15_Y27_N33
\pwm|Div0|auto_generated|divider|divider|op_12~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_12~33_sumout\ = SUM(( \pwm|Mult0~11\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_12~34\ = CARRY(( \pwm|Mult0~11\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_Mult0~11\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_12~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_12~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_12~34\);

-- Location: MLABCELL_X15_Y27_N36
\pwm|Div0|auto_generated|divider|divider|op_12~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_12~29_sumout\ = SUM(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_11~33_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (\pwm|Mult0~12\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~34\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_12~30\ = CARRY(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_11~33_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ 
-- & (\pwm|Mult0~12\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \pwm|ALT_INV_Mult0~12\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~33_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_12~34\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_12~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_12~30\);

-- Location: MLABCELL_X15_Y27_N39
\pwm|Div0|auto_generated|divider|divider|op_12~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_12~25_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_11~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[136]~128_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_12~26\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_11~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[136]~128_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[136]~128_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~29_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_12~30\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_12~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_12~26\);

-- Location: MLABCELL_X15_Y27_N42
\pwm|Div0|auto_generated|divider|divider|op_12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_12~21_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_11~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[137]~119_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_12~22\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_11~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[137]~119_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~119_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~25_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_12~26\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_12~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_12~22\);

-- Location: MLABCELL_X15_Y27_N45
\pwm|Div0|auto_generated|divider|divider|op_12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_12~9_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_11~9_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[138]~5_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[138]~2_combout\)))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_12~10\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_11~9_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[138]~5_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[138]~2_combout\)))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[138]~2_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[138]~5_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_12~22\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_12~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_12~10\);

-- Location: MLABCELL_X15_Y27_N48
\pwm|Div0|auto_generated|divider|divider|op_12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_12~17_sumout\ = SUM(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_11~21_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|StageOut[139]~69_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~10\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_12~18\ = CARRY(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_11~21_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ 
-- & (\pwm|Div0|auto_generated|divider|divider|StageOut[139]~69_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[139]~69_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~21_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_12~10\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_12~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_12~18\);

-- Location: MLABCELL_X15_Y27_N51
\pwm|Div0|auto_generated|divider|divider|op_12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_12~13_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_11~17_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[140]~61_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[140]~55_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_12~14\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_11~17_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[140]~61_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[140]~55_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~55_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~61_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_12~18\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_12~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_12~14\);

-- Location: MLABCELL_X15_Y27_N54
\pwm|Div0|auto_generated|divider|divider|op_12~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_12~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_11~13_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[141]~53_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[141]~45_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~45_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~13_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~53_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_12~14\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_12~6_cout\);

-- Location: MLABCELL_X15_Y27_N57
\pwm|Div0|auto_generated|divider|divider|op_12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_12~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_12~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\);

-- Location: LABCELL_X18_Y27_N33
\pwm|LessThan2~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~15_combout\ = ( !\pwm|LessThan2~2_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( (!\pwm|pwm_counter\(2)) # ((!\pwm|pwm_counter\(4) & !\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\)) ) ) ) # ( 
-- !\pwm|LessThan2~2_combout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( (!\pwm|pwm_counter\(2)) # ((!\pwm|pwm_counter\(3)) # ((!\pwm|pwm_counter\(4) & !\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101100000000000000000011101100111011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(4),
	datab => \pwm|ALT_INV_pwm_counter\(2),
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datad => \pwm|ALT_INV_pwm_counter\(3),
	datae => \pwm|ALT_INV_LessThan2~2_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	combout => \pwm|LessThan2~15_combout\);

-- Location: MLABCELL_X21_Y27_N15
\pwm|LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~6_combout\ = ( !\pwm|pwm_counter\(9) & ( \pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ ) ) # ( \pwm|pwm_counter\(9) & ( !\pwm|Div0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|ALT_INV_pwm_counter\(9),
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \pwm|LessThan2~6_combout\);

-- Location: MLABCELL_X21_Y27_N45
\pwm|LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~5_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( !\pwm|pwm_counter\(10) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \pwm|pwm_counter\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_pwm_counter\(10),
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \pwm|LessThan2~5_combout\);

-- Location: MLABCELL_X21_Y27_N33
\pwm|LessThan2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~7_combout\ = ( \pwm|LessThan2~5_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (!\pwm|pwm_counter\(8) & (\pwm|LessThan2~6_combout\ & (\pwm|LessThan2~3_combout\ & \pwm|LessThan2~4_combout\))) ) ) ) # ( 
-- \pwm|LessThan2~5_combout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( (\pwm|pwm_counter\(8) & (\pwm|LessThan2~6_combout\ & (\pwm|LessThan2~3_combout\ & \pwm|LessThan2~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(8),
	datab => \pwm|ALT_INV_LessThan2~6_combout\,
	datac => \pwm|ALT_INV_LessThan2~3_combout\,
	datad => \pwm|ALT_INV_LessThan2~4_combout\,
	datae => \pwm|ALT_INV_LessThan2~5_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	combout => \pwm|LessThan2~7_combout\);

-- Location: LABCELL_X19_Y27_N0
\pwm|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~1_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( (!\pwm|pwm_counter\(7) & (!\pwm|pwm_counter\(5) & (!\pwm|pwm_counter[6]~DUPLICATE_q\ $ 
-- (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\)))) ) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( (\pwm|pwm_counter\(7) & (!\pwm|pwm_counter\(5) & 
-- (!\pwm|pwm_counter[6]~DUPLICATE_q\ $ (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\)))) ) ) ) # ( \pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( (!\pwm|pwm_counter\(7) & 
-- (\pwm|pwm_counter\(5) & (!\pwm|pwm_counter[6]~DUPLICATE_q\ $ (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\)))) ) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_10~1_sumout\ & ( 
-- (\pwm|pwm_counter\(7) & (\pwm|pwm_counter\(5) & (!\pwm|pwm_counter[6]~DUPLICATE_q\ $ (!\pwm|Div0|auto_generated|divider|divider|op_9~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000010100000010100000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(7),
	datab => \pwm|ALT_INV_pwm_counter[6]~DUPLICATE_q\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => \pwm|ALT_INV_pwm_counter\(5),
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \pwm|LessThan2~1_combout\);

-- Location: MLABCELL_X15_Y28_N48
\pwm|Div0|auto_generated|divider|divider|StageOut[149]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[149]~54_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_11~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~17_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[149]~54_combout\);

-- Location: MLABCELL_X15_Y28_N9
\pwm|Div0|auto_generated|divider|divider|StageOut[149]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[149]~62_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[140]~55_combout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[140]~61_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~61_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~55_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[149]~62_combout\);

-- Location: LABCELL_X16_Y27_N21
\pwm|Div0|auto_generated|divider|divider|StageOut[148]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[148]~64_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_11~21_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~21_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[148]~64_combout\);

-- Location: MLABCELL_X15_Y28_N6
\pwm|Div0|auto_generated|divider|divider|StageOut[148]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[148]~70_combout\ = (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & \pwm|Div0|auto_generated|divider|divider|StageOut[139]~69_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[139]~69_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[148]~70_combout\);

-- Location: LABCELL_X16_Y27_N15
\pwm|Div0|auto_generated|divider|divider|StageOut[147]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[147]~6_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_11~9_sumout\ & ( ((!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[138]~2_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[138]~5_combout\) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_11~9_sumout\ & ( 
-- (\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|StageOut[138]~2_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[138]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111111111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[138]~5_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[138]~2_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~9_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[147]~6_combout\);

-- Location: MLABCELL_X15_Y28_N3
\pwm|Div0|auto_generated|divider|divider|StageOut[146]~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[146]~117_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_11~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~25_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[146]~117_combout\);

-- Location: MLABCELL_X15_Y28_N30
\pwm|Div0|auto_generated|divider|divider|StageOut[146]~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[146]~120_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[137]~119_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~119_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[146]~120_combout\);

-- Location: LABCELL_X18_Y27_N6
\pwm|Div0|auto_generated|divider|divider|StageOut[145]~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[145]~129_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_11~29_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|StageOut[136]~128_combout\ ) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_11~29_sumout\ ) ) # ( 
-- \pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_11~29_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[136]~128_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[136]~128_combout\,
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~29_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[145]~129_combout\);

-- Location: MLABCELL_X15_Y28_N12
\pwm|Div0|auto_generated|divider|divider|StageOut[144]~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[144]~133_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( \pwm|Mult0~12\ ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|op_11~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_Mult0~12\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~33_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[144]~133_combout\);

-- Location: MLABCELL_X15_Y27_N0
\pwm|Div0|auto_generated|divider|divider|op_14~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_14~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_14~38_cout\);

-- Location: MLABCELL_X15_Y27_N3
\pwm|Div0|auto_generated|divider|divider|op_14~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_14~33_sumout\ = SUM(( \pwm|Mult0~10\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_14~34\ = CARRY(( \pwm|Mult0~10\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_Mult0~10\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_14~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_14~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_14~34\);

-- Location: MLABCELL_X15_Y27_N6
\pwm|Div0|auto_generated|divider|divider|op_14~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_14~29_sumout\ = SUM(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_12~33_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & (\pwm|Mult0~11\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~34\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_14~30\ = CARRY(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_12~33_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ 
-- & (\pwm|Mult0~11\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~11\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~33_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_14~34\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_14~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_14~30\);

-- Location: MLABCELL_X15_Y27_N9
\pwm|Div0|auto_generated|divider|divider|op_14~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_14~25_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_12~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[144]~133_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_14~26\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_12~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[144]~133_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[144]~133_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~29_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_14~30\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_14~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_14~26\);

-- Location: MLABCELL_X15_Y27_N12
\pwm|Div0|auto_generated|divider|divider|op_14~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_14~21_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_12~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[145]~129_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_14~22\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_12~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[145]~129_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[145]~129_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~25_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_14~26\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_14~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_14~22\);

-- Location: MLABCELL_X15_Y27_N15
\pwm|Div0|auto_generated|divider|divider|op_14~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_14~17_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_12~21_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[146]~120_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[146]~117_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_14~18\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_12~21_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[146]~120_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[146]~117_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~117_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~21_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~120_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_14~22\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_14~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_14~18\);

-- Location: MLABCELL_X15_Y27_N18
\pwm|Div0|auto_generated|divider|divider|op_14~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_14~9_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_12~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[147]~6_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_14~10\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_12~9_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[147]~6_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[147]~6_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~9_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_14~18\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_14~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_14~10\);

-- Location: MLABCELL_X15_Y27_N21
\pwm|Div0|auto_generated|divider|divider|op_14~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_14~13_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_12~17_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[148]~70_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[148]~64_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~10\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_14~14\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_12~17_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[148]~70_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[148]~64_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[148]~64_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~17_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[148]~70_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_14~10\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_14~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_14~14\);

-- Location: MLABCELL_X15_Y27_N24
\pwm|Div0|auto_generated|divider|divider|op_14~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_14~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_12~13_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[149]~62_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[149]~54_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[149]~54_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~13_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[149]~62_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_14~14\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_14~6_cout\);

-- Location: MLABCELL_X15_Y27_N27
\pwm|Div0|auto_generated|divider|divider|op_14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_14~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_14~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\);

-- Location: LABCELL_X18_Y27_N39
\pwm|LessThan2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~13_combout\ = ( !\pwm|LessThan2~2_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ( (!\pwm|pwm_counter\(4) & ((!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\) # 
-- ((!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & !\pwm|pwm_counter\(3))))) # (\pwm|pwm_counter\(4) & (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & (!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & 
-- !\pwm|pwm_counter\(3)))) ) ) ) # ( !\pwm|LessThan2~2_combout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ( (!\pwm|pwm_counter\(4) & ((!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\) # 
-- ((!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\) # (!\pwm|pwm_counter\(3))))) # (\pwm|pwm_counter\(4) & (!\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ((!\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\) # 
-- (!\pwm|pwm_counter\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000000000000000000011101000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(4),
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datad => \pwm|ALT_INV_pwm_counter\(3),
	datae => \pwm|ALT_INV_LessThan2~2_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	combout => \pwm|LessThan2~13_combout\);

-- Location: LABCELL_X18_Y27_N51
\pwm|LessThan2~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~16_combout\ = ( \pwm|LessThan2~2_combout\ & ( \pwm|LessThan2~13_combout\ & ( (\pwm|LessThan2~7_combout\ & ((!\pwm|LessThan2~15_combout\) # (!\pwm|LessThan2~1_combout\))) ) ) ) # ( !\pwm|LessThan2~2_combout\ & ( \pwm|LessThan2~13_combout\ & 
-- ( (!\pwm|LessThan2~15_combout\ & (\pwm|LessThan2~7_combout\ & \pwm|LessThan2~1_combout\)) ) ) ) # ( \pwm|LessThan2~2_combout\ & ( !\pwm|LessThan2~13_combout\ & ( \pwm|LessThan2~7_combout\ ) ) ) # ( !\pwm|LessThan2~2_combout\ & ( 
-- !\pwm|LessThan2~13_combout\ & ( (\pwm|LessThan2~7_combout\ & \pwm|LessThan2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000111100000000000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_LessThan2~15_combout\,
	datac => \pwm|ALT_INV_LessThan2~7_combout\,
	datad => \pwm|ALT_INV_LessThan2~1_combout\,
	datae => \pwm|ALT_INV_LessThan2~2_combout\,
	dataf => \pwm|ALT_INV_LessThan2~13_combout\,
	combout => \pwm|LessThan2~16_combout\);

-- Location: LABCELL_X16_Y27_N6
\pwm|Div0|auto_generated|divider|divider|StageOut[157]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[157]~63_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_12~17_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~17_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[157]~63_combout\);

-- Location: LABCELL_X16_Y27_N3
\pwm|Div0|auto_generated|divider|divider|StageOut[157]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[157]~71_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[148]~64_combout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[148]~70_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[148]~70_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[148]~64_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[157]~71_combout\);

-- Location: LABCELL_X16_Y27_N9
\pwm|Div0|auto_generated|divider|divider|StageOut[156]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[156]~1_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_12~9_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~9_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[156]~1_combout\);

-- Location: LABCELL_X16_Y27_N0
\pwm|Div0|auto_generated|divider|divider|StageOut[156]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[156]~7_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[147]~6_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[147]~6_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[156]~7_combout\);

-- Location: LABCELL_X16_Y27_N18
\pwm|Div0|auto_generated|divider|divider|StageOut[155]~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[155]~121_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[146]~120_combout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[146]~117_combout\) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_12~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~21_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~117_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~120_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[155]~121_combout\);

-- Location: LABCELL_X16_Y27_N12
\pwm|Div0|auto_generated|divider|divider|StageOut[154]~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[154]~127_combout\ = ( !\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_12~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~25_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[154]~127_combout\);

-- Location: LABCELL_X17_Y27_N3
\pwm|Div0|auto_generated|divider|divider|StageOut[154]~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[154]~130_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[145]~129_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[145]~129_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[154]~130_combout\);

-- Location: LABCELL_X16_Y27_N27
\pwm|Div0|auto_generated|divider|divider|StageOut[153]~134\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[153]~134_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[144]~133_combout\ ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_12~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~29_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[144]~133_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[153]~134_combout\);

-- Location: LABCELL_X18_Y27_N12
\pwm|Div0|auto_generated|divider|divider|StageOut[152]~136\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[152]~136_combout\ = ( \pwm|Mult0~11\ & ( \pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ ) ) # ( \pwm|Mult0~11\ & ( !\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( 
-- \pwm|Div0|auto_generated|divider|divider|op_12~33_sumout\ ) ) ) # ( !\pwm|Mult0~11\ & ( !\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_12~33_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~33_sumout\,
	datae => \pwm|ALT_INV_Mult0~11\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[152]~136_combout\);

-- Location: LABCELL_X16_Y27_N30
\pwm|Div0|auto_generated|divider|divider|op_15~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_15~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_15~38_cout\);

-- Location: LABCELL_X16_Y27_N33
\pwm|Div0|auto_generated|divider|divider|op_15~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_15~33_sumout\ = SUM(( \pwm|Mult0~9\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~38_cout\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_15~34\ = CARRY(( \pwm|Mult0~9\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_Mult0~9\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_15~38_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_15~33_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_15~34\);

-- Location: LABCELL_X16_Y27_N36
\pwm|Div0|auto_generated|divider|divider|op_15~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_15~29_sumout\ = SUM(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_14~33_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & (\pwm|Mult0~10\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~34\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_15~30\ = CARRY(( VCC ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_14~33_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ 
-- & (\pwm|Mult0~10\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|ALT_INV_Mult0~10\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~33_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_15~34\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_15~29_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_15~30\);

-- Location: LABCELL_X16_Y27_N39
\pwm|Div0|auto_generated|divider|divider|op_15~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_15~25_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_14~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[152]~136_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~30\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_15~26\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_14~29_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[152]~136_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[152]~136_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~29_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_15~30\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_15~25_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_15~26\);

-- Location: LABCELL_X16_Y27_N42
\pwm|Div0|auto_generated|divider|divider|op_15~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_15~21_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_14~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[153]~134_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~26\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_15~22\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_14~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[153]~134_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[153]~134_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~25_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_15~26\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_15~21_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_15~22\);

-- Location: LABCELL_X16_Y27_N45
\pwm|Div0|auto_generated|divider|divider|op_15~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_15~17_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_14~21_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[154]~130_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[154]~127_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~22\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_15~18\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_14~21_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[154]~130_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[154]~127_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[154]~127_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~21_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[154]~130_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_15~22\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_15~17_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_15~18\);

-- Location: LABCELL_X16_Y27_N48
\pwm|Div0|auto_generated|divider|divider|op_15~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_15~13_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_14~17_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[155]~121_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~18\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_15~14\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_14~17_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[155]~121_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[155]~121_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~17_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_15~18\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_15~13_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_15~14\);

-- Location: LABCELL_X16_Y27_N51
\pwm|Div0|auto_generated|divider|divider|op_15~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_15~9_sumout\ = SUM(( (!\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_14~9_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[156]~7_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[156]~1_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~14\ ))
-- \pwm|Div0|auto_generated|divider|divider|op_15~10\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_14~9_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[156]~7_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[156]~1_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[156]~1_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~9_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[156]~7_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_15~14\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_15~9_sumout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_15~10\);

-- Location: LABCELL_X16_Y27_N54
\pwm|Div0|auto_generated|divider|divider|op_15~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_15~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|op_14~13_sumout\)) # (\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[157]~71_combout\) # (\pwm|Div0|auto_generated|divider|divider|StageOut[157]~63_combout\)))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~13_sumout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[157]~63_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[157]~71_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_15~10\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_15~6_cout\);

-- Location: LABCELL_X16_Y27_N57
\pwm|Div0|auto_generated|divider|divider|op_15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_15~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_15~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\);

-- Location: LABCELL_X18_Y27_N45
\pwm|LessThan2~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~14_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( \pwm|LessThan2~13_combout\ & ( (\pwm|pwm_counter\(4) & !\pwm|pwm_counter\(2)) ) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( 
-- \pwm|LessThan2~13_combout\ & ( (\pwm|pwm_counter\(4) & (!\pwm|pwm_counter\(2) & (\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & \pwm|pwm_counter\(3)))) ) ) ) # ( \pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( 
-- !\pwm|LessThan2~13_combout\ & ( (((\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & \pwm|pwm_counter\(3))) # (\pwm|pwm_counter\(2))) # (\pwm|pwm_counter\(4)) ) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_11~1_sumout\ & ( 
-- !\pwm|LessThan2~13_combout\ & ( ((\pwm|Div0|auto_generated|divider|divider|op_12~1_sumout\ & \pwm|pwm_counter\(3))) # (\pwm|pwm_counter\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111011101110111111100000000000001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(4),
	datab => \pwm|ALT_INV_pwm_counter\(2),
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_12~1_sumout\,
	datad => \pwm|ALT_INV_pwm_counter\(3),
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	dataf => \pwm|ALT_INV_LessThan2~13_combout\,
	combout => \pwm|LessThan2~14_combout\);

-- Location: LABCELL_X17_Y27_N36
\pwm|LessThan2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~17_combout\ = ( \pwm|LessThan2~14_combout\ & ( (\pwm|LessThan2~13_combout\ & ((!\pwm|pwm_counter[1]~DUPLICATE_q\) # (!\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\))) ) ) # ( !\pwm|LessThan2~14_combout\ & ( 
-- (!\pwm|LessThan2~15_combout\ & (\pwm|LessThan2~13_combout\ & ((!\pwm|pwm_counter[1]~DUPLICATE_q\) # (!\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\)))) # (\pwm|LessThan2~15_combout\ & ((!\pwm|pwm_counter[1]~DUPLICATE_q\) # 
-- ((!\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101001100010111110100110000001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_LessThan2~15_combout\,
	datab => \pwm|ALT_INV_pwm_counter[1]~DUPLICATE_q\,
	datac => \pwm|ALT_INV_LessThan2~13_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	dataf => \pwm|ALT_INV_LessThan2~14_combout\,
	combout => \pwm|LessThan2~17_combout\);

-- Location: LABCELL_X16_Y27_N24
\pwm|Div0|auto_generated|divider|divider|StageOut[165]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[165]~0_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_14~9_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~9_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[165]~0_combout\);

-- Location: LABCELL_X17_Y27_N57
\pwm|Div0|auto_generated|divider|divider|StageOut[165]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[165]~8_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[156]~1_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|StageOut[156]~1_combout\ & ( (\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & \pwm|Div0|auto_generated|divider|divider|StageOut[156]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[156]~7_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[156]~1_combout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[165]~8_combout\);

-- Location: LABCELL_X18_Y27_N21
\pwm|Div0|auto_generated|divider|divider|StageOut[164]~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[164]~116_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_14~17_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~17_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[164]~116_combout\);

-- Location: LABCELL_X17_Y27_N39
\pwm|Div0|auto_generated|divider|divider|StageOut[164]~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[164]~122_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|StageOut[155]~121_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[155]~121_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[164]~122_combout\);

-- Location: LABCELL_X17_Y27_N0
\pwm|Div0|auto_generated|divider|divider|StageOut[163]~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[163]~131_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[154]~127_combout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[154]~130_combout\) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_14~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[154]~130_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[154]~127_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~21_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[163]~131_combout\);

-- Location: LABCELL_X17_Y27_N54
\pwm|Div0|auto_generated|divider|divider|StageOut[162]~132\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[162]~132_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_14~25_sumout\ & ( !\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~25_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[162]~132_combout\);

-- Location: LABCELL_X18_Y27_N57
\pwm|Div0|auto_generated|divider|divider|StageOut[162]~135\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[162]~135_combout\ = ( \pwm|Div0|auto_generated|divider|divider|StageOut[153]~134_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[153]~134_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[162]~135_combout\);

-- Location: LABCELL_X18_Y27_N27
\pwm|Div0|auto_generated|divider|divider|StageOut[161]~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[161]~137_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_14~29_sumout\ & ( (!\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\) # 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[152]~136_combout\) ) ) # ( !\pwm|Div0|auto_generated|divider|divider|op_14~29_sumout\ & ( (\pwm|Div0|auto_generated|divider|divider|StageOut[152]~136_combout\ & 
-- \pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[152]~136_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~29_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[161]~137_combout\);

-- Location: LABCELL_X18_Y27_N0
\pwm|Div0|auto_generated|divider|divider|StageOut[160]~138\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|StageOut[160]~138_combout\ = ( \pwm|Div0|auto_generated|divider|divider|op_14~33_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ( \pwm|Mult0~10\ ) ) ) # ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_14~33_sumout\ & ( \pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ & ( \pwm|Mult0~10\ ) ) ) # ( \pwm|Div0|auto_generated|divider|divider|op_14~33_sumout\ & ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_14~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_Mult0~10\,
	datae => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~33_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_14~1_sumout\,
	combout => \pwm|Div0|auto_generated|divider|divider|StageOut[160]~138_combout\);

-- Location: LABCELL_X17_Y27_N6
\pwm|Div0|auto_generated|divider|divider|op_16~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_16~38_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \pwm|Div0|auto_generated|divider|divider|op_16~38_cout\);

-- Location: LABCELL_X17_Y27_N9
\pwm|Div0|auto_generated|divider|divider|op_16~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_16~34_cout\ = CARRY(( \pwm|Mult0~8_resulta\ ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_16~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pwm|ALT_INV_Mult0~8_resulta\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_16~38_cout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_16~34_cout\);

-- Location: LABCELL_X17_Y27_N12
\pwm|Div0|auto_generated|divider|divider|op_16~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_16~30_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_15~33_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (\pwm|Mult0~9\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_16~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datac => \pwm|ALT_INV_Mult0~9\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~33_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_16~34_cout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_16~30_cout\);

-- Location: LABCELL_X17_Y27_N15
\pwm|Div0|auto_generated|divider|divider|op_16~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_16~26_cout\ = CARRY(( GND ) + ( (!\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_15~29_sumout\))) # 
-- (\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ & (\pwm|Div0|auto_generated|divider|divider|StageOut[160]~138_combout\)) ) + ( \pwm|Div0|auto_generated|divider|divider|op_16~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[160]~138_combout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~29_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_16~30_cout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_16~26_cout\);

-- Location: LABCELL_X17_Y27_N18
\pwm|Div0|auto_generated|divider|divider|op_16~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_16~22_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_15~25_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[161]~137_combout\)) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_16~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[161]~137_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~25_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_16~26_cout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_16~22_cout\);

-- Location: LABCELL_X17_Y27_N21
\pwm|Div0|auto_generated|divider|divider|op_16~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_16~18_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_15~21_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[162]~135_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[162]~132_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_16~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[162]~132_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~21_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[162]~135_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_16~22_cout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_16~18_cout\);

-- Location: LABCELL_X17_Y27_N24
\pwm|Div0|auto_generated|divider|divider|op_16~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_16~14_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ & ((\pwm|Div0|auto_generated|divider|divider|op_15~17_sumout\))) # (\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (\pwm|Div0|auto_generated|divider|divider|StageOut[163]~131_combout\)) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_16~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[163]~131_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~17_sumout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_16~18_cout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_16~14_cout\);

-- Location: LABCELL_X17_Y27_N27
\pwm|Div0|auto_generated|divider|divider|op_16~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_16~10_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_15~13_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[164]~122_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[164]~116_combout\))) ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_16~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[164]~116_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~13_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[164]~122_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_16~14_cout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_16~10_cout\);

-- Location: LABCELL_X17_Y27_N30
\pwm|Div0|auto_generated|divider|divider|op_16~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_16~6_cout\ = CARRY(( (!\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ & (((\pwm|Div0|auto_generated|divider|divider|op_15~9_sumout\)))) # (\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\ & 
-- (((\pwm|Div0|auto_generated|divider|divider|StageOut[165]~8_combout\)) # (\pwm|Div0|auto_generated|divider|divider|StageOut[165]~0_combout\))) ) + ( VCC ) + ( \pwm|Div0|auto_generated|divider|divider|op_16~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[165]~0_combout\,
	datab => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datac => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~9_sumout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_StageOut[165]~8_combout\,
	cin => \pwm|Div0|auto_generated|divider|divider|op_16~10_cout\,
	cout => \pwm|Div0|auto_generated|divider|divider|op_16~6_cout\);

-- Location: LABCELL_X17_Y27_N33
\pwm|Div0|auto_generated|divider|divider|op_16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|Div0|auto_generated|divider|divider|op_16~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \pwm|Div0|auto_generated|divider|divider|op_16~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \pwm|Div0|auto_generated|divider|divider|op_16~6_cout\,
	sumout => \pwm|Div0|auto_generated|divider|divider|op_16~1_sumout\);

-- Location: LABCELL_X17_Y27_N42
\pwm|LessThan2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|LessThan2~8_combout\ = ( \pwm|LessThan2~17_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_16~1_sumout\ & ( (\pwm|pwm_counter\(0) & (\pwm|LessThan2~16_combout\ & ((\pwm|Div0|auto_generated|divider|divider|op_15~1_sumout\) # 
-- (\pwm|pwm_counter[1]~DUPLICATE_q\)))) ) ) ) # ( !\pwm|LessThan2~17_combout\ & ( \pwm|Div0|auto_generated|divider|divider|op_16~1_sumout\ & ( \pwm|LessThan2~16_combout\ ) ) ) # ( !\pwm|LessThan2~17_combout\ & ( 
-- !\pwm|Div0|auto_generated|divider|divider|op_16~1_sumout\ & ( \pwm|LessThan2~16_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_pwm_counter\(0),
	datab => \pwm|ALT_INV_pwm_counter[1]~DUPLICATE_q\,
	datac => \pwm|ALT_INV_LessThan2~16_combout\,
	datad => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_15~1_sumout\,
	datae => \pwm|ALT_INV_LessThan2~17_combout\,
	dataf => \pwm|Div0|auto_generated|divider|divider|ALT_INV_op_16~1_sumout\,
	combout => \pwm|LessThan2~8_combout\);

-- Location: LABCELL_X17_Y27_N48
\pwm|led_on_off~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm|led_on_off~4_combout\ = ( \pwm|LessThan2~12_combout\ & ( \pwm|LessThan2~8_combout\ & ( (((\pwm|led_on_off~3_combout\ & !\pwm|LessThan2~0_combout\)) # (\pwm|led_on_off~0_combout\)) # (\pwm|led_on_off~1_combout\) ) ) ) # ( !\pwm|LessThan2~12_combout\ & 
-- ( \pwm|LessThan2~8_combout\ & ( (((\pwm|led_on_off~3_combout\ & !\pwm|LessThan2~0_combout\)) # (\pwm|led_on_off~0_combout\)) # (\pwm|led_on_off~1_combout\) ) ) ) # ( \pwm|LessThan2~12_combout\ & ( !\pwm|LessThan2~8_combout\ & ( 
-- ((\pwm|led_on_off~0_combout\) # (\pwm|led_on_off~1_combout\)) # (\pwm|led_on_off~3_combout\) ) ) ) # ( !\pwm|LessThan2~12_combout\ & ( !\pwm|LessThan2~8_combout\ & ( (((\pwm|led_on_off~3_combout\ & !\pwm|LessThan2~0_combout\)) # 
-- (\pwm|led_on_off~0_combout\)) # (\pwm|led_on_off~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001111111111011101111111111101110011111111110111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm|ALT_INV_led_on_off~3_combout\,
	datab => \pwm|ALT_INV_led_on_off~1_combout\,
	datac => \pwm|ALT_INV_LessThan2~0_combout\,
	datad => \pwm|ALT_INV_led_on_off~0_combout\,
	datae => \pwm|ALT_INV_LessThan2~12_combout\,
	dataf => \pwm|ALT_INV_LessThan2~8_combout\,
	combout => \pwm|led_on_off~4_combout\);

-- Location: DDIOOUTCELL_X30_Y0_N27
\pwm|led_on_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \pwm|led_on_off~4_combout\,
	clrn => \b_gen_pll:i_reset_ctrl|reset_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm|led_on_off~q\);

-- Location: LABCELL_X37_Y4_N30
\c_disp_ctrl|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux6~0_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\ & !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\) ) ) # ( 
-- !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\)) # 
-- (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111110011111100111111001111111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datab => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datac => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \c_disp_ctrl|Mux6~0_combout\);

-- Location: DDIOOUTCELL_X36_Y0_N27
\c_disp_ctrl|hex1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux6~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex1\(0));

-- Location: MLABCELL_X39_Y3_N27
\c_disp_ctrl|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux5~0_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\ & !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\) ) ) # ( 
-- !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\) # (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ $ 
-- (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101111101011101000001010000011101011111010111010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datab => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datac => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datae => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \c_disp_ctrl|Mux5~0_combout\);

-- Location: DDIOOUTCELL_X38_Y0_N10
\c_disp_ctrl|hex1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux5~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex1\(1));

-- Location: LABCELL_X37_Y4_N48
\c_disp_ctrl|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux4~0_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\) ) ) # ( 
-- !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\) # ((\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\) # 
-- (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111110001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datab => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datac => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \c_disp_ctrl|Mux4~0_combout\);

-- Location: DDIOOUTCELL_X36_Y0_N10
\c_disp_ctrl|hex1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux4~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex1\(2));

-- Location: LABCELL_X37_Y4_N51
\c_disp_ctrl|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux3~0_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\ $ 
-- (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\))) # (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\ & 
-- !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\)) ) ) # ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & 
-- (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\)) # (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & ((!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100011011000110110001101100001101000011010000110100001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datab => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datac => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	combout => \c_disp_ctrl|Mux3~0_combout\);

-- Location: DDIOOUTCELL_X36_Y0_N44
\c_disp_ctrl|hex1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux3~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex1\(3));

-- Location: LABCELL_X37_Y4_N6
\c_disp_ctrl|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux2~0_combout\ = ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\)) # 
-- (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & ((!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111000000110011111100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datac => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datad => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	combout => \c_disp_ctrl|Mux2~0_combout\);

-- Location: DDIOOUTCELL_X34_Y0_N67
\c_disp_ctrl|hex1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux2~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex1\(4));

-- Location: LABCELL_X37_Y4_N9
\c_disp_ctrl|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux1~0_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\ & (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\ $ 
-- (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\))) ) ) # ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\ & 
-- (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\)) # (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\ & ((!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100010111000101110001011100000101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datab => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	datac => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	combout => \c_disp_ctrl|Mux1~0_combout\);

-- Location: DDIOOUTCELL_X34_Y0_N101
\c_disp_ctrl|hex1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux1~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex1\(5));

-- Location: MLABCELL_X39_Y3_N51
\c_disp_ctrl|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux0~0_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\ $ (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\)) # 
-- (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\) ) ) # ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( ((\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a2\) # 
-- (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a1\)) # (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a3\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101011111111101010101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	datac => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datad => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	combout => \c_disp_ctrl|Mux0~0_combout\);

-- Location: DDIOOUTCELL_X40_Y0_N44
\c_disp_ctrl|hex1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux0~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex1\(6));

-- Location: MLABCELL_X39_Y3_N30
\c_disp_ctrl|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux13~0_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\ & ((\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\) # 
-- (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\))) ) ) # ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\ & 
-- ((!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\) # (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\))) # (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\ & 
-- ((!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111001100101110111100110001110111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datab => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	datad => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \c_disp_ctrl|Mux13~0_combout\);

-- Location: DDIOOUTCELL_X38_Y0_N44
\c_disp_ctrl|hex2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux13~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex2\(0));

-- Location: MLABCELL_X39_Y3_N3
\c_disp_ctrl|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux12~0_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\ & (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\ $ 
-- (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\))) ) ) # ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\) # 
-- (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110010010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datab => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	datac => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \c_disp_ctrl|Mux12~0_combout\);

-- Location: DDIOOUTCELL_X36_Y0_N61
\c_disp_ctrl|hex2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux12~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex2\(1));

-- Location: MLABCELL_X39_Y3_N33
\c_disp_ctrl|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux11~0_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\ ) ) # ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & ( 
-- (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\) # ((\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\ & !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011100110111001101110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datab => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	datac => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \c_disp_ctrl|Mux11~0_combout\);

-- Location: DDIOOUTCELL_X40_Y0_N10
\c_disp_ctrl|hex2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux11~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex2\(2));

-- Location: MLABCELL_X39_Y3_N54
\c_disp_ctrl|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux10~0_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\ & (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\ $ 
-- (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\))) ) ) # ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\ & 
-- ((!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\) # (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\))) # (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\ & 
-- ((!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111001100101110111100110001100110000000000110011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datab => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	datad => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \c_disp_ctrl|Mux10~0_combout\);

-- Location: DDIOOUTCELL_X30_Y0_N61
\c_disp_ctrl|hex2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux10~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex2\(3));

-- Location: MLABCELL_X39_Y3_N36
\c_disp_ctrl|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux9~0_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\ & (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\ & 
-- !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\)) ) ) # ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\ & 
-- ((!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\) # (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010100000001000000010100010101000101000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datab => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	datac => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	datae => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \c_disp_ctrl|Mux9~0_combout\);

-- Location: DDIOOUTCELL_X40_Y0_N27
\c_disp_ctrl|hex2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux9~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex2\(4));

-- Location: MLABCELL_X39_Y3_N57
\c_disp_ctrl|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux8~0_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\ & ((!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\) # 
-- (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\))) ) ) # ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\ & 
-- ((!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\) # (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datab => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	datac => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \c_disp_ctrl|Mux8~0_combout\);

-- Location: DDIOOUTCELL_X50_Y0_N84
\c_disp_ctrl|hex2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux8~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex2\(5));

-- Location: MLABCELL_X39_Y3_N0
\c_disp_ctrl|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux7~0_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & ( (!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a4\) # ((!\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\) # 
-- (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\)) ) ) # ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a6\ & ( (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a7\) # 
-- (\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a5\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datab => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	datad => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	combout => \c_disp_ctrl|Mux7~0_combout\);

-- Location: DDIOOUTCELL_X40_Y0_N61
\c_disp_ctrl|hex2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux7~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex2\(6));

-- Location: MLABCELL_X39_Y2_N51
\c_disp_ctrl|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux15~0_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a8\ & ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a9\ ) ) # ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a8\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	combout => \c_disp_ctrl|Mux15~0_combout\);

-- Location: DDIOOUTCELL_X58_Y0_N101
\c_disp_ctrl|hex3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux15~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex3\(0));

-- Location: DDIOOUTCELL_X89_Y4_N53
\c_disp_ctrl|hex3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => GND,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex3\(1));

-- Location: LABCELL_X37_Y1_N3
\c_disp_ctrl|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux15~1_combout\ = ( \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a8\ ) # ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a8\ & ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a9\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	combout => \c_disp_ctrl|Mux15~1_combout\);

-- Location: DDIOOUTCELL_X32_Y0_N61
\c_disp_ctrl|hex3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux15~1_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex3\(2));

-- Location: DDIOOUTCELL_X58_Y0_N50
\c_disp_ctrl|hex3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux15~0_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex3\(3));

-- Location: DDIOOUTCELL_X38_Y0_N61
\c_disp_ctrl|hex3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a8\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex3\(4));

-- Location: MLABCELL_X39_Y2_N33
\c_disp_ctrl|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_disp_ctrl|Mux15~2_combout\ = ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a8\ & ( !\c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ram_block1a9\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	dataf => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	combout => \c_disp_ctrl|Mux15~2_combout\);

-- Location: DDIOOUTCELL_X89_Y4_N70
\c_disp_ctrl|hex3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|ALT_INV_Mux15~2_combout\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex3\(5));

-- Location: DDIOOUTCELL_X38_Y0_N27
\c_disp_ctrl|hex3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \b_gen_pll:i_cyclonev_pll|cyclonev_pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \c_disp_ctrl|bcd|bcd_rom_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	asdata => VCC,
	aload => \b_gen_pll:i_reset_ctrl|ALT_INV_reset_out~q\,
	ena => \c_disp_ctrl|bcd|rom_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_disp_ctrl|hex3\(6));

-- Location: LABCELL_X36_Y7_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


