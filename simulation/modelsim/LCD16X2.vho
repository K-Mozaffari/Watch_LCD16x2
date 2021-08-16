-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "08/16/2021 02:13:04"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
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
	clkin : IN std_logic;
	rw : OUT std_logic;
	rs : OUT std_logic;
	e : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0);
	constrastup : IN std_logic;
	s_min : IN std_logic;
	s_hour : IN std_logic;
	s_month : IN std_logic;
	s_year : IN std_logic;
	led : OUT std_logic;
	leddbkey : OUT std_logic
	);
END top_level;

-- Design Ports Information
-- rw	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leddbkey	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- constrastup	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkin	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_min	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_hour	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_month	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_year	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clkin : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_constrastup : std_logic;
SIGNAL ww_s_min : std_logic;
SIGNAL ww_s_hour : std_logic;
SIGNAL ww_s_month : std_logic;
SIGNAL ww_s_year : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_leddbkey : std_logic;
SIGNAL \clkin~input_o\ : std_logic;
SIGNAL \clkin~inputCLKENA0_outclk\ : std_logic;
SIGNAL \dut|Add0~125_sumout\ : std_logic;
SIGNAL \dut|Add0~126\ : std_logic;
SIGNAL \dut|Add0~121_sumout\ : std_logic;
SIGNAL \dut|Add0~122\ : std_logic;
SIGNAL \dut|Add0~113_sumout\ : std_logic;
SIGNAL \dut|Add0~114\ : std_logic;
SIGNAL \dut|Add0~109_sumout\ : std_logic;
SIGNAL \dut|Add0~110\ : std_logic;
SIGNAL \dut|Add0~101_sumout\ : std_logic;
SIGNAL \dut|Add0~102\ : std_logic;
SIGNAL \dut|Add0~105_sumout\ : std_logic;
SIGNAL \dut|Add0~106\ : std_logic;
SIGNAL \dut|Add0~97_sumout\ : std_logic;
SIGNAL \dut|Add0~98\ : std_logic;
SIGNAL \dut|Add0~77_sumout\ : std_logic;
SIGNAL \dut|Add0~78\ : std_logic;
SIGNAL \dut|Add0~81_sumout\ : std_logic;
SIGNAL \dut|Add0~82\ : std_logic;
SIGNAL \dut|Add0~89_sumout\ : std_logic;
SIGNAL \dut|Add0~90\ : std_logic;
SIGNAL \dut|Add0~93_sumout\ : std_logic;
SIGNAL \dut|Add0~94\ : std_logic;
SIGNAL \dut|Add0~85_sumout\ : std_logic;
SIGNAL \dut|Add0~86\ : std_logic;
SIGNAL \dut|Add0~73_sumout\ : std_logic;
SIGNAL \dut|Add0~74\ : std_logic;
SIGNAL \dut|Add0~65_sumout\ : std_logic;
SIGNAL \dut|Add0~66\ : std_logic;
SIGNAL \dut|Add0~69_sumout\ : std_logic;
SIGNAL \dut|Add0~70\ : std_logic;
SIGNAL \dut|Add0~57_sumout\ : std_logic;
SIGNAL \dut|Add0~58\ : std_logic;
SIGNAL \dut|Add0~61_sumout\ : std_logic;
SIGNAL \dut|Add0~62\ : std_logic;
SIGNAL \dut|Add0~13_sumout\ : std_logic;
SIGNAL \dut|Add0~14\ : std_logic;
SIGNAL \dut|Add0~17_sumout\ : std_logic;
SIGNAL \dut|Add0~18\ : std_logic;
SIGNAL \dut|Add0~21_sumout\ : std_logic;
SIGNAL \dut|Add0~22\ : std_logic;
SIGNAL \dut|Add0~25_sumout\ : std_logic;
SIGNAL \dut|Add0~26\ : std_logic;
SIGNAL \dut|Add0~29_sumout\ : std_logic;
SIGNAL \dut|clk_count[21]~DUPLICATE_q\ : std_logic;
SIGNAL \dut|Add0~30\ : std_logic;
SIGNAL \dut|Add0~33_sumout\ : std_logic;
SIGNAL \dut|Add0~34\ : std_logic;
SIGNAL \dut|Add0~37_sumout\ : std_logic;
SIGNAL \dut|Add0~38\ : std_logic;
SIGNAL \dut|Add0~41_sumout\ : std_logic;
SIGNAL \dut|Add0~42\ : std_logic;
SIGNAL \dut|Add0~45_sumout\ : std_logic;
SIGNAL \dut|Add0~46\ : std_logic;
SIGNAL \dut|Add0~49_sumout\ : std_logic;
SIGNAL \dut|Add0~50\ : std_logic;
SIGNAL \dut|Add0~53_sumout\ : std_logic;
SIGNAL \dut|Add0~54\ : std_logic;
SIGNAL \dut|Add0~5_sumout\ : std_logic;
SIGNAL \dut|Add0~6\ : std_logic;
SIGNAL \dut|Add0~10\ : std_logic;
SIGNAL \dut|Add0~1_sumout\ : std_logic;
SIGNAL \dut|LessThan3~0_combout\ : std_logic;
SIGNAL \dut|LessThan3~1_combout\ : std_logic;
SIGNAL \dut|LessThan6~1_combout\ : std_logic;
SIGNAL \dut|LessThan6~2_combout\ : std_logic;
SIGNAL \dut|LessThan6~3_combout\ : std_logic;
SIGNAL \dut|LessThan1~0_combout\ : std_logic;
SIGNAL \dut|LessThan7~0_combout\ : std_logic;
SIGNAL \dut|LessThan7~1_combout\ : std_logic;
SIGNAL \dut|busy~2_combout\ : std_logic;
SIGNAL \dut|lcd_data[2]~2_combout\ : std_logic;
SIGNAL \dut|LessThan3~5_combout\ : std_logic;
SIGNAL \dut|LessThan8~1_combout\ : std_logic;
SIGNAL \dut|LessThan6~0_combout\ : std_logic;
SIGNAL \dut|LessThan8~0_combout\ : std_logic;
SIGNAL \dut|LessThan8~2_combout\ : std_logic;
SIGNAL \dut|Add0~2\ : std_logic;
SIGNAL \dut|Add0~117_sumout\ : std_logic;
SIGNAL \dut|lcd_data[2]~1_combout\ : std_logic;
SIGNAL \dut|state.initialize~DUPLICATE_q\ : std_logic;
SIGNAL \dut|Selector34~2_combout\ : std_logic;
SIGNAL \dut|busy~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \char[21]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \char~14_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \char~10_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \char~4_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \char~2_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \char~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \char~1_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \char~3_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \char~8_combout\ : std_logic;
SIGNAL \char[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \char~26_combout\ : std_logic;
SIGNAL \char[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \char~22_combout\ : std_logic;
SIGNAL \char[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \char~21_combout\ : std_logic;
SIGNAL \char[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \char~20_combout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \char~18_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \char~19_combout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \char~24_combout\ : std_logic;
SIGNAL \char[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \char~5_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \char~23_combout\ : std_logic;
SIGNAL \char[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \char~6_combout\ : std_logic;
SIGNAL \char[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \char~25_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \char~11_combout\ : std_logic;
SIGNAL \char[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \char~12_combout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \char~13_combout\ : std_logic;
SIGNAL \char[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal25~11_combout\ : std_logic;
SIGNAL \char[22]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Equal25~12_combout\ : std_logic;
SIGNAL \char~17_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Equal25~8_combout\ : std_logic;
SIGNAL \Equal25~9_combout\ : std_logic;
SIGNAL \Equal25~10_combout\ : std_logic;
SIGNAL \Equal25~0_combout\ : std_logic;
SIGNAL \char~7_combout\ : std_logic;
SIGNAL \Equal25~3_combout\ : std_logic;
SIGNAL \char[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal25~2_combout\ : std_logic;
SIGNAL \Equal25~1_combout\ : std_logic;
SIGNAL \Equal25~4_combout\ : std_logic;
SIGNAL \Equal25~5_combout\ : std_logic;
SIGNAL \Equal25~6_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal25~7_combout\ : std_logic;
SIGNAL \Equal25~13_combout\ : std_logic;
SIGNAL \char~16_combout\ : std_logic;
SIGNAL \char[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \char~9_combout\ : std_logic;
SIGNAL \lcd_enable~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \lcd_enable~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \char~15_combout\ : std_logic;
SIGNAL \lcd_enable~5_combout\ : std_logic;
SIGNAL \lcd_enable~4_combout\ : std_logic;
SIGNAL \lcd_enable~3_combout\ : std_logic;
SIGNAL \lcd_enable~2_combout\ : std_logic;
SIGNAL \lcd_enable~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \lcd_enable~7_combout\ : std_logic;
SIGNAL \lcd_enable~q\ : std_logic;
SIGNAL \dut|lcd_data[2]~0_combout\ : std_logic;
SIGNAL \dut|LessThan9~0_combout\ : std_logic;
SIGNAL \dut|LessThan0~4_combout\ : std_logic;
SIGNAL \dut|LessThan0~2_combout\ : std_logic;
SIGNAL \dut|LessThan9~1_combout\ : std_logic;
SIGNAL \dut|LessThan9~2_combout\ : std_logic;
SIGNAL \dut|LessThan9~4_combout\ : std_logic;
SIGNAL \dut|LessThan9~3_combout\ : std_logic;
SIGNAL \dut|LessThan9~5_combout\ : std_logic;
SIGNAL \dut|LessThan9~6_combout\ : std_logic;
SIGNAL \dut|Selector35~0_combout\ : std_logic;
SIGNAL \dut|state.send~q\ : std_logic;
SIGNAL \dut|Selector34~0_combout\ : std_logic;
SIGNAL \dut|Selector34~1_combout\ : std_logic;
SIGNAL \dut|state.ready~q\ : std_logic;
SIGNAL \dut|LessThan0~5_combout\ : std_logic;
SIGNAL \dut|LessThan0~0_combout\ : std_logic;
SIGNAL \dut|LessThan0~1_combout\ : std_logic;
SIGNAL \dut|LessThan0~3_combout\ : std_logic;
SIGNAL \dut|LessThan0~6_combout\ : std_logic;
SIGNAL \dut|rw~0_combout\ : std_logic;
SIGNAL \dut|state.power_up~DUPLICATE_q\ : std_logic;
SIGNAL \dut|clk_count[13]~2_combout\ : std_logic;
SIGNAL \dut|LessThan4~0_combout\ : std_logic;
SIGNAL \dut|LessThan4~1_combout\ : std_logic;
SIGNAL \dut|state.power_up~q\ : std_logic;
SIGNAL \dut|LessThan3~2_combout\ : std_logic;
SIGNAL \dut|LessThan3~6_combout\ : std_logic;
SIGNAL \dut|LessThan3~7_combout\ : std_logic;
SIGNAL \dut|clk_count[13]~1_combout\ : std_logic;
SIGNAL \dut|LessThan6~4_combout\ : std_logic;
SIGNAL \dut|LessThan1~1_combout\ : std_logic;
SIGNAL \dut|LessThan1~2_combout\ : std_logic;
SIGNAL \dut|LessThan2~0_combout\ : std_logic;
SIGNAL \dut|LessThan2~1_combout\ : std_logic;
SIGNAL \dut|LessThan3~8_combout\ : std_logic;
SIGNAL \dut|LessThan3~9_combout\ : std_logic;
SIGNAL \dut|LessThan5~0_combout\ : std_logic;
SIGNAL \dut|LessThan5~1_combout\ : std_logic;
SIGNAL \dut|clk_count[13]~0_combout\ : std_logic;
SIGNAL \dut|clk_count[13]~3_combout\ : std_logic;
SIGNAL \dut|Add0~9_sumout\ : std_logic;
SIGNAL \dut|LessThan3~11_combout\ : std_logic;
SIGNAL \dut|busy~4_combout\ : std_logic;
SIGNAL \dut|state~6_combout\ : std_logic;
SIGNAL \dut|Selector33~0_combout\ : std_logic;
SIGNAL \dut|state.initialize~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \dut|rs~0_combout\ : std_logic;
SIGNAL \dut|rs~1_combout\ : std_logic;
SIGNAL \dut|rs~q\ : std_logic;
SIGNAL \dut|Selector46~4_combout\ : std_logic;
SIGNAL \dut|Selector46~5_combout\ : std_logic;
SIGNAL \dut|LessThan10~0_combout\ : std_logic;
SIGNAL \dut|LessThan10~1_combout\ : std_logic;
SIGNAL \dut|LessThan10~2_combout\ : std_logic;
SIGNAL \dut|LessThan11~0_combout\ : std_logic;
SIGNAL \dut|LessThan11~1_combout\ : std_logic;
SIGNAL \dut|LessThan12~0_combout\ : std_logic;
SIGNAL \dut|LessThan12~1_combout\ : std_logic;
SIGNAL \dut|LessThan12~2_combout\ : std_logic;
SIGNAL \dut|Selector46~6_combout\ : std_logic;
SIGNAL \dut|Selector46~7_combout\ : std_logic;
SIGNAL \dut|Selector46~0_combout\ : std_logic;
SIGNAL \dut|LessThan3~3_combout\ : std_logic;
SIGNAL \dut|LessThan4~2_combout\ : std_logic;
SIGNAL \dut|busy~3_combout\ : std_logic;
SIGNAL \dut|Selector46~3_combout\ : std_logic;
SIGNAL \dut|LessThan3~4_combout\ : std_logic;
SIGNAL \dut|Selector46~2_combout\ : std_logic;
SIGNAL \dut|LessThan5~2_combout\ : std_logic;
SIGNAL \dut|Selector46~1_combout\ : std_logic;
SIGNAL \dut|Selector46~8_combout\ : std_logic;
SIGNAL \dut|e~q\ : std_logic;
SIGNAL \dut|Selector45~0_combout\ : std_logic;
SIGNAL \dut|LessThan3~10_combout\ : std_logic;
SIGNAL \dut|busy~5_combout\ : std_logic;
SIGNAL \dut|Selector45~1_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal25~14_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \s_min~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \s_hour~input_o\ : std_logic;
SIGNAL \s_year~input_o\ : std_logic;
SIGNAL \s_month~input_o\ : std_logic;
SIGNAL \sec[5]~1_combout\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \process_1:char[19]~q\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \process_1:char[20]~q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \process_1:char[21]~q\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \process_1:char[22]~q\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \process_1:char[23]~q\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \process_1:char[24]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \process_1:char[25]~q\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \process_1:char[0]~q\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \process_1:char[1]~q\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \process_1:char[2]~q\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \process_1:char[3]~q\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \process_1:char[4]~q\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \process_1:char[5]~q\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \process_1:char[6]~q\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \process_1:char[7]~q\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \process_1:char[8]~q\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \process_1:char[9]~q\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \process_1:char[10]~q\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \process_1:char[11]~q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \process_1:char[12]~q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \process_1:char[13]~q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \process_1:char[14]~q\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \process_1:char[15]~q\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \process_1:char[16]~q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \process_1:char[17]~q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \process_1:char[18]~q\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \process_1:char[24]~q\ : std_logic;
SIGNAL \sec[5]~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \min[5]~0_combout\ : std_logic;
SIGNAL \min[5]~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \apm[0]~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \apm[0]~2_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \hour[0]~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \apm[10]~1_combout\ : std_logic;
SIGNAL \year[0]~0_combout\ : std_logic;
SIGNAL \sec[5]~0_combout\ : std_logic;
SIGNAL \day[0]~0_combout\ : std_logic;
SIGNAL \day[0]~1_combout\ : std_logic;
SIGNAL \day[1]~2_combout\ : std_logic;
SIGNAL \day[2]~3_combout\ : std_logic;
SIGNAL \year[0]~5_combout\ : std_logic;
SIGNAL \day[0]~5_combout\ : std_logic;
SIGNAL \day[3]~4_combout\ : std_logic;
SIGNAL \day[4]~6_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \month[0]~0_combout\ : std_logic;
SIGNAL \month[0]~1_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \month[0]~2_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \year[0]~2_combout\ : std_logic;
SIGNAL \year[5]~1_combout\ : std_logic;
SIGNAL \year[0]~3_combout\ : std_logic;
SIGNAL \year[5]~4_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[18]~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[17]~0_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[17]~1_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~22_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~18_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~14_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~10_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|StageOut[18]~2_combout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|StageOut[16]~0_combout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|StageOut[16]~1_combout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|op_5~22_cout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \Selector9~4_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~14\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~15\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~22_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~26\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~25_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[19]~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~30_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~22_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal23~0_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~14\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~15\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|StageOut[21]~4_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|StageOut[21]~5_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|StageOut[19]~1_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|StageOut[19]~2_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_5~22_cout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_5~26\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|StageOut[20]~6_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_5~25_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|StageOut[20]~7_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|StageOut[19]~3_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_6~30_cout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_6~22_cout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Selector9~5_combout\ : std_logic;
SIGNAL \Selector9~6_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Selector9~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~1_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~22_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~18_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~14_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~10_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Selector9~10_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[16]~2_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|StageOut[16]~3_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~22_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~18_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~14_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~10_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Selector9~8_combout\ : std_logic;
SIGNAL \Selector9~11_combout\ : std_logic;
SIGNAL \Selector9~12_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~26_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[17]~1_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~22_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~18_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~14_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~10_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Selector9~9_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_6~26_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_6~5_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~14\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~15\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~5_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[19]~1_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[19]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~22_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~6\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~26\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[20]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~25_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[20]~7_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[19]~3_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_5~5_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_6~6\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_6~30_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_6~22_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Selector9~13_combout\ : std_logic;
SIGNAL \Selector9~14_combout\ : std_logic;
SIGNAL \Selector9~15_combout\ : std_logic;
SIGNAL \dut|lcd_data[2]~3_combout\ : std_logic;
SIGNAL \dut|Selector46~9_combout\ : std_logic;
SIGNAL \dut|busy~6_combout\ : std_logic;
SIGNAL \dut|Selector44~0_combout\ : std_logic;
SIGNAL \dut|LessThan4~3_combout\ : std_logic;
SIGNAL \dut|Selector44~1_combout\ : std_logic;
SIGNAL \Selector8~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Selector8~9_combout\ : std_logic;
SIGNAL \Selector8~10_combout\ : std_logic;
SIGNAL \Selector8~5_combout\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Selector8~12_combout\ : std_logic;
SIGNAL \Selector8~6_combout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Selector8~7_combout\ : std_logic;
SIGNAL \Selector8~8_combout\ : std_logic;
SIGNAL \Selector8~13_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Selector8~15_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Selector8~4_combout\ : std_logic;
SIGNAL \Selector8~16_combout\ : std_logic;
SIGNAL \Selector8~14_combout\ : std_logic;
SIGNAL \lcd_bus[1]~DUPLICATE_q\ : std_logic;
SIGNAL \dut|LessThan2~2_combout\ : std_logic;
SIGNAL \dut|Selector42~0_combout\ : std_logic;
SIGNAL \dut|Selector44~2_combout\ : std_logic;
SIGNAL \dut|Selector43~0_combout\ : std_logic;
SIGNAL \dut|LessThan3~12_combout\ : std_logic;
SIGNAL \dut|Selector43~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Selector7~7_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Selector7~6_combout\ : std_logic;
SIGNAL \Selector7~9_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~10_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector7~11_combout\ : std_logic;
SIGNAL \Selector7~8_combout\ : std_logic;
SIGNAL \dut|LessThan1~3_combout\ : std_logic;
SIGNAL \dut|Selector42~1_combout\ : std_logic;
SIGNAL \dut|Selector42~2_combout\ : std_logic;
SIGNAL \Selector6~8_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~9_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Selector6~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Selector6~5_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~10_combout\ : std_logic;
SIGNAL \Selector6~7_combout\ : std_logic;
SIGNAL \lcd_bus[3]~DUPLICATE_q\ : std_logic;
SIGNAL \dut|Selector44~3_combout\ : std_logic;
SIGNAL \dut|Selector41~0_combout\ : std_logic;
SIGNAL \dut|lcd_data[4]~feeder_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \dut|lcd_data[6]~feeder_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \dut|lcd_data[7]~feeder_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \gcontraxt|Add0~69_sumout\ : std_logic;
SIGNAL \gcontraxt|LessThan0~3_combout\ : std_logic;
SIGNAL \gcontraxt|freq_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|LessThan0~2_combout\ : std_logic;
SIGNAL \gcontraxt|LessThan0~0_combout\ : std_logic;
SIGNAL \gcontraxt|LessThan0~1_combout\ : std_logic;
SIGNAL \gcontraxt|LessThan0~4_combout\ : std_logic;
SIGNAL \gcontraxt|LessThan0~5_combout\ : std_logic;
SIGNAL \gcontraxt|Add0~70\ : std_logic;
SIGNAL \gcontraxt|Add0~29_sumout\ : std_logic;
SIGNAL \gcontraxt|freq_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add0~30\ : std_logic;
SIGNAL \gcontraxt|Add0~25_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~26\ : std_logic;
SIGNAL \gcontraxt|Add0~21_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~22\ : std_logic;
SIGNAL \gcontraxt|Add0~45_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~46\ : std_logic;
SIGNAL \gcontraxt|Add0~41_sumout\ : std_logic;
SIGNAL \gcontraxt|freq_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add0~42\ : std_logic;
SIGNAL \gcontraxt|Add0~37_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~38\ : std_logic;
SIGNAL \gcontraxt|Add0~33_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~34\ : std_logic;
SIGNAL \gcontraxt|Add0~53_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~54\ : std_logic;
SIGNAL \gcontraxt|Add0~49_sumout\ : std_logic;
SIGNAL \gcontraxt|freq_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add0~50\ : std_logic;
SIGNAL \gcontraxt|Add0~17_sumout\ : std_logic;
SIGNAL \gcontraxt|freq_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add0~18\ : std_logic;
SIGNAL \gcontraxt|Add0~13_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~14\ : std_logic;
SIGNAL \gcontraxt|Add0~65_sumout\ : std_logic;
SIGNAL \gcontraxt|freq_count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add0~66\ : std_logic;
SIGNAL \gcontraxt|Add0~61_sumout\ : std_logic;
SIGNAL \gcontraxt|freq_count[13]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add0~62\ : std_logic;
SIGNAL \gcontraxt|Add0~57_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~58\ : std_logic;
SIGNAL \gcontraxt|Add0~9_sumout\ : std_logic;
SIGNAL \gcontraxt|freq_count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add0~10\ : std_logic;
SIGNAL \gcontraxt|Add0~5_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~6\ : std_logic;
SIGNAL \gcontraxt|Add0~1_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_count~4_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add2~0_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_count[3]~2_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|pwm_count[4]~1_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[17]~0_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[13]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~69_sumout\ : std_logic;
SIGNAL \gcontraxt|Add1~70\ : std_logic;
SIGNAL \gcontraxt|Add1~65_sumout\ : std_logic;
SIGNAL \gcontraxt|Add1~66\ : std_logic;
SIGNAL \gcontraxt|Add1~61_sumout\ : std_logic;
SIGNAL \gcontraxt|Add1~62\ : std_logic;
SIGNAL \gcontraxt|Add1~57_sumout\ : std_logic;
SIGNAL \gcontraxt|Add1~58\ : std_logic;
SIGNAL \gcontraxt|Add1~21_sumout\ : std_logic;
SIGNAL \gcontraxt|Add1~22\ : std_logic;
SIGNAL \gcontraxt|Add1~25_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~26\ : std_logic;
SIGNAL \gcontraxt|Add1~17_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~18\ : std_logic;
SIGNAL \gcontraxt|Add1~13_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~14\ : std_logic;
SIGNAL \gcontraxt|Add1~29_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~30\ : std_logic;
SIGNAL \gcontraxt|Add1~33_sumout\ : std_logic;
SIGNAL \gcontraxt|Add1~34\ : std_logic;
SIGNAL \gcontraxt|Add1~37_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~38\ : std_logic;
SIGNAL \gcontraxt|Add1~9_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~10\ : std_logic;
SIGNAL \gcontraxt|Add1~5_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~6\ : std_logic;
SIGNAL \gcontraxt|Add1~1_sumout\ : std_logic;
SIGNAL \gcontraxt|LessThan2~1_combout\ : std_logic;
SIGNAL \gcontraxt|LessThan2~0_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~2\ : std_logic;
SIGNAL \gcontraxt|Add1~45_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~46\ : std_logic;
SIGNAL \gcontraxt|Add1~41_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~42\ : std_logic;
SIGNAL \gcontraxt|Add1~49_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~50\ : std_logic;
SIGNAL \gcontraxt|Add1~53_sumout\ : std_logic;
SIGNAL \gcontraxt|LessThan2~2_combout\ : std_logic;
SIGNAL \gcontraxt|LessThan2~3_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_count[1]~0_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_count~3_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|pwm_count~5_combout\ : std_logic;
SIGNAL \gcontraxt|LessThan1~0_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_value~0_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_value~q\ : std_logic;
SIGNAL \constrastup~input_o\ : std_logic;
SIGNAL sec : std_logic_vector(5 DOWNTO 0);
SIGNAL apm : std_logic_vector(19 DOWNTO 0);
SIGNAL year : std_logic_vector(5 DOWNTO 0);
SIGNAL min : std_logic_vector(5 DOWNTO 0);
SIGNAL \dut|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \gcontraxt|freq_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL lcd_bus : std_logic_vector(9 DOWNTO 0);
SIGNAL char : std_logic_vector(25 DOWNTO 0);
SIGNAL \gcontraxt|pwm_step_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL month : std_logic_vector(3 DOWNTO 0);
SIGNAL \gcontraxt|pwm_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL hour : std_logic_vector(3 DOWNTO 0);
SIGNAL day : std_logic_vector(4 DOWNTO 0);
SIGNAL \gcontraxt|ALT_INV_pwm_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \dut|ALT_INV_state.power_up~DUPLICATE_q\ : std_logic;
SIGNAL \dut|ALT_INV_state.initialize~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[24]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[23]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[22]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[21]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_freq_count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_freq_count[13]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_freq_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_freq_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_freq_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_freq_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_freq_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_freq_count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \dut|ALT_INV_clk_count[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_s_year~input_o\ : std_logic;
SIGNAL \ALT_INV_s_month~input_o\ : std_logic;
SIGNAL \ALT_INV_s_hour~input_o\ : std_logic;
SIGNAL \ALT_INV_s_min~input_o\ : std_logic;
SIGNAL \ALT_INV_~GND~combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~10_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~9_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~8_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~11_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~10_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~9_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~16_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~15_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|ALT_INV_StageOut[16]~3_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|ALT_INV_StageOut[16]~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[20]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[20]~6_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[20]~6_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_StageOut[17]~1_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_StageOut[17]~0_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Add7~0_combout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_StageOut[17]~1_combout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_StageOut[17]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~1_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~0_combout\ : std_logic;
SIGNAL \ALT_INV_day[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_year[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \ALT_INV_year[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_year[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_year[5]~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL ALT_INV_year : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_min[5]~0_combout\ : std_logic;
SIGNAL \ALT_INV_day[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_apm[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_sec[5]~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \ALT_INV_month[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_year[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL ALT_INV_day : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL ALT_INV_min : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL ALT_INV_sec : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_sec[5]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_count[1]~0_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux56~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux61~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~5_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~3_combout\ : std_logic;
SIGNAL ALT_INV_hour : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux52~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux62~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~7_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux58~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~14_combout\ : std_logic;
SIGNAL \ALT_INV_Equal9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~3_combout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|ALT_INV_StageOut[16]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux53~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux63~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~13_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux64~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~11_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~10_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~9_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~8_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux54~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~14_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~13_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~12_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~11_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~10_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~7_combout\ : std_logic;
SIGNAL ALT_INV_apm : std_logic_vector(10 DOWNTO 10);
SIGNAL \ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~13_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~14_combout\ : std_logic;
SIGNAL \ALT_INV_char~8_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux55~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux65~0_combout\ : std_logic;
SIGNAL ALT_INV_month : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~11_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector34~0_combout\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~6_combout\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~5_combout\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~4_combout\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~3_combout\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_busy~q\ : std_logic;
SIGNAL \ALT_INV_WideNor0~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~13_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~11_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~1_combout\ : std_logic;
SIGNAL \ALT_INV_char~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_char~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_char~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_char~4_combout\ : std_logic;
SIGNAL \ALT_INV_char~3_combout\ : std_logic;
SIGNAL \ALT_INV_char~2_combout\ : std_logic;
SIGNAL \ALT_INV_char~1_combout\ : std_logic;
SIGNAL \ALT_INV_char~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_clk_count[13]~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_clk_count[13]~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_clk_count[13]~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \gcontraxt|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL ALT_INV_lcd_bus : std_logic_vector(9 DOWNTO 0);
SIGNAL \dut|ALT_INV_Selector41~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector44~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector42~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector43~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector44~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector42~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~12_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector44~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_busy~6_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan4~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~9_combout\ : std_logic;
SIGNAL \dut|ALT_INV_lcd_data[2]~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_lcd_data[2]~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_state~6_combout\ : std_logic;
SIGNAL \dut|ALT_INV_lcd_data[2]~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector45~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_busy~5_combout\ : std_logic;
SIGNAL \dut|ALT_INV_busy~4_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~11_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~10_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~7_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~6_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan9~6_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan9~5_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan9~4_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan9~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan10~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan10~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan12~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan12~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan12~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan11~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan11~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan10~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan9~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan9~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~5_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~4_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_busy~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan8~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan8~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \dut|ALT_INV_busy~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan4~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_rs~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_state.ready~q\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~q\ : std_logic;
SIGNAL \dut|ALT_INV_rw~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_state.power_up~q\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_state.send~q\ : std_logic;
SIGNAL \dut|ALT_INV_state.initialize~q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_value~q\ : std_logic;
SIGNAL \dut|ALT_INV_e~q\ : std_logic;
SIGNAL \dut|ALT_INV_rs~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[0]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[1]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[2]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[3]~q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_process_1:char[4]~q\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \ALT_INV_process_1:char[5]~q\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ : std_logic;
SIGNAL \ALT_INV_process_1:char[6]~q\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_freq_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~13_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~13_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~13_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_process_1:char[25]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[23]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[22]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[21]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[20]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[19]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[15]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[14]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[13]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[12]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[8]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[7]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[9]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[11]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[10]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[16]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[17]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[18]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[24]~q\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Div3|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ : std_logic;
SIGNAL \Mod4|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ : std_logic;
SIGNAL \Mod3|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Div4|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL ALT_INV_char : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \dut|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_clkin <= clkin;
rw <= ww_rw;
rs <= ww_rs;
e <= ww_e;
lcd_data <= ww_lcd_data;
ww_constrastup <= constrastup;
ww_s_min <= s_min;
ww_s_hour <= s_hour;
ww_s_month <= s_month;
ww_s_year <= s_year;
led <= ww_led;
leddbkey <= ww_leddbkey;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\gcontraxt|ALT_INV_pwm_count[1]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_count[1]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_count[0]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_count[0]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_count[3]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_count[3]~DUPLICATE_q\;
\dut|ALT_INV_state.power_up~DUPLICATE_q\ <= NOT \dut|state.power_up~DUPLICATE_q\;
\dut|ALT_INV_state.initialize~DUPLICATE_q\ <= NOT \dut|state.initialize~DUPLICATE_q\;
\ALT_INV_process_1:char[24]~DUPLICATE_q\ <= NOT \process_1:char[24]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[17]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[17]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[16]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[16]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[14]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[14]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[15]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[15]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[10]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[10]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[8]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[8]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[5]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[5]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[6]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[6]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[7]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[7]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[11]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[11]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[12]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[12]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[13]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[13]~DUPLICATE_q\;
\ALT_INV_char[6]~DUPLICATE_q\ <= NOT \char[6]~DUPLICATE_q\;
\ALT_INV_char[5]~DUPLICATE_q\ <= NOT \char[5]~DUPLICATE_q\;
\ALT_INV_char[12]~DUPLICATE_q\ <= NOT \char[12]~DUPLICATE_q\;
\ALT_INV_char[14]~DUPLICATE_q\ <= NOT \char[14]~DUPLICATE_q\;
\ALT_INV_char[15]~DUPLICATE_q\ <= NOT \char[15]~DUPLICATE_q\;
\ALT_INV_char[7]~DUPLICATE_q\ <= NOT \char[7]~DUPLICATE_q\;
\ALT_INV_char[8]~DUPLICATE_q\ <= NOT \char[8]~DUPLICATE_q\;
\ALT_INV_char[9]~DUPLICATE_q\ <= NOT \char[9]~DUPLICATE_q\;
\ALT_INV_char[23]~DUPLICATE_q\ <= NOT \char[23]~DUPLICATE_q\;
\ALT_INV_char[22]~DUPLICATE_q\ <= NOT \char[22]~DUPLICATE_q\;
\ALT_INV_char[19]~DUPLICATE_q\ <= NOT \char[19]~DUPLICATE_q\;
\ALT_INV_char[17]~DUPLICATE_q\ <= NOT \char[17]~DUPLICATE_q\;
\ALT_INV_char[21]~DUPLICATE_q\ <= NOT \char[21]~DUPLICATE_q\;
\gcontraxt|ALT_INV_freq_count[12]~DUPLICATE_q\ <= NOT \gcontraxt|freq_count[12]~DUPLICATE_q\;
\gcontraxt|ALT_INV_freq_count[13]~DUPLICATE_q\ <= NOT \gcontraxt|freq_count[13]~DUPLICATE_q\;
\gcontraxt|ALT_INV_freq_count[8]~DUPLICATE_q\ <= NOT \gcontraxt|freq_count[8]~DUPLICATE_q\;
\gcontraxt|ALT_INV_freq_count[9]~DUPLICATE_q\ <= NOT \gcontraxt|freq_count[9]~DUPLICATE_q\;
\gcontraxt|ALT_INV_freq_count[5]~DUPLICATE_q\ <= NOT \gcontraxt|freq_count[5]~DUPLICATE_q\;
\gcontraxt|ALT_INV_freq_count[1]~DUPLICATE_q\ <= NOT \gcontraxt|freq_count[1]~DUPLICATE_q\;
\gcontraxt|ALT_INV_freq_count[10]~DUPLICATE_q\ <= NOT \gcontraxt|freq_count[10]~DUPLICATE_q\;
\gcontraxt|ALT_INV_freq_count[15]~DUPLICATE_q\ <= NOT \gcontraxt|freq_count[15]~DUPLICATE_q\;
\dut|ALT_INV_clk_count[21]~DUPLICATE_q\ <= NOT \dut|clk_count[21]~DUPLICATE_q\;
\ALT_INV_s_year~input_o\ <= NOT \s_year~input_o\;
\ALT_INV_s_month~input_o\ <= NOT \s_month~input_o\;
\ALT_INV_s_hour~input_o\ <= NOT \s_hour~input_o\;
\ALT_INV_s_min~input_o\ <= NOT \s_min~input_o\;
\ALT_INV_~GND~combout\ <= NOT \~GND~combout\;
\ALT_INV_Selector6~10_combout\ <= NOT \Selector6~10_combout\;
\ALT_INV_Selector6~9_combout\ <= NOT \Selector6~9_combout\;
\ALT_INV_Selector6~8_combout\ <= NOT \Selector6~8_combout\;
\ALT_INV_Selector7~11_combout\ <= NOT \Selector7~11_combout\;
\ALT_INV_Selector7~10_combout\ <= NOT \Selector7~10_combout\;
\ALT_INV_Selector7~9_combout\ <= NOT \Selector7~9_combout\;
\ALT_INV_Selector8~16_combout\ <= NOT \Selector8~16_combout\;
\ALT_INV_Selector8~15_combout\ <= NOT \Selector8~15_combout\;
\Div2|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\ <= NOT \Div2|auto_generated|divider|divider|StageOut[15]~7_combout\;
\Div3|auto_generated|divider|divider|ALT_INV_StageOut[16]~3_combout\ <= NOT \Div3|auto_generated|divider|divider|StageOut[16]~3_combout\;
\Div3|auto_generated|divider|divider|ALT_INV_StageOut[16]~2_combout\ <= NOT \Div3|auto_generated|divider|divider|StageOut[16]~2_combout\;
\Div4|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\ <= NOT \Div4|auto_generated|divider|divider|StageOut[15]~7_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\ <= NOT \Div1|auto_generated|divider|divider|StageOut[15]~7_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[20]~7_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[20]~6_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[20]~6_combout\;
\Div2|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\ <= NOT \Div2|auto_generated|divider|divider|StageOut[16]~6_combout\;
\Div2|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ <= NOT \Div2|auto_generated|divider|divider|StageOut[16]~5_combout\;
\Div2|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\ <= NOT \Div2|auto_generated|divider|divider|StageOut[16]~4_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[20]~6_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\;
\Mod4|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\ <= NOT \Mod4|auto_generated|divider|divider|StageOut[20]~7_combout\;
\Mod4|auto_generated|divider|divider|ALT_INV_StageOut[20]~6_combout\ <= NOT \Mod4|auto_generated|divider|divider|StageOut[20]~6_combout\;
\Div4|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\ <= NOT \Div4|auto_generated|divider|divider|StageOut[16]~6_combout\;
\Div4|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ <= NOT \Div4|auto_generated|divider|divider|StageOut[16]~5_combout\;
\Div4|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\ <= NOT \Div4|auto_generated|divider|divider|StageOut[16]~4_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\ <= NOT \Div1|auto_generated|divider|divider|StageOut[16]~6_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\ <= NOT \Div1|auto_generated|divider|divider|StageOut[16]~5_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\ <= NOT \Div1|auto_generated|divider|divider|StageOut[16]~4_combout\;
\Div2|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\ <= NOT \Div2|auto_generated|divider|divider|StageOut[18]~3_combout\;
\Div2|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\ <= NOT \Div2|auto_generated|divider|divider|StageOut[18]~2_combout\;
\Div4|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\ <= NOT \Div4|auto_generated|divider|divider|StageOut[18]~3_combout\;
\Div4|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\ <= NOT \Div4|auto_generated|divider|divider|StageOut[18]~2_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\ <= NOT \Div1|auto_generated|divider|divider|StageOut[18]~3_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\ <= NOT \Div1|auto_generated|divider|divider|StageOut[18]~2_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[21]~5_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[21]~4_combout\;
\Div2|auto_generated|divider|divider|ALT_INV_StageOut[17]~1_combout\ <= NOT \Div2|auto_generated|divider|divider|StageOut[17]~1_combout\;
\Div2|auto_generated|divider|divider|ALT_INV_StageOut[17]~0_combout\ <= NOT \Div2|auto_generated|divider|divider|StageOut[17]~0_combout\;
\Div3|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\ <= NOT \Div3|auto_generated|divider|divider|StageOut[18]~1_combout\;
\Div3|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ <= NOT \Div3|auto_generated|divider|divider|StageOut[18]~0_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[21]~5_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\;
\Mod4|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\ <= NOT \Mod4|auto_generated|divider|divider|StageOut[21]~5_combout\;
\Mod4|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\ <= NOT \Mod4|auto_generated|divider|divider|StageOut[21]~4_combout\;
\ALT_INV_Add7~0_combout\ <= NOT \Add7~0_combout\;
\Mod3|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\ <= NOT \Mod3|auto_generated|divider|divider|StageOut[18]~3_combout\;
\Mod3|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\ <= NOT \Mod3|auto_generated|divider|divider|StageOut[18]~2_combout\;
\Div4|auto_generated|divider|divider|ALT_INV_StageOut[17]~1_combout\ <= NOT \Div4|auto_generated|divider|divider|StageOut[17]~1_combout\;
\Div4|auto_generated|divider|divider|ALT_INV_StageOut[17]~0_combout\ <= NOT \Div4|auto_generated|divider|divider|StageOut[17]~0_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~1_combout\ <= NOT \Div1|auto_generated|divider|divider|StageOut[17]~1_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~0_combout\ <= NOT \Div1|auto_generated|divider|divider|StageOut[17]~0_combout\;
\ALT_INV_day[0]~5_combout\ <= NOT \day[0]~5_combout\;
\ALT_INV_year[0]~5_combout\ <= NOT \year[0]~5_combout\;
\ALT_INV_LessThan4~1_combout\ <= NOT \LessThan4~1_combout\;
\ALT_INV_LessThan3~1_combout\ <= NOT \LessThan3~1_combout\;
\ALT_INV_year[0]~3_combout\ <= NOT \year[0]~3_combout\;
\ALT_INV_year[0]~2_combout\ <= NOT \year[0]~2_combout\;
\ALT_INV_year[5]~1_combout\ <= NOT \year[5]~1_combout\;
\ALT_INV_LessThan8~0_combout\ <= NOT \LessThan8~0_combout\;
ALT_INV_year(4) <= NOT year(4);
ALT_INV_year(5) <= NOT year(5);
\ALT_INV_min[5]~0_combout\ <= NOT \min[5]~0_combout\;
\ALT_INV_day[0]~0_combout\ <= NOT \day[0]~0_combout\;
\ALT_INV_apm[0]~0_combout\ <= NOT \apm[0]~0_combout\;
\ALT_INV_sec[5]~1_combout\ <= NOT \sec[5]~1_combout\;
\ALT_INV_LessThan2~4_combout\ <= NOT \LessThan2~4_combout\;
\ALT_INV_LessThan5~0_combout\ <= NOT \LessThan5~0_combout\;
\ALT_INV_LessThan7~0_combout\ <= NOT \LessThan7~0_combout\;
\ALT_INV_month[0]~0_combout\ <= NOT \month[0]~0_combout\;
\ALT_INV_year[0]~0_combout\ <= NOT \year[0]~0_combout\;
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
ALT_INV_day(4) <= NOT day(4);
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
ALT_INV_min(4) <= NOT min(4);
ALT_INV_min(5) <= NOT min(5);
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
ALT_INV_sec(4) <= NOT sec(4);
ALT_INV_sec(5) <= NOT sec(5);
\ALT_INV_sec[5]~0_combout\ <= NOT \sec[5]~0_combout\;
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\gcontraxt|ALT_INV_Add2~0_combout\ <= NOT \gcontraxt|Add2~0_combout\;
\gcontraxt|ALT_INV_pwm_count[1]~0_combout\ <= NOT \gcontraxt|pwm_count[1]~0_combout\;
\gcontraxt|ALT_INV_LessThan2~3_combout\ <= NOT \gcontraxt|LessThan2~3_combout\;
\gcontraxt|ALT_INV_LessThan2~2_combout\ <= NOT \gcontraxt|LessThan2~2_combout\;
\gcontraxt|ALT_INV_LessThan2~1_combout\ <= NOT \gcontraxt|LessThan2~1_combout\;
\gcontraxt|ALT_INV_LessThan2~0_combout\ <= NOT \gcontraxt|LessThan2~0_combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_Selector3~1_combout\ <= NOT \Selector3~1_combout\;
\ALT_INV_Selector5~3_combout\ <= NOT \Selector5~3_combout\;
\ALT_INV_Selector5~2_combout\ <= NOT \Selector5~2_combout\;
\ALT_INV_Selector5~1_combout\ <= NOT \Selector5~1_combout\;
\ALT_INV_Mux56~0_combout\ <= NOT \Mux56~0_combout\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
\ALT_INV_Mux61~0_combout\ <= NOT \Mux61~0_combout\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_Selector6~6_combout\ <= NOT \Selector6~6_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[19]~3_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[19]~2_combout\;
ALT_INV_min(3) <= NOT min(3);
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[19]~1_combout\;
\ALT_INV_Selector6~5_combout\ <= NOT \Selector6~5_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[19]~3_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[19]~2_combout\;
ALT_INV_sec(3) <= NOT sec(3);
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[19]~1_combout\;
\Mod4|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\ <= NOT \Mod4|auto_generated|divider|divider|StageOut[19]~3_combout\;
\Mod4|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\ <= NOT \Mod4|auto_generated|divider|divider|StageOut[19]~2_combout\;
ALT_INV_year(3) <= NOT year(3);
\Mod4|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\ <= NOT \Mod4|auto_generated|divider|divider|StageOut[19]~1_combout\;
\ALT_INV_Selector6~4_combout\ <= NOT \Selector6~4_combout\;
\ALT_INV_Selector6~3_combout\ <= NOT \Selector6~3_combout\;
ALT_INV_hour(3) <= NOT hour(3);
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Selector6~2_combout\ <= NOT \Selector6~2_combout\;
\ALT_INV_Selector6~1_combout\ <= NOT \Selector6~1_combout\;
ALT_INV_day(3) <= NOT day(3);
\ALT_INV_Mux52~0_combout\ <= NOT \Mux52~0_combout\;
\ALT_INV_Equal12~0_combout\ <= NOT \Equal12~0_combout\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_Mux62~0_combout\ <= NOT \Mux62~0_combout\;
\ALT_INV_Selector7~7_combout\ <= NOT \Selector7~7_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[18]~0_combout\;
ALT_INV_min(2) <= NOT min(2);
\ALT_INV_Selector7~6_combout\ <= NOT \Selector7~6_combout\;
\Mod2|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ <= NOT \Mod2|auto_generated|divider|divider|StageOut[18]~0_combout\;
ALT_INV_sec(2) <= NOT sec(2);
\Mod4|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ <= NOT \Mod4|auto_generated|divider|divider|StageOut[18]~0_combout\;
ALT_INV_year(2) <= NOT year(2);
\ALT_INV_Selector7~5_combout\ <= NOT \Selector7~5_combout\;
\ALT_INV_Mux58~0_combout\ <= NOT \Mux58~0_combout\;
\ALT_INV_Equal0~14_combout\ <= NOT \Equal0~14_combout\;
\ALT_INV_Equal9~1_combout\ <= NOT \Equal9~1_combout\;
\ALT_INV_Selector7~4_combout\ <= NOT \Selector7~4_combout\;
\ALT_INV_Selector7~3_combout\ <= NOT \Selector7~3_combout\;
\Mod3|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\ <= NOT \Mod3|auto_generated|divider|divider|StageOut[16]~1_combout\;
ALT_INV_day(2) <= NOT day(2);
\Mod3|auto_generated|divider|divider|ALT_INV_StageOut[16]~0_combout\ <= NOT \Mod3|auto_generated|divider|divider|StageOut[16]~0_combout\;
\ALT_INV_Selector7~2_combout\ <= NOT \Selector7~2_combout\;
\ALT_INV_Selector7~1_combout\ <= NOT \Selector7~1_combout\;
ALT_INV_hour(2) <= NOT hour(2);
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_Mux53~0_combout\ <= NOT \Mux53~0_combout\;
\ALT_INV_Mux63~0_combout\ <= NOT \Mux63~0_combout\;
\ALT_INV_Selector8~13_combout\ <= NOT \Selector8~13_combout\;
\ALT_INV_Selector8~12_combout\ <= NOT \Selector8~12_combout\;
\ALT_INV_Mux64~0_combout\ <= NOT \Mux64~0_combout\;
\ALT_INV_Selector8~11_combout\ <= NOT \Selector8~11_combout\;
\ALT_INV_Selector8~10_combout\ <= NOT \Selector8~10_combout\;
\ALT_INV_Selector8~9_combout\ <= NOT \Selector8~9_combout\;
ALT_INV_hour(1) <= NOT hour(1);
\ALT_INV_Selector8~8_combout\ <= NOT \Selector8~8_combout\;
\ALT_INV_Selector8~7_combout\ <= NOT \Selector8~7_combout\;
ALT_INV_day(1) <= NOT day(1);
\ALT_INV_Selector8~6_combout\ <= NOT \Selector8~6_combout\;
\ALT_INV_Selector8~5_combout\ <= NOT \Selector8~5_combout\;
\ALT_INV_Selector8~4_combout\ <= NOT \Selector8~4_combout\;
\ALT_INV_Selector8~3_combout\ <= NOT \Selector8~3_combout\;
\ALT_INV_Equal13~0_combout\ <= NOT \Equal13~0_combout\;
\ALT_INV_Selector8~2_combout\ <= NOT \Selector8~2_combout\;
ALT_INV_min(1) <= NOT min(1);
\ALT_INV_Selector8~1_combout\ <= NOT \Selector8~1_combout\;
ALT_INV_year(1) <= NOT year(1);
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_Mux54~0_combout\ <= NOT \Mux54~0_combout\;
ALT_INV_sec(1) <= NOT sec(1);
\ALT_INV_Selector9~14_combout\ <= NOT \Selector9~14_combout\;
\ALT_INV_Selector9~13_combout\ <= NOT \Selector9~13_combout\;
ALT_INV_sec(0) <= NOT sec(0);
\ALT_INV_Selector9~12_combout\ <= NOT \Selector9~12_combout\;
\ALT_INV_Selector9~11_combout\ <= NOT \Selector9~11_combout\;
\ALT_INV_Selector9~10_combout\ <= NOT \Selector9~10_combout\;
\ALT_INV_Selector9~9_combout\ <= NOT \Selector9~9_combout\;
\ALT_INV_Equal6~0_combout\ <= NOT \Equal6~0_combout\;
\ALT_INV_Selector9~8_combout\ <= NOT \Selector9~8_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Equal7~1_combout\ <= NOT \Equal7~1_combout\;
\ALT_INV_Selector9~7_combout\ <= NOT \Selector9~7_combout\;
ALT_INV_apm(10) <= NOT apm(10);
\ALT_INV_Equal9~0_combout\ <= NOT \Equal9~0_combout\;
\ALT_INV_Equal0~13_combout\ <= NOT \Equal0~13_combout\;
\ALT_INV_Selector9~6_combout\ <= NOT \Selector9~6_combout\;
\ALT_INV_Selector9~5_combout\ <= NOT \Selector9~5_combout\;
ALT_INV_year(0) <= NOT year(0);
ALT_INV_min(0) <= NOT min(0);
\ALT_INV_Equal23~0_combout\ <= NOT \Equal23~0_combout\;
\ALT_INV_Equal7~0_combout\ <= NOT \Equal7~0_combout\;
\ALT_INV_Equal4~1_combout\ <= NOT \Equal4~1_combout\;
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
\ALT_INV_Selector9~4_combout\ <= NOT \Selector9~4_combout\;
\ALT_INV_Selector9~3_combout\ <= NOT \Selector9~3_combout\;
ALT_INV_day(0) <= NOT day(0);
\ALT_INV_Equal15~0_combout\ <= NOT \Equal15~0_combout\;
\ALT_INV_Equal0~12_combout\ <= NOT \Equal0~12_combout\;
\ALT_INV_Equal25~14_combout\ <= NOT \Equal25~14_combout\;
\ALT_INV_char~8_combout\ <= NOT \char~8_combout\;
\ALT_INV_Selector9~2_combout\ <= NOT \Selector9~2_combout\;
\ALT_INV_Selector9~1_combout\ <= NOT \Selector9~1_combout\;
ALT_INV_hour(0) <= NOT hour(0);
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
\ALT_INV_Mux55~0_combout\ <= NOT \Mux55~0_combout\;
\ALT_INV_Mux65~0_combout\ <= NOT \Mux65~0_combout\;
ALT_INV_month(3) <= NOT month(3);
ALT_INV_month(2) <= NOT month(2);
ALT_INV_month(1) <= NOT month(1);
ALT_INV_month(0) <= NOT month(0);
\ALT_INV_Equal0~11_combout\ <= NOT \Equal0~11_combout\;
\ALT_INV_Equal0~10_combout\ <= NOT \Equal0~10_combout\;
\ALT_INV_Equal0~9_combout\ <= NOT \Equal0~9_combout\;
\ALT_INV_Equal0~8_combout\ <= NOT \Equal0~8_combout\;
\dut|ALT_INV_Selector34~0_combout\ <= NOT \dut|Selector34~0_combout\;
\ALT_INV_lcd_enable~6_combout\ <= NOT \lcd_enable~6_combout\;
\ALT_INV_lcd_enable~5_combout\ <= NOT \lcd_enable~5_combout\;
\ALT_INV_lcd_enable~4_combout\ <= NOT \lcd_enable~4_combout\;
\ALT_INV_lcd_enable~3_combout\ <= NOT \lcd_enable~3_combout\;
\ALT_INV_lcd_enable~2_combout\ <= NOT \lcd_enable~2_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\dut|ALT_INV_busy~q\ <= NOT \dut|busy~q\;
\ALT_INV_WideNor0~1_combout\ <= NOT \WideNor0~1_combout\;
\ALT_INV_WideNor0~0_combout\ <= NOT \WideNor0~0_combout\;
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_Equal25~13_combout\ <= NOT \Equal25~13_combout\;
\ALT_INV_Equal25~12_combout\ <= NOT \Equal25~12_combout\;
\ALT_INV_Equal25~11_combout\ <= NOT \Equal25~11_combout\;
\ALT_INV_Equal25~10_combout\ <= NOT \Equal25~10_combout\;
\ALT_INV_Equal25~9_combout\ <= NOT \Equal25~9_combout\;
\ALT_INV_Equal25~8_combout\ <= NOT \Equal25~8_combout\;
\ALT_INV_Equal25~7_combout\ <= NOT \Equal25~7_combout\;
\ALT_INV_Equal25~6_combout\ <= NOT \Equal25~6_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal25~5_combout\ <= NOT \Equal25~5_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal25~4_combout\ <= NOT \Equal25~4_combout\;
\ALT_INV_Equal25~3_combout\ <= NOT \Equal25~3_combout\;
\ALT_INV_Equal25~2_combout\ <= NOT \Equal25~2_combout\;
\ALT_INV_Equal25~1_combout\ <= NOT \Equal25~1_combout\;
\ALT_INV_char~7_combout\ <= NOT \char~7_combout\;
\ALT_INV_Equal25~0_combout\ <= NOT \Equal25~0_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_char~6_combout\ <= NOT \char~6_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_char~5_combout\ <= NOT \char~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_char~4_combout\ <= NOT \char~4_combout\;
\ALT_INV_char~3_combout\ <= NOT \char~3_combout\;
\ALT_INV_char~2_combout\ <= NOT \char~2_combout\;
\ALT_INV_char~1_combout\ <= NOT \char~1_combout\;
\ALT_INV_char~0_combout\ <= NOT \char~0_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_lcd_enable~1_combout\ <= NOT \lcd_enable~1_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_lcd_enable~0_combout\ <= NOT \lcd_enable~0_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\dut|ALT_INV_clk_count[13]~2_combout\ <= NOT \dut|clk_count[13]~2_combout\;
\dut|ALT_INV_clk_count[13]~1_combout\ <= NOT \dut|clk_count[13]~1_combout\;
\dut|ALT_INV_clk_count[13]~0_combout\ <= NOT \dut|clk_count[13]~0_combout\;
\dut|ALT_INV_LessThan0~6_combout\ <= NOT \dut|LessThan0~6_combout\;
\gcontraxt|ALT_INV_LessThan1~0_combout\ <= NOT \gcontraxt|LessThan1~0_combout\;
\gcontraxt|ALT_INV_pwm_count\(2) <= NOT \gcontraxt|pwm_count\(2);
\gcontraxt|ALT_INV_pwm_count\(1) <= NOT \gcontraxt|pwm_count\(1);
\gcontraxt|ALT_INV_pwm_count\(0) <= NOT \gcontraxt|pwm_count\(0);
\gcontraxt|ALT_INV_pwm_count\(3) <= NOT \gcontraxt|pwm_count\(3);
\gcontraxt|ALT_INV_pwm_count\(4) <= NOT \gcontraxt|pwm_count\(4);
\gcontraxt|ALT_INV_LessThan0~5_combout\ <= NOT \gcontraxt|LessThan0~5_combout\;
\gcontraxt|ALT_INV_LessThan0~4_combout\ <= NOT \gcontraxt|LessThan0~4_combout\;
\gcontraxt|ALT_INV_LessThan0~3_combout\ <= NOT \gcontraxt|LessThan0~3_combout\;
\gcontraxt|ALT_INV_LessThan0~2_combout\ <= NOT \gcontraxt|LessThan0~2_combout\;
\gcontraxt|ALT_INV_LessThan0~1_combout\ <= NOT \gcontraxt|LessThan0~1_combout\;
\gcontraxt|ALT_INV_LessThan0~0_combout\ <= NOT \gcontraxt|LessThan0~0_combout\;
ALT_INV_lcd_bus(7) <= NOT lcd_bus(7);
ALT_INV_lcd_bus(6) <= NOT lcd_bus(6);
ALT_INV_lcd_bus(5) <= NOT lcd_bus(5);
ALT_INV_lcd_bus(4) <= NOT lcd_bus(4);
\dut|ALT_INV_Selector41~0_combout\ <= NOT \dut|Selector41~0_combout\;
\dut|ALT_INV_Selector44~3_combout\ <= NOT \dut|Selector44~3_combout\;
ALT_INV_lcd_bus(3) <= NOT lcd_bus(3);
\dut|ALT_INV_Selector42~1_combout\ <= NOT \dut|Selector42~1_combout\;
\dut|ALT_INV_LessThan1~3_combout\ <= NOT \dut|LessThan1~3_combout\;
ALT_INV_lcd_bus(2) <= NOT lcd_bus(2);
\dut|ALT_INV_Selector43~0_combout\ <= NOT \dut|Selector43~0_combout\;
\dut|ALT_INV_Selector44~2_combout\ <= NOT \dut|Selector44~2_combout\;
\dut|ALT_INV_Selector42~0_combout\ <= NOT \dut|Selector42~0_combout\;
\dut|ALT_INV_LessThan2~2_combout\ <= NOT \dut|LessThan2~2_combout\;
\dut|ALT_INV_LessThan3~12_combout\ <= NOT \dut|LessThan3~12_combout\;
ALT_INV_lcd_bus(1) <= NOT lcd_bus(1);
\dut|ALT_INV_Selector44~0_combout\ <= NOT \dut|Selector44~0_combout\;
\dut|ALT_INV_busy~6_combout\ <= NOT \dut|busy~6_combout\;
\dut|ALT_INV_LessThan4~3_combout\ <= NOT \dut|LessThan4~3_combout\;
\dut|ALT_INV_Selector46~9_combout\ <= NOT \dut|Selector46~9_combout\;
\dut|ALT_INV_lcd_data[2]~2_combout\ <= NOT \dut|lcd_data[2]~2_combout\;
\dut|ALT_INV_lcd_data[2]~1_combout\ <= NOT \dut|lcd_data[2]~1_combout\;
\dut|ALT_INV_state~6_combout\ <= NOT \dut|state~6_combout\;
\dut|ALT_INV_lcd_data[2]~0_combout\ <= NOT \dut|lcd_data[2]~0_combout\;
ALT_INV_lcd_bus(0) <= NOT lcd_bus(0);
\dut|ALT_INV_Selector45~0_combout\ <= NOT \dut|Selector45~0_combout\;
\dut|ALT_INV_busy~5_combout\ <= NOT \dut|busy~5_combout\;
\dut|ALT_INV_busy~4_combout\ <= NOT \dut|busy~4_combout\;
\dut|ALT_INV_LessThan3~11_combout\ <= NOT \dut|LessThan3~11_combout\;
\dut|ALT_INV_LessThan3~10_combout\ <= NOT \dut|LessThan3~10_combout\;
\dut|ALT_INV_Selector46~7_combout\ <= NOT \dut|Selector46~7_combout\;
\dut|ALT_INV_Selector46~6_combout\ <= NOT \dut|Selector46~6_combout\;
\dut|ALT_INV_LessThan9~6_combout\ <= NOT \dut|LessThan9~6_combout\;
\dut|ALT_INV_LessThan9~5_combout\ <= NOT \dut|LessThan9~5_combout\;
\dut|ALT_INV_LessThan9~4_combout\ <= NOT \dut|LessThan9~4_combout\;
\dut|ALT_INV_LessThan9~3_combout\ <= NOT \dut|LessThan9~3_combout\;
\dut|ALT_INV_LessThan10~2_combout\ <= NOT \dut|LessThan10~2_combout\;
\dut|ALT_INV_LessThan10~1_combout\ <= NOT \dut|LessThan10~1_combout\;
\dut|ALT_INV_LessThan12~2_combout\ <= NOT \dut|LessThan12~2_combout\;
\dut|ALT_INV_LessThan12~1_combout\ <= NOT \dut|LessThan12~1_combout\;
\dut|ALT_INV_LessThan12~0_combout\ <= NOT \dut|LessThan12~0_combout\;
\dut|ALT_INV_LessThan11~1_combout\ <= NOT \dut|LessThan11~1_combout\;
\dut|ALT_INV_LessThan11~0_combout\ <= NOT \dut|LessThan11~0_combout\;
\dut|ALT_INV_LessThan10~0_combout\ <= NOT \dut|LessThan10~0_combout\;
\dut|ALT_INV_LessThan9~2_combout\ <= NOT \dut|LessThan9~2_combout\;
\dut|ALT_INV_LessThan9~1_combout\ <= NOT \dut|LessThan9~1_combout\;
\dut|ALT_INV_Selector46~5_combout\ <= NOT \dut|Selector46~5_combout\;
\dut|ALT_INV_Selector46~4_combout\ <= NOT \dut|Selector46~4_combout\;
\dut|ALT_INV_LessThan1~2_combout\ <= NOT \dut|LessThan1~2_combout\;
\dut|ALT_INV_LessThan6~4_combout\ <= NOT \dut|LessThan6~4_combout\;
\dut|ALT_INV_LessThan1~1_combout\ <= NOT \dut|LessThan1~1_combout\;
\dut|ALT_INV_LessThan3~9_combout\ <= NOT \dut|LessThan3~9_combout\;
\dut|ALT_INV_LessThan3~8_combout\ <= NOT \dut|LessThan3~8_combout\;
\dut|ALT_INV_LessThan3~7_combout\ <= NOT \dut|LessThan3~7_combout\;
\dut|ALT_INV_Selector46~3_combout\ <= NOT \dut|Selector46~3_combout\;
\dut|ALT_INV_busy~3_combout\ <= NOT \dut|busy~3_combout\;
\dut|ALT_INV_LessThan6~3_combout\ <= NOT \dut|LessThan6~3_combout\;
\dut|ALT_INV_LessThan6~2_combout\ <= NOT \dut|LessThan6~2_combout\;
\dut|ALT_INV_LessThan6~1_combout\ <= NOT \dut|LessThan6~1_combout\;
\dut|ALT_INV_LessThan3~6_combout\ <= NOT \dut|LessThan3~6_combout\;
\dut|ALT_INV_Selector46~2_combout\ <= NOT \dut|Selector46~2_combout\;
\dut|ALT_INV_LessThan8~2_combout\ <= NOT \dut|LessThan8~2_combout\;
\dut|ALT_INV_LessThan8~1_combout\ <= NOT \dut|LessThan8~1_combout\;
\dut|ALT_INV_LessThan8~0_combout\ <= NOT \dut|LessThan8~0_combout\;
\dut|ALT_INV_LessThan3~5_combout\ <= NOT \dut|LessThan3~5_combout\;
\dut|ALT_INV_LessThan6~0_combout\ <= NOT \dut|LessThan6~0_combout\;
\dut|ALT_INV_LessThan7~1_combout\ <= NOT \dut|LessThan7~1_combout\;
\dut|ALT_INV_LessThan7~0_combout\ <= NOT \dut|LessThan7~0_combout\;
\dut|ALT_INV_LessThan1~0_combout\ <= NOT \dut|LessThan1~0_combout\;
\dut|ALT_INV_LessThan3~4_combout\ <= NOT \dut|LessThan3~4_combout\;
\dut|ALT_INV_busy~2_combout\ <= NOT \dut|busy~2_combout\;
\dut|ALT_INV_Selector46~1_combout\ <= NOT \dut|Selector46~1_combout\;
\dut|ALT_INV_LessThan4~2_combout\ <= NOT \dut|LessThan4~2_combout\;
\dut|ALT_INV_LessThan4~1_combout\ <= NOT \dut|LessThan4~1_combout\;
\dut|ALT_INV_LessThan4~0_combout\ <= NOT \dut|LessThan4~0_combout\;
\dut|ALT_INV_LessThan5~2_combout\ <= NOT \dut|LessThan5~2_combout\;
\dut|ALT_INV_LessThan5~1_combout\ <= NOT \dut|LessThan5~1_combout\;
\dut|ALT_INV_LessThan5~0_combout\ <= NOT \dut|LessThan5~0_combout\;
\dut|ALT_INV_LessThan2~1_combout\ <= NOT \dut|LessThan2~1_combout\;
\dut|ALT_INV_LessThan2~0_combout\ <= NOT \dut|LessThan2~0_combout\;
\dut|ALT_INV_LessThan3~3_combout\ <= NOT \dut|LessThan3~3_combout\;
\dut|ALT_INV_LessThan3~2_combout\ <= NOT \dut|LessThan3~2_combout\;
\dut|ALT_INV_LessThan3~1_combout\ <= NOT \dut|LessThan3~1_combout\;
\dut|ALT_INV_LessThan3~0_combout\ <= NOT \dut|LessThan3~0_combout\;
\dut|ALT_INV_Selector46~0_combout\ <= NOT \dut|Selector46~0_combout\;
\dut|ALT_INV_rs~0_combout\ <= NOT \dut|rs~0_combout\;
\dut|ALT_INV_state.ready~q\ <= NOT \dut|state.ready~q\;
\ALT_INV_lcd_enable~q\ <= NOT \lcd_enable~q\;
ALT_INV_lcd_bus(9) <= NOT lcd_bus(9);
\dut|ALT_INV_rw~0_combout\ <= NOT \dut|rw~0_combout\;
\dut|ALT_INV_state.power_up~q\ <= NOT \dut|state.power_up~q\;
\dut|ALT_INV_LessThan0~5_combout\ <= NOT \dut|LessThan0~5_combout\;
\dut|ALT_INV_LessThan9~0_combout\ <= NOT \dut|LessThan9~0_combout\;
\dut|ALT_INV_LessThan0~4_combout\ <= NOT \dut|LessThan0~4_combout\;
\dut|ALT_INV_LessThan0~3_combout\ <= NOT \dut|LessThan0~3_combout\;
\dut|ALT_INV_LessThan0~2_combout\ <= NOT \dut|LessThan0~2_combout\;
\dut|ALT_INV_LessThan0~1_combout\ <= NOT \dut|LessThan0~1_combout\;
\dut|ALT_INV_LessThan0~0_combout\ <= NOT \dut|LessThan0~0_combout\;
\dut|ALT_INV_state.send~q\ <= NOT \dut|state.send~q\;
\dut|ALT_INV_state.initialize~q\ <= NOT \dut|state.initialize~q\;
\gcontraxt|ALT_INV_pwm_value~q\ <= NOT \gcontraxt|pwm_value~q\;
\dut|ALT_INV_e~q\ <= NOT \dut|e~q\;
\dut|ALT_INV_rs~q\ <= NOT \dut|rs~q\;
\ALT_INV_process_1:char[0]~q\ <= NOT \process_1:char[0]~q\;
\ALT_INV_process_1:char[1]~q\ <= NOT \process_1:char[1]~q\;
\ALT_INV_process_1:char[2]~q\ <= NOT \process_1:char[2]~q\;
\ALT_INV_process_1:char[3]~q\ <= NOT \process_1:char[3]~q\;
\gcontraxt|ALT_INV_pwm_step_count\(0) <= NOT \gcontraxt|pwm_step_count\(0);
\ALT_INV_process_1:char[4]~q\ <= NOT \process_1:char[4]~q\;
\gcontraxt|ALT_INV_pwm_step_count\(1) <= NOT \gcontraxt|pwm_step_count\(1);
\Div2|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Div2|auto_generated|divider|divider|op_5~21_sumout\;
\Div4|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Div4|auto_generated|divider|divider|op_5~21_sumout\;
\Div1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Div1|auto_generated|divider|divider|op_5~21_sumout\;
\ALT_INV_process_1:char[5]~q\ <= NOT \process_1:char[5]~q\;
\gcontraxt|ALT_INV_pwm_step_count\(2) <= NOT \gcontraxt|pwm_step_count\(2);
\Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\Div2|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Div2|auto_generated|divider|divider|op_5~17_sumout\;
\Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\Div4|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Div4|auto_generated|divider|divider|op_5~17_sumout\;
\Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\Div1|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Div1|auto_generated|divider|divider|op_5~17_sumout\;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\;
\ALT_INV_process_1:char[6]~q\ <= NOT \process_1:char[6]~q\;
\gcontraxt|ALT_INV_pwm_step_count\(3) <= NOT \gcontraxt|pwm_step_count\(3);
\Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ <= NOT \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\;
\Div2|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Div2|auto_generated|divider|divider|op_5~13_sumout\;
\Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ <= NOT \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\;
\Div4|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Div4|auto_generated|divider|divider|op_5~13_sumout\;
\Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ <= NOT \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\;
\Div1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Div1|auto_generated|divider|divider|op_5~13_sumout\;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\;
\gcontraxt|ALT_INV_freq_count\(0) <= NOT \gcontraxt|freq_count\(0);
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\ <= NOT \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\;
\Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ <= NOT \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_5~25_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ <= NOT \Mod4|auto_generated|divider|divider|op_5~25_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_5~25_sumout\;
\Div2|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Div2|auto_generated|divider|divider|op_5~9_sumout\;
\Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ <= NOT \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\;
\Div4|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Div4|auto_generated|divider|divider|op_5~9_sumout\;
\Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ <= NOT \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\;
\Div1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Div1|auto_generated|divider|divider|op_5~9_sumout\;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\;
\dut|ALT_INV_clk_count\(0) <= NOT \dut|clk_count\(0);
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~13_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~13_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~13_sumout\ <= NOT \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\;
\Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ <= NOT \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\;
\Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ <= NOT \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\;
\Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\ <= NOT \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\;
\Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\ <= NOT \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_5~17_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Mod4|auto_generated|divider|divider|op_5~17_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_5~17_sumout\;
\ALT_INV_process_1:char[25]~q\ <= NOT \process_1:char[25]~q\;
\ALT_INV_process_1:char[23]~q\ <= NOT \process_1:char[23]~q\;
\ALT_INV_process_1:char[22]~q\ <= NOT \process_1:char[22]~q\;
\ALT_INV_process_1:char[21]~q\ <= NOT \process_1:char[21]~q\;
\ALT_INV_process_1:char[20]~q\ <= NOT \process_1:char[20]~q\;
\ALT_INV_process_1:char[19]~q\ <= NOT \process_1:char[19]~q\;
\ALT_INV_process_1:char[15]~q\ <= NOT \process_1:char[15]~q\;
\ALT_INV_process_1:char[14]~q\ <= NOT \process_1:char[14]~q\;
\ALT_INV_process_1:char[13]~q\ <= NOT \process_1:char[13]~q\;
\ALT_INV_process_1:char[12]~q\ <= NOT \process_1:char[12]~q\;
\ALT_INV_process_1:char[8]~q\ <= NOT \process_1:char[8]~q\;
\ALT_INV_process_1:char[7]~q\ <= NOT \process_1:char[7]~q\;
\ALT_INV_process_1:char[9]~q\ <= NOT \process_1:char[9]~q\;
\ALT_INV_process_1:char[11]~q\ <= NOT \process_1:char[11]~q\;
\ALT_INV_process_1:char[10]~q\ <= NOT \process_1:char[10]~q\;
\ALT_INV_process_1:char[16]~q\ <= NOT \process_1:char[16]~q\;
\ALT_INV_process_1:char[17]~q\ <= NOT \process_1:char[17]~q\;
\ALT_INV_process_1:char[18]~q\ <= NOT \process_1:char[18]~q\;
\ALT_INV_process_1:char[24]~q\ <= NOT \process_1:char[24]~q\;
\gcontraxt|ALT_INV_pwm_step_count\(17) <= NOT \gcontraxt|pwm_step_count\(17);
\gcontraxt|ALT_INV_pwm_step_count\(16) <= NOT \gcontraxt|pwm_step_count\(16);
\gcontraxt|ALT_INV_pwm_step_count\(14) <= NOT \gcontraxt|pwm_step_count\(14);
\gcontraxt|ALT_INV_pwm_step_count\(15) <= NOT \gcontraxt|pwm_step_count\(15);
\gcontraxt|ALT_INV_pwm_step_count\(10) <= NOT \gcontraxt|pwm_step_count\(10);
\gcontraxt|ALT_INV_pwm_step_count\(9) <= NOT \gcontraxt|pwm_step_count\(9);
\gcontraxt|ALT_INV_pwm_step_count\(8) <= NOT \gcontraxt|pwm_step_count\(8);
\gcontraxt|ALT_INV_pwm_step_count\(5) <= NOT \gcontraxt|pwm_step_count\(5);
\gcontraxt|ALT_INV_pwm_step_count\(4) <= NOT \gcontraxt|pwm_step_count\(4);
\gcontraxt|ALT_INV_pwm_step_count\(6) <= NOT \gcontraxt|pwm_step_count\(6);
\gcontraxt|ALT_INV_pwm_step_count\(7) <= NOT \gcontraxt|pwm_step_count\(7);
\gcontraxt|ALT_INV_pwm_step_count\(11) <= NOT \gcontraxt|pwm_step_count\(11);
\gcontraxt|ALT_INV_pwm_step_count\(12) <= NOT \gcontraxt|pwm_step_count\(12);
\gcontraxt|ALT_INV_pwm_step_count\(13) <= NOT \gcontraxt|pwm_step_count\(13);
\Mod1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_6~17_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_5~13_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_6~17_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_5~13_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Mod4|auto_generated|divider|divider|op_6~17_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Mod4|auto_generated|divider|divider|op_5~13_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ <= NOT \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\;
\Mod3|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Mod3|auto_generated|divider|divider|op_5~17_sumout\;
\Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ <= NOT \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_6~13_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_5~9_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_6~13_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_5~9_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Mod4|auto_generated|divider|divider|op_6~13_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Mod4|auto_generated|divider|divider|op_5~9_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ <= NOT \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Mod3|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Mod3|auto_generated|divider|divider|op_5~13_sumout\;
\Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ <= NOT \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\;
\Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Div2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Div2|auto_generated|divider|divider|op_5~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\;
\Mod3|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Mod3|auto_generated|divider|divider|op_5~9_sumout\;
\Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ <= NOT \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\;
\Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Div3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Div4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Div4|auto_generated|divider|divider|op_5~1_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_6~9_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_5~5_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_5~1_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Mod4|auto_generated|divider|divider|op_6~9_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \Mod4|auto_generated|divider|divider|op_5~5_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Mod4|auto_generated|divider|divider|op_5~1_sumout\;
\Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Div1|auto_generated|divider|divider|op_5~1_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_6~9_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_5~5_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_5~1_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_6~5_sumout\;
\Mod2|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Mod2|auto_generated|divider|divider|op_6~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Div2|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Div2|auto_generated|divider|divider|op_6~1_sumout\;
\Div3|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Div3|auto_generated|divider|divider|op_5~1_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_6~5_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_6~1_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\ <= NOT \Mod4|auto_generated|divider|divider|op_6~5_sumout\;
\Mod4|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Mod4|auto_generated|divider|divider|op_6~1_sumout\;
\Mod3|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\ <= NOT \Mod3|auto_generated|divider|divider|op_5~5_sumout\;
\Mod3|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Mod3|auto_generated|divider|divider|op_5~1_sumout\;
\Div4|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Div4|auto_generated|divider|divider|op_6~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\;
\Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Div1|auto_generated|divider|divider|op_6~1_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
ALT_INV_char(6) <= NOT char(6);
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
ALT_INV_char(5) <= NOT char(5);
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
ALT_INV_char(0) <= NOT char(0);
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
ALT_INV_char(4) <= NOT char(4);
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
ALT_INV_char(1) <= NOT char(1);
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
ALT_INV_char(3) <= NOT char(3);
ALT_INV_char(16) <= NOT char(16);
ALT_INV_char(12) <= NOT char(12);
ALT_INV_char(13) <= NOT char(13);
ALT_INV_char(14) <= NOT char(14);
ALT_INV_char(15) <= NOT char(15);
ALT_INV_char(7) <= NOT char(7);
ALT_INV_char(8) <= NOT char(8);
ALT_INV_char(9) <= NOT char(9);
ALT_INV_char(11) <= NOT char(11);
ALT_INV_char(10) <= NOT char(10);
ALT_INV_char(25) <= NOT char(25);
ALT_INV_char(23) <= NOT char(23);
ALT_INV_char(22) <= NOT char(22);
ALT_INV_char(20) <= NOT char(20);
ALT_INV_char(19) <= NOT char(19);
ALT_INV_char(18) <= NOT char(18);
ALT_INV_char(17) <= NOT char(17);
ALT_INV_char(21) <= NOT char(21);
ALT_INV_char(24) <= NOT char(24);
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
ALT_INV_char(2) <= NOT char(2);
\gcontraxt|ALT_INV_freq_count\(12) <= NOT \gcontraxt|freq_count\(12);
\gcontraxt|ALT_INV_freq_count\(13) <= NOT \gcontraxt|freq_count\(13);
\gcontraxt|ALT_INV_freq_count\(14) <= NOT \gcontraxt|freq_count\(14);
\gcontraxt|ALT_INV_freq_count\(8) <= NOT \gcontraxt|freq_count\(8);
\gcontraxt|ALT_INV_freq_count\(9) <= NOT \gcontraxt|freq_count\(9);
\gcontraxt|ALT_INV_freq_count\(4) <= NOT \gcontraxt|freq_count\(4);
\gcontraxt|ALT_INV_freq_count\(5) <= NOT \gcontraxt|freq_count\(5);
\gcontraxt|ALT_INV_freq_count\(6) <= NOT \gcontraxt|freq_count\(6);
\gcontraxt|ALT_INV_freq_count\(7) <= NOT \gcontraxt|freq_count\(7);
\gcontraxt|ALT_INV_freq_count\(1) <= NOT \gcontraxt|freq_count\(1);
\gcontraxt|ALT_INV_freq_count\(2) <= NOT \gcontraxt|freq_count\(2);
\gcontraxt|ALT_INV_freq_count\(3) <= NOT \gcontraxt|freq_count\(3);
\gcontraxt|ALT_INV_freq_count\(10) <= NOT \gcontraxt|freq_count\(10);
\gcontraxt|ALT_INV_freq_count\(11) <= NOT \gcontraxt|freq_count\(11);
\gcontraxt|ALT_INV_freq_count\(15) <= NOT \gcontraxt|freq_count\(15);
\gcontraxt|ALT_INV_freq_count\(16) <= NOT \gcontraxt|freq_count\(16);
\gcontraxt|ALT_INV_freq_count\(17) <= NOT \gcontraxt|freq_count\(17);
\dut|ALT_INV_clk_count\(1) <= NOT \dut|clk_count\(1);
\dut|ALT_INV_clk_count\(2) <= NOT \dut|clk_count\(2);
\dut|ALT_INV_clk_count\(3) <= NOT \dut|clk_count\(3);
\dut|ALT_INV_clk_count\(4) <= NOT \dut|clk_count\(4);
\dut|ALT_INV_Add0~117_sumout\ <= NOT \dut|Add0~117_sumout\;
\dut|ALT_INV_Add0~113_sumout\ <= NOT \dut|Add0~113_sumout\;
\dut|ALT_INV_Add0~109_sumout\ <= NOT \dut|Add0~109_sumout\;
\dut|ALT_INV_Add0~105_sumout\ <= NOT \dut|Add0~105_sumout\;
\dut|ALT_INV_Add0~101_sumout\ <= NOT \dut|Add0~101_sumout\;
\dut|ALT_INV_Add0~97_sumout\ <= NOT \dut|Add0~97_sumout\;
\dut|ALT_INV_Add0~93_sumout\ <= NOT \dut|Add0~93_sumout\;
\dut|ALT_INV_Add0~89_sumout\ <= NOT \dut|Add0~89_sumout\;
\dut|ALT_INV_Add0~85_sumout\ <= NOT \dut|Add0~85_sumout\;
\dut|ALT_INV_Add0~81_sumout\ <= NOT \dut|Add0~81_sumout\;
\dut|ALT_INV_Add0~77_sumout\ <= NOT \dut|Add0~77_sumout\;
\dut|ALT_INV_Add0~73_sumout\ <= NOT \dut|Add0~73_sumout\;
\dut|ALT_INV_Add0~69_sumout\ <= NOT \dut|Add0~69_sumout\;
\dut|ALT_INV_Add0~65_sumout\ <= NOT \dut|Add0~65_sumout\;
\dut|ALT_INV_Add0~61_sumout\ <= NOT \dut|Add0~61_sumout\;
\dut|ALT_INV_Add0~57_sumout\ <= NOT \dut|Add0~57_sumout\;
\dut|ALT_INV_Add0~53_sumout\ <= NOT \dut|Add0~53_sumout\;
\dut|ALT_INV_Add0~49_sumout\ <= NOT \dut|Add0~49_sumout\;
\dut|ALT_INV_Add0~45_sumout\ <= NOT \dut|Add0~45_sumout\;
\dut|ALT_INV_Add0~41_sumout\ <= NOT \dut|Add0~41_sumout\;
\dut|ALT_INV_Add0~37_sumout\ <= NOT \dut|Add0~37_sumout\;
\dut|ALT_INV_Add0~33_sumout\ <= NOT \dut|Add0~33_sumout\;
\dut|ALT_INV_Add0~29_sumout\ <= NOT \dut|Add0~29_sumout\;
\dut|ALT_INV_Add0~25_sumout\ <= NOT \dut|Add0~25_sumout\;
\dut|ALT_INV_Add0~21_sumout\ <= NOT \dut|Add0~21_sumout\;
\dut|ALT_INV_Add0~17_sumout\ <= NOT \dut|Add0~17_sumout\;
\dut|ALT_INV_Add0~13_sumout\ <= NOT \dut|Add0~13_sumout\;
\dut|ALT_INV_Add0~9_sumout\ <= NOT \dut|Add0~9_sumout\;
\dut|ALT_INV_Add0~5_sumout\ <= NOT \dut|Add0~5_sumout\;
\dut|ALT_INV_Add0~1_sumout\ <= NOT \dut|Add0~1_sumout\;
\dut|ALT_INV_clk_count\(29) <= NOT \dut|clk_count\(29);
\dut|ALT_INV_clk_count\(28) <= NOT \dut|clk_count\(28);
\dut|ALT_INV_clk_count\(30) <= NOT \dut|clk_count\(30);
\dut|ALT_INV_clk_count\(27) <= NOT \dut|clk_count\(27);
\dut|ALT_INV_clk_count\(26) <= NOT \dut|clk_count\(26);
\dut|ALT_INV_clk_count\(25) <= NOT \dut|clk_count\(25);
\dut|ALT_INV_clk_count\(24) <= NOT \dut|clk_count\(24);
\dut|ALT_INV_clk_count\(23) <= NOT \dut|clk_count\(23);
\dut|ALT_INV_clk_count\(22) <= NOT \dut|clk_count\(22);
\dut|ALT_INV_clk_count\(31) <= NOT \dut|clk_count\(31);
\dut|ALT_INV_clk_count\(20) <= NOT \dut|clk_count\(20);
\dut|ALT_INV_clk_count\(19) <= NOT \dut|clk_count\(19);
\dut|ALT_INV_clk_count\(16) <= NOT \dut|clk_count\(16);
\dut|ALT_INV_clk_count\(15) <= NOT \dut|clk_count\(15);
\dut|ALT_INV_clk_count\(14) <= NOT \dut|clk_count\(14);
\dut|ALT_INV_clk_count\(8) <= NOT \dut|clk_count\(8);
\dut|ALT_INV_clk_count\(7) <= NOT \dut|clk_count\(7);
\dut|ALT_INV_clk_count\(6) <= NOT \dut|clk_count\(6);
\dut|ALT_INV_clk_count\(5) <= NOT \dut|clk_count\(5);
\dut|ALT_INV_clk_count\(9) <= NOT \dut|clk_count\(9);
\dut|ALT_INV_clk_count\(10) <= NOT \dut|clk_count\(10);
\dut|ALT_INV_clk_count\(11) <= NOT \dut|clk_count\(11);
\dut|ALT_INV_clk_count\(12) <= NOT \dut|clk_count\(12);
\dut|ALT_INV_clk_count\(13) <= NOT \dut|clk_count\(13);
\dut|ALT_INV_clk_count\(18) <= NOT \dut|clk_count\(18);
\dut|ALT_INV_clk_count\(17) <= NOT \dut|clk_count\(17);
\dut|ALT_INV_clk_count\(21) <= NOT \dut|clk_count\(21);

-- Location: IOOBUF_X32_Y0_N19
\rw~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rw);

-- Location: IOOBUF_X68_Y0_N2
\rs~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|rs~q\,
	devoe => ww_devoe,
	o => ww_rs);

-- Location: IOOBUF_X89_Y4_N62
\e~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|e~q\,
	devoe => ww_devoe,
	o => ww_e);

-- Location: IOOBUF_X89_Y8_N56
\lcd_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(0),
	devoe => ww_devoe,
	o => ww_lcd_data(0));

-- Location: IOOBUF_X84_Y0_N19
\lcd_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(1),
	devoe => ww_devoe,
	o => ww_lcd_data(1));

-- Location: IOOBUF_X84_Y0_N2
\lcd_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(2),
	devoe => ww_devoe,
	o => ww_lcd_data(2));

-- Location: IOOBUF_X40_Y81_N19
\lcd_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(3),
	devoe => ww_devoe,
	o => ww_lcd_data(3));

-- Location: IOOBUF_X62_Y0_N2
\lcd_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(4),
	devoe => ww_devoe,
	o => ww_lcd_data(4));

-- Location: IOOBUF_X40_Y81_N2
\lcd_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(5),
	devoe => ww_devoe,
	o => ww_lcd_data(5));

-- Location: IOOBUF_X70_Y0_N19
\lcd_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(6),
	devoe => ww_devoe,
	o => ww_lcd_data(6));

-- Location: IOOBUF_X76_Y0_N2
\lcd_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(7),
	devoe => ww_devoe,
	o => ww_lcd_data(7));

-- Location: IOOBUF_X40_Y0_N2
\led~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \gcontraxt|pwm_value~q\,
	devoe => ww_devoe,
	o => ww_led);

-- Location: IOOBUF_X89_Y8_N22
\leddbkey~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \constrastup~input_o\,
	devoe => ww_devoe,
	o => ww_leddbkey);

-- Location: IOIBUF_X32_Y0_N1
\clkin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin,
	o => \clkin~input_o\);

-- Location: CLKCTRL_G6
\clkin~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clkin~input_o\,
	outclk => \clkin~inputCLKENA0_outclk\);

-- Location: FF_X81_Y4_N11
\dut|clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~1_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(30));

-- Location: LABCELL_X81_Y5_N0
\dut|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~125_sumout\ = SUM(( \dut|clk_count\(0) ) + ( VCC ) + ( !VCC ))
-- \dut|Add0~126\ = CARRY(( \dut|clk_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_clk_count\(0),
	cin => GND,
	sumout => \dut|Add0~125_sumout\,
	cout => \dut|Add0~126\);

-- Location: FF_X81_Y5_N2
\dut|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~125_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(0));

-- Location: LABCELL_X81_Y5_N3
\dut|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~121_sumout\ = SUM(( \dut|clk_count\(1) ) + ( GND ) + ( \dut|Add0~126\ ))
-- \dut|Add0~122\ = CARRY(( \dut|clk_count\(1) ) + ( GND ) + ( \dut|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_clk_count\(1),
	cin => \dut|Add0~126\,
	sumout => \dut|Add0~121_sumout\,
	cout => \dut|Add0~122\);

-- Location: FF_X81_Y5_N5
\dut|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~121_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(1));

-- Location: LABCELL_X81_Y5_N6
\dut|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~113_sumout\ = SUM(( \dut|clk_count\(2) ) + ( GND ) + ( \dut|Add0~122\ ))
-- \dut|Add0~114\ = CARRY(( \dut|clk_count\(2) ) + ( GND ) + ( \dut|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_clk_count\(2),
	cin => \dut|Add0~122\,
	sumout => \dut|Add0~113_sumout\,
	cout => \dut|Add0~114\);

-- Location: FF_X81_Y5_N8
\dut|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~113_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(2));

-- Location: LABCELL_X81_Y5_N9
\dut|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~109_sumout\ = SUM(( \dut|clk_count\(3) ) + ( GND ) + ( \dut|Add0~114\ ))
-- \dut|Add0~110\ = CARRY(( \dut|clk_count\(3) ) + ( GND ) + ( \dut|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(3),
	cin => \dut|Add0~114\,
	sumout => \dut|Add0~109_sumout\,
	cout => \dut|Add0~110\);

-- Location: FF_X81_Y5_N11
\dut|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~109_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(3));

-- Location: LABCELL_X81_Y5_N12
\dut|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~101_sumout\ = SUM(( \dut|clk_count\(4) ) + ( GND ) + ( \dut|Add0~110\ ))
-- \dut|Add0~102\ = CARRY(( \dut|clk_count\(4) ) + ( GND ) + ( \dut|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_clk_count\(4),
	cin => \dut|Add0~110\,
	sumout => \dut|Add0~101_sumout\,
	cout => \dut|Add0~102\);

-- Location: FF_X81_Y5_N14
\dut|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~101_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(4));

-- Location: LABCELL_X81_Y5_N15
\dut|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~105_sumout\ = SUM(( \dut|clk_count\(5) ) + ( GND ) + ( \dut|Add0~102\ ))
-- \dut|Add0~106\ = CARRY(( \dut|clk_count\(5) ) + ( GND ) + ( \dut|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(5),
	cin => \dut|Add0~102\,
	sumout => \dut|Add0~105_sumout\,
	cout => \dut|Add0~106\);

-- Location: FF_X81_Y5_N17
\dut|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~105_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(5));

-- Location: LABCELL_X81_Y5_N18
\dut|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~97_sumout\ = SUM(( \dut|clk_count\(6) ) + ( GND ) + ( \dut|Add0~106\ ))
-- \dut|Add0~98\ = CARRY(( \dut|clk_count\(6) ) + ( GND ) + ( \dut|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(6),
	cin => \dut|Add0~106\,
	sumout => \dut|Add0~97_sumout\,
	cout => \dut|Add0~98\);

-- Location: FF_X81_Y5_N20
\dut|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~97_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(6));

-- Location: LABCELL_X81_Y5_N21
\dut|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~77_sumout\ = SUM(( \dut|clk_count\(7) ) + ( GND ) + ( \dut|Add0~98\ ))
-- \dut|Add0~78\ = CARRY(( \dut|clk_count\(7) ) + ( GND ) + ( \dut|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_clk_count\(7),
	cin => \dut|Add0~98\,
	sumout => \dut|Add0~77_sumout\,
	cout => \dut|Add0~78\);

-- Location: FF_X81_Y5_N23
\dut|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~77_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(7));

-- Location: LABCELL_X81_Y5_N24
\dut|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~81_sumout\ = SUM(( \dut|clk_count\(8) ) + ( GND ) + ( \dut|Add0~78\ ))
-- \dut|Add0~82\ = CARRY(( \dut|clk_count\(8) ) + ( GND ) + ( \dut|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(8),
	cin => \dut|Add0~78\,
	sumout => \dut|Add0~81_sumout\,
	cout => \dut|Add0~82\);

-- Location: FF_X81_Y5_N26
\dut|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~81_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(8));

-- Location: LABCELL_X81_Y5_N27
\dut|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~89_sumout\ = SUM(( \dut|clk_count\(9) ) + ( GND ) + ( \dut|Add0~82\ ))
-- \dut|Add0~90\ = CARRY(( \dut|clk_count\(9) ) + ( GND ) + ( \dut|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_clk_count\(9),
	cin => \dut|Add0~82\,
	sumout => \dut|Add0~89_sumout\,
	cout => \dut|Add0~90\);

-- Location: FF_X81_Y5_N29
\dut|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~89_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(9));

-- Location: LABCELL_X81_Y5_N30
\dut|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~93_sumout\ = SUM(( \dut|clk_count\(10) ) + ( GND ) + ( \dut|Add0~90\ ))
-- \dut|Add0~94\ = CARRY(( \dut|clk_count\(10) ) + ( GND ) + ( \dut|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_clk_count\(10),
	cin => \dut|Add0~90\,
	sumout => \dut|Add0~93_sumout\,
	cout => \dut|Add0~94\);

-- Location: FF_X81_Y5_N32
\dut|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~93_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(10));

-- Location: LABCELL_X81_Y5_N33
\dut|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~85_sumout\ = SUM(( \dut|clk_count\(11) ) + ( GND ) + ( \dut|Add0~94\ ))
-- \dut|Add0~86\ = CARRY(( \dut|clk_count\(11) ) + ( GND ) + ( \dut|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(11),
	cin => \dut|Add0~94\,
	sumout => \dut|Add0~85_sumout\,
	cout => \dut|Add0~86\);

-- Location: FF_X81_Y5_N35
\dut|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~85_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(11));

-- Location: LABCELL_X81_Y5_N36
\dut|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~73_sumout\ = SUM(( \dut|clk_count\(12) ) + ( GND ) + ( \dut|Add0~86\ ))
-- \dut|Add0~74\ = CARRY(( \dut|clk_count\(12) ) + ( GND ) + ( \dut|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_clk_count\(12),
	cin => \dut|Add0~86\,
	sumout => \dut|Add0~73_sumout\,
	cout => \dut|Add0~74\);

-- Location: FF_X81_Y5_N38
\dut|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~73_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(12));

-- Location: LABCELL_X81_Y5_N39
\dut|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~65_sumout\ = SUM(( \dut|clk_count\(13) ) + ( GND ) + ( \dut|Add0~74\ ))
-- \dut|Add0~66\ = CARRY(( \dut|clk_count\(13) ) + ( GND ) + ( \dut|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(13),
	cin => \dut|Add0~74\,
	sumout => \dut|Add0~65_sumout\,
	cout => \dut|Add0~66\);

-- Location: FF_X81_Y5_N41
\dut|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~65_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(13));

-- Location: LABCELL_X81_Y5_N42
\dut|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~69_sumout\ = SUM(( \dut|clk_count\(14) ) + ( GND ) + ( \dut|Add0~66\ ))
-- \dut|Add0~70\ = CARRY(( \dut|clk_count\(14) ) + ( GND ) + ( \dut|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_clk_count\(14),
	cin => \dut|Add0~66\,
	sumout => \dut|Add0~69_sumout\,
	cout => \dut|Add0~70\);

-- Location: FF_X81_Y5_N44
\dut|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~69_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(14));

-- Location: LABCELL_X81_Y5_N45
\dut|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~57_sumout\ = SUM(( \dut|clk_count\(15) ) + ( GND ) + ( \dut|Add0~70\ ))
-- \dut|Add0~58\ = CARRY(( \dut|clk_count\(15) ) + ( GND ) + ( \dut|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_clk_count\(15),
	cin => \dut|Add0~70\,
	sumout => \dut|Add0~57_sumout\,
	cout => \dut|Add0~58\);

-- Location: FF_X81_Y5_N47
\dut|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~57_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(15));

-- Location: LABCELL_X81_Y5_N48
\dut|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~61_sumout\ = SUM(( \dut|clk_count\(16) ) + ( GND ) + ( \dut|Add0~58\ ))
-- \dut|Add0~62\ = CARRY(( \dut|clk_count\(16) ) + ( GND ) + ( \dut|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(16),
	cin => \dut|Add0~58\,
	sumout => \dut|Add0~61_sumout\,
	cout => \dut|Add0~62\);

-- Location: FF_X81_Y5_N50
\dut|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~61_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(16));

-- Location: LABCELL_X81_Y5_N51
\dut|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~13_sumout\ = SUM(( \dut|clk_count\(17) ) + ( GND ) + ( \dut|Add0~62\ ))
-- \dut|Add0~14\ = CARRY(( \dut|clk_count\(17) ) + ( GND ) + ( \dut|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(17),
	cin => \dut|Add0~62\,
	sumout => \dut|Add0~13_sumout\,
	cout => \dut|Add0~14\);

-- Location: FF_X81_Y5_N53
\dut|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~13_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(17));

-- Location: LABCELL_X81_Y5_N54
\dut|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~17_sumout\ = SUM(( \dut|clk_count\(18) ) + ( GND ) + ( \dut|Add0~14\ ))
-- \dut|Add0~18\ = CARRY(( \dut|clk_count\(18) ) + ( GND ) + ( \dut|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(18),
	cin => \dut|Add0~14\,
	sumout => \dut|Add0~17_sumout\,
	cout => \dut|Add0~18\);

-- Location: FF_X81_Y5_N56
\dut|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~17_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(18));

-- Location: LABCELL_X81_Y5_N57
\dut|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~21_sumout\ = SUM(( \dut|clk_count\(19) ) + ( GND ) + ( \dut|Add0~18\ ))
-- \dut|Add0~22\ = CARRY(( \dut|clk_count\(19) ) + ( GND ) + ( \dut|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_clk_count\(19),
	cin => \dut|Add0~18\,
	sumout => \dut|Add0~21_sumout\,
	cout => \dut|Add0~22\);

-- Location: FF_X81_Y5_N59
\dut|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~21_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(19));

-- Location: LABCELL_X81_Y4_N0
\dut|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~25_sumout\ = SUM(( \dut|clk_count\(20) ) + ( GND ) + ( \dut|Add0~22\ ))
-- \dut|Add0~26\ = CARRY(( \dut|clk_count\(20) ) + ( GND ) + ( \dut|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(20),
	cin => \dut|Add0~22\,
	sumout => \dut|Add0~25_sumout\,
	cout => \dut|Add0~26\);

-- Location: FF_X81_Y4_N56
\dut|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~25_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(20));

-- Location: LABCELL_X81_Y4_N3
\dut|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~29_sumout\ = SUM(( \dut|clk_count[21]~DUPLICATE_q\ ) + ( GND ) + ( \dut|Add0~26\ ))
-- \dut|Add0~30\ = CARRY(( \dut|clk_count[21]~DUPLICATE_q\ ) + ( GND ) + ( \dut|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_clk_count[21]~DUPLICATE_q\,
	cin => \dut|Add0~26\,
	sumout => \dut|Add0~29_sumout\,
	cout => \dut|Add0~30\);

-- Location: FF_X81_Y4_N38
\dut|clk_count[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~29_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count[21]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y4_N6
\dut|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~33_sumout\ = SUM(( \dut|clk_count\(22) ) + ( GND ) + ( \dut|Add0~30\ ))
-- \dut|Add0~34\ = CARRY(( \dut|clk_count\(22) ) + ( GND ) + ( \dut|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(22),
	cin => \dut|Add0~30\,
	sumout => \dut|Add0~33_sumout\,
	cout => \dut|Add0~34\);

-- Location: FF_X81_Y4_N59
\dut|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~33_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(22));

-- Location: LABCELL_X81_Y4_N9
\dut|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~37_sumout\ = SUM(( \dut|clk_count\(23) ) + ( GND ) + ( \dut|Add0~34\ ))
-- \dut|Add0~38\ = CARRY(( \dut|clk_count\(23) ) + ( GND ) + ( \dut|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(23),
	cin => \dut|Add0~34\,
	sumout => \dut|Add0~37_sumout\,
	cout => \dut|Add0~38\);

-- Location: FF_X81_Y4_N41
\dut|clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~37_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(23));

-- Location: LABCELL_X81_Y4_N12
\dut|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~41_sumout\ = SUM(( \dut|clk_count\(24) ) + ( GND ) + ( \dut|Add0~38\ ))
-- \dut|Add0~42\ = CARRY(( \dut|clk_count\(24) ) + ( GND ) + ( \dut|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(24),
	cin => \dut|Add0~38\,
	sumout => \dut|Add0~41_sumout\,
	cout => \dut|Add0~42\);

-- Location: FF_X81_Y4_N50
\dut|clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~41_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(24));

-- Location: LABCELL_X81_Y4_N15
\dut|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~45_sumout\ = SUM(( \dut|clk_count\(25) ) + ( GND ) + ( \dut|Add0~42\ ))
-- \dut|Add0~46\ = CARRY(( \dut|clk_count\(25) ) + ( GND ) + ( \dut|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_clk_count\(25),
	cin => \dut|Add0~42\,
	sumout => \dut|Add0~45_sumout\,
	cout => \dut|Add0~46\);

-- Location: FF_X81_Y4_N17
\dut|clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~45_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(25));

-- Location: LABCELL_X81_Y4_N18
\dut|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~49_sumout\ = SUM(( \dut|clk_count\(26) ) + ( GND ) + ( \dut|Add0~46\ ))
-- \dut|Add0~50\ = CARRY(( \dut|clk_count\(26) ) + ( GND ) + ( \dut|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(26),
	cin => \dut|Add0~46\,
	sumout => \dut|Add0~49_sumout\,
	cout => \dut|Add0~50\);

-- Location: FF_X81_Y4_N53
\dut|clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~49_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(26));

-- Location: LABCELL_X81_Y4_N21
\dut|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~53_sumout\ = SUM(( \dut|clk_count\(27) ) + ( GND ) + ( \dut|Add0~50\ ))
-- \dut|Add0~54\ = CARRY(( \dut|clk_count\(27) ) + ( GND ) + ( \dut|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(27),
	cin => \dut|Add0~50\,
	sumout => \dut|Add0~53_sumout\,
	cout => \dut|Add0~54\);

-- Location: FF_X81_Y4_N47
\dut|clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~53_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(27));

-- Location: LABCELL_X81_Y4_N24
\dut|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~5_sumout\ = SUM(( \dut|clk_count\(28) ) + ( GND ) + ( \dut|Add0~54\ ))
-- \dut|Add0~6\ = CARRY(( \dut|clk_count\(28) ) + ( GND ) + ( \dut|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(28),
	cin => \dut|Add0~54\,
	sumout => \dut|Add0~5_sumout\,
	cout => \dut|Add0~6\);

-- Location: FF_X81_Y4_N5
\dut|clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~5_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(28));

-- Location: LABCELL_X81_Y4_N27
\dut|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~9_sumout\ = SUM(( \dut|clk_count\(29) ) + ( GND ) + ( \dut|Add0~6\ ))
-- \dut|Add0~10\ = CARRY(( \dut|clk_count\(29) ) + ( GND ) + ( \dut|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_clk_count\(29),
	cin => \dut|Add0~6\,
	sumout => \dut|Add0~9_sumout\,
	cout => \dut|Add0~10\);

-- Location: LABCELL_X81_Y4_N30
\dut|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~1_sumout\ = SUM(( \dut|clk_count\(30) ) + ( GND ) + ( \dut|Add0~10\ ))
-- \dut|Add0~2\ = CARRY(( \dut|clk_count\(30) ) + ( GND ) + ( \dut|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_clk_count\(30),
	cin => \dut|Add0~10\,
	sumout => \dut|Add0~1_sumout\,
	cout => \dut|Add0~2\);

-- Location: LABCELL_X81_Y4_N57
\dut|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~0_combout\ = ( !\dut|Add0~17_sumout\ & ( !\dut|Add0~21_sumout\ & ( (!\dut|Add0~25_sumout\ & (!\dut|Add0~33_sumout\ & (!\dut|Add0~13_sumout\ & !\dut|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~25_sumout\,
	datab => \dut|ALT_INV_Add0~33_sumout\,
	datac => \dut|ALT_INV_Add0~13_sumout\,
	datad => \dut|ALT_INV_Add0~29_sumout\,
	datae => \dut|ALT_INV_Add0~17_sumout\,
	dataf => \dut|ALT_INV_Add0~21_sumout\,
	combout => \dut|LessThan3~0_combout\);

-- Location: LABCELL_X81_Y4_N51
\dut|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~1_combout\ = ( !\dut|Add0~45_sumout\ & ( (!\dut|Add0~37_sumout\ & (!\dut|Add0~41_sumout\ & (!\dut|Add0~53_sumout\ & !\dut|Add0~49_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~37_sumout\,
	datab => \dut|ALT_INV_Add0~41_sumout\,
	datac => \dut|ALT_INV_Add0~53_sumout\,
	datad => \dut|ALT_INV_Add0~49_sumout\,
	dataf => \dut|ALT_INV_Add0~45_sumout\,
	combout => \dut|LessThan3~1_combout\);

-- Location: MLABCELL_X82_Y5_N42
\dut|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan6~1_combout\ = ( !\dut|Add0~85_sumout\ & ( !\dut|Add0~73_sumout\ & ( (!\dut|Add0~93_sumout\ & (!\dut|Add0~81_sumout\ & !\dut|Add0~89_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~93_sumout\,
	datab => \dut|ALT_INV_Add0~81_sumout\,
	datac => \dut|ALT_INV_Add0~89_sumout\,
	datae => \dut|ALT_INV_Add0~85_sumout\,
	dataf => \dut|ALT_INV_Add0~73_sumout\,
	combout => \dut|LessThan6~1_combout\);

-- Location: MLABCELL_X82_Y5_N0
\dut|LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan6~2_combout\ = ( !\dut|Add0~101_sumout\ & ( !\dut|Add0~105_sumout\ & ( (!\dut|Add0~77_sumout\ & (!\dut|Add0~109_sumout\ & (!\dut|Add0~113_sumout\ & !\dut|Add0~97_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~77_sumout\,
	datab => \dut|ALT_INV_Add0~109_sumout\,
	datac => \dut|ALT_INV_Add0~113_sumout\,
	datad => \dut|ALT_INV_Add0~97_sumout\,
	datae => \dut|ALT_INV_Add0~101_sumout\,
	dataf => \dut|ALT_INV_Add0~105_sumout\,
	combout => \dut|LessThan6~2_combout\);

-- Location: MLABCELL_X82_Y5_N18
\dut|LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan6~3_combout\ = ( \dut|LessThan6~2_combout\ & ( \dut|Add0~61_sumout\ & ( (\dut|Add0~57_sumout\ & (((\dut|Add0~65_sumout\ & !\dut|LessThan6~1_combout\)) # (\dut|Add0~69_sumout\))) ) ) ) # ( !\dut|LessThan6~2_combout\ & ( \dut|Add0~61_sumout\ & 
-- ( (\dut|Add0~57_sumout\ & ((\dut|Add0~65_sumout\) # (\dut|Add0~69_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101000101010001010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~57_sumout\,
	datab => \dut|ALT_INV_Add0~69_sumout\,
	datac => \dut|ALT_INV_Add0~65_sumout\,
	datad => \dut|ALT_INV_LessThan6~1_combout\,
	datae => \dut|ALT_INV_LessThan6~2_combout\,
	dataf => \dut|ALT_INV_Add0~61_sumout\,
	combout => \dut|LessThan6~3_combout\);

-- Location: MLABCELL_X82_Y5_N39
\dut|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan1~0_combout\ = ( !\dut|Add0~93_sumout\ & ( (!\dut|Add0~73_sumout\ & (!\dut|Add0~85_sumout\ & !\dut|Add0~89_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_Add0~73_sumout\,
	datac => \dut|ALT_INV_Add0~85_sumout\,
	datad => \dut|ALT_INV_Add0~89_sumout\,
	dataf => \dut|ALT_INV_Add0~93_sumout\,
	combout => \dut|LessThan1~0_combout\);

-- Location: MLABCELL_X82_Y5_N54
\dut|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan7~0_combout\ = ( \dut|Add0~101_sumout\ & ( \dut|Add0~81_sumout\ & ( (\dut|Add0~109_sumout\ & (\dut|Add0~105_sumout\ & (\dut|Add0~77_sumout\ & \dut|Add0~97_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~109_sumout\,
	datab => \dut|ALT_INV_Add0~105_sumout\,
	datac => \dut|ALT_INV_Add0~77_sumout\,
	datad => \dut|ALT_INV_Add0~97_sumout\,
	datae => \dut|ALT_INV_Add0~101_sumout\,
	dataf => \dut|ALT_INV_Add0~81_sumout\,
	combout => \dut|LessThan7~0_combout\);

-- Location: MLABCELL_X82_Y5_N48
\dut|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan7~1_combout\ = ( \dut|LessThan7~0_combout\ & ( \dut|Add0~61_sumout\ & ( (\dut|Add0~57_sumout\ & ((\dut|Add0~65_sumout\) # (\dut|Add0~69_sumout\))) ) ) ) # ( !\dut|LessThan7~0_combout\ & ( \dut|Add0~61_sumout\ & ( (\dut|Add0~57_sumout\ & 
-- (((\dut|Add0~65_sumout\ & !\dut|LessThan1~0_combout\)) # (\dut|Add0~69_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101000100010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~57_sumout\,
	datab => \dut|ALT_INV_Add0~69_sumout\,
	datac => \dut|ALT_INV_Add0~65_sumout\,
	datad => \dut|ALT_INV_LessThan1~0_combout\,
	datae => \dut|ALT_INV_LessThan7~0_combout\,
	dataf => \dut|ALT_INV_Add0~61_sumout\,
	combout => \dut|LessThan7~1_combout\);

-- Location: MLABCELL_X82_Y4_N9
\dut|busy~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|busy~2_combout\ = ( !\dut|Add0~9_sumout\ & ( !\dut|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_Add0~5_sumout\,
	dataf => \dut|ALT_INV_Add0~9_sumout\,
	combout => \dut|busy~2_combout\);

-- Location: MLABCELL_X82_Y4_N54
\dut|lcd_data[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|lcd_data[2]~2_combout\ = ( \dut|LessThan7~1_combout\ & ( \dut|busy~2_combout\ & ( (!\dut|Add0~1_sumout\ & (\dut|LessThan3~0_combout\ & (\dut|LessThan3~1_combout\ & !\dut|LessThan6~3_combout\))) ) ) ) # ( !\dut|LessThan7~1_combout\ & ( 
-- \dut|busy~2_combout\ & ( (!\dut|Add0~1_sumout\ & (\dut|LessThan3~0_combout\ & \dut|LessThan3~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~1_sumout\,
	datab => \dut|ALT_INV_LessThan3~0_combout\,
	datac => \dut|ALT_INV_LessThan3~1_combout\,
	datad => \dut|ALT_INV_LessThan6~3_combout\,
	datae => \dut|ALT_INV_LessThan7~1_combout\,
	dataf => \dut|ALT_INV_busy~2_combout\,
	combout => \dut|lcd_data[2]~2_combout\);

-- Location: LABCELL_X81_Y3_N27
\dut|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~5_combout\ = ( \dut|Add0~93_sumout\ & ( \dut|Add0~85_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~85_sumout\,
	dataf => \dut|ALT_INV_Add0~93_sumout\,
	combout => \dut|LessThan3~5_combout\);

-- Location: LABCELL_X81_Y3_N3
\dut|LessThan8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan8~1_combout\ = ( !\dut|Add0~69_sumout\ & ( !\dut|Add0~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_Add0~73_sumout\,
	dataf => \dut|ALT_INV_Add0~69_sumout\,
	combout => \dut|LessThan8~1_combout\);

-- Location: LABCELL_X81_Y3_N51
\dut|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan6~0_combout\ = ( !\dut|Add0~69_sumout\ & ( !\dut|Add0~65_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_Add0~65_sumout\,
	dataf => \dut|ALT_INV_Add0~69_sumout\,
	combout => \dut|LessThan6~0_combout\);

-- Location: LABCELL_X81_Y3_N54
\dut|LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan8~0_combout\ = ( \dut|Add0~81_sumout\ & ( \dut|Add0~101_sumout\ & ( (!\dut|Add0~89_sumout\ & ((!\dut|Add0~77_sumout\) # ((!\dut|Add0~97_sumout\ & !\dut|Add0~105_sumout\)))) ) ) ) # ( !\dut|Add0~81_sumout\ & ( \dut|Add0~101_sumout\ & ( 
-- !\dut|Add0~89_sumout\ ) ) ) # ( \dut|Add0~81_sumout\ & ( !\dut|Add0~101_sumout\ & ( (!\dut|Add0~89_sumout\ & ((!\dut|Add0~97_sumout\) # (!\dut|Add0~77_sumout\))) ) ) ) # ( !\dut|Add0~81_sumout\ & ( !\dut|Add0~101_sumout\ & ( !\dut|Add0~89_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111011100000000011111111000000001110110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~97_sumout\,
	datab => \dut|ALT_INV_Add0~77_sumout\,
	datac => \dut|ALT_INV_Add0~105_sumout\,
	datad => \dut|ALT_INV_Add0~89_sumout\,
	datae => \dut|ALT_INV_Add0~81_sumout\,
	dataf => \dut|ALT_INV_Add0~101_sumout\,
	combout => \dut|LessThan8~0_combout\);

-- Location: LABCELL_X81_Y3_N36
\dut|LessThan8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan8~2_combout\ = ( \dut|LessThan8~0_combout\ & ( \dut|Add0~61_sumout\ & ( (\dut|Add0~57_sumout\ & (!\dut|LessThan8~1_combout\ & !\dut|LessThan6~0_combout\)) ) ) ) # ( !\dut|LessThan8~0_combout\ & ( \dut|Add0~61_sumout\ & ( (\dut|Add0~57_sumout\ 
-- & (!\dut|LessThan6~0_combout\ & ((!\dut|LessThan8~1_combout\) # (\dut|LessThan3~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110001000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~5_combout\,
	datab => \dut|ALT_INV_Add0~57_sumout\,
	datac => \dut|ALT_INV_LessThan8~1_combout\,
	datad => \dut|ALT_INV_LessThan6~0_combout\,
	datae => \dut|ALT_INV_LessThan8~0_combout\,
	dataf => \dut|ALT_INV_Add0~61_sumout\,
	combout => \dut|LessThan8~2_combout\);

-- Location: FF_X81_Y4_N8
\dut|clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~117_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(31));

-- Location: LABCELL_X81_Y4_N33
\dut|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~117_sumout\ = SUM(( \dut|clk_count\(31) ) + ( GND ) + ( \dut|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_clk_count\(31),
	cin => \dut|Add0~2\,
	sumout => \dut|Add0~117_sumout\);

-- Location: MLABCELL_X82_Y4_N36
\dut|lcd_data[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|lcd_data[2]~1_combout\ = ( !\dut|Add0~117_sumout\ & ( \dut|LessThan3~1_combout\ & ( ((!\dut|LessThan3~0_combout\) # ((!\dut|busy~2_combout\) # (\dut|LessThan8~2_combout\))) # (\dut|Add0~1_sumout\) ) ) ) # ( !\dut|Add0~117_sumout\ & ( 
-- !\dut|LessThan3~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111110111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~1_sumout\,
	datab => \dut|ALT_INV_LessThan3~0_combout\,
	datac => \dut|ALT_INV_LessThan8~2_combout\,
	datad => \dut|ALT_INV_busy~2_combout\,
	datae => \dut|ALT_INV_Add0~117_sumout\,
	dataf => \dut|ALT_INV_LessThan3~1_combout\,
	combout => \dut|lcd_data[2]~1_combout\);

-- Location: FF_X83_Y4_N7
\dut|state.initialize~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.initialize~DUPLICATE_q\);

-- Location: LABCELL_X83_Y4_N42
\dut|Selector34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector34~2_combout\ = ( \dut|state.ready~q\ & ( \dut|state.initialize~DUPLICATE_q\ & ( (!\lcd_enable~q\) # ((!\dut|state~6_combout\ & (!\dut|lcd_data[2]~2_combout\ & \dut|lcd_data[2]~1_combout\))) ) ) ) # ( !\dut|state.ready~q\ & ( 
-- \dut|state.initialize~DUPLICATE_q\ & ( (!\dut|state~6_combout\ & (!\dut|lcd_data[2]~2_combout\ & \dut|lcd_data[2]~1_combout\)) ) ) ) # ( \dut|state.ready~q\ & ( !\dut|state.initialize~DUPLICATE_q\ & ( !\lcd_enable~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000101000001100110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state~6_combout\,
	datab => \ALT_INV_lcd_enable~q\,
	datac => \dut|ALT_INV_lcd_data[2]~2_combout\,
	datad => \dut|ALT_INV_lcd_data[2]~1_combout\,
	datae => \dut|ALT_INV_state.ready~q\,
	dataf => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	combout => \dut|Selector34~2_combout\);

-- Location: FF_X83_Y4_N43
\dut|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|busy~q\);

-- Location: MLABCELL_X78_Y6_N15
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( !\lcd_enable~q\ & ( \dut|busy~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_lcd_enable~q\,
	dataf => \dut|ALT_INV_busy~q\,
	combout => \process_0~0_combout\);

-- Location: FF_X84_Y7_N10
\char[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~11_combout\,
	sclr => \Equal25~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(17));

-- Location: FF_X85_Y9_N4
\char[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~10_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[21]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y7_N27
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \char[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~98\ = CARRY(( \char[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char[19]~DUPLICATE_q\,
	cin => \Add0~66\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: LABCELL_X83_Y7_N30
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( char(20) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( char(20) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_char(20),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: MLABCELL_X84_Y8_N9
\char~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~14_combout\ = (!\LessThan0~4_combout\ & ((\Add0~101_sumout\))) # (\LessThan0~4_combout\ & (char(20)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(20),
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => \ALT_INV_Add0~101_sumout\,
	combout => \char~14_combout\);

-- Location: FF_X83_Y7_N32
\char[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~14_combout\,
	sclr => \Equal25~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(20));

-- Location: LABCELL_X83_Y7_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \char[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~46\ = CARRY(( \char[21]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char[21]~DUPLICATE_q\,
	cin => \Add0~102\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X85_Y9_N3
\char~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~10_combout\ = ( char(21) & ( \Add0~45_sumout\ ) ) # ( !char(21) & ( \Add0~45_sumout\ & ( !\LessThan0~4_combout\ ) ) ) # ( char(21) & ( !\Add0~45_sumout\ & ( \LessThan0~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~4_combout\,
	datae => ALT_INV_char(21),
	dataf => \ALT_INV_Add0~45_sumout\,
	combout => \char~10_combout\);

-- Location: FF_X85_Y9_N5
\char[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~10_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(21));

-- Location: MLABCELL_X84_Y9_N30
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (char(20) & (\char[19]~DUPLICATE_q\ & (char(22) & char(23))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(20),
	datab => \ALT_INV_char[19]~DUPLICATE_q\,
	datac => ALT_INV_char(22),
	datad => ALT_INV_char(23),
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X84_Y9_N27
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \LessThan0~0_combout\ & ( (!char(24) & ((!char(21)) # ((!char(18) & !char(17))))) ) ) # ( !\LessThan0~0_combout\ & ( !char(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100100000001100110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(18),
	datab => ALT_INV_char(24),
	datac => ALT_INV_char(17),
	datad => ALT_INV_char(21),
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X84_Y9_N23
\char[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~6_combout\,
	sclr => \Equal25~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(15));

-- Location: FF_X83_Y7_N55
\char[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~24_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(12));

-- Location: FF_X83_Y8_N22
\char[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~21_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(8));

-- Location: FF_X83_Y8_N4
\char[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~26_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(6));

-- Location: FF_X83_Y8_N7
\char[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~8_combout\,
	sclr => \Equal25~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(5));

-- Location: LABCELL_X83_Y8_N30
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( char(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~18\ = CARRY(( char(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(0),
	cin => GND,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X83_Y8_N27
\char~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~4_combout\ = ( \Add0~17_sumout\ & ( ((!\LessThan0~3_combout\) # (char(0))) # (\LessThan0~1_combout\) ) ) # ( !\Add0~17_sumout\ & ( (!\LessThan0~1_combout\ & (\LessThan0~3_combout\ & char(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001011011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datad => ALT_INV_char(0),
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \char~4_combout\);

-- Location: FF_X83_Y8_N29
\char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~4_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(0));

-- Location: LABCELL_X83_Y8_N33
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( char(1) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~10\ = CARRY(( char(1) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_char(1),
	cin => \Add0~18\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X84_Y8_N21
\char~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~2_combout\ = ( \LessThan0~1_combout\ & ( \Add0~9_sumout\ ) ) # ( !\LessThan0~1_combout\ & ( (!\LessThan0~3_combout\ & ((\Add0~9_sumout\))) # (\LessThan0~3_combout\ & (char(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_char(1),
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \char~2_combout\);

-- Location: FF_X83_Y8_N17
\char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~2_combout\,
	sclr => \Equal25~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(1));

-- Location: LABCELL_X83_Y8_N36
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( char(2) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~2\ = CARRY(( char(2) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(2),
	cin => \Add0~10\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X82_Y7_N51
\char~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~0_combout\ = ( \LessThan0~3_combout\ & ( \LessThan0~1_combout\ & ( \Add0~1_sumout\ ) ) ) # ( !\LessThan0~3_combout\ & ( \LessThan0~1_combout\ & ( \Add0~1_sumout\ ) ) ) # ( \LessThan0~3_combout\ & ( !\LessThan0~1_combout\ & ( char(2) ) ) ) # ( 
-- !\LessThan0~3_combout\ & ( !\LessThan0~1_combout\ & ( \Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datac => ALT_INV_char(2),
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \char~0_combout\);

-- Location: FF_X84_Y7_N1
\char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~0_combout\,
	sclr => \Equal25~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(2));

-- Location: LABCELL_X83_Y8_N39
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( char(3) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( char(3) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_char(3),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X84_Y8_N57
\char~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~1_combout\ = ( \LessThan0~3_combout\ & ( \LessThan0~1_combout\ & ( \Add0~5_sumout\ ) ) ) # ( !\LessThan0~3_combout\ & ( \LessThan0~1_combout\ & ( \Add0~5_sumout\ ) ) ) # ( \LessThan0~3_combout\ & ( !\LessThan0~1_combout\ & ( char(3) ) ) ) # ( 
-- !\LessThan0~3_combout\ & ( !\LessThan0~1_combout\ & ( \Add0~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(3),
	datac => \ALT_INV_Add0~5_sumout\,
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \char~1_combout\);

-- Location: FF_X83_Y8_N11
\char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~1_combout\,
	sclr => \Equal25~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(3));

-- Location: LABCELL_X83_Y8_N42
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( char(4) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~14\ = CARRY(( char(4) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(4),
	cin => \Add0~6\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X83_Y8_N0
\char~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~3_combout\ = ( \Add0~13_sumout\ & ( ((!\LessThan0~3_combout\) # (char(4))) # (\LessThan0~1_combout\) ) ) # ( !\Add0~13_sumout\ & ( (!\LessThan0~1_combout\ & (\LessThan0~3_combout\ & char(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001011011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datad => ALT_INV_char(4),
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \char~3_combout\);

-- Location: FF_X83_Y8_N2
\char[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~3_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(4));

-- Location: LABCELL_X83_Y8_N45
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \char[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~78\ = CARRY(( \char[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_char[5]~DUPLICATE_q\,
	cin => \Add0~14\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: LABCELL_X83_Y8_N18
\char~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~8_combout\ = ( \LessThan0~3_combout\ & ( (!\LessThan0~1_combout\ & (char(5))) # (\LessThan0~1_combout\ & ((\Add0~77_sumout\))) ) ) # ( !\LessThan0~3_combout\ & ( \Add0~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_char(5),
	datad => \ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \char~8_combout\);

-- Location: FF_X83_Y8_N8
\char[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~8_combout\,
	sclr => \Equal25~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[5]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N48
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \char[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~94\ = CARRY(( \char[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char[6]~DUPLICATE_q\,
	cin => \Add0~78\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: LABCELL_X83_Y8_N3
\char~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~26_combout\ = ( \Add0~93_sumout\ & ( ((!\LessThan0~3_combout\) # (char(6))) # (\LessThan0~1_combout\) ) ) # ( !\Add0~93_sumout\ & ( (!\LessThan0~1_combout\ & (\LessThan0~3_combout\ & char(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001011011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datad => ALT_INV_char(6),
	dataf => \ALT_INV_Add0~93_sumout\,
	combout => \char~26_combout\);

-- Location: FF_X83_Y8_N5
\char[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~26_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[6]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N51
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \char[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~58\ = CARRY(( \char[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_char[7]~DUPLICATE_q\,
	cin => \Add0~94\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X83_Y8_N13
\char[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~22_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(7));

-- Location: LABCELL_X83_Y8_N12
\char~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~22_combout\ = (!\LessThan0~1_combout\ & ((!\LessThan0~3_combout\ & (\Add0~57_sumout\)) # (\LessThan0~3_combout\ & ((char(7)))))) # (\LessThan0~1_combout\ & (((\Add0~57_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001101001011110000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_Add0~57_sumout\,
	datad => ALT_INV_char(7),
	combout => \char~22_combout\);

-- Location: FF_X83_Y8_N14
\char[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~22_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[7]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N54
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \char[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~90\ = CARRY(( \char[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char[8]~DUPLICATE_q\,
	cin => \Add0~58\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: LABCELL_X83_Y8_N21
\char~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~21_combout\ = ( \Add0~89_sumout\ & ( ((!\LessThan0~3_combout\) # (char(8))) # (\LessThan0~1_combout\) ) ) # ( !\Add0~89_sumout\ & ( (!\LessThan0~1_combout\ & (\LessThan0~3_combout\ & char(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => ALT_INV_char(8),
	dataf => \ALT_INV_Add0~89_sumout\,
	combout => \char~21_combout\);

-- Location: FF_X83_Y8_N23
\char[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~21_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[8]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y8_N57
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( char(9) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~86\ = CARRY(( char(9) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(9),
	cin => \Add0~90\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: LABCELL_X83_Y8_N24
\char~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~20_combout\ = (!\LessThan0~1_combout\ & ((!\LessThan0~3_combout\ & (\Add0~85_sumout\)) # (\LessThan0~3_combout\ & ((char(9)))))) # (\LessThan0~1_combout\ & (((\Add0~85_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001101001011110000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_Add0~85_sumout\,
	datad => ALT_INV_char(9),
	combout => \char~20_combout\);

-- Location: FF_X83_Y8_N26
\char[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~20_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(9));

-- Location: LABCELL_X83_Y7_N0
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( char(10) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~82\ = CARRY(( char(10) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_char(10),
	cin => \Add0~86\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: LABCELL_X83_Y7_N51
\char~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~18_combout\ = ( \Add0~81_sumout\ & ( ((!\LessThan0~3_combout\) # (char(10))) # (\LessThan0~1_combout\) ) ) # ( !\Add0~81_sumout\ & ( (!\LessThan0~1_combout\ & (\LessThan0~3_combout\ & char(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001011011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datad => ALT_INV_char(10),
	dataf => \ALT_INV_Add0~81_sumout\,
	combout => \char~18_combout\);

-- Location: FF_X83_Y7_N53
\char[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~18_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(10));

-- Location: LABCELL_X83_Y7_N3
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( char(11) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~74\ = CARRY(( char(11) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(11),
	cin => \Add0~82\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: LABCELL_X83_Y7_N48
\char~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~19_combout\ = (!\LessThan0~1_combout\ & ((!\LessThan0~3_combout\ & (\Add0~73_sumout\)) # (\LessThan0~3_combout\ & ((char(11)))))) # (\LessThan0~1_combout\ & (((\Add0~73_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101111000011010010111100001101001011110000110100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_Add0~73_sumout\,
	datad => ALT_INV_char(11),
	combout => \char~19_combout\);

-- Location: FF_X83_Y7_N49
\char[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~19_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(11));

-- Location: LABCELL_X83_Y7_N6
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \char[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~54\ = CARRY(( \char[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_char[12]~DUPLICATE_q\,
	cin => \Add0~74\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X83_Y7_N54
\char~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~24_combout\ = ( \Add0~53_sumout\ & ( ((!\LessThan0~3_combout\) # (char(12))) # (\LessThan0~1_combout\) ) ) # ( !\Add0~53_sumout\ & ( (!\LessThan0~1_combout\ & (\LessThan0~3_combout\ & char(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001011011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datad => ALT_INV_char(12),
	dataf => \ALT_INV_Add0~53_sumout\,
	combout => \char~24_combout\);

-- Location: FF_X83_Y7_N56
\char[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~24_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[12]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y7_N9
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( char(13) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~22\ = CARRY(( char(13) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(13),
	cin => \Add0~54\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X84_Y9_N36
\char~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~5_combout\ = ( \Add0~21_sumout\ & ( (!\LessThan0~3_combout\) # ((\LessThan0~1_combout\) # (char(13))) ) ) # ( !\Add0~21_sumout\ & ( (\LessThan0~3_combout\ & (char(13) & !\LessThan0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => ALT_INV_char(13),
	datad => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \char~5_combout\);

-- Location: FF_X84_Y9_N50
\char[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~5_combout\,
	sclr => \Equal25~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(13));

-- Location: LABCELL_X83_Y7_N12
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \char[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \char[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char[14]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X83_Y7_N58
\char[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~23_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(14));

-- Location: LABCELL_X83_Y7_N57
\char~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~23_combout\ = ( \LessThan0~1_combout\ & ( \Add0~25_sumout\ ) ) # ( !\LessThan0~1_combout\ & ( (!\LessThan0~3_combout\ & (\Add0~25_sumout\)) # (\LessThan0~3_combout\ & ((char(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => ALT_INV_char(14),
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \char~23_combout\);

-- Location: FF_X83_Y7_N59
\char[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~23_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[14]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y7_N15
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \char[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~38\ = CARRY(( \char[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_char[15]~DUPLICATE_q\,
	cin => \Add0~26\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: MLABCELL_X84_Y9_N48
\char~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~6_combout\ = ( \Add0~37_sumout\ & ( ((!\LessThan0~3_combout\) # (char(15))) # (\LessThan0~1_combout\) ) ) # ( !\Add0~37_sumout\ & ( (!\LessThan0~1_combout\ & (\LessThan0~3_combout\ & char(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => ALT_INV_char(15),
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \char~6_combout\);

-- Location: FF_X84_Y9_N22
\char[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~6_combout\,
	sclr => \Equal25~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[15]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y7_N18
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( char(16) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~62\ = CARRY(( char(16) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_char(16),
	cin => \Add0~38\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: MLABCELL_X82_Y7_N36
\char~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~25_combout\ = ( char(16) & ( \LessThan0~1_combout\ & ( \Add0~61_sumout\ ) ) ) # ( !char(16) & ( \LessThan0~1_combout\ & ( \Add0~61_sumout\ ) ) ) # ( char(16) & ( !\LessThan0~1_combout\ & ( (\Add0~61_sumout\) # (\LessThan0~3_combout\) ) ) ) # ( 
-- !char(16) & ( !\LessThan0~1_combout\ & ( (!\LessThan0~3_combout\ & \Add0~61_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~3_combout\,
	datad => \ALT_INV_Add0~61_sumout\,
	datae => ALT_INV_char(16),
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \char~25_combout\);

-- Location: FF_X82_Y7_N37
\char[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~25_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(16));

-- Location: LABCELL_X83_Y7_N21
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \char[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~42\ = CARRY(( \char[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char[17]~DUPLICATE_q\,
	cin => \Add0~62\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X83_Y8_N15
\char~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~11_combout\ = ( \Add0~41_sumout\ & ( ((!\LessThan0~3_combout\) # (\char[17]~DUPLICATE_q\)) # (\LessThan0~1_combout\) ) ) # ( !\Add0~41_sumout\ & ( (!\LessThan0~1_combout\ & (\LessThan0~3_combout\ & \char[17]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_char[17]~DUPLICATE_q\,
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \char~11_combout\);

-- Location: FF_X84_Y7_N11
\char[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~11_combout\,
	sclr => \Equal25~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[17]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y7_N24
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( char(18) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~66\ = CARRY(( char(18) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_char(18),
	cin => \Add0~42\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X83_Y9_N12
\char~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~12_combout\ = ( \LessThan0~1_combout\ & ( \Add0~65_sumout\ ) ) # ( !\LessThan0~1_combout\ & ( (!\LessThan0~3_combout\ & (\Add0~65_sumout\)) # (\LessThan0~3_combout\ & ((char(18)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~65_sumout\,
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => ALT_INV_char(18),
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \char~12_combout\);

-- Location: FF_X84_Y9_N35
\char[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~12_combout\,
	sclr => \Equal25~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(18));

-- Location: FF_X84_Y9_N53
\char[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~13_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(19));

-- Location: MLABCELL_X84_Y9_N51
\char~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~13_combout\ = ( \LessThan0~1_combout\ & ( \Add0~97_sumout\ ) ) # ( !\LessThan0~1_combout\ & ( (!\LessThan0~3_combout\ & (\Add0~97_sumout\)) # (\LessThan0~3_combout\ & ((char(19)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_Add0~97_sumout\,
	datad => ALT_INV_char(19),
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \char~13_combout\);

-- Location: FF_X84_Y9_N52
\char[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~13_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[19]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y7_N3
\Equal25~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~11_combout\ = ( \LessThan0~1_combout\ & ( \Add0~97_sumout\ & ( \Add0~41_sumout\ ) ) ) # ( !\LessThan0~1_combout\ & ( \Add0~97_sumout\ & ( (!\LessThan0~3_combout\ & (((\Add0~41_sumout\)))) # (\LessThan0~3_combout\ & (\char[19]~DUPLICATE_q\ & 
-- (\char[17]~DUPLICATE_q\))) ) ) ) # ( !\LessThan0~1_combout\ & ( !\Add0~97_sumout\ & ( (\LessThan0~3_combout\ & (\char[19]~DUPLICATE_q\ & \char[17]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000000001101010110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datab => \ALT_INV_char[19]~DUPLICATE_q\,
	datac => \ALT_INV_char[17]~DUPLICATE_q\,
	datad => \ALT_INV_Add0~41_sumout\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_Add0~97_sumout\,
	combout => \Equal25~11_combout\);

-- Location: FF_X84_Y7_N53
\char[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~15_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[22]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y7_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \char[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \char[22]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_char[22]~DUPLICATE_q\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: MLABCELL_X84_Y7_N27
\Equal25~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~12_combout\ = ( \Add0~49_sumout\ & ( (!\LessThan0~4_combout\ & (((\Add0~45_sumout\)))) # (\LessThan0~4_combout\ & (\char[22]~DUPLICATE_q\ & ((\char[21]~DUPLICATE_q\)))) ) ) # ( !\Add0~49_sumout\ & ( (\char[22]~DUPLICATE_q\ & 
-- (\LessThan0~4_combout\ & \char[21]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100001100000111010000110000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char[22]~DUPLICATE_q\,
	datab => \ALT_INV_LessThan0~4_combout\,
	datac => \ALT_INV_Add0~45_sumout\,
	datad => \ALT_INV_char[21]~DUPLICATE_q\,
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \Equal25~12_combout\);

-- Location: MLABCELL_X84_Y7_N24
\char~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~17_combout\ = ( \Add0~33_sumout\ ) # ( !\Add0~33_sumout\ & ( \LessThan0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~4_combout\,
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \char~17_combout\);

-- Location: FF_X83_Y7_N23
\char[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~17_combout\,
	sclr => \Equal25~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(25));

-- Location: LABCELL_X83_Y7_N42
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( char(24) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~70\ = CARRY(( char(24) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_char(24),
	cin => \Add0~30\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: LABCELL_X83_Y7_N45
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( char(25) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(25),
	cin => \Add0~70\,
	sumout => \Add0~33_sumout\);

-- Location: LABCELL_X83_Y7_N39
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \char[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~30\ = CARRY(( \char[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char[23]~DUPLICATE_q\,
	cin => \Add0~50\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: MLABCELL_X84_Y7_N12
\Equal25~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~8_combout\ = ( \LessThan0~1_combout\ & ( \LessThan0~3_combout\ & ( (\Add0~21_sumout\ & \Add0~53_sumout\) ) ) ) # ( !\LessThan0~1_combout\ & ( \LessThan0~3_combout\ & ( (char(13) & char(12)) ) ) ) # ( \LessThan0~1_combout\ & ( 
-- !\LessThan0~3_combout\ & ( (\Add0~21_sumout\ & \Add0~53_sumout\) ) ) ) # ( !\LessThan0~1_combout\ & ( !\LessThan0~3_combout\ & ( (\Add0~21_sumout\ & \Add0~53_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000010101010000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(13),
	datab => \ALT_INV_Add0~21_sumout\,
	datac => \ALT_INV_Add0~53_sumout\,
	datad => ALT_INV_char(12),
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \Equal25~8_combout\);

-- Location: MLABCELL_X84_Y7_N6
\Equal25~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~9_combout\ = ( \LessThan0~1_combout\ & ( \Add0~25_sumout\ & ( \Add0~37_sumout\ ) ) ) # ( !\LessThan0~1_combout\ & ( \Add0~25_sumout\ & ( (!\LessThan0~3_combout\ & (((\Add0~37_sumout\)))) # (\LessThan0~3_combout\ & (\char[15]~DUPLICATE_q\ & 
-- (char(14)))) ) ) ) # ( !\LessThan0~1_combout\ & ( !\Add0~25_sumout\ & ( (\char[15]~DUPLICATE_q\ & (char(14) & \LessThan0~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000000001111100010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char[15]~DUPLICATE_q\,
	datab => ALT_INV_char(14),
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => \ALT_INV_Add0~37_sumout\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \Equal25~9_combout\);

-- Location: MLABCELL_X84_Y7_N54
\Equal25~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~10_combout\ = ( \LessThan0~4_combout\ & ( \Equal25~9_combout\ & ( (\char[23]~DUPLICATE_q\ & \Equal25~8_combout\) ) ) ) # ( !\LessThan0~4_combout\ & ( \Equal25~9_combout\ & ( (\Add0~33_sumout\ & (\Add0~29_sumout\ & \Equal25~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_char[23]~DUPLICATE_q\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_Equal25~8_combout\,
	datae => \ALT_INV_LessThan0~4_combout\,
	dataf => \ALT_INV_Equal25~9_combout\,
	combout => \Equal25~10_combout\);

-- Location: LABCELL_X83_Y9_N0
\Equal25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~0_combout\ = ( !\LessThan0~1_combout\ & ( \Add0~61_sumout\ & ( (\LessThan0~3_combout\ & (!char(18) & !char(16))) ) ) ) # ( \LessThan0~1_combout\ & ( !\Add0~61_sumout\ & ( !\Add0~65_sumout\ ) ) ) # ( !\LessThan0~1_combout\ & ( !\Add0~61_sumout\ & 
-- ( (!\LessThan0~3_combout\ & (((!\Add0~65_sumout\)))) # (\LessThan0~3_combout\ & (!char(18) & (!char(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101001000000111111110000000001000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datab => ALT_INV_char(18),
	datac => ALT_INV_char(16),
	datad => \ALT_INV_Add0~65_sumout\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_Add0~61_sumout\,
	combout => \Equal25~0_combout\);

-- Location: MLABCELL_X84_Y7_N33
\char~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~7_combout\ = ( char(25) & ( char(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(24),
	dataf => ALT_INV_char(25),
	combout => \char~7_combout\);

-- Location: LABCELL_X83_Y9_N30
\Equal25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~3_combout\ = ( !\Add0~89_sumout\ & ( \LessThan0~1_combout\ & ( !\Add0~93_sumout\ ) ) ) # ( \Add0~89_sumout\ & ( !\LessThan0~1_combout\ & ( (\LessThan0~3_combout\ & (!char(6) & !char(8))) ) ) ) # ( !\Add0~89_sumout\ & ( !\LessThan0~1_combout\ & ( 
-- (!\LessThan0~3_combout\ & (((!\Add0~93_sumout\)))) # (\LessThan0~3_combout\ & (!char(6) & (!char(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101001000000010000000100000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datab => ALT_INV_char(6),
	datac => ALT_INV_char(8),
	datad => \ALT_INV_Add0~93_sumout\,
	datae => \ALT_INV_Add0~89_sumout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \Equal25~3_combout\);

-- Location: FF_X83_Y8_N25
\char[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~20_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[9]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y9_N0
\Equal25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~2_combout\ = ( !\Add0~81_sumout\ & ( \LessThan0~1_combout\ & ( !\Add0~85_sumout\ ) ) ) # ( \Add0~81_sumout\ & ( !\LessThan0~1_combout\ & ( (!char(10) & (!\char[9]~DUPLICATE_q\ & \LessThan0~3_combout\)) ) ) ) # ( !\Add0~81_sumout\ & ( 
-- !\LessThan0~1_combout\ & ( (!\LessThan0~3_combout\ & (((!\Add0~85_sumout\)))) # (\LessThan0~3_combout\ & (!char(10) & (!\char[9]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000001000000010000000100011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(10),
	datab => \ALT_INV_char[9]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => \ALT_INV_Add0~85_sumout\,
	datae => \ALT_INV_Add0~81_sumout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \Equal25~2_combout\);

-- Location: MLABCELL_X84_Y9_N0
\Equal25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~1_combout\ = ( \Add0~77_sumout\ & ( \Add0~73_sumout\ & ( (!\LessThan0~1_combout\ & (!char(11) & (!\char[5]~DUPLICATE_q\ & \LessThan0~3_combout\))) ) ) ) # ( !\Add0~77_sumout\ & ( \Add0~73_sumout\ & ( (!\LessThan0~1_combout\ & (!char(11) & 
-- (!\char[5]~DUPLICATE_q\ & \LessThan0~3_combout\))) ) ) ) # ( \Add0~77_sumout\ & ( !\Add0~73_sumout\ & ( (!\LessThan0~1_combout\ & (!char(11) & (!\char[5]~DUPLICATE_q\ & \LessThan0~3_combout\))) ) ) ) # ( !\Add0~77_sumout\ & ( !\Add0~73_sumout\ & ( 
-- ((!\LessThan0~3_combout\) # ((!char(11) & !\char[5]~DUPLICATE_q\))) # (\LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111010101000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => ALT_INV_char(11),
	datac => \ALT_INV_char[5]~DUPLICATE_q\,
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => \ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_Add0~73_sumout\,
	combout => \Equal25~1_combout\);

-- Location: LABCELL_X83_Y9_N42
\Equal25~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~4_combout\ = ( \Equal25~1_combout\ & ( \Add0~69_sumout\ & ( (!\char~7_combout\ & (\Equal25~3_combout\ & (\LessThan0~4_combout\ & \Equal25~2_combout\))) ) ) ) # ( \Equal25~1_combout\ & ( !\Add0~69_sumout\ & ( (!\char~7_combout\ & 
-- (\Equal25~3_combout\ & \Equal25~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~7_combout\,
	datab => \ALT_INV_Equal25~3_combout\,
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => \ALT_INV_Equal25~2_combout\,
	datae => \ALT_INV_Equal25~1_combout\,
	dataf => \ALT_INV_Add0~69_sumout\,
	combout => \Equal25~4_combout\);

-- Location: MLABCELL_X84_Y8_N42
\Equal25~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~5_combout\ = ( \LessThan0~3_combout\ & ( \LessThan0~1_combout\ & ( (!\Add0~17_sumout\ & !\Add0~13_sumout\) ) ) ) # ( !\LessThan0~3_combout\ & ( \LessThan0~1_combout\ & ( (!\Add0~17_sumout\ & !\Add0~13_sumout\) ) ) ) # ( \LessThan0~3_combout\ & ( 
-- !\LessThan0~1_combout\ & ( (!char(4) & !char(0)) ) ) ) # ( !\LessThan0~3_combout\ & ( !\LessThan0~1_combout\ & ( (!\Add0~17_sumout\ & !\Add0~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000110000001100000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~17_sumout\,
	datab => ALT_INV_char(4),
	datac => ALT_INV_char(0),
	datad => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \Equal25~5_combout\);

-- Location: MLABCELL_X84_Y8_N0
\Equal25~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~6_combout\ = ( \LessThan0~3_combout\ & ( \LessThan0~1_combout\ & ( (!\Add0~5_sumout\ & \Add0~57_sumout\) ) ) ) # ( !\LessThan0~3_combout\ & ( \LessThan0~1_combout\ & ( (!\Add0~5_sumout\ & \Add0~57_sumout\) ) ) ) # ( \LessThan0~3_combout\ & ( 
-- !\LessThan0~1_combout\ & ( (!char(3) & char(7)) ) ) ) # ( !\LessThan0~3_combout\ & ( !\LessThan0~1_combout\ & ( (!\Add0~5_sumout\ & \Add0~57_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000001010101000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(3),
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~57_sumout\,
	datad => ALT_INV_char(7),
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \Equal25~6_combout\);

-- Location: LABCELL_X83_Y8_N9
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \LessThan0~1_combout\ & ( \LessThan0~3_combout\ & ( (!\Add0~1_sumout\ & !\Add0~9_sumout\) ) ) ) # ( !\LessThan0~1_combout\ & ( \LessThan0~3_combout\ & ( (!char(1) & !char(2)) ) ) ) # ( \LessThan0~1_combout\ & ( 
-- !\LessThan0~3_combout\ & ( (!\Add0~1_sumout\ & !\Add0~9_sumout\) ) ) ) # ( !\LessThan0~1_combout\ & ( !\LessThan0~3_combout\ & ( (!\Add0~1_sumout\ & !\Add0~9_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011000000110000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => ALT_INV_char(1),
	datac => ALT_INV_char(2),
	datad => \ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \Equal0~6_combout\);

-- Location: MLABCELL_X84_Y8_N48
\Equal25~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~7_combout\ = ( \LessThan0~4_combout\ & ( \Add0~101_sumout\ & ( (char(20) & (\Equal25~5_combout\ & (\Equal25~6_combout\ & \Equal0~6_combout\))) ) ) ) # ( !\LessThan0~4_combout\ & ( \Add0~101_sumout\ & ( (\Equal25~5_combout\ & (\Equal25~6_combout\ 
-- & \Equal0~6_combout\)) ) ) ) # ( \LessThan0~4_combout\ & ( !\Add0~101_sumout\ & ( (char(20) & (\Equal25~5_combout\ & (\Equal25~6_combout\ & \Equal0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(20),
	datab => \ALT_INV_Equal25~5_combout\,
	datac => \ALT_INV_Equal25~6_combout\,
	datad => \ALT_INV_Equal0~6_combout\,
	datae => \ALT_INV_LessThan0~4_combout\,
	dataf => \ALT_INV_Add0~101_sumout\,
	combout => \Equal25~7_combout\);

-- Location: MLABCELL_X84_Y7_N18
\Equal25~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~13_combout\ = ( \Equal25~4_combout\ & ( \Equal25~7_combout\ & ( (\Equal25~11_combout\ & (\Equal25~12_combout\ & (\Equal25~10_combout\ & \Equal25~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal25~11_combout\,
	datab => \ALT_INV_Equal25~12_combout\,
	datac => \ALT_INV_Equal25~10_combout\,
	datad => \ALT_INV_Equal25~0_combout\,
	datae => \ALT_INV_Equal25~4_combout\,
	dataf => \ALT_INV_Equal25~7_combout\,
	combout => \Equal25~13_combout\);

-- Location: FF_X85_Y9_N23
\char[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~16_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(23));

-- Location: LABCELL_X85_Y9_N21
\char~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~16_combout\ = ( char(23) & ( \Add0~29_sumout\ ) ) # ( !char(23) & ( \Add0~29_sumout\ & ( !\LessThan0~4_combout\ ) ) ) # ( char(23) & ( !\Add0~29_sumout\ & ( \LessThan0~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~4_combout\,
	datae => ALT_INV_char(23),
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \char~16_combout\);

-- Location: FF_X85_Y9_N22
\char[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~16_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[23]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y9_N12
\char~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~9_combout\ = ( \LessThan0~4_combout\ & ( \char~7_combout\ ) ) # ( !\LessThan0~4_combout\ & ( (\char~7_combout\) # (\Add0~69_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~69_sumout\,
	datad => \ALT_INV_char~7_combout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \char~9_combout\);

-- Location: FF_X84_Y9_N14
\char[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~9_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(24));

-- Location: MLABCELL_X84_Y9_N24
\lcd_enable~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~1_combout\ = ( !char(16) & ( (!char(24) & !char(18)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_char(24),
	datac => ALT_INV_char(18),
	dataf => ALT_INV_char(16),
	combout => \lcd_enable~1_combout\);

-- Location: MLABCELL_X84_Y9_N57
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( char(13) & ( (char(15) & (char(14) & \char[12]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(15),
	datac => ALT_INV_char(14),
	datad => \ALT_INV_char[12]~DUPLICATE_q\,
	dataf => ALT_INV_char(13),
	combout => \LessThan0~2_combout\);

-- Location: MLABCELL_X84_Y9_N15
\lcd_enable~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~0_combout\ = ( !char(10) & ( (!char(8) & (!char(11) & (!char(9) & !char(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(8),
	datab => ALT_INV_char(11),
	datac => ALT_INV_char(9),
	datad => ALT_INV_char(7),
	dataf => ALT_INV_char(10),
	combout => \lcd_enable~0_combout\);

-- Location: MLABCELL_X84_Y9_N39
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \lcd_enable~0_combout\ & ( (!\lcd_enable~1_combout\ & char(25)) ) ) # ( !\lcd_enable~0_combout\ & ( (char(25) & ((!\lcd_enable~1_combout\) # (\LessThan0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_lcd_enable~1_combout\,
	datac => ALT_INV_char(25),
	datad => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_lcd_enable~0_combout\,
	combout => \LessThan0~3_combout\);

-- Location: MLABCELL_X84_Y9_N9
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !\LessThan0~1_combout\ & ( \LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \LessThan0~4_combout\);

-- Location: MLABCELL_X84_Y7_N51
\char~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~15_combout\ = ( \Add0~49_sumout\ & ( (!\LessThan0~4_combout\) # (char(22)) ) ) # ( !\Add0~49_sumout\ & ( (\LessThan0~4_combout\ & char(22)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~4_combout\,
	datad => ALT_INV_char(22),
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \char~15_combout\);

-- Location: FF_X84_Y7_N52
\char[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~15_combout\,
	sclr => \Equal25~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(22));

-- Location: MLABCELL_X87_Y9_N48
\lcd_enable~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~5_combout\ = ( !char(25) & ( \lcd_enable~1_combout\ & ( (!\char[23]~DUPLICATE_q\ & !\char[21]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_char[23]~DUPLICATE_q\,
	datac => \ALT_INV_char[21]~DUPLICATE_q\,
	datae => ALT_INV_char(25),
	dataf => \ALT_INV_lcd_enable~1_combout\,
	combout => \lcd_enable~5_combout\);

-- Location: LABCELL_X88_Y9_N3
\lcd_enable~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~4_combout\ = ( !\char[14]~DUPLICATE_q\ & ( !\char[5]~DUPLICATE_q\ & ( (!char(13) & (!char(6) & !char(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(13),
	datac => ALT_INV_char(6),
	datad => ALT_INV_char(12),
	datae => \ALT_INV_char[14]~DUPLICATE_q\,
	dataf => \ALT_INV_char[5]~DUPLICATE_q\,
	combout => \lcd_enable~4_combout\);

-- Location: MLABCELL_X84_Y9_N33
\lcd_enable~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~3_combout\ = ( \process_0~0_combout\ & ( (!char(20) & (!\char[19]~DUPLICATE_q\ & (!char(17) & !char(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(20),
	datab => \ALT_INV_char[19]~DUPLICATE_q\,
	datac => ALT_INV_char(17),
	datad => ALT_INV_char(15),
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \lcd_enable~3_combout\);

-- Location: MLABCELL_X84_Y8_N18
\lcd_enable~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~2_combout\ = ( char(4) & ( (char(3) & (((char(0) & char(1))) # (char(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000011110000000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(0),
	datab => ALT_INV_char(1),
	datac => ALT_INV_char(3),
	datad => ALT_INV_char(2),
	dataf => ALT_INV_char(4),
	combout => \lcd_enable~2_combout\);

-- Location: LABCELL_X85_Y9_N15
\lcd_enable~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~6_combout\ = ( !\lcd_enable~2_combout\ & ( (!char(22) & (\lcd_enable~5_combout\ & (\lcd_enable~4_combout\ & \lcd_enable~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(22),
	datab => \ALT_INV_lcd_enable~5_combout\,
	datac => \ALT_INV_lcd_enable~4_combout\,
	datad => \ALT_INV_lcd_enable~3_combout\,
	dataf => \ALT_INV_lcd_enable~2_combout\,
	combout => \lcd_enable~6_combout\);

-- Location: MLABCELL_X84_Y8_N24
\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( \LessThan0~3_combout\ & ( \LessThan0~1_combout\ & ( (\Add0~17_sumout\ & !\Add0~13_sumout\) ) ) ) # ( !\LessThan0~3_combout\ & ( \LessThan0~1_combout\ & ( (\Add0~17_sumout\ & !\Add0~13_sumout\) ) ) ) # ( \LessThan0~3_combout\ & ( 
-- !\LessThan0~1_combout\ & ( (char(0) & !char(4)) ) ) ) # ( !\LessThan0~3_combout\ & ( !\LessThan0~1_combout\ & ( (\Add0~17_sumout\ & !\Add0~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010001000100010000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(0),
	datab => ALT_INV_char(4),
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \Equal0~7_combout\);

-- Location: MLABCELL_X84_Y9_N18
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\char~5_combout\ & ( \Add0~29_sumout\ & ( (!char(23) & (\LessThan0~4_combout\ & !char(14))) ) ) ) # ( !\char~5_combout\ & ( !\Add0~29_sumout\ & ( (!\LessThan0~4_combout\ & (((!\Add0~25_sumout\)))) # (\LessThan0~4_combout\ & 
-- (!char(23) & ((!char(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001011000000000000000000000000100010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(23),
	datab => \ALT_INV_LessThan0~4_combout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => ALT_INV_char(14),
	datae => \ALT_INV_char~5_combout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X83_Y9_N36
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !char(7) & ( \Add0~53_sumout\ & ( (\LessThan0~3_combout\ & (!\char[12]~DUPLICATE_q\ & !\LessThan0~1_combout\)) ) ) ) # ( char(7) & ( !\Add0~53_sumout\ & ( (!\Add0~57_sumout\ & ((!\LessThan0~3_combout\) # (\LessThan0~1_combout\))) ) 
-- ) ) # ( !char(7) & ( !\Add0~53_sumout\ & ( (!\LessThan0~3_combout\ & (((!\Add0~57_sumout\)))) # (\LessThan0~3_combout\ & ((!\LessThan0~1_combout\ & (!\char[12]~DUPLICATE_q\)) # (\LessThan0~1_combout\ & ((!\Add0~57_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111101000000101011110000000001000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datab => \ALT_INV_char[12]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_Add0~57_sumout\,
	datae => ALT_INV_char(7),
	dataf => \ALT_INV_Add0~53_sumout\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X83_Y9_N6
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Equal0~2_combout\ & ( \Add0~49_sumout\ & ( (!\char[21]~DUPLICATE_q\ & (!\char[22]~DUPLICATE_q\ & \LessThan0~4_combout\)) ) ) ) # ( \Equal0~2_combout\ & ( !\Add0~49_sumout\ & ( (!\LessThan0~4_combout\ & (((!\Add0~45_sumout\)))) # 
-- (\LessThan0~4_combout\ & (!\char[21]~DUPLICATE_q\ & (!\char[22]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000000100000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char[21]~DUPLICATE_q\,
	datab => \ALT_INV_char[22]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => \ALT_INV_Add0~45_sumout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X84_Y9_N6
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \Add0~97_sumout\ & ( (!char(19) & (\LessThan0~4_combout\ & !char(20))) ) ) # ( !\Add0~97_sumout\ & ( (!\LessThan0~4_combout\ & (((!\Add0~101_sumout\)))) # (\LessThan0~4_combout\ & (!char(19) & (!char(20)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000100000111011000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(19),
	datab => \ALT_INV_LessThan0~4_combout\,
	datac => ALT_INV_char(20),
	datad => \ALT_INV_Add0~101_sumout\,
	dataf => \ALT_INV_Add0~97_sumout\,
	combout => \Equal0~4_combout\);

-- Location: MLABCELL_X84_Y9_N54
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\Add0~33_sumout\ & ( (!\LessThan0~4_combout\ & (!\Add0~41_sumout\ & !\char~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~4_combout\,
	datac => \ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_char~6_combout\,
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X84_Y9_N42
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~1_combout\ & ( \Equal25~4_combout\ & ( (\Equal0~0_combout\ & (\Equal25~0_combout\ & (\Equal0~3_combout\ & \Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal25~0_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~4_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal25~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: MLABCELL_X84_Y7_N30
\WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = ( !\Equal25~13_combout\ & ( (!\char~2_combout\) # ((!\char~1_combout\) # ((!\Equal0~7_combout\) # (!\Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110111111111111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~2_combout\,
	datab => \ALT_INV_char~1_combout\,
	datac => \ALT_INV_Equal0~7_combout\,
	datad => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_Equal25~13_combout\,
	combout => \WideNor0~0_combout\);

-- Location: LABCELL_X83_Y6_N36
\WideNor0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = ( \char~4_combout\ & ( \Equal0~5_combout\ & ( (!\char~1_combout\) # ((!\char~2_combout\ & ((!\char~3_combout\) # (!\char~0_combout\)))) ) ) ) # ( !\char~4_combout\ & ( \Equal0~5_combout\ & ( (!\char~3_combout\ & (((\char~0_combout\) 
-- # (\char~1_combout\)) # (\char~2_combout\))) # (\char~3_combout\ & ((!\char~1_combout\) # ((!\char~2_combout\ & !\char~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111110111110101111110011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~3_combout\,
	datab => \ALT_INV_char~2_combout\,
	datac => \ALT_INV_char~1_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_char~4_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \WideNor0~1_combout\);

-- Location: MLABCELL_X82_Y7_N21
\lcd_enable~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~7_combout\ = ( \WideNor0~0_combout\ & ( \WideNor0~1_combout\ & ( (\lcd_enable~6_combout\ & \lcd_enable~0_combout\) ) ) ) # ( !\WideNor0~0_combout\ & ( \WideNor0~1_combout\ & ( (\lcd_enable~6_combout\ & \lcd_enable~0_combout\) ) ) ) # ( 
-- !\WideNor0~0_combout\ & ( !\WideNor0~1_combout\ & ( (\lcd_enable~6_combout\ & \lcd_enable~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_lcd_enable~6_combout\,
	datac => \ALT_INV_lcd_enable~0_combout\,
	datae => \ALT_INV_WideNor0~0_combout\,
	dataf => \ALT_INV_WideNor0~1_combout\,
	combout => \lcd_enable~7_combout\);

-- Location: FF_X82_Y7_N22
lcd_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \lcd_enable~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_enable~q\);

-- Location: LABCELL_X77_Y4_N42
\dut|lcd_data[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|lcd_data[2]~0_combout\ = ( !\lcd_enable~q\ & ( \dut|state.ready~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_lcd_enable~q\,
	dataf => \dut|ALT_INV_state.ready~q\,
	combout => \dut|lcd_data[2]~0_combout\);

-- Location: LABCELL_X80_Y4_N54
\dut|LessThan9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan9~0_combout\ = ( !\dut|clk_count\(28) & ( !\dut|clk_count\(29) & ( (!\dut|clk_count\(30) & !\dut|clk_count\(27)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(30),
	datac => \dut|ALT_INV_clk_count\(27),
	datae => \dut|ALT_INV_clk_count\(28),
	dataf => \dut|ALT_INV_clk_count\(29),
	combout => \dut|LessThan9~0_combout\);

-- Location: LABCELL_X80_Y4_N15
\dut|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~4_combout\ = ( !\dut|clk_count\(25) & ( (!\dut|clk_count\(26) & (!\dut|clk_count\(22) & (!\dut|clk_count\(24) & !\dut|clk_count\(23)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(26),
	datab => \dut|ALT_INV_clk_count\(22),
	datac => \dut|ALT_INV_clk_count\(24),
	datad => \dut|ALT_INV_clk_count\(23),
	datae => \dut|ALT_INV_clk_count\(25),
	combout => \dut|LessThan0~4_combout\);

-- Location: LABCELL_X79_Y5_N48
\dut|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~2_combout\ = ( !\dut|clk_count\(15) & ( !\dut|clk_count\(14) & ( !\dut|clk_count\(16) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(16),
	datae => \dut|ALT_INV_clk_count\(15),
	dataf => \dut|ALT_INV_clk_count\(14),
	combout => \dut|LessThan0~2_combout\);

-- Location: FF_X81_Y4_N37
\dut|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~29_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(21));

-- Location: LABCELL_X80_Y5_N6
\dut|LessThan9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan9~1_combout\ = ( !\dut|clk_count\(17) & ( (!\dut|clk_count\(13) & (!\dut|clk_count\(12) & (!\dut|clk_count\(21) & !\dut|clk_count\(18)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(13),
	datab => \dut|ALT_INV_clk_count\(12),
	datac => \dut|ALT_INV_clk_count\(21),
	datad => \dut|ALT_INV_clk_count\(18),
	dataf => \dut|ALT_INV_clk_count\(17),
	combout => \dut|LessThan9~1_combout\);

-- Location: LABCELL_X80_Y5_N33
\dut|LessThan9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan9~2_combout\ = ( \dut|LessThan9~1_combout\ & ( (!\dut|clk_count\(20) & (!\dut|clk_count\(19) & (\dut|LessThan0~4_combout\ & \dut|LessThan0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(20),
	datab => \dut|ALT_INV_clk_count\(19),
	datac => \dut|ALT_INV_LessThan0~4_combout\,
	datad => \dut|ALT_INV_LessThan0~2_combout\,
	dataf => \dut|ALT_INV_LessThan9~1_combout\,
	combout => \dut|LessThan9~2_combout\);

-- Location: LABCELL_X79_Y5_N45
\dut|LessThan9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan9~4_combout\ = ( \dut|clk_count\(7) & ( \dut|clk_count\(6) & ( \dut|clk_count\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(8),
	datae => \dut|ALT_INV_clk_count\(7),
	dataf => \dut|ALT_INV_clk_count\(6),
	combout => \dut|LessThan9~4_combout\);

-- Location: LABCELL_X80_Y4_N30
\dut|LessThan9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan9~3_combout\ = ( !\dut|clk_count\(5) & ( !\dut|clk_count\(3) & ( (!\dut|clk_count\(4) & !\dut|clk_count\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_clk_count\(4),
	datac => \dut|ALT_INV_clk_count\(2),
	datae => \dut|ALT_INV_clk_count\(5),
	dataf => \dut|ALT_INV_clk_count\(3),
	combout => \dut|LessThan9~3_combout\);

-- Location: LABCELL_X80_Y5_N24
\dut|LessThan9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan9~5_combout\ = ( \dut|LessThan9~3_combout\ & ( (\dut|clk_count\(11) & ((\dut|clk_count\(9)) # (\dut|clk_count\(10)))) ) ) # ( !\dut|LessThan9~3_combout\ & ( (\dut|clk_count\(11) & (((\dut|clk_count\(9)) # (\dut|LessThan9~4_combout\)) # 
-- (\dut|clk_count\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000100110011001100010001001100110001000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(10),
	datab => \dut|ALT_INV_clk_count\(11),
	datac => \dut|ALT_INV_LessThan9~4_combout\,
	datad => \dut|ALT_INV_clk_count\(9),
	dataf => \dut|ALT_INV_LessThan9~3_combout\,
	combout => \dut|LessThan9~5_combout\);

-- Location: LABCELL_X80_Y5_N0
\dut|LessThan9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan9~6_combout\ = ( !\dut|LessThan9~5_combout\ & ( (\dut|LessThan9~2_combout\ & \dut|LessThan9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_LessThan9~2_combout\,
	datad => \dut|ALT_INV_LessThan9~0_combout\,
	dataf => \dut|ALT_INV_LessThan9~5_combout\,
	combout => \dut|LessThan9~6_combout\);

-- Location: LABCELL_X77_Y5_N3
\dut|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector35~0_combout\ = ( \dut|state.send~q\ & ( \lcd_enable~q\ & ( ((\dut|state.ready~q\) # (\dut|clk_count\(31))) # (\dut|LessThan9~6_combout\) ) ) ) # ( !\dut|state.send~q\ & ( \lcd_enable~q\ & ( \dut|state.ready~q\ ) ) ) # ( \dut|state.send~q\ & 
-- ( !\lcd_enable~q\ & ( (\dut|clk_count\(31)) # (\dut|LessThan9~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100001111000011110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan9~6_combout\,
	datab => \dut|ALT_INV_clk_count\(31),
	datac => \dut|ALT_INV_state.ready~q\,
	datae => \dut|ALT_INV_state.send~q\,
	dataf => \ALT_INV_lcd_enable~q\,
	combout => \dut|Selector35~0_combout\);

-- Location: FF_X77_Y5_N4
\dut|state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.send~q\);

-- Location: LABCELL_X80_Y5_N36
\dut|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector34~0_combout\ = ( \dut|LessThan9~5_combout\ & ( (!\dut|clk_count\(31) & \dut|state.send~q\) ) ) # ( !\dut|LessThan9~5_combout\ & ( (!\dut|clk_count\(31) & (\dut|state.send~q\ & ((!\dut|LessThan9~0_combout\) # (!\dut|LessThan9~2_combout\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan9~0_combout\,
	datab => \dut|ALT_INV_clk_count\(31),
	datac => \dut|ALT_INV_LessThan9~2_combout\,
	datad => \dut|ALT_INV_state.send~q\,
	dataf => \dut|ALT_INV_LessThan9~5_combout\,
	combout => \dut|Selector34~0_combout\);

-- Location: MLABCELL_X82_Y4_N24
\dut|Selector34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector34~1_combout\ = ( \dut|lcd_data[2]~1_combout\ & ( \dut|state.initialize~q\ & ( (((!\dut|state~6_combout\ & !\dut|lcd_data[2]~2_combout\)) # (\dut|Selector34~0_combout\)) # (\dut|lcd_data[2]~0_combout\) ) ) ) # ( !\dut|lcd_data[2]~1_combout\ & 
-- ( \dut|state.initialize~q\ & ( (\dut|Selector34~0_combout\) # (\dut|lcd_data[2]~0_combout\) ) ) ) # ( \dut|lcd_data[2]~1_combout\ & ( !\dut|state.initialize~q\ & ( (\dut|Selector34~0_combout\) # (\dut|lcd_data[2]~0_combout\) ) ) ) # ( 
-- !\dut|lcd_data[2]~1_combout\ & ( !\dut|state.initialize~q\ & ( (\dut|Selector34~0_combout\) # (\dut|lcd_data[2]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111111101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_lcd_data[2]~0_combout\,
	datab => \dut|ALT_INV_state~6_combout\,
	datac => \dut|ALT_INV_Selector34~0_combout\,
	datad => \dut|ALT_INV_lcd_data[2]~2_combout\,
	datae => \dut|ALT_INV_lcd_data[2]~1_combout\,
	dataf => \dut|ALT_INV_state.initialize~q\,
	combout => \dut|Selector34~1_combout\);

-- Location: FF_X82_Y4_N26
\dut|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector34~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.ready~q\);

-- Location: LABCELL_X80_Y5_N57
\dut|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~5_combout\ = ( \dut|LessThan0~4_combout\ & ( \dut|LessThan9~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_LessThan9~0_combout\,
	dataf => \dut|ALT_INV_LessThan0~4_combout\,
	combout => \dut|LessThan0~5_combout\);

-- Location: LABCELL_X80_Y5_N12
\dut|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~0_combout\ = ( \dut|clk_count\(6) & ( (!\dut|clk_count\(9) & ((!\dut|clk_count\(7)) # (!\dut|clk_count\(8)))) ) ) # ( !\dut|clk_count\(6) & ( (!\dut|clk_count\(9) & ((!\dut|clk_count\(7)) # ((!\dut|clk_count\(8)) # (!\dut|clk_count\(5))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000000111111100000000011101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(7),
	datab => \dut|ALT_INV_clk_count\(8),
	datac => \dut|ALT_INV_clk_count\(5),
	datad => \dut|ALT_INV_clk_count\(9),
	dataf => \dut|ALT_INV_clk_count\(6),
	combout => \dut|LessThan0~0_combout\);

-- Location: LABCELL_X80_Y5_N9
\dut|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~1_combout\ = ( \dut|clk_count\(10) & ( (\dut|clk_count\(13) & (((!\dut|LessThan0~0_combout\) # (\dut|clk_count\(11))) # (\dut|clk_count\(12)))) ) ) # ( !\dut|clk_count\(10) & ( (\dut|clk_count\(13) & ((\dut|clk_count\(11)) # 
-- (\dut|clk_count\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010101010001010101010101000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(13),
	datab => \dut|ALT_INV_clk_count\(12),
	datac => \dut|ALT_INV_LessThan0~0_combout\,
	datad => \dut|ALT_INV_clk_count\(11),
	dataf => \dut|ALT_INV_clk_count\(10),
	combout => \dut|LessThan0~1_combout\);

-- Location: LABCELL_X80_Y5_N48
\dut|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~3_combout\ = ( \dut|LessThan0~2_combout\ & ( \dut|LessThan0~1_combout\ & ( (!\dut|clk_count\(19) & (!\dut|clk_count\(20) & ((!\dut|clk_count\(17)) # (!\dut|clk_count\(18))))) ) ) ) # ( !\dut|LessThan0~2_combout\ & ( 
-- \dut|LessThan0~1_combout\ & ( (!\dut|clk_count\(19) & (!\dut|clk_count\(20) & ((!\dut|clk_count\(17)) # (!\dut|clk_count\(18))))) ) ) ) # ( \dut|LessThan0~2_combout\ & ( !\dut|LessThan0~1_combout\ & ( (!\dut|clk_count\(19) & !\dut|clk_count\(20)) ) ) ) # 
-- ( !\dut|LessThan0~2_combout\ & ( !\dut|LessThan0~1_combout\ & ( (!\dut|clk_count\(19) & (!\dut|clk_count\(20) & ((!\dut|clk_count\(17)) # (!\dut|clk_count\(18))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001100000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(17),
	datab => \dut|ALT_INV_clk_count\(19),
	datac => \dut|ALT_INV_clk_count\(20),
	datad => \dut|ALT_INV_clk_count\(18),
	datae => \dut|ALT_INV_LessThan0~2_combout\,
	dataf => \dut|ALT_INV_LessThan0~1_combout\,
	combout => \dut|LessThan0~3_combout\);

-- Location: LABCELL_X80_Y5_N39
\dut|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~6_combout\ = ( \dut|LessThan0~3_combout\ & ( (!\dut|clk_count\(31) & !\dut|LessThan0~5_combout\) ) ) # ( !\dut|LessThan0~3_combout\ & ( (!\dut|clk_count\(31) & ((!\dut|LessThan0~5_combout\) # (\dut|clk_count\(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_clk_count\(31),
	datac => \dut|ALT_INV_LessThan0~5_combout\,
	datad => \dut|ALT_INV_clk_count\(21),
	dataf => \dut|ALT_INV_LessThan0~3_combout\,
	combout => \dut|LessThan0~6_combout\);

-- Location: LABCELL_X80_Y5_N3
\dut|rw~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|rw~0_combout\ = ( \dut|LessThan0~3_combout\ & ( ((!\dut|LessThan0~5_combout\ & !\dut|clk_count\(31))) # (\dut|state.power_up~DUPLICATE_q\) ) ) # ( !\dut|LessThan0~3_combout\ & ( ((!\dut|clk_count\(31) & ((!\dut|LessThan0~5_combout\) # 
-- (\dut|clk_count\(21))))) # (\dut|state.power_up~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111110101110101011111010111010101110101011101010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.power_up~DUPLICATE_q\,
	datab => \dut|ALT_INV_LessThan0~5_combout\,
	datac => \dut|ALT_INV_clk_count\(31),
	datad => \dut|ALT_INV_clk_count\(21),
	dataf => \dut|ALT_INV_LessThan0~3_combout\,
	combout => \dut|rw~0_combout\);

-- Location: FF_X80_Y5_N53
\dut|state.power_up~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|rw~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.power_up~DUPLICATE_q\);

-- Location: LABCELL_X80_Y5_N42
\dut|clk_count[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|clk_count[13]~2_combout\ = ( \dut|LessThan9~6_combout\ & ( \dut|state.power_up~DUPLICATE_q\ & ( !\dut|state.ready~q\ ) ) ) # ( !\dut|LessThan9~6_combout\ & ( \dut|state.power_up~DUPLICATE_q\ & ( (!\dut|state.ready~q\ & ((!\dut|state.send~q\) # 
-- (\dut|clk_count\(31)))) ) ) ) # ( \dut|LessThan9~6_combout\ & ( !\dut|state.power_up~DUPLICATE_q\ & ( (!\dut|state.ready~q\ & !\dut|LessThan0~6_combout\) ) ) ) # ( !\dut|LessThan9~6_combout\ & ( !\dut|state.power_up~DUPLICATE_q\ & ( (!\dut|state.ready~q\ 
-- & !\dut|LessThan0~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010100000101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.ready~q\,
	datab => \dut|ALT_INV_LessThan0~6_combout\,
	datac => \dut|ALT_INV_state.send~q\,
	datad => \dut|ALT_INV_clk_count\(31),
	datae => \dut|ALT_INV_LessThan9~6_combout\,
	dataf => \dut|ALT_INV_state.power_up~DUPLICATE_q\,
	combout => \dut|clk_count[13]~2_combout\);

-- Location: LABCELL_X81_Y3_N0
\dut|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan4~0_combout\ = ( \dut|Add0~77_sumout\ & ( \dut|Add0~81_sumout\ ) ) # ( !\dut|Add0~77_sumout\ & ( (\dut|Add0~97_sumout\ & (\dut|Add0~101_sumout\ & (\dut|Add0~105_sumout\ & \dut|Add0~81_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~97_sumout\,
	datab => \dut|ALT_INV_Add0~101_sumout\,
	datac => \dut|ALT_INV_Add0~105_sumout\,
	datad => \dut|ALT_INV_Add0~81_sumout\,
	dataf => \dut|ALT_INV_Add0~77_sumout\,
	combout => \dut|LessThan4~0_combout\);

-- Location: LABCELL_X81_Y3_N42
\dut|LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan4~1_combout\ = ( \dut|Add0~93_sumout\ & ( (\dut|Add0~73_sumout\ & (((\dut|Add0~89_sumout\ & \dut|LessThan4~0_combout\)) # (\dut|Add0~85_sumout\))) ) ) # ( !\dut|Add0~93_sumout\ & ( (\dut|Add0~85_sumout\ & \dut|Add0~73_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001110000010100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~85_sumout\,
	datab => \dut|ALT_INV_Add0~89_sumout\,
	datac => \dut|ALT_INV_Add0~73_sumout\,
	datad => \dut|ALT_INV_LessThan4~0_combout\,
	dataf => \dut|ALT_INV_Add0~93_sumout\,
	combout => \dut|LessThan4~1_combout\);

-- Location: FF_X80_Y5_N52
\dut|state.power_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|rw~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.power_up~q\);

-- Location: MLABCELL_X82_Y5_N36
\dut|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~2_combout\ = ( !\dut|Add0~61_sumout\ & ( (!\dut|Add0~65_sumout\ & (!\dut|Add0~57_sumout\ & !\dut|Add0~69_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~65_sumout\,
	datac => \dut|ALT_INV_Add0~57_sumout\,
	datad => \dut|ALT_INV_Add0~69_sumout\,
	dataf => \dut|ALT_INV_Add0~61_sumout\,
	combout => \dut|LessThan3~2_combout\);

-- Location: LABCELL_X81_Y4_N48
\dut|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~6_combout\ = ( !\dut|Add0~45_sumout\ & ( (!\dut|Add0~37_sumout\ & (!\dut|Add0~41_sumout\ & !\dut|Add0~49_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~37_sumout\,
	datab => \dut|ALT_INV_Add0~41_sumout\,
	datac => \dut|ALT_INV_Add0~49_sumout\,
	dataf => \dut|ALT_INV_Add0~45_sumout\,
	combout => \dut|LessThan3~6_combout\);

-- Location: LABCELL_X81_Y4_N42
\dut|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~7_combout\ = ( \dut|LessThan3~6_combout\ & ( !\dut|Add0~53_sumout\ & ( (!\dut|Add0~5_sumout\ & (!\dut|Add0~9_sumout\ & (\dut|LessThan3~2_combout\ & \dut|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~5_sumout\,
	datab => \dut|ALT_INV_Add0~9_sumout\,
	datac => \dut|ALT_INV_LessThan3~2_combout\,
	datad => \dut|ALT_INV_LessThan3~0_combout\,
	datae => \dut|ALT_INV_LessThan3~6_combout\,
	dataf => \dut|ALT_INV_Add0~53_sumout\,
	combout => \dut|LessThan3~7_combout\);

-- Location: LABCELL_X81_Y4_N39
\dut|clk_count[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|clk_count[13]~1_combout\ = ( \dut|LessThan0~6_combout\ & ( \dut|LessThan3~7_combout\ & ( (!\dut|state.send~q\ & ((\dut|Add0~1_sumout\) # (\dut|LessThan4~1_combout\))) ) ) ) # ( !\dut|LessThan0~6_combout\ & ( \dut|LessThan3~7_combout\ & ( 
-- (\dut|state.power_up~q\ & (!\dut|state.send~q\ & ((\dut|Add0~1_sumout\) # (\dut|LessThan4~1_combout\)))) ) ) ) # ( \dut|LessThan0~6_combout\ & ( !\dut|LessThan3~7_combout\ & ( !\dut|state.send~q\ ) ) ) # ( !\dut|LessThan0~6_combout\ & ( 
-- !\dut|LessThan3~7_combout\ & ( (\dut|state.power_up~q\ & !\dut|state.send~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111111110000000000000111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan4~1_combout\,
	datab => \dut|ALT_INV_Add0~1_sumout\,
	datac => \dut|ALT_INV_state.power_up~q\,
	datad => \dut|ALT_INV_state.send~q\,
	datae => \dut|ALT_INV_LessThan0~6_combout\,
	dataf => \dut|ALT_INV_LessThan3~7_combout\,
	combout => \dut|clk_count[13]~1_combout\);

-- Location: LABCELL_X81_Y3_N45
\dut|LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan6~4_combout\ = ( !\dut|Add0~113_sumout\ & ( !\dut|Add0~109_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_Add0~109_sumout\,
	dataf => \dut|ALT_INV_Add0~113_sumout\,
	combout => \dut|LessThan6~4_combout\);

-- Location: LABCELL_X81_Y3_N48
\dut|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan1~1_combout\ = ( \dut|Add0~77_sumout\ & ( (\dut|Add0~97_sumout\ & (\dut|Add0~101_sumout\ & (\dut|Add0~105_sumout\ & \dut|Add0~81_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~97_sumout\,
	datab => \dut|ALT_INV_Add0~101_sumout\,
	datac => \dut|ALT_INV_Add0~105_sumout\,
	datad => \dut|ALT_INV_Add0~81_sumout\,
	dataf => \dut|ALT_INV_Add0~77_sumout\,
	combout => \dut|LessThan1~1_combout\);

-- Location: LABCELL_X81_Y3_N30
\dut|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan1~2_combout\ = ( !\dut|Add0~89_sumout\ & ( !\dut|Add0~73_sumout\ & ( (!\dut|Add0~93_sumout\ & (!\dut|Add0~85_sumout\ & ((!\dut|LessThan1~1_combout\) # (\dut|LessThan6~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~93_sumout\,
	datab => \dut|ALT_INV_LessThan6~4_combout\,
	datac => \dut|ALT_INV_LessThan1~1_combout\,
	datad => \dut|ALT_INV_Add0~85_sumout\,
	datae => \dut|ALT_INV_Add0~89_sumout\,
	dataf => \dut|ALT_INV_Add0~73_sumout\,
	combout => \dut|LessThan1~2_combout\);

-- Location: LABCELL_X81_Y3_N24
\dut|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan2~0_combout\ = ( !\dut|Add0~97_sumout\ & ( (!\dut|Add0~101_sumout\) # ((!\dut|Add0~109_sumout\) # (!\dut|Add0~105_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111100111111111111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_Add0~101_sumout\,
	datac => \dut|ALT_INV_Add0~109_sumout\,
	datad => \dut|ALT_INV_Add0~105_sumout\,
	dataf => \dut|ALT_INV_Add0~97_sumout\,
	combout => \dut|LessThan2~0_combout\);

-- Location: LABCELL_X81_Y3_N18
\dut|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan2~1_combout\ = ( \dut|Add0~81_sumout\ & ( \dut|LessThan2~0_combout\ & ( (\dut|Add0~93_sumout\ & \dut|Add0~85_sumout\) ) ) ) # ( !\dut|Add0~81_sumout\ & ( \dut|LessThan2~0_combout\ & ( (\dut|Add0~93_sumout\ & \dut|Add0~85_sumout\) ) ) ) # ( 
-- \dut|Add0~81_sumout\ & ( !\dut|LessThan2~0_combout\ & ( (\dut|Add0~85_sumout\ & (((\dut|Add0~89_sumout\ & \dut|Add0~77_sumout\)) # (\dut|Add0~93_sumout\))) ) ) ) # ( !\dut|Add0~81_sumout\ & ( !\dut|LessThan2~0_combout\ & ( (\dut|Add0~93_sumout\ & 
-- \dut|Add0~85_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000011100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~93_sumout\,
	datab => \dut|ALT_INV_Add0~89_sumout\,
	datac => \dut|ALT_INV_Add0~85_sumout\,
	datad => \dut|ALT_INV_Add0~77_sumout\,
	datae => \dut|ALT_INV_Add0~81_sumout\,
	dataf => \dut|ALT_INV_LessThan2~0_combout\,
	combout => \dut|LessThan2~1_combout\);

-- Location: MLABCELL_X82_Y5_N12
\dut|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~8_combout\ = ( !\dut|Add0~89_sumout\ & ( \dut|Add0~105_sumout\ & ( (!\dut|Add0~101_sumout\ & (!\dut|Add0~97_sumout\ & ((!\dut|Add0~113_sumout\) # (!\dut|Add0~109_sumout\)))) ) ) ) # ( !\dut|Add0~89_sumout\ & ( !\dut|Add0~105_sumout\ & ( 
-- !\dut|Add0~97_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000011100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~113_sumout\,
	datab => \dut|ALT_INV_Add0~109_sumout\,
	datac => \dut|ALT_INV_Add0~101_sumout\,
	datad => \dut|ALT_INV_Add0~97_sumout\,
	datae => \dut|ALT_INV_Add0~89_sumout\,
	dataf => \dut|ALT_INV_Add0~105_sumout\,
	combout => \dut|LessThan3~8_combout\);

-- Location: MLABCELL_X82_Y5_N6
\dut|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~9_combout\ = ( \dut|Add0~89_sumout\ & ( !\dut|LessThan3~8_combout\ & ( (\dut|Add0~93_sumout\ & \dut|Add0~85_sumout\) ) ) ) # ( !\dut|Add0~89_sumout\ & ( !\dut|LessThan3~8_combout\ & ( (\dut|Add0~77_sumout\ & (\dut|Add0~81_sumout\ & 
-- (\dut|Add0~93_sumout\ & \dut|Add0~85_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~77_sumout\,
	datab => \dut|ALT_INV_Add0~81_sumout\,
	datac => \dut|ALT_INV_Add0~93_sumout\,
	datad => \dut|ALT_INV_Add0~85_sumout\,
	datae => \dut|ALT_INV_Add0~89_sumout\,
	dataf => \dut|ALT_INV_LessThan3~8_combout\,
	combout => \dut|LessThan3~9_combout\);

-- Location: LABCELL_X81_Y3_N12
\dut|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan5~0_combout\ = ( \dut|Add0~105_sumout\ & ( \dut|Add0~113_sumout\ & ( (!\dut|Add0~97_sumout\ & !\dut|Add0~77_sumout\) ) ) ) # ( !\dut|Add0~105_sumout\ & ( \dut|Add0~113_sumout\ & ( !\dut|Add0~77_sumout\ ) ) ) # ( \dut|Add0~105_sumout\ & ( 
-- !\dut|Add0~113_sumout\ & ( (!\dut|Add0~77_sumout\ & ((!\dut|Add0~97_sumout\) # ((!\dut|Add0~109_sumout\ & !\dut|Add0~101_sumout\)))) ) ) ) # ( !\dut|Add0~105_sumout\ & ( !\dut|Add0~113_sumout\ & ( !\dut|Add0~77_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111110000000000011111111000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~109_sumout\,
	datab => \dut|ALT_INV_Add0~101_sumout\,
	datac => \dut|ALT_INV_Add0~97_sumout\,
	datad => \dut|ALT_INV_Add0~77_sumout\,
	datae => \dut|ALT_INV_Add0~105_sumout\,
	dataf => \dut|ALT_INV_Add0~113_sumout\,
	combout => \dut|LessThan5~0_combout\);

-- Location: LABCELL_X81_Y3_N6
\dut|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan5~1_combout\ = ( \dut|Add0~81_sumout\ & ( \dut|Add0~93_sumout\ & ( (\dut|Add0~73_sumout\ & \dut|Add0~85_sumout\) ) ) ) # ( !\dut|Add0~81_sumout\ & ( \dut|Add0~93_sumout\ & ( (\dut|Add0~73_sumout\ & \dut|Add0~85_sumout\) ) ) ) # ( 
-- \dut|Add0~81_sumout\ & ( !\dut|Add0~93_sumout\ & ( (\dut|Add0~73_sumout\ & (\dut|Add0~85_sumout\ & ((!\dut|LessThan5~0_combout\) # (\dut|Add0~89_sumout\)))) ) ) ) # ( !\dut|Add0~81_sumout\ & ( !\dut|Add0~93_sumout\ & ( (\dut|Add0~73_sumout\ & 
-- (\dut|Add0~85_sumout\ & \dut|Add0~89_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000001000000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~73_sumout\,
	datab => \dut|ALT_INV_LessThan5~0_combout\,
	datac => \dut|ALT_INV_Add0~85_sumout\,
	datad => \dut|ALT_INV_Add0~89_sumout\,
	datae => \dut|ALT_INV_Add0~81_sumout\,
	dataf => \dut|ALT_INV_Add0~93_sumout\,
	combout => \dut|LessThan5~1_combout\);

-- Location: MLABCELL_X82_Y3_N54
\dut|clk_count[13]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|clk_count[13]~0_combout\ = ( \dut|LessThan5~1_combout\ & ( \dut|LessThan3~7_combout\ & ( ((!\dut|Add0~73_sumout\ & ((!\dut|LessThan2~1_combout\) # (!\dut|LessThan3~9_combout\)))) # (\dut|LessThan1~2_combout\) ) ) ) # ( !\dut|LessThan5~1_combout\ & ( 
-- \dut|LessThan3~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan1~2_combout\,
	datab => \dut|ALT_INV_LessThan2~1_combout\,
	datac => \dut|ALT_INV_Add0~73_sumout\,
	datad => \dut|ALT_INV_LessThan3~9_combout\,
	datae => \dut|ALT_INV_LessThan5~1_combout\,
	dataf => \dut|ALT_INV_LessThan3~7_combout\,
	combout => \dut|clk_count[13]~0_combout\);

-- Location: MLABCELL_X82_Y4_N42
\dut|clk_count[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|clk_count[13]~3_combout\ = ( \dut|lcd_data[2]~1_combout\ & ( \dut|clk_count[13]~0_combout\ & ( (!\dut|clk_count[13]~2_combout\) # ((\dut|Add0~1_sumout\ & (\dut|clk_count[13]~1_combout\ & !\dut|lcd_data[2]~2_combout\))) ) ) ) # ( 
-- !\dut|lcd_data[2]~1_combout\ & ( \dut|clk_count[13]~0_combout\ & ( !\dut|clk_count[13]~2_combout\ ) ) ) # ( \dut|lcd_data[2]~1_combout\ & ( !\dut|clk_count[13]~0_combout\ & ( (!\dut|clk_count[13]~2_combout\) # ((\dut|clk_count[13]~1_combout\ & 
-- !\dut|lcd_data[2]~2_combout\)) ) ) ) # ( !\dut|lcd_data[2]~1_combout\ & ( !\dut|clk_count[13]~0_combout\ & ( !\dut|clk_count[13]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011111100110011001100110011001100110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~1_sumout\,
	datab => \dut|ALT_INV_clk_count[13]~2_combout\,
	datac => \dut|ALT_INV_clk_count[13]~1_combout\,
	datad => \dut|ALT_INV_lcd_data[2]~2_combout\,
	datae => \dut|ALT_INV_lcd_data[2]~1_combout\,
	dataf => \dut|ALT_INV_clk_count[13]~0_combout\,
	combout => \dut|clk_count[13]~3_combout\);

-- Location: FF_X81_Y4_N29
\dut|clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~9_sumout\,
	sclr => \dut|clk_count[13]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(29));

-- Location: MLABCELL_X82_Y5_N27
\dut|LessThan3~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~11_combout\ = ( \dut|Add0~77_sumout\ & ( \dut|Add0~93_sumout\ & ( (\dut|Add0~85_sumout\ & ((\dut|Add0~81_sumout\) # (\dut|Add0~89_sumout\))) ) ) ) # ( !\dut|Add0~77_sumout\ & ( \dut|Add0~93_sumout\ & ( (\dut|Add0~89_sumout\ & 
-- \dut|Add0~85_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~89_sumout\,
	datab => \dut|ALT_INV_Add0~81_sumout\,
	datac => \dut|ALT_INV_Add0~85_sumout\,
	datae => \dut|ALT_INV_Add0~77_sumout\,
	dataf => \dut|ALT_INV_Add0~93_sumout\,
	combout => \dut|LessThan3~11_combout\);

-- Location: MLABCELL_X82_Y5_N30
\dut|busy~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|busy~4_combout\ = ( \dut|LessThan6~0_combout\ & ( !\dut|Add0~57_sumout\ & ( (!\dut|Add0~73_sumout\ & (!\dut|Add0~61_sumout\ & ((!\dut|LessThan3~11_combout\) # (\dut|LessThan3~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~73_sumout\,
	datab => \dut|ALT_INV_LessThan3~8_combout\,
	datac => \dut|ALT_INV_Add0~61_sumout\,
	datad => \dut|ALT_INV_LessThan3~11_combout\,
	datae => \dut|ALT_INV_LessThan6~0_combout\,
	dataf => \dut|ALT_INV_Add0~57_sumout\,
	combout => \dut|busy~4_combout\);

-- Location: MLABCELL_X82_Y4_N30
\dut|state~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|state~6_combout\ = ( \dut|LessThan3~1_combout\ & ( !\dut|Add0~1_sumout\ & ( (!\dut|Add0~9_sumout\ & (!\dut|Add0~5_sumout\ & (\dut|busy~4_combout\ & \dut|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~9_sumout\,
	datab => \dut|ALT_INV_Add0~5_sumout\,
	datac => \dut|ALT_INV_busy~4_combout\,
	datad => \dut|ALT_INV_LessThan3~0_combout\,
	datae => \dut|ALT_INV_LessThan3~1_combout\,
	dataf => \dut|ALT_INV_Add0~1_sumout\,
	combout => \dut|state~6_combout\);

-- Location: LABCELL_X83_Y4_N6
\dut|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector33~0_combout\ = ( \dut|state.initialize~q\ & ( \dut|lcd_data[2]~1_combout\ & ( (((!\dut|state.power_up~q\ & \dut|LessThan0~6_combout\)) # (\dut|lcd_data[2]~2_combout\)) # (\dut|state~6_combout\) ) ) ) # ( !\dut|state.initialize~q\ & ( 
-- \dut|lcd_data[2]~1_combout\ & ( (!\dut|state.power_up~q\ & \dut|LessThan0~6_combout\) ) ) ) # ( \dut|state.initialize~q\ & ( !\dut|lcd_data[2]~1_combout\ ) ) # ( !\dut|state.initialize~q\ & ( !\dut|lcd_data[2]~1_combout\ & ( (!\dut|state.power_up~q\ & 
-- \dut|LessThan0~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100111111111111111100000000110011000101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state~6_combout\,
	datab => \dut|ALT_INV_state.power_up~q\,
	datac => \dut|ALT_INV_lcd_data[2]~2_combout\,
	datad => \dut|ALT_INV_LessThan0~6_combout\,
	datae => \dut|ALT_INV_state.initialize~q\,
	dataf => \dut|ALT_INV_lcd_data[2]~1_combout\,
	combout => \dut|Selector33~0_combout\);

-- Location: FF_X83_Y4_N8
\dut|state.initialize\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.initialize~q\);

-- Location: LABCELL_X83_Y6_N12
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \char~4_combout\ & ( \Equal0~5_combout\ & ( (\char~1_combout\ & (!\char~2_combout\ & (\char~3_combout\ & !\char~0_combout\))) ) ) ) # ( !\char~4_combout\ & ( \Equal0~5_combout\ & ( (\char~1_combout\ & (!\char~2_combout\ & 
-- (!\char~3_combout\ & \char~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_char~2_combout\,
	datac => \ALT_INV_char~3_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_char~4_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X83_Y6_N33
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( !\Selector0~0_combout\ & ( ((!\Equal25~13_combout\ & ((!\WideNor0~0_combout\) # (\WideNor0~1_combout\)))) # (lcd_bus(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000011111111101100001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~0_combout\,
	datab => \ALT_INV_WideNor0~1_combout\,
	datac => \ALT_INV_Equal25~13_combout\,
	datad => ALT_INV_lcd_bus(9),
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X83_Y6_N35
\lcd_bus[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector0~1_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(9));

-- Location: LABCELL_X77_Y4_N48
\dut|rs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|rs~0_combout\ = ( \lcd_enable~q\ & ( lcd_bus(9) & ( \dut|state.ready~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.ready~q\,
	datae => \ALT_INV_lcd_enable~q\,
	dataf => ALT_INV_lcd_bus(9),
	combout => \dut|rs~0_combout\);

-- Location: LABCELL_X73_Y4_N36
\dut|rs~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|rs~1_combout\ = ( \dut|rs~q\ & ( \dut|rw~0_combout\ & ( ((\dut|rs~0_combout\) # (\dut|state.send~q\)) # (\dut|state.initialize~q\) ) ) ) # ( !\dut|rs~q\ & ( \dut|rw~0_combout\ & ( (!\dut|state.initialize~q\ & (!\dut|state.send~q\ & 
-- \dut|rs~0_combout\)) ) ) ) # ( \dut|rs~q\ & ( !\dut|rw~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001000000010000111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.initialize~q\,
	datab => \dut|ALT_INV_state.send~q\,
	datac => \dut|ALT_INV_rs~0_combout\,
	datae => \dut|ALT_INV_rs~q\,
	dataf => \dut|ALT_INV_rw~0_combout\,
	combout => \dut|rs~1_combout\);

-- Location: FF_X73_Y4_N38
\dut|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|rs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|rs~q\);

-- Location: LABCELL_X83_Y3_N57
\dut|Selector46~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~4_combout\ = ( !\dut|Add0~1_sumout\ & ( (!\dut|state.send~q\ & \dut|state.initialize~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.send~q\,
	datac => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	dataf => \dut|ALT_INV_Add0~1_sumout\,
	combout => \dut|Selector46~4_combout\);

-- Location: MLABCELL_X82_Y3_N48
\dut|Selector46~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~5_combout\ = ( \dut|Selector46~4_combout\ & ( \dut|LessThan3~7_combout\ & ( ((!\dut|Add0~73_sumout\ & (\dut|LessThan2~1_combout\ & !\dut|LessThan3~9_combout\))) # (\dut|LessThan1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~73_sumout\,
	datab => \dut|ALT_INV_LessThan2~1_combout\,
	datac => \dut|ALT_INV_LessThan1~2_combout\,
	datad => \dut|ALT_INV_LessThan3~9_combout\,
	datae => \dut|ALT_INV_Selector46~4_combout\,
	dataf => \dut|ALT_INV_LessThan3~7_combout\,
	combout => \dut|Selector46~5_combout\);

-- Location: LABCELL_X80_Y5_N30
\dut|LessThan10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan10~0_combout\ = ( \dut|LessThan9~2_combout\ & ( (!\dut|clk_count\(10) & !\dut|clk_count\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(10),
	datad => \dut|ALT_INV_clk_count\(11),
	dataf => \dut|ALT_INV_LessThan9~2_combout\,
	combout => \dut|LessThan10~0_combout\);

-- Location: LABCELL_X80_Y4_N51
\dut|LessThan10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan10~1_combout\ = ( \dut|clk_count\(1) & ( (\dut|clk_count\(4) & \dut|clk_count\(5)) ) ) # ( !\dut|clk_count\(1) & ( (\dut|clk_count\(4) & (\dut|clk_count\(5) & ((\dut|clk_count\(3)) # (\dut|clk_count\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000011100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(2),
	datab => \dut|ALT_INV_clk_count\(3),
	datac => \dut|ALT_INV_clk_count\(4),
	datad => \dut|ALT_INV_clk_count\(5),
	dataf => \dut|ALT_INV_clk_count\(1),
	combout => \dut|LessThan10~1_combout\);

-- Location: LABCELL_X80_Y5_N54
\dut|LessThan10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan10~2_combout\ = ( !\dut|clk_count\(6) & ( (!\dut|clk_count\(9) & (!\dut|clk_count\(8) & (!\dut|LessThan10~1_combout\ & !\dut|clk_count\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(9),
	datab => \dut|ALT_INV_clk_count\(8),
	datac => \dut|ALT_INV_LessThan10~1_combout\,
	datad => \dut|ALT_INV_clk_count\(7),
	dataf => \dut|ALT_INV_clk_count\(6),
	combout => \dut|LessThan10~2_combout\);

-- Location: LABCELL_X80_Y4_N21
\dut|LessThan11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan11~0_combout\ = ( \dut|clk_count\(5) & ( \dut|clk_count\(3) & ( (\dut|clk_count\(4) & \dut|clk_count\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(4),
	datad => \dut|ALT_INV_clk_count\(2),
	datae => \dut|ALT_INV_clk_count\(5),
	dataf => \dut|ALT_INV_clk_count\(3),
	combout => \dut|LessThan11~0_combout\);

-- Location: LABCELL_X80_Y5_N15
\dut|LessThan11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan11~1_combout\ = ( \dut|LessThan11~0_combout\ & ( (\dut|clk_count\(9) & ((\dut|clk_count\(8)) # (\dut|clk_count\(7)))) ) ) # ( !\dut|LessThan11~0_combout\ & ( (\dut|clk_count\(9) & (((\dut|clk_count\(7) & \dut|clk_count\(6))) # 
-- (\dut|clk_count\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110111000000000011011100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(7),
	datab => \dut|ALT_INV_clk_count\(8),
	datac => \dut|ALT_INV_clk_count\(6),
	datad => \dut|ALT_INV_clk_count\(9),
	dataf => \dut|ALT_INV_LessThan11~0_combout\,
	combout => \dut|LessThan11~1_combout\);

-- Location: LABCELL_X80_Y4_N48
\dut|LessThan12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan12~0_combout\ = ( \dut|clk_count\(1) & ( (!\dut|clk_count\(2) & (!\dut|clk_count\(3) & (!\dut|clk_count\(5) & !\dut|clk_count\(4)))) ) ) # ( !\dut|clk_count\(1) & ( (!\dut|clk_count\(3) & (!\dut|clk_count\(5) & !\dut|clk_count\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(2),
	datab => \dut|ALT_INV_clk_count\(3),
	datac => \dut|ALT_INV_clk_count\(5),
	datad => \dut|ALT_INV_clk_count\(4),
	dataf => \dut|ALT_INV_clk_count\(1),
	combout => \dut|LessThan12~0_combout\);

-- Location: MLABCELL_X78_Y5_N27
\dut|LessThan12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan12~1_combout\ = ( \dut|LessThan12~0_combout\ & ( (\dut|clk_count\(7) & \dut|clk_count\(8)) ) ) # ( !\dut|LessThan12~0_combout\ & ( (\dut|clk_count\(8) & ((\dut|clk_count\(6)) # (\dut|clk_count\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(7),
	datab => \dut|ALT_INV_clk_count\(8),
	datac => \dut|ALT_INV_clk_count\(6),
	dataf => \dut|ALT_INV_LessThan12~0_combout\,
	combout => \dut|LessThan12~1_combout\);

-- Location: LABCELL_X80_Y5_N27
\dut|LessThan12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan12~2_combout\ = ( \dut|LessThan9~2_combout\ & ( (!\dut|clk_count\(11) & ((!\dut|clk_count\(10)) # ((!\dut|LessThan12~1_combout\ & !\dut|clk_count\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001000100010001100100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(10),
	datab => \dut|ALT_INV_clk_count\(11),
	datac => \dut|ALT_INV_LessThan12~1_combout\,
	datad => \dut|ALT_INV_clk_count\(9),
	dataf => \dut|ALT_INV_LessThan9~2_combout\,
	combout => \dut|LessThan12~2_combout\);

-- Location: LABCELL_X80_Y5_N18
\dut|Selector46~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~6_combout\ = ( \dut|LessThan12~2_combout\ & ( \dut|e~q\ & ( (!\dut|LessThan9~6_combout\) # ((\dut|LessThan10~0_combout\ & (!\dut|LessThan10~2_combout\ & !\dut|LessThan11~1_combout\))) ) ) ) # ( !\dut|LessThan12~2_combout\ & ( \dut|e~q\ & ( 
-- (!\dut|LessThan9~6_combout\) # ((!\dut|LessThan10~0_combout\) # (!\dut|LessThan10~2_combout\)) ) ) ) # ( \dut|LessThan12~2_combout\ & ( !\dut|e~q\ & ( (\dut|LessThan9~6_combout\ & (\dut|LessThan10~0_combout\ & (!\dut|LessThan10~2_combout\ & 
-- !\dut|LessThan11~1_combout\))) ) ) ) # ( !\dut|LessThan12~2_combout\ & ( !\dut|e~q\ & ( (\dut|LessThan9~6_combout\ & (\dut|LessThan10~0_combout\ & (!\dut|LessThan10~2_combout\ & !\dut|LessThan11~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000011111110111111101011101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan9~6_combout\,
	datab => \dut|ALT_INV_LessThan10~0_combout\,
	datac => \dut|ALT_INV_LessThan10~2_combout\,
	datad => \dut|ALT_INV_LessThan11~1_combout\,
	datae => \dut|ALT_INV_LessThan12~2_combout\,
	dataf => \dut|ALT_INV_e~q\,
	combout => \dut|Selector46~6_combout\);

-- Location: MLABCELL_X82_Y3_N6
\dut|Selector46~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~7_combout\ = ( \dut|Selector46~6_combout\ & ( \dut|e~q\ & ( (!\dut|state.send~q\ & ((!\dut|state.initialize~DUPLICATE_q\) # ((\dut|Add0~117_sumout\)))) # (\dut|state.send~q\ & (((!\dut|clk_count\(31))))) ) ) ) # ( 
-- !\dut|Selector46~6_combout\ & ( \dut|e~q\ & ( (!\dut|state.send~q\ & ((!\dut|state.initialize~DUPLICATE_q\) # (\dut|Add0~117_sumout\))) ) ) ) # ( \dut|Selector46~6_combout\ & ( !\dut|e~q\ & ( (!\dut|state.send~q\ & (\dut|state.initialize~DUPLICATE_q\ & 
-- ((\dut|Add0~117_sumout\)))) # (\dut|state.send~q\ & (((!\dut|clk_count\(31))))) ) ) ) # ( !\dut|Selector46~6_combout\ & ( !\dut|e~q\ & ( (\dut|state.initialize~DUPLICATE_q\ & (!\dut|state.send~q\ & \dut|Add0~117_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100001100000111010010001000110011001011100011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	datab => \dut|ALT_INV_state.send~q\,
	datac => \dut|ALT_INV_clk_count\(31),
	datad => \dut|ALT_INV_Add0~117_sumout\,
	datae => \dut|ALT_INV_Selector46~6_combout\,
	dataf => \dut|ALT_INV_e~q\,
	combout => \dut|Selector46~7_combout\);

-- Location: MLABCELL_X82_Y3_N27
\dut|Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~0_combout\ = ( !\dut|state.send~q\ & ( \dut|state.initialize~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	dataf => \dut|ALT_INV_state.send~q\,
	combout => \dut|Selector46~0_combout\);

-- Location: LABCELL_X81_Y4_N45
\dut|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~3_combout\ = ( \dut|LessThan3~1_combout\ & ( !\dut|Add0~73_sumout\ & ( (!\dut|Add0~5_sumout\ & (!\dut|Add0~9_sumout\ & (\dut|LessThan3~0_combout\ & \dut|LessThan3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~5_sumout\,
	datab => \dut|ALT_INV_Add0~9_sumout\,
	datac => \dut|ALT_INV_LessThan3~0_combout\,
	datad => \dut|ALT_INV_LessThan3~2_combout\,
	datae => \dut|ALT_INV_LessThan3~1_combout\,
	dataf => \dut|ALT_INV_Add0~73_sumout\,
	combout => \dut|LessThan3~3_combout\);

-- Location: MLABCELL_X82_Y3_N0
\dut|LessThan4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan4~2_combout\ = ( \dut|LessThan3~0_combout\ & ( \dut|LessThan3~1_combout\ & ( (\dut|LessThan3~2_combout\ & (!\dut|LessThan4~1_combout\ & (!\dut|Add0~5_sumout\ & !\dut|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~2_combout\,
	datab => \dut|ALT_INV_LessThan4~1_combout\,
	datac => \dut|ALT_INV_Add0~5_sumout\,
	datad => \dut|ALT_INV_Add0~9_sumout\,
	datae => \dut|ALT_INV_LessThan3~0_combout\,
	dataf => \dut|ALT_INV_LessThan3~1_combout\,
	combout => \dut|LessThan4~2_combout\);

-- Location: LABCELL_X83_Y3_N51
\dut|busy~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|busy~3_combout\ = ( \dut|LessThan3~6_combout\ & ( !\dut|LessThan6~3_combout\ & ( (!\dut|Add0~53_sumout\ & (!\dut|Add0~5_sumout\ & (!\dut|Add0~9_sumout\ & \dut|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~53_sumout\,
	datab => \dut|ALT_INV_Add0~5_sumout\,
	datac => \dut|ALT_INV_Add0~9_sumout\,
	datad => \dut|ALT_INV_LessThan3~0_combout\,
	datae => \dut|ALT_INV_LessThan3~6_combout\,
	dataf => \dut|ALT_INV_LessThan6~3_combout\,
	combout => \dut|busy~3_combout\);

-- Location: MLABCELL_X82_Y3_N18
\dut|Selector46~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~3_combout\ = ( \dut|LessThan4~2_combout\ & ( \dut|busy~3_combout\ & ( (\dut|Add0~1_sumout\ & \dut|Selector46~0_combout\) ) ) ) # ( !\dut|LessThan4~2_combout\ & ( \dut|busy~3_combout\ & ( (\dut|Add0~1_sumout\ & \dut|Selector46~0_combout\) ) 
-- ) ) # ( \dut|LessThan4~2_combout\ & ( !\dut|busy~3_combout\ & ( (\dut|Add0~1_sumout\ & \dut|Selector46~0_combout\) ) ) ) # ( !\dut|LessThan4~2_combout\ & ( !\dut|busy~3_combout\ & ( (\dut|Selector46~0_combout\ & (((!\dut|LessThan3~3_combout\) # 
-- (\dut|LessThan2~1_combout\)) # (\dut|Add0~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~1_sumout\,
	datab => \dut|ALT_INV_LessThan2~1_combout\,
	datac => \dut|ALT_INV_Selector46~0_combout\,
	datad => \dut|ALT_INV_LessThan3~3_combout\,
	datae => \dut|ALT_INV_LessThan4~2_combout\,
	dataf => \dut|ALT_INV_busy~3_combout\,
	combout => \dut|Selector46~3_combout\);

-- Location: LABCELL_X80_Y4_N36
\dut|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~4_combout\ = ( !\dut|Add0~37_sumout\ & ( \dut|LessThan3~0_combout\ & ( (!\dut|Add0~53_sumout\ & (!\dut|Add0~41_sumout\ & (!\dut|Add0~45_sumout\ & !\dut|Add0~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~53_sumout\,
	datab => \dut|ALT_INV_Add0~41_sumout\,
	datac => \dut|ALT_INV_Add0~45_sumout\,
	datad => \dut|ALT_INV_Add0~49_sumout\,
	datae => \dut|ALT_INV_Add0~37_sumout\,
	dataf => \dut|ALT_INV_LessThan3~0_combout\,
	combout => \dut|LessThan3~4_combout\);

-- Location: MLABCELL_X82_Y3_N36
\dut|Selector46~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~2_combout\ = ( \dut|LessThan3~4_combout\ & ( \dut|e~q\ & ( (!\dut|Add0~1_sumout\ & (!\dut|LessThan8~2_combout\ & (\dut|busy~2_combout\ & \dut|LessThan7~1_combout\))) ) ) ) # ( \dut|LessThan3~4_combout\ & ( !\dut|e~q\ & ( 
-- ((!\dut|busy~2_combout\) # (\dut|LessThan7~1_combout\)) # (\dut|Add0~1_sumout\) ) ) ) # ( !\dut|LessThan3~4_combout\ & ( !\dut|e~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101011111111100000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~1_sumout\,
	datab => \dut|ALT_INV_LessThan8~2_combout\,
	datac => \dut|ALT_INV_busy~2_combout\,
	datad => \dut|ALT_INV_LessThan7~1_combout\,
	datae => \dut|ALT_INV_LessThan3~4_combout\,
	dataf => \dut|ALT_INV_e~q\,
	combout => \dut|Selector46~2_combout\);

-- Location: MLABCELL_X82_Y3_N33
\dut|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan5~2_combout\ = ( \dut|LessThan3~0_combout\ & ( \dut|LessThan3~1_combout\ & ( (!\dut|LessThan5~1_combout\ & (!\dut|Add0~9_sumout\ & (\dut|LessThan3~2_combout\ & !\dut|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan5~1_combout\,
	datab => \dut|ALT_INV_Add0~9_sumout\,
	datac => \dut|ALT_INV_LessThan3~2_combout\,
	datad => \dut|ALT_INV_Add0~5_sumout\,
	datae => \dut|ALT_INV_LessThan3~0_combout\,
	dataf => \dut|ALT_INV_LessThan3~1_combout\,
	combout => \dut|LessThan5~2_combout\);

-- Location: MLABCELL_X82_Y3_N42
\dut|Selector46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~1_combout\ = ( !\dut|LessThan4~2_combout\ & ( \dut|LessThan5~2_combout\ & ( (!\dut|Add0~1_sumout\ & (\dut|Selector46~0_combout\ & ((!\dut|LessThan3~3_combout\) # (\dut|LessThan2~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~1_sumout\,
	datab => \dut|ALT_INV_LessThan2~1_combout\,
	datac => \dut|ALT_INV_Selector46~0_combout\,
	datad => \dut|ALT_INV_LessThan3~3_combout\,
	datae => \dut|ALT_INV_LessThan4~2_combout\,
	dataf => \dut|ALT_INV_LessThan5~2_combout\,
	combout => \dut|Selector46~1_combout\);

-- Location: MLABCELL_X82_Y3_N24
\dut|Selector46~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~8_combout\ = ( \dut|Selector46~1_combout\ ) # ( !\dut|Selector46~1_combout\ & ( (((\dut|Selector46~3_combout\ & !\dut|Selector46~2_combout\)) # (\dut|Selector46~7_combout\)) # (\dut|Selector46~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111011111110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Selector46~5_combout\,
	datab => \dut|ALT_INV_Selector46~7_combout\,
	datac => \dut|ALT_INV_Selector46~3_combout\,
	datad => \dut|ALT_INV_Selector46~2_combout\,
	dataf => \dut|ALT_INV_Selector46~1_combout\,
	combout => \dut|Selector46~8_combout\);

-- Location: FF_X82_Y3_N25
\dut|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector46~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|e~q\);

-- Location: LABCELL_X80_Y4_N27
\dut|Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector45~0_combout\ = ( !\dut|Add0~1_sumout\ & ( (!\dut|Add0~117_sumout\ & \dut|state.initialize~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~117_sumout\,
	datab => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	dataf => \dut|ALT_INV_Add0~1_sumout\,
	combout => \dut|Selector45~0_combout\);

-- Location: LABCELL_X80_Y4_N0
\dut|LessThan3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~10_combout\ = ( !\dut|Add0~37_sumout\ & ( !\dut|Add0~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dut|ALT_INV_Add0~37_sumout\,
	dataf => \dut|ALT_INV_Add0~41_sumout\,
	combout => \dut|LessThan3~10_combout\);

-- Location: LABCELL_X80_Y4_N6
\dut|busy~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|busy~5_combout\ = ( !\dut|Add0~53_sumout\ & ( \dut|busy~4_combout\ & ( (\dut|LessThan3~0_combout\ & (!\dut|Add0~49_sumout\ & (\dut|LessThan3~10_combout\ & !\dut|Add0~45_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~0_combout\,
	datab => \dut|ALT_INV_Add0~49_sumout\,
	datac => \dut|ALT_INV_LessThan3~10_combout\,
	datad => \dut|ALT_INV_Add0~45_sumout\,
	datae => \dut|ALT_INV_Add0~53_sumout\,
	dataf => \dut|ALT_INV_busy~4_combout\,
	combout => \dut|busy~5_combout\);

-- Location: MLABCELL_X82_Y4_N51
\dut|Selector45~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector45~1_combout\ = ( \dut|LessThan4~1_combout\ & ( !\dut|busy~5_combout\ & ( (!\dut|LessThan5~1_combout\ & (\dut|Selector45~0_combout\ & \dut|LessThan3~7_combout\)) ) ) ) # ( !\dut|LessThan4~1_combout\ & ( !\dut|busy~5_combout\ & ( 
-- (\dut|Add0~1_sumout\ & (!\dut|LessThan5~1_combout\ & (\dut|Selector45~0_combout\ & \dut|LessThan3~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~1_sumout\,
	datab => \dut|ALT_INV_LessThan5~1_combout\,
	datac => \dut|ALT_INV_Selector45~0_combout\,
	datad => \dut|ALT_INV_LessThan3~7_combout\,
	datae => \dut|ALT_INV_LessThan4~1_combout\,
	dataf => \dut|ALT_INV_busy~5_combout\,
	combout => \dut|Selector45~1_combout\);

-- Location: MLABCELL_X84_Y7_N42
\Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = ( \Add0~41_sumout\ & ( \Add0~37_sumout\ & ( (!\char[15]~DUPLICATE_q\ & (!\char[17]~DUPLICATE_q\ & (\LessThan0~3_combout\ & !\LessThan0~1_combout\))) ) ) ) # ( !\Add0~41_sumout\ & ( \Add0~37_sumout\ & ( (!\char[15]~DUPLICATE_q\ & 
-- (!\char[17]~DUPLICATE_q\ & (\LessThan0~3_combout\ & !\LessThan0~1_combout\))) ) ) ) # ( \Add0~41_sumout\ & ( !\Add0~37_sumout\ & ( (!\char[15]~DUPLICATE_q\ & (!\char[17]~DUPLICATE_q\ & (\LessThan0~3_combout\ & !\LessThan0~1_combout\))) ) ) ) # ( 
-- !\Add0~41_sumout\ & ( !\Add0~37_sumout\ & ( (!\LessThan0~3_combout\) # (((!\char[15]~DUPLICATE_q\ & !\char[17]~DUPLICATE_q\)) # (\LessThan0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111111000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char[15]~DUPLICATE_q\,
	datab => \ALT_INV_char[17]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_Add0~41_sumout\,
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \Equal0~9_combout\);

-- Location: MLABCELL_X84_Y7_N36
\Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = ( !\LessThan0~1_combout\ & ( \Add0~21_sumout\ & ( (!char(13) & (!char(14) & \LessThan0~3_combout\)) ) ) ) # ( \LessThan0~1_combout\ & ( !\Add0~21_sumout\ & ( !\Add0~25_sumout\ ) ) ) # ( !\LessThan0~1_combout\ & ( !\Add0~21_sumout\ & ( 
-- (!\LessThan0~3_combout\ & (((!\Add0~25_sumout\)))) # (\LessThan0~3_combout\ & (!char(13) & (!char(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000001000111111110000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(13),
	datab => ALT_INV_char(14),
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => \ALT_INV_Add0~25_sumout\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \Equal0~8_combout\);

-- Location: MLABCELL_X84_Y7_N48
\Equal0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = ( !\Add0~29_sumout\ & ( (!\LessThan0~4_combout\ & (\Equal0~9_combout\ & (!\Add0~33_sumout\ & \Equal0~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~4_combout\,
	datab => \ALT_INV_Equal0~9_combout\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_Equal0~8_combout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \Equal0~10_combout\);

-- Location: MLABCELL_X82_Y9_N48
\Equal25~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal25~14_combout\ = ( \LessThan0~4_combout\ & ( !\char~8_combout\ & ( (\Equal25~2_combout\ & (\Equal25~3_combout\ & !char(11))) ) ) ) # ( !\LessThan0~4_combout\ & ( !\char~8_combout\ & ( (\Equal25~2_combout\ & (!\Add0~73_sumout\ & \Equal25~3_combout\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal25~2_combout\,
	datab => \ALT_INV_Add0~73_sumout\,
	datac => \ALT_INV_Equal25~3_combout\,
	datad => ALT_INV_char(11),
	datae => \ALT_INV_LessThan0~4_combout\,
	dataf => \ALT_INV_char~8_combout\,
	combout => \Equal25~14_combout\);

-- Location: MLABCELL_X82_Y9_N12
\Equal0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = ( \Equal25~0_combout\ & ( \Equal0~4_combout\ & ( (\Equal25~14_combout\ & (!\char~7_combout\ & ((!\Add0~69_sumout\) # (\LessThan0~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~4_combout\,
	datab => \ALT_INV_Add0~69_sumout\,
	datac => \ALT_INV_Equal25~14_combout\,
	datad => \ALT_INV_char~7_combout\,
	datae => \ALT_INV_Equal25~0_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~12_combout\);

-- Location: MLABCELL_X82_Y9_N57
\Equal15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = ( \Equal0~12_combout\ & ( (\Equal0~3_combout\ & (\char~3_combout\ & (!\char~1_combout\ & \Equal0~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \ALT_INV_char~3_combout\,
	datac => \ALT_INV_char~1_combout\,
	datad => \ALT_INV_Equal0~10_combout\,
	dataf => \ALT_INV_Equal0~12_combout\,
	combout => \Equal15~0_combout\);

-- Location: LABCELL_X80_Y9_N0
\Mux49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = ( year(1) & ( !\LessThan8~0_combout\ & ( !year(0) ) ) ) # ( !year(1) & ( !\LessThan8~0_combout\ & ( year(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_year(0),
	datae => ALT_INV_year(1),
	dataf => \ALT_INV_LessThan8~0_combout\,
	combout => \Mux49~0_combout\);

-- Location: IOIBUF_X89_Y25_N4
\s_min~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_min,
	o => \s_min~input_o\);

-- Location: MLABCELL_X84_Y12_N54
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !\LessThan3~0_combout\ & ( !sec(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sec(0),
	dataf => \ALT_INV_LessThan3~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X89_Y25_N21
\s_hour~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_hour,
	o => \s_hour~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\s_year~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_year,
	o => \s_year~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\s_month~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_month,
	o => \s_month~input_o\);

-- Location: LABCELL_X85_Y11_N51
\sec[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec[5]~1_combout\ = ( !\s_month~input_o\ & ( !\s_year~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s_year~input_o\,
	datae => \ALT_INV_s_month~input_o\,
	combout => \sec[5]~1_combout\);

-- Location: LABCELL_X81_Y13_N30
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( \process_1:char[0]~q\ ) + ( VCC ) + ( !VCC ))
-- \Add1~102\ = CARRY(( \process_1:char[0]~q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[0]~q\,
	cin => GND,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: LABCELL_X81_Y12_N24
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \process_1:char[18]~q\ ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( \process_1:char[18]~q\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[18]~q\,
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X81_Y12_N27
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \process_1:char[19]~q\ ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~54\ = CARRY(( \process_1:char[19]~q\ ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[19]~q\,
	cin => \Add1~6\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X81_Y12_N28
\process_1:char[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[19]~q\);

-- Location: LABCELL_X81_Y12_N30
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \process_1:char[20]~q\ ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( \process_1:char[20]~q\ ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[20]~q\,
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X81_Y12_N31
\process_1:char[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[20]~q\);

-- Location: LABCELL_X81_Y12_N33
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \process_1:char[21]~q\ ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~62\ = CARRY(( \process_1:char[21]~q\ ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[21]~q\,
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X81_Y12_N34
\process_1:char[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[21]~q\);

-- Location: LABCELL_X81_Y12_N36
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \process_1:char[22]~q\ ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( \process_1:char[22]~q\ ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:char[22]~q\,
	cin => \Add1~62\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X81_Y12_N37
\process_1:char[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[22]~q\);

-- Location: LABCELL_X81_Y12_N39
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \process_1:char[23]~q\ ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( \process_1:char[23]~q\ ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[23]~q\,
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X81_Y12_N40
\process_1:char[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[23]~q\);

-- Location: LABCELL_X81_Y12_N42
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \process_1:char[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~2\ = CARRY(( \process_1:char[24]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:char[24]~DUPLICATE_q\,
	cin => \Add1~70\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X81_Y12_N44
\process_1:char[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[24]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y12_N45
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( \process_1:char[25]~q\ ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[25]~q\,
	cin => \Add1~2\,
	sumout => \Add1~73_sumout\);

-- Location: FF_X81_Y12_N46
\process_1:char[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[25]~q\);

-- Location: MLABCELL_X82_Y11_N51
\LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ( \process_1:char[25]~q\ & ( \LessThan2~3_combout\ ) ) # ( \process_1:char[25]~q\ & ( !\LessThan2~3_combout\ & ( \process_1:char[24]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[24]~DUPLICATE_q\,
	datae => \ALT_INV_process_1:char[25]~q\,
	dataf => \ALT_INV_LessThan2~3_combout\,
	combout => \LessThan2~4_combout\);

-- Location: FF_X81_Y13_N31
\process_1:char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[0]~q\);

-- Location: LABCELL_X81_Y13_N33
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( \process_1:char[1]~q\ ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( \process_1:char[1]~q\ ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[1]~q\,
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X81_Y13_N35
\process_1:char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[1]~q\);

-- Location: LABCELL_X81_Y13_N36
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( \process_1:char[2]~q\ ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( \process_1:char[2]~q\ ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[2]~q\,
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X81_Y13_N38
\process_1:char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[2]~q\);

-- Location: LABCELL_X81_Y13_N39
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( \process_1:char[3]~q\ ) + ( GND ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( \process_1:char[3]~q\ ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[3]~q\,
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X81_Y13_N41
\process_1:char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[3]~q\);

-- Location: LABCELL_X81_Y13_N42
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( \process_1:char[4]~q\ ) + ( GND ) + ( \Add1~90\ ))
-- \Add1~86\ = CARRY(( \process_1:char[4]~q\ ) + ( GND ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:char[4]~q\,
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X81_Y13_N44
\process_1:char[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[4]~q\);

-- Location: LABCELL_X81_Y13_N45
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( \process_1:char[5]~q\ ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~82\ = CARRY(( \process_1:char[5]~q\ ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[5]~q\,
	cin => \Add1~86\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X81_Y13_N47
\process_1:char[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[5]~q\);

-- Location: LABCELL_X81_Y13_N48
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( \process_1:char[6]~q\ ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( \process_1:char[6]~q\ ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[6]~q\,
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X81_Y13_N50
\process_1:char[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[6]~q\);

-- Location: LABCELL_X81_Y13_N51
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \process_1:char[7]~q\ ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~30\ = CARRY(( \process_1:char[7]~q\ ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[7]~q\,
	cin => \Add1~78\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X81_Y13_N52
\process_1:char[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[7]~q\);

-- Location: LABCELL_X81_Y13_N54
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \process_1:char[8]~q\ ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \process_1:char[8]~q\ ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[8]~q\,
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X81_Y13_N56
\process_1:char[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[8]~q\);

-- Location: LABCELL_X81_Y13_N57
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \process_1:char[9]~q\ ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~26\ = CARRY(( \process_1:char[9]~q\ ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[9]~q\,
	cin => \Add1~34\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X81_Y13_N58
\process_1:char[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[9]~q\);

-- Location: LABCELL_X81_Y12_N0
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \process_1:char[10]~q\ ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~18\ = CARRY(( \process_1:char[10]~q\ ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[10]~q\,
	cin => \Add1~26\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X81_Y12_N1
\process_1:char[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[10]~q\);

-- Location: LABCELL_X81_Y12_N3
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \process_1:char[11]~q\ ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \process_1:char[11]~q\ ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[11]~q\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X81_Y12_N5
\process_1:char[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[11]~q\);

-- Location: LABCELL_X81_Y12_N6
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \process_1:char[12]~q\ ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~38\ = CARRY(( \process_1:char[12]~q\ ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:char[12]~q\,
	cin => \Add1~22\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X81_Y12_N8
\process_1:char[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[12]~q\);

-- Location: LABCELL_X81_Y12_N9
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \process_1:char[13]~q\ ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( \process_1:char[13]~q\ ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[13]~q\,
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X81_Y12_N11
\process_1:char[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[13]~q\);

-- Location: LABCELL_X81_Y12_N12
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \process_1:char[14]~q\ ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( \process_1:char[14]~q\ ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:char[14]~q\,
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X81_Y12_N13
\process_1:char[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[14]~q\);

-- Location: LABCELL_X81_Y12_N15
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \process_1:char[15]~q\ ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( \process_1:char[15]~q\ ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[15]~q\,
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X81_Y12_N17
\process_1:char[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[15]~q\);

-- Location: LABCELL_X81_Y12_N18
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \process_1:char[16]~q\ ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~14\ = CARRY(( \process_1:char[16]~q\ ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[16]~q\,
	cin => \Add1~50\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X81_Y12_N20
\process_1:char[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[16]~q\);

-- Location: LABCELL_X81_Y12_N21
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \process_1:char[17]~q\ ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( \process_1:char[17]~q\ ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[17]~q\,
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X81_Y12_N23
\process_1:char[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[17]~q\);

-- Location: FF_X81_Y12_N26
\process_1:char[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[18]~q\);

-- Location: MLABCELL_X82_Y12_N24
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( !\process_1:char[8]~q\ & ( !\process_1:char[7]~q\ & ( (!\process_1:char[9]~q\ & (!\process_1:char[11]~q\ & !\process_1:char[10]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:char[9]~q\,
	datac => \ALT_INV_process_1:char[11]~q\,
	datad => \ALT_INV_process_1:char[10]~q\,
	datae => \ALT_INV_process_1:char[8]~q\,
	dataf => \ALT_INV_process_1:char[7]~q\,
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X80_Y12_N48
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( \process_1:char[15]~q\ & ( \process_1:char[14]~q\ & ( (\process_1:char[12]~q\ & \process_1:char[13]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[12]~q\,
	datac => \ALT_INV_process_1:char[13]~q\,
	datae => \ALT_INV_process_1:char[15]~q\,
	dataf => \ALT_INV_process_1:char[14]~q\,
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X79_Y12_N48
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( \process_1:char[19]~q\ & ( \process_1:char[20]~q\ & ( (\process_1:char[22]~q\ & (\process_1:char[23]~q\ & \process_1:char[21]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[22]~q\,
	datab => \ALT_INV_process_1:char[23]~q\,
	datac => \ALT_INV_process_1:char[21]~q\,
	datae => \ALT_INV_process_1:char[19]~q\,
	dataf => \ALT_INV_process_1:char[20]~q\,
	combout => \LessThan2~2_combout\);

-- Location: LABCELL_X81_Y12_N48
\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ( \process_1:char[17]~q\ & ( \LessThan2~2_combout\ & ( (((!\LessThan2~0_combout\ & \LessThan2~1_combout\)) # (\process_1:char[16]~q\)) # (\process_1:char[18]~q\) ) ) ) # ( !\process_1:char[17]~q\ & ( \LessThan2~2_combout\ & ( 
-- \process_1:char[18]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[18]~q\,
	datab => \ALT_INV_LessThan2~0_combout\,
	datac => \ALT_INV_process_1:char[16]~q\,
	datad => \ALT_INV_LessThan2~1_combout\,
	datae => \ALT_INV_process_1:char[17]~q\,
	dataf => \ALT_INV_LessThan2~2_combout\,
	combout => \LessThan2~3_combout\);

-- Location: FF_X81_Y12_N43
\process_1:char[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \LessThan2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[24]~q\);

-- Location: MLABCELL_X82_Y12_N48
\sec[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec[5]~2_combout\ = ( \process_1:char[24]~q\ & ( \process_1:char[25]~q\ & ( (!\s_min~input_o\ & (!\s_hour~input_o\ & \sec[5]~1_combout\)) ) ) ) # ( !\process_1:char[24]~q\ & ( \process_1:char[25]~q\ & ( (!\s_min~input_o\ & (!\s_hour~input_o\ & 
-- (\sec[5]~1_combout\ & \LessThan2~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s_min~input_o\,
	datab => \ALT_INV_s_hour~input_o\,
	datac => \ALT_INV_sec[5]~1_combout\,
	datad => \ALT_INV_LessThan2~3_combout\,
	datae => \ALT_INV_process_1:char[24]~q\,
	dataf => \ALT_INV_process_1:char[25]~q\,
	combout => \sec[5]~2_combout\);

-- Location: FF_X84_Y12_N56
\sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux5~0_combout\,
	ena => \sec[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(0));

-- Location: LABCELL_X83_Y12_N3
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !\LessThan3~0_combout\ & ( !sec(0) $ (!sec(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sec(0),
	datad => ALT_INV_sec(1),
	dataf => \ALT_INV_LessThan3~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: FF_X83_Y12_N5
\sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux4~0_combout\,
	ena => \sec[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(1));

-- Location: MLABCELL_X84_Y12_N30
\LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (sec(0) & sec(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sec(0),
	datac => ALT_INV_sec(1),
	combout => \LessThan3~1_combout\);

-- Location: MLABCELL_X82_Y12_N36
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( !\LessThan3~0_combout\ & ( \LessThan3~1_combout\ & ( !sec(2) ) ) ) # ( !\LessThan3~0_combout\ & ( !\LessThan3~1_combout\ & ( sec(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sec(2),
	datae => \ALT_INV_LessThan3~0_combout\,
	dataf => \ALT_INV_LessThan3~1_combout\,
	combout => \Mux3~0_combout\);

-- Location: FF_X84_Y12_N44
\sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \Mux3~0_combout\,
	sload => VCC,
	ena => \sec[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(2));

-- Location: MLABCELL_X84_Y12_N18
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \LessThan3~1_combout\ & ( (!\LessThan3~0_combout\ & (!sec(2) $ (!sec(3)))) ) ) # ( !\LessThan3~1_combout\ & ( (!\LessThan3~0_combout\ & sec(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => ALT_INV_sec(2),
	datad => ALT_INV_sec(3),
	dataf => \ALT_INV_LessThan3~1_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X84_Y12_N20
\sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	ena => \sec[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(3));

-- Location: MLABCELL_X84_Y12_N39
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( sec(2) & ( (!sec(3) & (((sec(5))))) # (sec(3) & ((!sec(4) & ((sec(5)))) # (sec(4) & (\LessThan3~1_combout\ & !sec(5))))) ) ) # ( !sec(2) & ( (sec(5) & ((!sec(3)) # ((!\LessThan3~1_combout\) # (!sec(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111000000001111110100000000111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sec(3),
	datab => \ALT_INV_LessThan3~1_combout\,
	datac => ALT_INV_sec(4),
	datad => ALT_INV_sec(5),
	dataf => ALT_INV_sec(2),
	combout => \Mux0~0_combout\);

-- Location: FF_X84_Y12_N41
\sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	ena => \sec[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(5));

-- Location: LABCELL_X85_Y12_N57
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \LessThan3~1_combout\ & ( (!sec(3) & (((sec(4))))) # (sec(3) & ((!sec(2) & (!sec(5) & sec(4))) # (sec(2) & ((!sec(4)))))) ) ) # ( !\LessThan3~1_combout\ & ( (sec(4) & ((!sec(3)) # ((!sec(2)) # (!sec(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111000010001111010100001000111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sec(3),
	datab => ALT_INV_sec(2),
	datac => ALT_INV_sec(5),
	datad => ALT_INV_sec(4),
	dataf => \ALT_INV_LessThan3~1_combout\,
	combout => \Mux1~0_combout\);

-- Location: FF_X85_Y12_N59
\sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	ena => \sec[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(4));

-- Location: MLABCELL_X84_Y12_N42
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( sec(2) & ( sec(5) & ( (sec(3) & sec(4)) ) ) ) # ( !sec(2) & ( sec(5) & ( (sec(3) & (sec(4) & (sec(0) & sec(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sec(3),
	datab => ALT_INV_sec(4),
	datac => ALT_INV_sec(0),
	datad => ALT_INV_sec(1),
	datae => ALT_INV_sec(2),
	dataf => ALT_INV_sec(5),
	combout => \LessThan3~0_combout\);

-- Location: LABCELL_X85_Y8_N51
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\LessThan4~0_combout\ & !min(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan4~0_combout\,
	datad => ALT_INV_min(0),
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X82_Y12_N54
\min[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \min[5]~0_combout\ = ( \s_min~input_o\ & ( !\s_hour~input_o\ ) ) # ( !\s_min~input_o\ & ( (!\s_hour~input_o\ & \LessThan3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s_hour~input_o\,
	datad => \ALT_INV_LessThan3~0_combout\,
	dataf => \ALT_INV_s_min~input_o\,
	combout => \min[5]~0_combout\);

-- Location: MLABCELL_X82_Y12_N57
\min[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \min[5]~1_combout\ = ( \process_1:char[25]~q\ & ( (\sec[5]~1_combout\ & (\min[5]~0_combout\ & ((\process_1:char[24]~q\) # (\LessThan2~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sec[5]~1_combout\,
	datab => \ALT_INV_LessThan2~3_combout\,
	datac => \ALT_INV_min[5]~0_combout\,
	datad => \ALT_INV_process_1:char[24]~q\,
	dataf => \ALT_INV_process_1:char[25]~q\,
	combout => \min[5]~1_combout\);

-- Location: FF_X85_Y8_N53
\min[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux11~0_combout\,
	ena => \min[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(0));

-- Location: LABCELL_X85_Y8_N0
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( min(0) & ( (!\LessThan4~0_combout\ & !min(1)) ) ) # ( !min(0) & ( (!\LessThan4~0_combout\ & min(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan4~0_combout\,
	datad => ALT_INV_min(1),
	dataf => ALT_INV_min(0),
	combout => \Mux10~0_combout\);

-- Location: FF_X85_Y8_N2
\min[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux10~0_combout\,
	ena => \min[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(1));

-- Location: LABCELL_X85_Y10_N36
\LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = ( min(0) & ( min(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min(1),
	dataf => ALT_INV_min(0),
	combout => \LessThan4~1_combout\);

-- Location: LABCELL_X85_Y11_N30
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \LessThan4~1_combout\ & ( !\LessThan4~0_combout\ & ( !min(2) ) ) ) # ( !\LessThan4~1_combout\ & ( !\LessThan4~0_combout\ & ( min(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min(2),
	datae => \ALT_INV_LessThan4~1_combout\,
	dataf => \ALT_INV_LessThan4~0_combout\,
	combout => \Mux9~0_combout\);

-- Location: FF_X85_Y10_N20
\min[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \Mux9~0_combout\,
	sload => VCC,
	ena => \min[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(2));

-- Location: LABCELL_X85_Y10_N45
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( !\LessThan4~0_combout\ & ( !min(3) $ (((!min(2)) # (!\LessThan4~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min(2),
	datac => \ALT_INV_LessThan4~1_combout\,
	datad => ALT_INV_min(3),
	dataf => \ALT_INV_LessThan4~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: FF_X85_Y10_N47
\min[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux8~0_combout\,
	ena => \min[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(3));

-- Location: LABCELL_X85_Y10_N39
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( min(2) & ( (!\LessThan4~1_combout\ & (min(4) & ((!min(5)) # (!min(3))))) # (\LessThan4~1_combout\ & ((!min(3) $ (!min(4))))) ) ) # ( !min(2) & ( (min(4) & ((!min(5)) # ((!\LessThan4~1_combout\) # (!min(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111000000011111110000000001111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min(5),
	datab => \ALT_INV_LessThan4~1_combout\,
	datac => ALT_INV_min(3),
	datad => ALT_INV_min(4),
	dataf => ALT_INV_min(2),
	combout => \Mux7~0_combout\);

-- Location: FF_X85_Y10_N41
\min[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux7~0_combout\,
	ena => \min[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(4));

-- Location: LABCELL_X85_Y8_N3
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( min(3) & ( (!min(4) & (((min(5))))) # (min(4) & ((!min(2) & (!\LessThan4~1_combout\ & min(5))) # (min(2) & (\LessThan4~1_combout\ & !min(5))))) ) ) # ( !min(3) & ( min(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111011000000000111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min(2),
	datab => ALT_INV_min(4),
	datac => \ALT_INV_LessThan4~1_combout\,
	datad => ALT_INV_min(5),
	dataf => ALT_INV_min(3),
	combout => \Mux6~0_combout\);

-- Location: FF_X85_Y8_N5
\min[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux6~0_combout\,
	ena => \min[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(5));

-- Location: LABCELL_X85_Y10_N18
\LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ( min(2) & ( min(4) & ( (min(5) & min(3)) ) ) ) # ( !min(2) & ( min(4) & ( (min(5) & (min(0) & (min(1) & min(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min(5),
	datab => ALT_INV_min(0),
	datac => ALT_INV_min(1),
	datad => ALT_INV_min(3),
	datae => ALT_INV_min(2),
	dataf => ALT_INV_min(4),
	combout => \LessThan4~0_combout\);

-- Location: LABCELL_X85_Y11_N18
\apm[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \apm[0]~0_combout\ = ( \LessThan3~0_combout\ & ( \LessThan4~0_combout\ & ( !\s_min~input_o\ ) ) ) # ( !\LessThan3~0_combout\ & ( \LessThan4~0_combout\ & ( (\s_hour~input_o\ & !\s_min~input_o\) ) ) ) # ( \LessThan3~0_combout\ & ( !\LessThan4~0_combout\ & ( 
-- (\s_hour~input_o\ & !\s_min~input_o\) ) ) ) # ( !\LessThan3~0_combout\ & ( !\LessThan4~0_combout\ & ( (\s_hour~input_o\ & !\s_min~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s_hour~input_o\,
	datac => \ALT_INV_s_min~input_o\,
	datae => \ALT_INV_LessThan3~0_combout\,
	dataf => \ALT_INV_LessThan4~0_combout\,
	combout => \apm[0]~0_combout\);

-- Location: LABCELL_X80_Y10_N27
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!\LessThan5~0_combout\ & (!hour(0) $ (hour(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000010100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(0),
	datac => \ALT_INV_LessThan5~0_combout\,
	datad => ALT_INV_hour(1),
	combout => \Mux14~0_combout\);

-- Location: MLABCELL_X82_Y12_N45
\apm[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \apm[0]~2_combout\ = ( \LessThan2~3_combout\ & ( \apm[0]~0_combout\ & ( (\process_1:char[25]~q\ & \sec[5]~1_combout\) ) ) ) # ( !\LessThan2~3_combout\ & ( \apm[0]~0_combout\ & ( (\process_1:char[25]~q\ & (\process_1:char[24]~q\ & \sec[5]~1_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[25]~q\,
	datac => \ALT_INV_process_1:char[24]~q\,
	datad => \ALT_INV_sec[5]~1_combout\,
	datae => \ALT_INV_LessThan2~3_combout\,
	dataf => \ALT_INV_apm[0]~0_combout\,
	combout => \apm[0]~2_combout\);

-- Location: FF_X80_Y10_N29
\hour[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux14~0_combout\,
	ena => \apm[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(1));

-- Location: LABCELL_X80_Y10_N51
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( hour(2) & ( (hour(1) & (!hour(0) & !hour(3))) ) ) # ( !hour(2) & ( hour(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(1),
	datab => ALT_INV_hour(0),
	datad => ALT_INV_hour(3),
	dataf => ALT_INV_hour(2),
	combout => \Mux12~0_combout\);

-- Location: FF_X80_Y10_N53
\hour[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux12~0_combout\,
	ena => \apm[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(3));

-- Location: LABCELL_X80_Y10_N57
\LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = ( hour(2) & ( hour(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(3),
	dataf => ALT_INV_hour(2),
	combout => \LessThan5~0_combout\);

-- Location: MLABCELL_X82_Y12_N12
\hour[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hour[0]~0_combout\ = ( hour(0) & ( \LessThan5~0_combout\ & ( (!\LessThan2~4_combout\) # ((!\apm[0]~0_combout\) # (!\sec[5]~1_combout\)) ) ) ) # ( hour(0) & ( !\LessThan5~0_combout\ & ( (!\LessThan2~4_combout\) # ((!\apm[0]~0_combout\) # 
-- (!\sec[5]~1_combout\)) ) ) ) # ( !hour(0) & ( !\LessThan5~0_combout\ & ( (\LessThan2~4_combout\ & (\apm[0]~0_combout\ & \sec[5]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111111101111111000000000000000001111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~4_combout\,
	datab => \ALT_INV_apm[0]~0_combout\,
	datac => \ALT_INV_sec[5]~1_combout\,
	datae => ALT_INV_hour(0),
	dataf => \ALT_INV_LessThan5~0_combout\,
	combout => \hour[0]~0_combout\);

-- Location: FF_X82_Y12_N14
\hour[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \hour[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(0));

-- Location: LABCELL_X80_Y10_N48
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( hour(1) & ( (!hour(0) & ((!hour(2)))) # (hour(0) & (!hour(3) & hour(2))) ) ) # ( !hour(1) & ( (!hour(3) & hour(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011001100001100001100110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_hour(0),
	datac => ALT_INV_hour(3),
	datad => ALT_INV_hour(2),
	dataf => ALT_INV_hour(1),
	combout => \Mux13~0_combout\);

-- Location: FF_X80_Y10_N50
\hour[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux13~0_combout\,
	ena => \apm[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour(2));

-- Location: MLABCELL_X82_Y12_N21
\apm[10]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \apm[10]~1_combout\ = ( apm(10) & ( \LessThan5~0_combout\ & ( (!\sec[5]~1_combout\) # ((!\apm[0]~0_combout\) # (!\LessThan2~4_combout\)) ) ) ) # ( !apm(10) & ( \LessThan5~0_combout\ & ( (\sec[5]~1_combout\ & (\apm[0]~0_combout\ & \LessThan2~4_combout\)) ) 
-- ) ) # ( apm(10) & ( !\LessThan5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sec[5]~1_combout\,
	datac => \ALT_INV_apm[0]~0_combout\,
	datad => \ALT_INV_LessThan2~4_combout\,
	datae => ALT_INV_apm(10),
	dataf => \ALT_INV_LessThan5~0_combout\,
	combout => \apm[10]~1_combout\);

-- Location: FF_X82_Y12_N23
\apm[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \apm[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => apm(10));

-- Location: LABCELL_X79_Y10_N33
\year[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \year[0]~0_combout\ = ( apm(10) & ( hour(3) & ( hour(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(2),
	datae => ALT_INV_apm(10),
	dataf => ALT_INV_hour(3),
	combout => \year[0]~0_combout\);

-- Location: LABCELL_X85_Y11_N42
\sec[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sec[5]~0_combout\ = ( \process_1:char[24]~DUPLICATE_q\ & ( \LessThan2~3_combout\ & ( (!\s_min~input_o\ & (!\s_hour~input_o\ & \process_1:char[25]~q\)) ) ) ) # ( !\process_1:char[24]~DUPLICATE_q\ & ( \LessThan2~3_combout\ & ( (!\s_min~input_o\ & 
-- (!\s_hour~input_o\ & \process_1:char[25]~q\)) ) ) ) # ( \process_1:char[24]~DUPLICATE_q\ & ( !\LessThan2~3_combout\ & ( (!\s_min~input_o\ & (!\s_hour~input_o\ & \process_1:char[25]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s_min~input_o\,
	datab => \ALT_INV_s_hour~input_o\,
	datac => \ALT_INV_process_1:char[25]~q\,
	datae => \ALT_INV_process_1:char[24]~DUPLICATE_q\,
	dataf => \ALT_INV_LessThan2~3_combout\,
	combout => \sec[5]~0_combout\);

-- Location: LABCELL_X85_Y11_N39
\day[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \day[0]~0_combout\ = ( !\s_year~input_o\ & ( \LessThan4~0_combout\ & ( ((\year[0]~0_combout\ & \LessThan3~0_combout\)) # (\s_month~input_o\) ) ) ) # ( !\s_year~input_o\ & ( !\LessThan4~0_combout\ & ( \s_month~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_year[0]~0_combout\,
	datac => \ALT_INV_s_month~input_o\,
	datad => \ALT_INV_LessThan3~0_combout\,
	datae => \ALT_INV_s_year~input_o\,
	dataf => \ALT_INV_LessThan4~0_combout\,
	combout => \day[0]~0_combout\);

-- Location: MLABCELL_X87_Y11_N42
\day[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \day[0]~1_combout\ = ( day(0) & ( \LessThan6~0_combout\ ) ) # ( day(0) & ( !\LessThan6~0_combout\ & ( (!\sec[5]~0_combout\) # (!\day[0]~0_combout\) ) ) ) # ( !day(0) & ( !\LessThan6~0_combout\ & ( (\sec[5]~0_combout\ & \day[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111110101111101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sec[5]~0_combout\,
	datac => \ALT_INV_day[0]~0_combout\,
	datae => ALT_INV_day(0),
	dataf => \ALT_INV_LessThan6~0_combout\,
	combout => \day[0]~1_combout\);

-- Location: FF_X87_Y11_N44
\day[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \day[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => day(0));

-- Location: MLABCELL_X87_Y11_N24
\day[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \day[1]~2_combout\ = ( day(1) & ( day(0) ) ) # ( day(1) & ( !day(0) & ( (!\sec[5]~0_combout\) # (!\day[0]~0_combout\) ) ) ) # ( !day(1) & ( !day(0) & ( (\sec[5]~0_combout\ & \day[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111110101111101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sec[5]~0_combout\,
	datac => \ALT_INV_day[0]~0_combout\,
	datae => ALT_INV_day(1),
	dataf => ALT_INV_day(0),
	combout => \day[1]~2_combout\);

-- Location: FF_X87_Y11_N26
\day[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \day[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => day(1));

-- Location: MLABCELL_X87_Y11_N18
\day[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \day[2]~3_combout\ = ( \sec[5]~0_combout\ & ( !day(2) $ (((!day(1)) # ((!\day[0]~0_combout\) # (day(0))))) ) ) # ( !\sec[5]~0_combout\ & ( day(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000100111110110000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_day(1),
	datab => ALT_INV_day(0),
	datac => \ALT_INV_day[0]~0_combout\,
	datad => ALT_INV_day(2),
	dataf => \ALT_INV_sec[5]~0_combout\,
	combout => \day[2]~3_combout\);

-- Location: FF_X87_Y11_N20
\day[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \day[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => day(2));

-- Location: LABCELL_X85_Y11_N12
\year[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \year[0]~5_combout\ = ( \year[0]~0_combout\ & ( \LessThan4~0_combout\ & ( \LessThan3~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan3~0_combout\,
	datae => \ALT_INV_year[0]~0_combout\,
	dataf => \ALT_INV_LessThan4~0_combout\,
	combout => \year[0]~5_combout\);

-- Location: MLABCELL_X84_Y11_N6
\day[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \day[0]~5_combout\ = ( !\s_hour~input_o\ & ( \year[0]~5_combout\ & ( (\LessThan2~4_combout\ & (!\s_year~input_o\ & !\s_min~input_o\)) ) ) ) # ( !\s_hour~input_o\ & ( !\year[0]~5_combout\ & ( (\LessThan2~4_combout\ & (!\s_year~input_o\ & (!\s_min~input_o\ 
-- & \s_month~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000001000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~4_combout\,
	datab => \ALT_INV_s_year~input_o\,
	datac => \ALT_INV_s_min~input_o\,
	datad => \ALT_INV_s_month~input_o\,
	datae => \ALT_INV_s_hour~input_o\,
	dataf => \ALT_INV_year[0]~5_combout\,
	combout => \day[0]~5_combout\);

-- Location: MLABCELL_X87_Y11_N54
\day[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \day[3]~4_combout\ = ( day(3) & ( day(2) & ( (!\day[0]~0_combout\) # ((!\sec[5]~0_combout\) # ((!day(1)) # (day(0)))) ) ) ) # ( !day(3) & ( day(2) & ( (\day[0]~0_combout\ & (\sec[5]~0_combout\ & (day(1) & !day(0)))) ) ) ) # ( day(3) & ( !day(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000001111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_day[0]~0_combout\,
	datab => \ALT_INV_sec[5]~0_combout\,
	datac => ALT_INV_day(1),
	datad => ALT_INV_day(0),
	datae => ALT_INV_day(3),
	dataf => ALT_INV_day(2),
	combout => \day[3]~4_combout\);

-- Location: FF_X87_Y11_N56
\day[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \day[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => day(3));

-- Location: MLABCELL_X87_Y11_N36
\day[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \day[4]~6_combout\ = ( day(4) & ( day(3) & ( (!day(2)) # ((!\day[0]~5_combout\) # ((!day(1)) # (day(0)))) ) ) ) # ( !day(4) & ( day(3) & ( (day(2) & (\day[0]~5_combout\ & (day(1) & !day(0)))) ) ) ) # ( day(4) & ( !day(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000001111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_day(2),
	datab => \ALT_INV_day[0]~5_combout\,
	datac => ALT_INV_day(1),
	datad => ALT_INV_day(0),
	datae => ALT_INV_day(4),
	dataf => ALT_INV_day(3),
	combout => \day[4]~6_combout\);

-- Location: FF_X87_Y11_N38
\day[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \day[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => day(4));

-- Location: MLABCELL_X87_Y11_N21
\LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ( day(3) & ( (day(1) & (!day(0) & (day(2) & day(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_day(1),
	datab => ALT_INV_day(0),
	datac => ALT_INV_day(2),
	datad => ALT_INV_day(4),
	dataf => ALT_INV_day(3),
	combout => \LessThan6~0_combout\);

-- Location: LABCELL_X81_Y11_N15
\month[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \month[0]~0_combout\ = ( \LessThan4~0_combout\ & ( \LessThan6~0_combout\ & ( (!\s_month~input_o\ & (((\LessThan3~0_combout\ & \year[0]~0_combout\)) # (\s_year~input_o\))) ) ) ) # ( !\LessThan4~0_combout\ & ( \LessThan6~0_combout\ & ( (\s_year~input_o\ & 
-- !\s_month~input_o\) ) ) ) # ( \LessThan4~0_combout\ & ( !\LessThan6~0_combout\ & ( (\s_year~input_o\ & !\s_month~input_o\) ) ) ) # ( !\LessThan4~0_combout\ & ( !\LessThan6~0_combout\ & ( (\s_year~input_o\ & !\s_month~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000001111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~0_combout\,
	datab => \ALT_INV_year[0]~0_combout\,
	datac => \ALT_INV_s_year~input_o\,
	datad => \ALT_INV_s_month~input_o\,
	datae => \ALT_INV_LessThan4~0_combout\,
	dataf => \ALT_INV_LessThan6~0_combout\,
	combout => \month[0]~0_combout\);

-- Location: LABCELL_X85_Y11_N3
\month[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \month[0]~1_combout\ = ( month(0) & ( \sec[5]~0_combout\ & ( !\month[0]~0_combout\ ) ) ) # ( !month(0) & ( \sec[5]~0_combout\ & ( (\month[0]~0_combout\ & !\LessThan7~0_combout\) ) ) ) # ( month(0) & ( !\sec[5]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010000010100001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_month[0]~0_combout\,
	datac => \ALT_INV_LessThan7~0_combout\,
	datae => ALT_INV_month(0),
	dataf => \ALT_INV_sec[5]~0_combout\,
	combout => \month[0]~1_combout\);

-- Location: FF_X85_Y11_N5
\month[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \month[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => month(0));

-- Location: MLABCELL_X84_Y11_N0
\Mux43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = ( month(1) & ( month(0) & ( !\LessThan7~0_combout\ ) ) ) # ( !month(1) & ( !month(0) & ( !\LessThan7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan7~0_combout\,
	datae => ALT_INV_month(1),
	dataf => ALT_INV_month(0),
	combout => \Mux43~0_combout\);

-- Location: MLABCELL_X84_Y11_N45
\month[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \month[0]~2_combout\ = ( \month[0]~0_combout\ & ( \LessThan2~3_combout\ & ( (!\s_hour~input_o\ & (\process_1:char[25]~q\ & !\s_min~input_o\)) ) ) ) # ( \month[0]~0_combout\ & ( !\LessThan2~3_combout\ & ( (\process_1:char[24]~DUPLICATE_q\ & 
-- (!\s_hour~input_o\ & (\process_1:char[25]~q\ & !\s_min~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[24]~DUPLICATE_q\,
	datab => \ALT_INV_s_hour~input_o\,
	datac => \ALT_INV_process_1:char[25]~q\,
	datad => \ALT_INV_s_min~input_o\,
	datae => \ALT_INV_month[0]~0_combout\,
	dataf => \ALT_INV_LessThan2~3_combout\,
	combout => \month[0]~2_combout\);

-- Location: FF_X84_Y11_N2
\month[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux43~0_combout\,
	ena => \month[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => month(1));

-- Location: MLABCELL_X82_Y11_N15
\Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = ( !month(2) & ( month(3) & ( (!month(0) & month(1)) ) ) ) # ( month(2) & ( !month(3) & ( (!month(1)) # (month(0)) ) ) ) # ( !month(2) & ( !month(3) & ( (!month(0) & month(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111100111111001100001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(0),
	datac => ALT_INV_month(1),
	datae => ALT_INV_month(2),
	dataf => ALT_INV_month(3),
	combout => \Mux42~0_combout\);

-- Location: FF_X82_Y11_N17
\month[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux42~0_combout\,
	ena => \month[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => month(2));

-- Location: MLABCELL_X82_Y11_N9
\Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( !month(3) & ( month(2) & ( (!month(0) & month(1)) ) ) ) # ( month(3) & ( !month(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(0),
	datac => ALT_INV_month(1),
	datae => ALT_INV_month(3),
	dataf => ALT_INV_month(2),
	combout => \Mux41~0_combout\);

-- Location: FF_X82_Y11_N11
\month[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux41~0_combout\,
	ena => \month[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => month(3));

-- Location: MLABCELL_X84_Y11_N39
\LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = ( month(3) & ( month(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_month(3),
	dataf => ALT_INV_month(2),
	combout => \LessThan7~0_combout\);

-- Location: MLABCELL_X84_Y11_N51
\year[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \year[0]~2_combout\ = ( \LessThan3~0_combout\ & ( \LessThan6~0_combout\ & ( (!\s_min~input_o\ & (\LessThan7~0_combout\ & (\LessThan4~0_combout\ & \year[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s_min~input_o\,
	datab => \ALT_INV_LessThan7~0_combout\,
	datac => \ALT_INV_LessThan4~0_combout\,
	datad => \ALT_INV_year[0]~0_combout\,
	datae => \ALT_INV_LessThan3~0_combout\,
	dataf => \ALT_INV_LessThan6~0_combout\,
	combout => \year[0]~2_combout\);

-- Location: LABCELL_X85_Y11_N57
\year[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \year[5]~1_combout\ = ( !\s_min~input_o\ & ( (!\s_year~input_o\ & (!\s_month~input_o\ $ (!\s_hour~input_o\))) # (\s_year~input_o\ & (!\s_month~input_o\ & !\s_hour~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100001101000011010000110100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s_year~input_o\,
	datab => \ALT_INV_s_month~input_o\,
	datac => \ALT_INV_s_hour~input_o\,
	dataf => \ALT_INV_s_min~input_o\,
	combout => \year[5]~1_combout\);

-- Location: LABCELL_X85_Y11_N54
\year[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \year[0]~3_combout\ = ( !\s_hour~input_o\ & ( (!\s_year~input_o\ & !\s_month~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s_year~input_o\,
	datab => \ALT_INV_s_month~input_o\,
	dataf => \ALT_INV_s_hour~input_o\,
	combout => \year[0]~3_combout\);

-- Location: LABCELL_X85_Y11_N24
\year[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \year[5]~4_combout\ = ( \process_1:char[25]~q\ & ( \LessThan2~3_combout\ & ( (!\year[5]~1_combout\ & ((!\year[0]~3_combout\) # (\year[0]~2_combout\))) ) ) ) # ( \process_1:char[25]~q\ & ( !\LessThan2~3_combout\ & ( (!\year[5]~1_combout\ & 
-- (\process_1:char[24]~DUPLICATE_q\ & ((!\year[0]~3_combout\) # (\year[0]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100010000000000000000001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_year[0]~2_combout\,
	datab => \ALT_INV_year[5]~1_combout\,
	datac => \ALT_INV_year[0]~3_combout\,
	datad => \ALT_INV_process_1:char[24]~DUPLICATE_q\,
	datae => \ALT_INV_process_1:char[25]~q\,
	dataf => \ALT_INV_LessThan2~3_combout\,
	combout => \year[5]~4_combout\);

-- Location: FF_X80_Y9_N2
\year[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux49~0_combout\,
	ena => \year[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => year(1));

-- Location: LABCELL_X81_Y8_N21
\Mux47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = ( year(0) & ( (!\LessThan8~0_combout\ & (!year(3) $ (((!year(1)) # (year(2)))))) ) ) # ( !year(0) & ( (!\LessThan8~0_combout\ & year(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001000101000100000100010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan8~0_combout\,
	datab => ALT_INV_year(2),
	datac => ALT_INV_year(1),
	datad => ALT_INV_year(3),
	dataf => ALT_INV_year(0),
	combout => \Mux47~0_combout\);

-- Location: FF_X81_Y8_N23
\year[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux47~0_combout\,
	ena => \year[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => year(3));

-- Location: LABCELL_X81_Y8_N24
\LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = ( year(5) & ( (!year(4) & (((!year(2)) # (year(1))) # (year(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100010011001100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_year(3),
	datab => ALT_INV_year(4),
	datac => ALT_INV_year(1),
	datad => ALT_INV_year(2),
	dataf => ALT_INV_year(5),
	combout => \LessThan8~0_combout\);

-- Location: LABCELL_X81_Y8_N51
\Mux50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = ( !\LessThan8~0_combout\ & ( !year(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_year(0),
	dataf => \ALT_INV_LessThan8~0_combout\,
	combout => \Mux50~0_combout\);

-- Location: FF_X81_Y8_N53
\year[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux50~0_combout\,
	ena => \year[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => year(0));

-- Location: LABCELL_X80_Y9_N30
\Mux48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = ( year(2) & ( year(1) & ( (!year(0) & !\LessThan8~0_combout\) ) ) ) # ( !year(2) & ( year(1) & ( (year(0) & !\LessThan8~0_combout\) ) ) ) # ( year(2) & ( !year(1) & ( !\LessThan8~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000110000001100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_year(0),
	datac => \ALT_INV_LessThan8~0_combout\,
	datae => ALT_INV_year(2),
	dataf => ALT_INV_year(1),
	combout => \Mux48~0_combout\);

-- Location: FF_X80_Y9_N32
\year[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux48~0_combout\,
	ena => \year[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => year(2));

-- Location: LABCELL_X81_Y8_N0
\Add7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = ( year(0) & ( (!year(2) & (year(3) & year(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_year(2),
	datac => ALT_INV_year(3),
	datad => ALT_INV_year(1),
	dataf => ALT_INV_year(0),
	combout => \Add7~0_combout\);

-- Location: LABCELL_X81_Y8_N6
\Mux46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = ( !\LessThan8~0_combout\ & ( !\Add7~0_combout\ $ (!year(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add7~0_combout\,
	datad => ALT_INV_year(4),
	dataf => \ALT_INV_LessThan8~0_combout\,
	combout => \Mux46~0_combout\);

-- Location: FF_X81_Y8_N8
\year[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux46~0_combout\,
	ena => \year[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => year(4));

-- Location: LABCELL_X81_Y8_N54
\Mux45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = ( !\LessThan8~0_combout\ & ( !year(5) $ (((!\Add7~0_combout\) # (year(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110011000011001111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_year(4),
	datac => \ALT_INV_Add7~0_combout\,
	datad => ALT_INV_year(5),
	dataf => \ALT_INV_LessThan8~0_combout\,
	combout => \Mux45~0_combout\);

-- Location: FF_X81_Y8_N56
\year[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Mux45~0_combout\,
	ena => \year[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => year(5));

-- Location: LABCELL_X81_Y9_N0
\Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( !year(2) ) + ( !VCC ) + ( !VCC ))
-- \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( !year(2) ) + ( !VCC ) + ( !VCC ))
-- \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_year(2),
	cin => GND,
	sharein => GND,
	sumout => \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: LABCELL_X81_Y9_N3
\Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ = SUM(( year(3) ) + ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ = CARRY(( year(3) ) + ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_year(3),
	cin => \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	shareout => \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~15\);

-- Location: LABCELL_X81_Y9_N6
\Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ = SUM(( year(4) ) + ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ = CARRY(( year(4) ) + ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ = SHARE(!year(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_year(4),
	cin => \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	sharein => \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~15\,
	sumout => \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	shareout => \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~11\);

-- Location: LABCELL_X81_Y9_N9
\Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ = SUM(( year(5) ) + ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ = CARRY(( year(5) ) + ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_year(5),
	cin => \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	sharein => \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~11\,
	sumout => \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\,
	cout => \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	shareout => \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LABCELL_X81_Y9_N12
\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ ) + ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	sharein => \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	sumout => \Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X81_Y9_N18
\Div4|auto_generated|divider|divider|StageOut[16]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[16]~4_combout\ = ( !\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	dataf => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: LABCELL_X81_Y9_N51
\Div4|auto_generated|divider|divider|StageOut[16]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[16]~5_combout\ = ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( year(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_year(3),
	dataf => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LABCELL_X81_Y9_N24
\Div4|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div4|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X81_Y9_N27
\Div4|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( year(1) ) + ( VCC ) + ( \Div4|auto_generated|divider|divider|op_5~26_cout\ ))
-- \Div4|auto_generated|divider|divider|op_5~22\ = CARRY(( year(1) ) + ( VCC ) + ( \Div4|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_year(1),
	cin => \Div4|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \Div4|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Div4|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X81_Y9_N30
\Div4|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!year(2))) ) + ( GND ) + ( \Div4|auto_generated|divider|divider|op_5~22\ ))
-- \Div4|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!year(2))) ) + ( GND ) + ( \Div4|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_year(2),
	datad => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	cin => \Div4|auto_generated|divider|divider|op_5~22\,
	sumout => \Div4|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Div4|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X81_Y9_N33
\Div4|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\Div4|auto_generated|divider|divider|StageOut[16]~5_combout\) # (\Div4|auto_generated|divider|divider|StageOut[16]~4_combout\) ) + ( VCC ) + ( \Div4|auto_generated|divider|divider|op_5~18\ ))
-- \Div4|auto_generated|divider|divider|op_5~14\ = CARRY(( (\Div4|auto_generated|divider|divider|StageOut[16]~5_combout\) # (\Div4|auto_generated|divider|divider|StageOut[16]~4_combout\) ) + ( VCC ) + ( \Div4|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\,
	datad => \Div4|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	cin => \Div4|auto_generated|divider|divider|op_5~18\,
	sumout => \Div4|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Div4|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X81_Y9_N36
\Div4|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!year(4))) ) + ( GND ) + ( \Div4|auto_generated|divider|divider|op_5~14\ ))
-- \Div4|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!year(4))) ) + ( GND ) + ( \Div4|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_year(4),
	datad => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	cin => \Div4|auto_generated|divider|divider|op_5~14\,
	sumout => \Div4|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Div4|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X81_Y9_N48
\Div4|auto_generated|divider|divider|StageOut[18]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[18]~3_combout\ = ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( year(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_year(5),
	dataf => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LABCELL_X81_Y9_N54
\Div4|auto_generated|divider|divider|StageOut[18]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[18]~2_combout\ = ( !\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	dataf => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[18]~2_combout\);

-- Location: LABCELL_X81_Y9_N39
\Div4|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (\Div4|auto_generated|divider|divider|StageOut[18]~2_combout\) # (\Div4|auto_generated|divider|divider|StageOut[18]~3_combout\) ) + ( VCC ) + ( \Div4|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\,
	datac => \Div4|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\,
	cin => \Div4|auto_generated|divider|divider|op_5~10\,
	cout => \Div4|auto_generated|divider|divider|op_5~6_cout\);

-- Location: LABCELL_X81_Y9_N42
\Div4|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div4|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \Div4|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X81_Y9_N57
\Div4|auto_generated|divider|divider|StageOut[17]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[17]~0_combout\ = ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ & ( !\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[17]~0_combout\);

-- Location: LABCELL_X80_Y9_N39
\Div4|auto_generated|divider|divider|StageOut[17]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[17]~1_combout\ = ( !year(4) & ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_year(4),
	dataf => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[17]~1_combout\);

-- Location: MLABCELL_X82_Y9_N54
\Div4|auto_generated|divider|divider|StageOut[16]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[16]~6_combout\ = ( \Div4|auto_generated|divider|divider|StageOut[16]~5_combout\ ) # ( !\Div4|auto_generated|divider|divider|StageOut[16]~5_combout\ & ( 
-- \Div4|auto_generated|divider|divider|StageOut[16]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div4|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\,
	dataf => \Div4|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LABCELL_X81_Y9_N21
\Div4|auto_generated|divider|divider|StageOut[15]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|StageOut[15]~7_combout\ = ( \Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( !year(2) ) ) # ( !\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- \Div4|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_year(2),
	datad => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	dataf => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div4|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: MLABCELL_X82_Y9_N18
\Div4|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div4|auto_generated|divider|divider|op_6~26_cout\);

-- Location: MLABCELL_X82_Y9_N21
\Div4|auto_generated|divider|divider|op_6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_6~22_cout\ = CARRY(( year(0) ) + ( VCC ) + ( \Div4|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_year(0),
	cin => \Div4|auto_generated|divider|divider|op_6~26_cout\,
	cout => \Div4|auto_generated|divider|divider|op_6~22_cout\);

-- Location: MLABCELL_X82_Y9_N24
\Div4|auto_generated|divider|divider|op_6~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_6~18_cout\ = CARRY(( (!\Div4|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div4|auto_generated|divider|divider|op_5~21_sumout\))) # (\Div4|auto_generated|divider|divider|op_5~1_sumout\ & (year(1))) ) + ( GND ) 
-- + ( \Div4|auto_generated|divider|divider|op_6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => ALT_INV_year(1),
	datad => \Div4|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \Div4|auto_generated|divider|divider|op_6~22_cout\,
	cout => \Div4|auto_generated|divider|divider|op_6~18_cout\);

-- Location: MLABCELL_X82_Y9_N27
\Div4|auto_generated|divider|divider|op_6~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_6~14_cout\ = CARRY(( (!\Div4|auto_generated|divider|divider|op_5~1_sumout\ & (\Div4|auto_generated|divider|divider|op_5~17_sumout\)) # (\Div4|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Div4|auto_generated|divider|divider|StageOut[15]~7_combout\))) ) + ( VCC ) + ( \Div4|auto_generated|divider|divider|op_6~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datab => \Div4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div4|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\,
	cin => \Div4|auto_generated|divider|divider|op_6~18_cout\,
	cout => \Div4|auto_generated|divider|divider|op_6~14_cout\);

-- Location: MLABCELL_X82_Y9_N30
\Div4|auto_generated|divider|divider|op_6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_6~10_cout\ = CARRY(( (!\Div4|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div4|auto_generated|divider|divider|op_5~13_sumout\))) # (\Div4|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div4|auto_generated|divider|divider|StageOut[16]~6_combout\)) ) + ( GND ) + ( \Div4|auto_generated|divider|divider|op_6~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div4|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\,
	datad => \Div4|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Div4|auto_generated|divider|divider|op_6~14_cout\,
	cout => \Div4|auto_generated|divider|divider|op_6~10_cout\);

-- Location: MLABCELL_X82_Y9_N33
\Div4|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( (!\Div4|auto_generated|divider|divider|op_5~1_sumout\ & (\Div4|auto_generated|divider|divider|op_5~9_sumout\)) # (\Div4|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div4|auto_generated|divider|divider|StageOut[17]~1_combout\) # (\Div4|auto_generated|divider|divider|StageOut[17]~0_combout\)))) ) + ( VCC ) + ( \Div4|auto_generated|divider|divider|op_6~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div4|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datab => \Div4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div4|auto_generated|divider|divider|ALT_INV_StageOut[17]~0_combout\,
	datad => \Div4|auto_generated|divider|divider|ALT_INV_StageOut[17]~1_combout\,
	cin => \Div4|auto_generated|divider|divider|op_6~10_cout\,
	cout => \Div4|auto_generated|divider|divider|op_6~6_cout\);

-- Location: MLABCELL_X82_Y9_N36
\Div4|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div4|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div4|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div4|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \Div4|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X83_Y11_N12
\Mod3|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod3|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X83_Y11_N15
\Mod3|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( !day(0) ) + ( VCC ) + ( \Mod3|auto_generated|divider|divider|op_5~26_cout\ ))
-- \Mod3|auto_generated|divider|divider|op_5~6\ = CARRY(( !day(0) ) + ( VCC ) + ( \Mod3|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_day(0),
	cin => \Mod3|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \Mod3|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \Mod3|auto_generated|divider|divider|op_5~6\);

-- Location: MLABCELL_X87_Y11_N0
\Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ = SUM(( day(1) ) + ( !VCC ) + ( !VCC ))
-- \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ = CARRY(( day(1) ) + ( !VCC ) + ( !VCC ))
-- \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_day(1),
	cin => GND,
	sharein => GND,
	sumout => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\,
	cout => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	shareout => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~7\);

-- Location: MLABCELL_X87_Y11_N3
\Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ = SUM(( day(2) ) + ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ = CARRY(( day(2) ) + ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_day(2),
	cin => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	sharein => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~7\,
	sumout => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\,
	cout => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	shareout => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~11\);

-- Location: MLABCELL_X87_Y11_N6
\Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ = SUM(( !day(3) ) + ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ = CARRY(( !day(3) ) + ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ = SHARE(day(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_day(3),
	cin => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	sharein => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~11\,
	sumout => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\,
	cout => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	shareout => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~15\);

-- Location: MLABCELL_X87_Y11_N9
\Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ = SUM(( day(4) ) + ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ = CARRY(( day(4) ) + ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_day(4),
	cin => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	sharein => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~15\,
	sumout => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\,
	cout => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~18\,
	shareout => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~19\);

-- Location: MLABCELL_X87_Y11_N12
\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ ) + ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~18\,
	sharein => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~19\,
	sumout => \Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X83_Y11_N36
\Mod3|auto_generated|divider|divider|StageOut[18]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|StageOut[18]~2_combout\ = ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ & ( !\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\,
	combout => \Mod3|auto_generated|divider|divider|StageOut[18]~2_combout\);

-- Location: MLABCELL_X87_Y11_N33
\Mod3|auto_generated|divider|divider|StageOut[18]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|StageOut[18]~3_combout\ = ( day(4) & ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_day(4),
	dataf => \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod3|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LABCELL_X83_Y11_N51
\Mod3|auto_generated|divider|divider|StageOut[16]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|StageOut[16]~0_combout\ = ( !\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	dataf => \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod3|auto_generated|divider|divider|StageOut[16]~0_combout\);

-- Location: MLABCELL_X87_Y11_N51
\Mod3|auto_generated|divider|divider|StageOut[16]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|StageOut[16]~1_combout\ = ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( day(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_day(2),
	dataf => \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod3|auto_generated|divider|divider|StageOut[16]~1_combout\);

-- Location: LABCELL_X83_Y11_N18
\Mod3|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (day(1))) ) + ( GND ) + ( \Mod3|auto_generated|divider|divider|op_5~6\ ))
-- \Mod3|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (day(1))) ) + ( GND ) + ( \Mod3|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_day(1),
	datad => \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	cin => \Mod3|auto_generated|divider|divider|op_5~6\,
	sumout => \Mod3|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Mod3|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X83_Y11_N21
\Mod3|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\Mod3|auto_generated|divider|divider|StageOut[16]~1_combout\) # (\Mod3|auto_generated|divider|divider|StageOut[16]~0_combout\) ) + ( VCC ) + ( \Mod3|auto_generated|divider|divider|op_5~10\ ))
-- \Mod3|auto_generated|divider|divider|op_5~14\ = CARRY(( (\Mod3|auto_generated|divider|divider|StageOut[16]~1_combout\) # (\Mod3|auto_generated|divider|divider|StageOut[16]~0_combout\) ) + ( VCC ) + ( \Mod3|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod3|auto_generated|divider|divider|ALT_INV_StageOut[16]~0_combout\,
	datac => \Mod3|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	cin => \Mod3|auto_generated|divider|divider|op_5~10\,
	sumout => \Mod3|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Mod3|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X83_Y11_N24
\Mod3|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (day(3))) ) + ( GND ) + ( \Mod3|auto_generated|divider|divider|op_5~14\ ))
-- \Mod3|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) # 
-- (\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (day(3))) ) + ( GND ) + ( \Mod3|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_day(3),
	datad => \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	cin => \Mod3|auto_generated|divider|divider|op_5~14\,
	sumout => \Mod3|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Mod3|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X83_Y11_N27
\Mod3|auto_generated|divider|divider|op_5~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|op_5~22_cout\ = CARRY(( (\Mod3|auto_generated|divider|divider|StageOut[18]~3_combout\) # (\Mod3|auto_generated|divider|divider|StageOut[18]~2_combout\) ) + ( VCC ) + ( \Mod3|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod3|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\,
	datad => \Mod3|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\,
	cin => \Mod3|auto_generated|divider|divider|op_5~18\,
	cout => \Mod3|auto_generated|divider|divider|op_5~22_cout\);

-- Location: LABCELL_X83_Y11_N30
\Mod3|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod3|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod3|auto_generated|divider|divider|op_5~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod3|auto_generated|divider|divider|op_5~22_cout\,
	sumout => \Mod3|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: MLABCELL_X82_Y11_N24
\Selector9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = ( \Mod3|auto_generated|divider|divider|op_5~5_sumout\ & ( \Mod3|auto_generated|divider|divider|op_5~1_sumout\ & ( !day(0) ) ) ) # ( !\Mod3|auto_generated|divider|divider|op_5~5_sumout\ & ( 
-- \Mod3|auto_generated|divider|divider|op_5~1_sumout\ & ( !day(0) ) ) ) # ( \Mod3|auto_generated|divider|divider|op_5~5_sumout\ & ( !\Mod3|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_day(0),
	datae => \Mod3|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	dataf => \Mod3|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Selector9~3_combout\);

-- Location: MLABCELL_X82_Y9_N6
\Selector9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~4_combout\ = ( \Div4|auto_generated|divider|divider|op_6~1_sumout\ & ( \Selector9~3_combout\ & ( (!\char~0_combout\ & (\Equal15~0_combout\ & (\char~2_combout\ & \char~4_combout\))) ) ) ) # ( !\Div4|auto_generated|divider|divider|op_6~1_sumout\ 
-- & ( \Selector9~3_combout\ & ( (\Equal15~0_combout\ & (\char~2_combout\ & \char~4_combout\)) ) ) ) # ( !\Div4|auto_generated|divider|divider|op_6~1_sumout\ & ( !\Selector9~3_combout\ & ( (\char~0_combout\ & (\Equal15~0_combout\ & (\char~2_combout\ & 
-- \char~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000110000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_Equal15~0_combout\,
	datac => \ALT_INV_char~2_combout\,
	datad => \ALT_INV_char~4_combout\,
	datae => \Div4|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \ALT_INV_Selector9~3_combout\,
	combout => \Selector9~4_combout\);

-- Location: LABCELL_X81_Y10_N36
\Mux55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = ( month(2) & ( (!month(1) & !month(3)) ) ) # ( !month(2) & ( !month(3) $ (((!month(1)) # (month(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110011000011001111001111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(0),
	datac => ALT_INV_month(1),
	datad => ALT_INV_month(3),
	dataf => ALT_INV_month(2),
	combout => \Mux55~0_combout\);

-- Location: LABCELL_X81_Y10_N39
\Mux65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = ( month(2) & ( (!month(1) & (!month(0) $ (month(3)))) ) ) # ( !month(2) & ( (month(0) & (month(3) & !month(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(0),
	datac => ALT_INV_month(3),
	datad => ALT_INV_month(1),
	dataf => ALT_INV_month(2),
	combout => \Mux65~0_combout\);

-- Location: LABCELL_X83_Y9_N57
\Equal0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = ( \Equal0~4_combout\ & ( \Equal0~7_combout\ & ( (\Equal25~0_combout\ & (\Equal0~3_combout\ & (\Equal0~10_combout\ & \Equal25~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal25~0_combout\,
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_Equal0~10_combout\,
	datad => \ALT_INV_Equal25~4_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~7_combout\,
	combout => \Equal0~11_combout\);

-- Location: LABCELL_X83_Y10_N12
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \Equal0~11_combout\ & ( \char~2_combout\ & ( (\char~1_combout\ & ((!\char~0_combout\) # (\Mux65~0_combout\))) ) ) ) # ( \Equal0~11_combout\ & ( !\char~2_combout\ & ( (\Mux55~0_combout\ & (\char~1_combout\ & \char~0_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux55~0_combout\,
	datab => \ALT_INV_Mux65~0_combout\,
	datac => \ALT_INV_char~1_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_Equal0~11_combout\,
	dataf => \ALT_INV_char~2_combout\,
	combout => \Selector9~0_combout\);

-- Location: LABCELL_X85_Y10_N0
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ = SUM(( min(2) ) + ( !VCC ) + ( !VCC ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ = CARRY(( min(2) ) + ( !VCC ) + ( !VCC ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min(2),
	cin => GND,
	sharein => GND,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	shareout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\);

-- Location: LABCELL_X85_Y10_N3
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ = SUM(( min(3) ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ = CARRY(( min(3) ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_min(3),
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	sharein => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~7\,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	shareout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~11\);

-- Location: LABCELL_X85_Y10_N6
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\ = SUM(( !min(4) ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ = CARRY(( !min(4) ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ = SHARE(min(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_min(4),
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	sharein => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~11\,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~18\,
	shareout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~19\);

-- Location: LABCELL_X85_Y10_N9
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\ = SUM(( min(5) ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~14\ = CARRY(( min(5) ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_min(5),
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~18\,
	sharein => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~19\,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~14\,
	shareout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~15\);

-- Location: LABCELL_X85_Y10_N12
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~15\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~14\,
	sharein => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~15\,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X85_Y10_N24
\Mod1|auto_generated|divider|divider|StageOut[21]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~5_combout\ = ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~13_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~5_combout\);

-- Location: LABCELL_X85_Y10_N54
\Mod1|auto_generated|divider|divider|StageOut[21]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\ = ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( min(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min(5),
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\);

-- Location: LABCELL_X85_Y10_N57
\Mod1|auto_generated|divider|divider|StageOut[19]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~1_combout\ = ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~1_combout\);

-- Location: LABCELL_X85_Y10_N27
\Mod1|auto_generated|divider|divider|StageOut[19]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~2_combout\ = ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( min(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min(3),
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~2_combout\);

-- Location: MLABCELL_X84_Y10_N0
\Mod1|auto_generated|divider|divider|op_5~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod1|auto_generated|divider|divider|op_5~22_cout\);

-- Location: MLABCELL_X84_Y10_N3
\Mod1|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( min(1) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_5~22_cout\ ))
-- \Mod1|auto_generated|divider|divider|op_5~6\ = CARRY(( min(1) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_5~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min(1),
	cin => \Mod1|auto_generated|divider|divider|op_5~22_cout\,
	sumout => \Mod1|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_5~6\);

-- Location: MLABCELL_X84_Y10_N6
\Mod1|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (min(2))) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_5~6\ ))
-- \Mod1|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (min(2))) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_min(2),
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_5~6\,
	sumout => \Mod1|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_5~10\);

-- Location: MLABCELL_X84_Y10_N9
\Mod1|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\Mod1|auto_generated|divider|divider|StageOut[19]~2_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[19]~1_combout\) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_5~10\ ))
-- \Mod1|auto_generated|divider|divider|op_5~14\ = CARRY(( (\Mod1|auto_generated|divider|divider|StageOut[19]~2_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[19]~1_combout\) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_5~10\,
	sumout => \Mod1|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_5~14\);

-- Location: MLABCELL_X84_Y10_N12
\Mod1|auto_generated|divider|divider|op_5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~25_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\))) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (min(4))) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_5~14\ ))
-- \Mod1|auto_generated|divider|divider|op_5~26\ = CARRY(( (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\))) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (min(4))) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_min(4),
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_5~14\,
	sumout => \Mod1|auto_generated|divider|divider|op_5~25_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_5~26\);

-- Location: MLABCELL_X84_Y10_N15
\Mod1|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (\Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[21]~5_combout\) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_5~26\ ))
-- \Mod1|auto_generated|divider|divider|op_5~18\ = CARRY(( (\Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[21]~5_combout\) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_5~26\,
	sumout => \Mod1|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_5~18\);

-- Location: MLABCELL_X84_Y10_N18
\Mod1|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|op_5~18\,
	sumout => \Mod1|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X85_Y10_N42
\Mod1|auto_generated|divider|divider|StageOut[20]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\ = ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\ & ( !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\);

-- Location: LABCELL_X85_Y10_N48
\Mod1|auto_generated|divider|divider|StageOut[20]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\ = ( min(4) & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => ALT_INV_min(4),
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\);

-- Location: LABCELL_X85_Y10_N30
\Mod1|auto_generated|divider|divider|StageOut[19]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[19]~3_combout\ = ( \Mod1|auto_generated|divider|divider|StageOut[19]~2_combout\ ) # ( !\Mod1|auto_generated|divider|divider|StageOut[19]~2_combout\ & ( 
-- \Mod1|auto_generated|divider|divider|StageOut[19]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[19]~3_combout\);

-- Location: LABCELL_X88_Y10_N3
\Mod1|auto_generated|divider|divider|StageOut[18]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~0_combout\ = ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( min(2) ) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( min(2) ) ) ) # ( \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_min(2),
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: MLABCELL_X84_Y10_N36
\Mod1|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod1|auto_generated|divider|divider|op_6~26_cout\);

-- Location: MLABCELL_X84_Y10_N39
\Mod1|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( min(0) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~26_cout\ ))
-- \Mod1|auto_generated|divider|divider|op_6~6\ = CARRY(( min(0) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min(0),
	cin => \Mod1|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~6\);

-- Location: MLABCELL_X84_Y10_N42
\Mod1|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (min(1))) ) + ( GND ) + ( 
-- \Mod1|auto_generated|divider|divider|op_6~6\ ))
-- \Mod1|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (min(1))) ) + ( GND ) + ( 
-- \Mod1|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => ALT_INV_min(1),
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~6\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~10\);

-- Location: MLABCELL_X84_Y10_N45
\Mod1|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[18]~0_combout\)) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~10\ ))
-- \Mod1|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[18]~0_combout\)) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~10\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~14\);

-- Location: MLABCELL_X84_Y10_N48
\Mod1|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[19]~3_combout\)) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_6~14\ ))
-- \Mod1|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[19]~3_combout\)) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~14\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~18\);

-- Location: MLABCELL_X84_Y10_N51
\Mod1|auto_generated|divider|divider|op_6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~30_cout\ = CARRY(( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~25_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[20]~7_combout\)) # (\Mod1|auto_generated|divider|divider|StageOut[20]~6_combout\))) ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[20]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~18\,
	cout => \Mod1|auto_generated|divider|divider|op_6~30_cout\);

-- Location: MLABCELL_X84_Y10_N54
\Mod1|auto_generated|divider|divider|op_6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~22_cout\ = CARRY(( VCC ) + ( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod1|auto_generated|divider|divider|op_5~17_sumout\)))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod1|auto_generated|divider|divider|StageOut[21]~4_combout\)) # (\Mod1|auto_generated|divider|divider|StageOut[21]~5_combout\))) ) + ( \Mod1|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110000000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_6~30_cout\,
	cout => \Mod1|auto_generated|divider|divider|op_6~22_cout\);

-- Location: MLABCELL_X84_Y10_N57
\Mod1|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|op_6~22_cout\,
	sumout => \Mod1|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: MLABCELL_X84_Y8_N30
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ( char(2) & ( \LessThan0~1_combout\ & ( (\Add0~1_sumout\ & !\Add0~9_sumout\) ) ) ) # ( !char(2) & ( \LessThan0~1_combout\ & ( (\Add0~1_sumout\ & !\Add0~9_sumout\) ) ) ) # ( char(2) & ( !\LessThan0~1_combout\ & ( 
-- (!\LessThan0~3_combout\ & (\Add0~1_sumout\ & (!\Add0~9_sumout\))) # (\LessThan0~3_combout\ & (((!char(1))))) ) ) ) # ( !char(2) & ( !\LessThan0~1_combout\ & ( (\Add0~1_sumout\ & (!\Add0~9_sumout\ & !\LessThan0~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010011110100000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => ALT_INV_char(1),
	datae => ALT_INV_char(2),
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \Equal4~0_combout\);

-- Location: MLABCELL_X82_Y10_N48
\Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = ( \Equal0~10_combout\ & ( \Equal0~12_combout\ & ( (!\char~1_combout\ & (\Equal4~0_combout\ & (\Equal0~7_combout\ & \Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_Equal4~0_combout\,
	datac => \ALT_INV_Equal0~7_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_Equal0~10_combout\,
	dataf => \ALT_INV_Equal0~12_combout\,
	combout => \Equal4~1_combout\);

-- Location: MLABCELL_X82_Y10_N9
\Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = ( \char~1_combout\ & ( \Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_char~1_combout\,
	combout => \Equal7~0_combout\);

-- Location: LABCELL_X83_Y10_N48
\Equal23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal23~0_combout\ = ( \Equal0~10_combout\ & ( \Equal0~12_combout\ & ( (\Equal0~3_combout\ & (\Equal7~0_combout\ & (!\char~4_combout\ & \char~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \ALT_INV_Equal7~0_combout\,
	datac => \ALT_INV_char~4_combout\,
	datad => \ALT_INV_char~3_combout\,
	datae => \ALT_INV_Equal0~10_combout\,
	dataf => \ALT_INV_Equal0~12_combout\,
	combout => \Equal23~0_combout\);

-- Location: MLABCELL_X82_Y8_N30
\Mod4|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod4|auto_generated|divider|divider|op_6~26_cout\);

-- Location: MLABCELL_X82_Y8_N33
\Mod4|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( year(0) ) + ( VCC ) + ( \Mod4|auto_generated|divider|divider|op_6~26_cout\ ))
-- \Mod4|auto_generated|divider|divider|op_6~6\ = CARRY(( year(0) ) + ( VCC ) + ( \Mod4|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_year(0),
	cin => \Mod4|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \Mod4|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Mod4|auto_generated|divider|divider|op_6~6\);

-- Location: LABCELL_X81_Y8_N30
\Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ = SUM(( !year(2) ) + ( !VCC ) + ( !VCC ))
-- \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ = CARRY(( !year(2) ) + ( !VCC ) + ( !VCC ))
-- \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_year(2),
	cin => GND,
	sharein => GND,
	sumout => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\,
	cout => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	shareout => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~7\);

-- Location: LABCELL_X81_Y8_N33
\Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ = SUM(( year(3) ) + ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ = CARRY(( year(3) ) + ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_year(3),
	cin => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	sharein => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~7\,
	sumout => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\,
	cout => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	shareout => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~11\);

-- Location: LABCELL_X81_Y8_N36
\Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\ = SUM(( year(4) ) + ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ = CARRY(( year(4) ) + ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ = SHARE(!year(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_year(4),
	cin => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	sharein => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~11\,
	sumout => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\,
	cout => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~18\,
	shareout => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~19\);

-- Location: LABCELL_X81_Y8_N39
\Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\ = SUM(( year(5) ) + ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ ) + ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ ))
-- \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~14\ = CARRY(( year(5) ) + ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ ) + ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ ))
-- \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_year(5),
	cin => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~18\,
	sharein => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~19\,
	sumout => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\,
	cout => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~14\,
	shareout => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~15\);

-- Location: LABCELL_X81_Y8_N42
\Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~15\ ) + ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~14\,
	sharein => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~15\,
	sumout => \Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X81_Y8_N12
\Mod4|auto_generated|divider|divider|StageOut[21]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|StageOut[21]~4_combout\ = ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( year(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_year(5),
	dataf => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod4|auto_generated|divider|divider|StageOut[21]~4_combout\);

-- Location: LABCELL_X81_Y8_N48
\Mod4|auto_generated|divider|divider|StageOut[21]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|StageOut[21]~5_combout\ = ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\ & ( !\Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~13_sumout\,
	combout => \Mod4|auto_generated|divider|divider|StageOut[21]~5_combout\);

-- Location: LABCELL_X81_Y8_N3
\Mod4|auto_generated|divider|divider|StageOut[19]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|StageOut[19]~1_combout\ = ( !\Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	dataf => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod4|auto_generated|divider|divider|StageOut[19]~1_combout\);

-- Location: LABCELL_X81_Y8_N27
\Mod4|auto_generated|divider|divider|StageOut[19]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|StageOut[19]~2_combout\ = ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( year(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_year(3),
	dataf => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod4|auto_generated|divider|divider|StageOut[19]~2_combout\);

-- Location: MLABCELL_X82_Y8_N6
\Mod4|auto_generated|divider|divider|op_5~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_5~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod4|auto_generated|divider|divider|op_5~22_cout\);

-- Location: MLABCELL_X82_Y8_N9
\Mod4|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( year(1) ) + ( VCC ) + ( \Mod4|auto_generated|divider|divider|op_5~22_cout\ ))
-- \Mod4|auto_generated|divider|divider|op_5~6\ = CARRY(( year(1) ) + ( VCC ) + ( \Mod4|auto_generated|divider|divider|op_5~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_year(1),
	cin => \Mod4|auto_generated|divider|divider|op_5~22_cout\,
	sumout => \Mod4|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \Mod4|auto_generated|divider|divider|op_5~6\);

-- Location: MLABCELL_X82_Y8_N12
\Mod4|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!year(2))) ) + ( GND ) + ( \Mod4|auto_generated|divider|divider|op_5~6\ ))
-- \Mod4|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!year(2))) ) + ( GND ) + ( \Mod4|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_year(2),
	datab => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	cin => \Mod4|auto_generated|divider|divider|op_5~6\,
	sumout => \Mod4|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Mod4|auto_generated|divider|divider|op_5~10\);

-- Location: MLABCELL_X82_Y8_N15
\Mod4|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\Mod4|auto_generated|divider|divider|StageOut[19]~2_combout\) # (\Mod4|auto_generated|divider|divider|StageOut[19]~1_combout\) ) + ( VCC ) + ( \Mod4|auto_generated|divider|divider|op_5~10\ ))
-- \Mod4|auto_generated|divider|divider|op_5~14\ = CARRY(( (\Mod4|auto_generated|divider|divider|StageOut[19]~2_combout\) # (\Mod4|auto_generated|divider|divider|StageOut[19]~1_combout\) ) + ( VCC ) + ( \Mod4|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\,
	datad => \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\,
	cin => \Mod4|auto_generated|divider|divider|op_5~10\,
	sumout => \Mod4|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Mod4|auto_generated|divider|divider|op_5~14\);

-- Location: MLABCELL_X82_Y8_N18
\Mod4|auto_generated|divider|divider|op_5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_5~25_sumout\ = SUM(( (!\Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\))) # 
-- (\Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!year(4))) ) + ( GND ) + ( \Mod4|auto_generated|divider|divider|op_5~14\ ))
-- \Mod4|auto_generated|divider|divider|op_5~26\ = CARRY(( (!\Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\))) # 
-- (\Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (!year(4))) ) + ( GND ) + ( \Mod4|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_year(4),
	datab => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\,
	cin => \Mod4|auto_generated|divider|divider|op_5~14\,
	sumout => \Mod4|auto_generated|divider|divider|op_5~25_sumout\,
	cout => \Mod4|auto_generated|divider|divider|op_5~26\);

-- Location: MLABCELL_X82_Y8_N21
\Mod4|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (\Mod4|auto_generated|divider|divider|StageOut[21]~4_combout\) # (\Mod4|auto_generated|divider|divider|StageOut[21]~5_combout\) ) + ( VCC ) + ( \Mod4|auto_generated|divider|divider|op_5~26\ ))
-- \Mod4|auto_generated|divider|divider|op_5~18\ = CARRY(( (\Mod4|auto_generated|divider|divider|StageOut[21]~4_combout\) # (\Mod4|auto_generated|divider|divider|StageOut[21]~5_combout\) ) + ( VCC ) + ( \Mod4|auto_generated|divider|divider|op_5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\,
	datad => \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	cin => \Mod4|auto_generated|divider|divider|op_5~26\,
	sumout => \Mod4|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Mod4|auto_generated|divider|divider|op_5~18\);

-- Location: MLABCELL_X82_Y8_N24
\Mod4|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod4|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod4|auto_generated|divider|divider|op_5~18\,
	sumout => \Mod4|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X81_Y8_N18
\Mod4|auto_generated|divider|divider|StageOut[20]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|StageOut[20]~6_combout\ = ( !\Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\,
	dataf => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod4|auto_generated|divider|divider|StageOut[20]~6_combout\);

-- Location: LABCELL_X81_Y8_N57
\Mod4|auto_generated|divider|divider|StageOut[20]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|StageOut[20]~7_combout\ = ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( !year(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_year(4),
	dataf => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod4|auto_generated|divider|divider|StageOut[20]~7_combout\);

-- Location: LABCELL_X81_Y8_N15
\Mod4|auto_generated|divider|divider|StageOut[19]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|StageOut[19]~3_combout\ = (\Mod4|auto_generated|divider|divider|StageOut[19]~2_combout\) # (\Mod4|auto_generated|divider|divider|StageOut[19]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\,
	datad => \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\,
	combout => \Mod4|auto_generated|divider|divider|StageOut[19]~3_combout\);

-- Location: LABCELL_X81_Y8_N9
\Mod4|auto_generated|divider|divider|StageOut[18]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|StageOut[18]~0_combout\ = ( \Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( (!\Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (!year(2)) ) ) # ( 
-- !\Mod4|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( (\Mod4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & !year(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => ALT_INV_year(2),
	dataf => \Mod4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	combout => \Mod4|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: MLABCELL_X82_Y8_N36
\Mod4|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod4|auto_generated|divider|divider|op_5~5_sumout\))) # (\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & (year(1))) ) + ( GND ) + 
-- ( \Mod4|auto_generated|divider|divider|op_6~6\ ))
-- \Mod4|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod4|auto_generated|divider|divider|op_5~5_sumout\))) # (\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & (year(1))) ) + ( GND ) + ( 
-- \Mod4|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => ALT_INV_year(1),
	datad => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	cin => \Mod4|auto_generated|divider|divider|op_6~6\,
	sumout => \Mod4|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Mod4|auto_generated|divider|divider|op_6~10\);

-- Location: MLABCELL_X82_Y8_N39
\Mod4|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod4|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod4|auto_generated|divider|divider|StageOut[18]~0_combout\)) ) + ( VCC ) + ( \Mod4|auto_generated|divider|divider|op_6~10\ ))
-- \Mod4|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod4|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod4|auto_generated|divider|divider|StageOut[18]~0_combout\)) ) + ( VCC ) + ( \Mod4|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\,
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Mod4|auto_generated|divider|divider|op_6~10\,
	sumout => \Mod4|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Mod4|auto_generated|divider|divider|op_6~14\);

-- Location: MLABCELL_X82_Y8_N42
\Mod4|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( GND ) + ( (!\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod4|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod4|auto_generated|divider|divider|StageOut[19]~3_combout\)) ) + ( \Mod4|auto_generated|divider|divider|op_6~14\ ))
-- \Mod4|auto_generated|divider|divider|op_6~18\ = CARRY(( GND ) + ( (!\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod4|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod4|auto_generated|divider|divider|StageOut[19]~3_combout\)) ) + ( \Mod4|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\,
	dataf => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Mod4|auto_generated|divider|divider|op_6~14\,
	sumout => \Mod4|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Mod4|auto_generated|divider|divider|op_6~18\);

-- Location: MLABCELL_X82_Y8_N45
\Mod4|auto_generated|divider|divider|op_6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_6~30_cout\ = CARRY(( (!\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod4|auto_generated|divider|divider|op_5~25_sumout\)))) # (\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod4|auto_generated|divider|divider|StageOut[20]~7_combout\)) # (\Mod4|auto_generated|divider|divider|StageOut[20]~6_combout\))) ) + ( VCC ) + ( \Mod4|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[20]~6_combout\,
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	datad => \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\,
	cin => \Mod4|auto_generated|divider|divider|op_6~18\,
	cout => \Mod4|auto_generated|divider|divider|op_6~30_cout\);

-- Location: MLABCELL_X82_Y8_N48
\Mod4|auto_generated|divider|divider|op_6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_6~22_cout\ = CARRY(( (!\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod4|auto_generated|divider|divider|op_5~17_sumout\)))) # (\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod4|auto_generated|divider|divider|StageOut[21]~5_combout\)) # (\Mod4|auto_generated|divider|divider|StageOut[21]~4_combout\))) ) + ( VCC ) + ( \Mod4|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	datab => \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\,
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \Mod4|auto_generated|divider|divider|op_6~30_cout\,
	cout => \Mod4|auto_generated|divider|divider|op_6~22_cout\);

-- Location: MLABCELL_X82_Y8_N51
\Mod4|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod4|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod4|auto_generated|divider|divider|op_6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod4|auto_generated|divider|divider|op_6~22_cout\,
	sumout => \Mod4|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: MLABCELL_X82_Y8_N3
\Selector9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~5_combout\ = ( \Mod4|auto_generated|divider|divider|op_6~1_sumout\ & ( year(0) ) ) # ( !\Mod4|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod4|auto_generated|divider|divider|op_6~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datad => ALT_INV_year(0),
	dataf => \Mod4|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Selector9~5_combout\);

-- Location: MLABCELL_X84_Y10_N24
\Selector9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~6_combout\ = ( \Equal23~0_combout\ & ( \Selector9~5_combout\ ) ) # ( !\Equal23~0_combout\ & ( \Selector9~5_combout\ & ( (\Equal4~1_combout\ & ((!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Mod1|auto_generated|divider|divider|op_6~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (min(0))))) ) ) ) # ( \Equal23~0_combout\ & ( !\Selector9~5_combout\ & ( (\Equal4~1_combout\ & 
-- ((!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (min(0))))) ) ) ) # ( !\Equal23~0_combout\ & ( !\Selector9~5_combout\ & ( 
-- (\Equal4~1_combout\ & ((!\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_6~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & (min(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011000000010000101100000001000010111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => ALT_INV_min(0),
	datac => \ALT_INV_Equal4~1_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	datae => \ALT_INV_Equal23~0_combout\,
	dataf => \ALT_INV_Selector9~5_combout\,
	combout => \Selector9~6_combout\);

-- Location: LABCELL_X83_Y9_N15
\Equal0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = ( \Equal0~3_combout\ & ( (\Equal25~0_combout\ & (\Equal25~4_combout\ & \Equal0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal25~0_combout\,
	datac => \ALT_INV_Equal25~4_combout\,
	datad => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~13_combout\);

-- Location: LABCELL_X83_Y9_N24
\Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = ( \Equal0~10_combout\ & ( \Equal0~13_combout\ & ( (\char~2_combout\ & (\char~1_combout\ & (\Equal25~5_combout\ & !\char~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~2_combout\,
	datab => \ALT_INV_char~1_combout\,
	datac => \ALT_INV_Equal25~5_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_Equal0~10_combout\,
	dataf => \ALT_INV_Equal0~13_combout\,
	combout => \Equal9~0_combout\);

-- Location: LABCELL_X83_Y6_N48
\Selector9~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~7_combout\ = ( \WideNor0~1_combout\ & ( \WideNor0~0_combout\ & ( (!apm(10) & (((lcd_bus(0) & \Equal25~13_combout\)) # (\Equal9~0_combout\))) # (apm(10) & (lcd_bus(0) & (\Equal25~13_combout\))) ) ) ) # ( !\WideNor0~1_combout\ & ( 
-- \WideNor0~0_combout\ & ( ((!apm(10) & \Equal9~0_combout\)) # (lcd_bus(0)) ) ) ) # ( \WideNor0~1_combout\ & ( !\WideNor0~0_combout\ & ( (!apm(10) & (((lcd_bus(0) & \Equal25~13_combout\)) # (\Equal9~0_combout\))) # (apm(10) & (lcd_bus(0) & 
-- (\Equal25~13_combout\))) ) ) ) # ( !\WideNor0~1_combout\ & ( !\WideNor0~0_combout\ & ( (!apm(10) & (((lcd_bus(0) & \Equal25~13_combout\)) # (\Equal9~0_combout\))) # (apm(10) & (lcd_bus(0) & (\Equal25~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110101011000000111010101100110011101110110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_apm(10),
	datab => ALT_INV_lcd_bus(0),
	datac => \ALT_INV_Equal25~13_combout\,
	datad => \ALT_INV_Equal9~0_combout\,
	datae => \ALT_INV_WideNor0~1_combout\,
	dataf => \ALT_INV_WideNor0~0_combout\,
	combout => \Selector9~7_combout\);

-- Location: LABCELL_X80_Y10_N0
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ = SUM(( !hour(0) ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ = CARRY(( !hour(0) ) + ( !VCC ) + ( !VCC ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(0),
	cin => GND,
	sharein => GND,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\);

-- Location: LABCELL_X80_Y10_N3
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ = SUM(( hour(1) ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ = CARRY(( hour(1) ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(1),
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~7\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\);

-- Location: LABCELL_X80_Y10_N6
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\ = SUM(( !hour(2) ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ = CARRY(( !hour(2) ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ = SHARE(hour(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(2),
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~11\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\);

-- Location: LABCELL_X80_Y10_N9
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ = SUM(( hour(3) ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ = CARRY(( hour(3) ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\ ))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(3),
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~14\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~15\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\,
	shareout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\);

-- Location: LABCELL_X80_Y10_N12
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\ ) + ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~18\,
	sharein => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~19\,
	sumout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X80_Y10_N54
\Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( !hour(0) ) ) # ( !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	datad => ALT_INV_hour(0),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Selector9~1_combout\);

-- Location: LABCELL_X85_Y8_N30
\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( min(2) ) + ( !VCC ) + ( !VCC ))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( min(2) ) + ( !VCC ) + ( !VCC ))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_min(2),
	cin => GND,
	sharein => GND,
	sumout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: LABCELL_X85_Y8_N33
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ = SUM(( min(3) ) + ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ = CARRY(( min(3) ) + ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_min(3),
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	shareout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~15\);

-- Location: LABCELL_X85_Y8_N36
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ = SUM(( !min(4) ) + ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ = CARRY(( !min(4) ) + ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ = SHARE(min(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min(4),
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	sharein => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~15\,
	sumout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	shareout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~11\);

-- Location: LABCELL_X85_Y8_N39
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ = SUM(( min(5) ) + ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ = CARRY(( min(5) ) + ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_min(5),
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	sharein => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~11\,
	sumout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	shareout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LABCELL_X85_Y8_N42
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ ) + ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	sharein => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	sumout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X85_Y8_N48
\Div1|auto_generated|divider|divider|StageOut[18]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~2_combout\ = ( !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	dataf => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~2_combout\);

-- Location: LABCELL_X85_Y8_N57
\Div1|auto_generated|divider|divider|StageOut[18]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~3_combout\ = ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( min(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_min(5),
	dataf => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LABCELL_X85_Y8_N54
\Div1|auto_generated|divider|divider|StageOut[16]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~4_combout\ = ( !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	dataf => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: MLABCELL_X84_Y8_N6
\Div1|auto_generated|divider|divider|StageOut[16]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~5_combout\ = ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( min(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_min(3),
	dataf => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LABCELL_X85_Y8_N6
\Div1|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div1|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X85_Y8_N9
\Div1|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( min(1) ) + ( VCC ) + ( \Div1|auto_generated|divider|divider|op_5~26_cout\ ))
-- \Div1|auto_generated|divider|divider|op_5~22\ = CARRY(( min(1) ) + ( VCC ) + ( \Div1|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_min(1),
	cin => \Div1|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \Div1|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Div1|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X85_Y8_N12
\Div1|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (min(2))) ) + ( GND ) + ( \Div1|auto_generated|divider|divider|op_5~22\ ))
-- \Div1|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (min(2))) ) + ( GND ) + ( \Div1|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min(2),
	datab => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	cin => \Div1|auto_generated|divider|divider|op_5~22\,
	sumout => \Div1|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Div1|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X85_Y8_N15
\Div1|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\Div1|auto_generated|divider|divider|StageOut[16]~5_combout\) # (\Div1|auto_generated|divider|divider|StageOut[16]~4_combout\) ) + ( VCC ) + ( \Div1|auto_generated|divider|divider|op_5~18\ ))
-- \Div1|auto_generated|divider|divider|op_5~14\ = CARRY(( (\Div1|auto_generated|divider|divider|StageOut[16]~5_combout\) # (\Div1|auto_generated|divider|divider|StageOut[16]~4_combout\) ) + ( VCC ) + ( \Div1|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	cin => \Div1|auto_generated|divider|divider|op_5~18\,
	sumout => \Div1|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Div1|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X85_Y8_N18
\Div1|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (min(4))) ) + ( GND ) + ( \Div1|auto_generated|divider|divider|op_5~14\ ))
-- \Div1|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (min(4))) ) + ( GND ) + ( \Div1|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_min(4),
	datad => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	cin => \Div1|auto_generated|divider|divider|op_5~14\,
	sumout => \Div1|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Div1|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X85_Y8_N21
\Div1|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (\Div1|auto_generated|divider|divider|StageOut[18]~3_combout\) # (\Div1|auto_generated|divider|divider|StageOut[18]~2_combout\) ) + ( VCC ) + ( \Div1|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\,
	cin => \Div1|auto_generated|divider|divider|op_5~10\,
	cout => \Div1|auto_generated|divider|divider|op_5~6_cout\);

-- Location: LABCELL_X85_Y8_N24
\Div1|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div1|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \Div1|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: MLABCELL_X84_Y6_N57
\Div1|auto_generated|divider|divider|StageOut[17]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~0_combout\ = ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ & ( !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	dataf => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~0_combout\);

-- Location: MLABCELL_X87_Y8_N12
\Div1|auto_generated|divider|divider|StageOut[17]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~1_combout\ = ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( min(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min(4),
	dataf => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~1_combout\);

-- Location: LABCELL_X85_Y7_N3
\Div1|auto_generated|divider|divider|StageOut[16]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~6_combout\ = ( \Div1|auto_generated|divider|divider|StageOut[16]~4_combout\ & ( \Div1|auto_generated|divider|divider|StageOut[16]~5_combout\ ) ) # ( 
-- !\Div1|auto_generated|divider|divider|StageOut[16]~4_combout\ & ( \Div1|auto_generated|divider|divider|StageOut[16]~5_combout\ ) ) # ( \Div1|auto_generated|divider|divider|StageOut[16]~4_combout\ & ( 
-- !\Div1|auto_generated|divider|divider|StageOut[16]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\,
	dataf => \Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LABCELL_X85_Y7_N33
\Div1|auto_generated|divider|divider|StageOut[15]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~7_combout\ = ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ & ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( min(2) ) ) ) # ( 
-- !\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ & ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( min(2) ) ) ) # ( \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ & ( 
-- !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min(2),
	datae => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	dataf => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: MLABCELL_X84_Y6_N18
\Div1|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div1|auto_generated|divider|divider|op_6~26_cout\);

-- Location: MLABCELL_X84_Y6_N21
\Div1|auto_generated|divider|divider|op_6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~22_cout\ = CARRY(( min(0) ) + ( VCC ) + ( \Div1|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_min(0),
	cin => \Div1|auto_generated|divider|divider|op_6~26_cout\,
	cout => \Div1|auto_generated|divider|divider|op_6~22_cout\);

-- Location: MLABCELL_X84_Y6_N24
\Div1|auto_generated|divider|divider|op_6~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~18_cout\ = CARRY(( (!\Div1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div1|auto_generated|divider|divider|op_5~21_sumout\))) # (\Div1|auto_generated|divider|divider|op_5~1_sumout\ & (min(1))) ) + ( GND ) + 
-- ( \Div1|auto_generated|divider|divider|op_6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_min(1),
	datac => \Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Div1|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \Div1|auto_generated|divider|divider|op_6~22_cout\,
	cout => \Div1|auto_generated|divider|divider|op_6~18_cout\);

-- Location: MLABCELL_X84_Y6_N27
\Div1|auto_generated|divider|divider|op_6~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~14_cout\ = CARRY(( (!\Div1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div1|auto_generated|divider|divider|op_5~17_sumout\))) # (\Div1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div1|auto_generated|divider|divider|StageOut[15]~7_combout\)) ) + ( VCC ) + ( \Div1|auto_generated|divider|divider|op_6~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div1|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\,
	datad => \Div1|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \Div1|auto_generated|divider|divider|op_6~18_cout\,
	cout => \Div1|auto_generated|divider|divider|op_6~14_cout\);

-- Location: MLABCELL_X84_Y6_N30
\Div1|auto_generated|divider|divider|op_6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~10_cout\ = CARRY(( (!\Div1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div1|auto_generated|divider|divider|op_5~13_sumout\))) # (\Div1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div1|auto_generated|divider|divider|StageOut[16]~6_combout\)) ) + ( GND ) + ( \Div1|auto_generated|divider|divider|op_6~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div1|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Div1|auto_generated|divider|divider|op_6~14_cout\,
	cout => \Div1|auto_generated|divider|divider|op_6~10_cout\);

-- Location: MLABCELL_X84_Y6_N33
\Div1|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( (!\Div1|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div1|auto_generated|divider|divider|op_5~9_sumout\)))) # (\Div1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div1|auto_generated|divider|divider|StageOut[17]~1_combout\)) # (\Div1|auto_generated|divider|divider|StageOut[17]~0_combout\))) ) + ( VCC ) + ( \Div1|auto_generated|divider|divider|op_6~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datad => \Div1|auto_generated|divider|divider|ALT_INV_StageOut[17]~1_combout\,
	cin => \Div1|auto_generated|divider|divider|op_6~10_cout\,
	cout => \Div1|auto_generated|divider|divider|op_6~6_cout\);

-- Location: MLABCELL_X84_Y6_N36
\Div1|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div1|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \Div1|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X83_Y9_N54
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( \Equal0~4_combout\ & ( \Equal25~5_combout\ & ( (\Equal25~0_combout\ & (\Equal0~3_combout\ & (\Equal25~4_combout\ & \Equal0~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal25~0_combout\,
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_Equal25~4_combout\,
	datad => \ALT_INV_Equal0~10_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal25~5_combout\,
	combout => \Equal3~0_combout\);

-- Location: MLABCELL_X84_Y6_N42
\Selector9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = ( \Div1|auto_generated|divider|divider|op_6~1_sumout\ & ( \Equal3~0_combout\ & ( (\char~2_combout\ & (!\char~0_combout\ & (\Selector9~1_combout\ & !\char~1_combout\))) ) ) ) # ( !\Div1|auto_generated|divider|divider|op_6~1_sumout\ 
-- & ( \Equal3~0_combout\ & ( (!\char~1_combout\ & ((!\char~2_combout\ & (\char~0_combout\)) # (\char~2_combout\ & (!\char~0_combout\ & \Selector9~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100110000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~2_combout\,
	datab => \ALT_INV_char~0_combout\,
	datac => \ALT_INV_Selector9~1_combout\,
	datad => \ALT_INV_char~1_combout\,
	datae => \Div1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Selector9~2_combout\);

-- Location: LABCELL_X80_Y10_N30
\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18_cout\ = CARRY(( !hour(0) ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(0),
	cin => GND,
	sharein => GND,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18_cout\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: LABCELL_X80_Y10_N33
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14_cout\ = CARRY(( hour(1) ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18_cout\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_hour(1),
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~18_cout\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14_cout\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\);

-- Location: LABCELL_X80_Y10_N36
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10_cout\ = CARRY(( !hour(2) ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14_cout\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ = SHARE(hour(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_hour(2),
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~14_cout\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~15\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10_cout\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\);

-- Location: LABCELL_X80_Y10_N39
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_cout\ = CARRY(( hour(3) ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10_cout\ ))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_hour(3),
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~10_cout\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~11\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_cout\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LABCELL_X80_Y10_N42
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_cout\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X83_Y10_N24
\Selector9~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~10_combout\ = ( \Equal0~10_combout\ & ( \Equal0~13_combout\ & ( (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\Equal0~7_combout\ & (!\char~1_combout\ & \Equal0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datab => \ALT_INV_Equal0~7_combout\,
	datac => \ALT_INV_char~1_combout\,
	datad => \ALT_INV_Equal0~6_combout\,
	datae => \ALT_INV_Equal0~10_combout\,
	dataf => \ALT_INV_Equal0~13_combout\,
	combout => \Selector9~10_combout\);

-- Location: MLABCELL_X82_Y8_N0
\Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = ( \Equal7~0_combout\ & ( (\Equal0~10_combout\ & (\Equal25~5_combout\ & (\Equal0~3_combout\ & \Equal0~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~10_combout\,
	datab => \ALT_INV_Equal25~5_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~12_combout\,
	dataf => \ALT_INV_Equal7~0_combout\,
	combout => \Equal7~1_combout\);

-- Location: MLABCELL_X84_Y8_N12
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( \Add0~9_sumout\ & ( \LessThan0~1_combout\ & ( !\Add0~1_sumout\ ) ) ) # ( \Add0~9_sumout\ & ( !\LessThan0~1_combout\ & ( (!\LessThan0~3_combout\ & (!\Add0~1_sumout\)) # (\LessThan0~3_combout\ & (((!char(2) & char(1))))) ) ) ) # ( 
-- !\Add0~9_sumout\ & ( !\LessThan0~1_combout\ & ( (!char(2) & (\LessThan0~3_combout\ & char(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100101000001010110000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => ALT_INV_char(2),
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => ALT_INV_char(1),
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \Equal2~0_combout\);

-- Location: MLABCELL_X87_Y10_N0
\Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( day(1) ) + ( !VCC ) + ( !VCC ))
-- \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( day(1) ) + ( !VCC ) + ( !VCC ))
-- \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_day(1),
	cin => GND,
	sharein => GND,
	sumout => \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: MLABCELL_X87_Y10_N3
\Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ = SUM(( day(2) ) + ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ = CARRY(( day(2) ) + ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_day(2),
	cin => \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\,
	cout => \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	shareout => \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~15\);

-- Location: MLABCELL_X87_Y10_N6
\Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ = SUM(( !day(3) ) + ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ = CARRY(( !day(3) ) + ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ = SHARE(day(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_day(3),
	cin => \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	sharein => \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~15\,
	sumout => \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\,
	cout => \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	shareout => \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~11\);

-- Location: MLABCELL_X87_Y10_N9
\Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ = SUM(( day(4) ) + ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ = CARRY(( day(4) ) + ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_day(4),
	cin => \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	sharein => \Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~11\,
	sumout => \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\,
	cout => \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	shareout => \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: MLABCELL_X87_Y10_N12
\Div3|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ ) + ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	sharein => \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	sumout => \Div3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: MLABCELL_X87_Y10_N54
\Div3|auto_generated|divider|divider|StageOut[18]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[18]~0_combout\ = ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ & ( !\Div3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LABCELL_X88_Y10_N57
\Div3|auto_generated|divider|divider|StageOut[18]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[18]~1_combout\ = ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( day(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => ALT_INV_day(4),
	combout => \Div3|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: MLABCELL_X87_Y10_N27
\Div3|auto_generated|divider|divider|StageOut[16]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[16]~2_combout\ = ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ & ( !\Div3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	dataf => \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[16]~2_combout\);

-- Location: MLABCELL_X87_Y10_N57
\Div3|auto_generated|divider|divider|StageOut[16]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|StageOut[16]~3_combout\ = ( \Div3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( day(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_day(2),
	dataf => \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div3|auto_generated|divider|divider|StageOut[16]~3_combout\);

-- Location: MLABCELL_X87_Y10_N30
\Div3|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div3|auto_generated|divider|divider|op_5~26_cout\);

-- Location: MLABCELL_X87_Y10_N33
\Div3|auto_generated|divider|divider|op_5~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~22_cout\ = CARRY(( !day(0) ) + ( VCC ) + ( \Div3|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_day(0),
	cin => \Div3|auto_generated|divider|divider|op_5~26_cout\,
	cout => \Div3|auto_generated|divider|divider|op_5~22_cout\);

-- Location: MLABCELL_X87_Y10_N36
\Div3|auto_generated|divider|divider|op_5~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~18_cout\ = CARRY(( (!\Div3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div3|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\Div3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (day(1))) ) + ( GND ) + ( \Div3|auto_generated|divider|divider|op_5~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_day(1),
	datad => \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	cin => \Div3|auto_generated|divider|divider|op_5~22_cout\,
	cout => \Div3|auto_generated|divider|divider|op_5~18_cout\);

-- Location: MLABCELL_X87_Y10_N39
\Div3|auto_generated|divider|divider|op_5~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~14_cout\ = CARRY(( (\Div3|auto_generated|divider|divider|StageOut[16]~3_combout\) # (\Div3|auto_generated|divider|divider|StageOut[16]~2_combout\) ) + ( VCC ) + ( \Div3|auto_generated|divider|divider|op_5~18_cout\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|ALT_INV_StageOut[16]~2_combout\,
	datad => \Div3|auto_generated|divider|divider|ALT_INV_StageOut[16]~3_combout\,
	cin => \Div3|auto_generated|divider|divider|op_5~18_cout\,
	cout => \Div3|auto_generated|divider|divider|op_5~14_cout\);

-- Location: MLABCELL_X87_Y10_N42
\Div3|auto_generated|divider|divider|op_5~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~10_cout\ = CARRY(( (!\Div3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div3|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\Div3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (day(3))) ) + ( GND ) + ( \Div3|auto_generated|divider|divider|op_5~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_day(3),
	datad => \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	cin => \Div3|auto_generated|divider|divider|op_5~14_cout\,
	cout => \Div3|auto_generated|divider|divider|op_5~10_cout\);

-- Location: MLABCELL_X87_Y10_N45
\Div3|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (\Div3|auto_generated|divider|divider|StageOut[18]~1_combout\) # (\Div3|auto_generated|divider|divider|StageOut[18]~0_combout\) ) + ( VCC ) + ( \Div3|auto_generated|divider|divider|op_5~10_cout\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div3|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\,
	datad => \Div3|auto_generated|divider|divider|ALT_INV_StageOut[18]~1_combout\,
	cin => \Div3|auto_generated|divider|divider|op_5~10_cout\,
	cout => \Div3|auto_generated|divider|divider|op_5~6_cout\);

-- Location: MLABCELL_X87_Y10_N48
\Div3|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div3|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div3|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div3|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \Div3|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X83_Y10_N0
\Selector9~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~8_combout\ = ( \Equal2~0_combout\ & ( !\Div3|auto_generated|divider|divider|op_5~1_sumout\ & ( (!\char~1_combout\ & (\char~3_combout\ & (!\char~4_combout\ & \Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_char~3_combout\,
	datac => \ALT_INV_char~4_combout\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \Div3|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Selector9~8_combout\);

-- Location: MLABCELL_X82_Y11_N33
\Selector9~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~11_combout\ = ( month(0) & ( (!month(1) & !month(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(1),
	datac => ALT_INV_month(3),
	dataf => ALT_INV_month(0),
	combout => \Selector9~11_combout\);

-- Location: LABCELL_X83_Y10_N6
\Selector9~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~12_combout\ = ( \char~1_combout\ & ( \Equal0~5_combout\ & ( (\char~2_combout\ & (!\Selector9~11_combout\ & (\Equal25~5_combout\ & \char~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~2_combout\,
	datab => \ALT_INV_Selector9~11_combout\,
	datac => \ALT_INV_Equal25~5_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_char~1_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Selector9~12_combout\);

-- Location: MLABCELL_X84_Y8_N36
\Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = ( \Add0~9_sumout\ & ( \LessThan0~1_combout\ & ( \Add0~1_sumout\ ) ) ) # ( \Add0~9_sumout\ & ( !\LessThan0~1_combout\ & ( (!\LessThan0~3_combout\ & (\Add0~1_sumout\)) # (\LessThan0~3_combout\ & (((char(1) & char(2))))) ) ) ) # ( 
-- !\Add0~9_sumout\ & ( !\LessThan0~1_combout\ & ( (char(1) & (\LessThan0~3_combout\ & char(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011010100000101001100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => ALT_INV_char(1),
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => ALT_INV_char(2),
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \Equal6~0_combout\);

-- Location: MLABCELL_X84_Y12_N0
\Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\ = SUM(( sec(2) ) + ( !VCC ) + ( !VCC ))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ = CARRY(( sec(2) ) + ( !VCC ) + ( !VCC ))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sec(2),
	cin => GND,
	sharein => GND,
	sumout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	shareout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~19\);

-- Location: MLABCELL_X84_Y12_N3
\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ = SUM(( sec(3) ) + ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ = CARRY(( sec(3) ) + ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~19\ ) + ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~18\ ))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sec(3),
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~18\,
	sharein => \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~19\,
	sumout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	shareout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~15\);

-- Location: MLABCELL_X84_Y12_N6
\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ = SUM(( !sec(4) ) + ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ = CARRY(( !sec(4) ) + ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~15\ ) + ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~14\ ))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ = SHARE(sec(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sec(4),
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~14\,
	sharein => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~15\,
	sumout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	shareout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~11\);

-- Location: MLABCELL_X84_Y12_N9
\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ = SUM(( sec(5) ) + ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ = CARRY(( sec(5) ) + ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~11\ ) + ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~10\ ))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sec(5),
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~10\,
	sharein => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~11\,
	sumout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	shareout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: MLABCELL_X84_Y12_N12
\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ ) + ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~6\,
	sharein => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	sumout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: MLABCELL_X84_Y12_N48
\Div2|auto_generated|divider|divider|StageOut[18]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~2_combout\ = ( !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~5_sumout\,
	dataf => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~2_combout\);

-- Location: MLABCELL_X84_Y12_N33
\Div2|auto_generated|divider|divider|StageOut[18]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~3_combout\ = ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( sec(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sec(5),
	dataf => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: MLABCELL_X84_Y12_N57
\Div2|auto_generated|divider|divider|StageOut[16]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~4_combout\ = ( !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~13_sumout\,
	dataf => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: MLABCELL_X84_Y12_N51
\Div2|auto_generated|divider|divider|StageOut[16]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~5_combout\ = ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( sec(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sec(3),
	dataf => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LABCELL_X83_Y12_N30
\Div2|auto_generated|divider|divider|op_5~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div2|auto_generated|divider|divider|op_5~26_cout\);

-- Location: LABCELL_X83_Y12_N33
\Div2|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( sec(1) ) + ( VCC ) + ( \Div2|auto_generated|divider|divider|op_5~26_cout\ ))
-- \Div2|auto_generated|divider|divider|op_5~22\ = CARRY(( sec(1) ) + ( VCC ) + ( \Div2|auto_generated|divider|divider|op_5~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sec(1),
	cin => \Div2|auto_generated|divider|divider|op_5~26_cout\,
	sumout => \Div2|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Div2|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X83_Y12_N36
\Div2|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (sec(2))) ) + ( GND ) + ( \Div2|auto_generated|divider|divider|op_5~22\ ))
-- \Div2|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\))) # 
-- (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (sec(2))) ) + ( GND ) + ( \Div2|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_sec(2),
	datad => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	cin => \Div2|auto_generated|divider|divider|op_5~22\,
	sumout => \Div2|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Div2|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X83_Y12_N39
\Div2|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\Div2|auto_generated|divider|divider|StageOut[16]~5_combout\) # (\Div2|auto_generated|divider|divider|StageOut[16]~4_combout\) ) + ( VCC ) + ( \Div2|auto_generated|divider|divider|op_5~18\ ))
-- \Div2|auto_generated|divider|divider|op_5~14\ = CARRY(( (\Div2|auto_generated|divider|divider|StageOut[16]~5_combout\) # (\Div2|auto_generated|divider|divider|StageOut[16]~4_combout\) ) + ( VCC ) + ( \Div2|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	cin => \Div2|auto_generated|divider|divider|op_5~18\,
	sumout => \Div2|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Div2|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X83_Y12_N42
\Div2|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (sec(4))) ) + ( GND ) + ( \Div2|auto_generated|divider|divider|op_5~14\ ))
-- \Div2|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\))) # 
-- (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (sec(4))) ) + ( GND ) + ( \Div2|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_sec(4),
	datad => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	cin => \Div2|auto_generated|divider|divider|op_5~14\,
	sumout => \Div2|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Div2|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X83_Y12_N45
\Div2|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (\Div2|auto_generated|divider|divider|StageOut[18]~3_combout\) # (\Div2|auto_generated|divider|divider|StageOut[18]~2_combout\) ) + ( VCC ) + ( \Div2|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|ALT_INV_StageOut[18]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|ALT_INV_StageOut[18]~3_combout\,
	cin => \Div2|auto_generated|divider|divider|op_5~10\,
	cout => \Div2|auto_generated|divider|divider|op_5~6_cout\);

-- Location: LABCELL_X83_Y12_N48
\Div2|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div2|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \Div2|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X83_Y12_N54
\Div2|auto_generated|divider|divider|StageOut[17]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~0_combout\ = ( !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~9_sumout\,
	dataf => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~0_combout\);

-- Location: LABCELL_X83_Y12_N0
\Div2|auto_generated|divider|divider|StageOut[17]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[17]~1_combout\ = ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( sec(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sec(4),
	dataf => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[17]~1_combout\);

-- Location: MLABCELL_X84_Y12_N21
\Div2|auto_generated|divider|divider|StageOut[16]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[16]~6_combout\ = ( \Div2|auto_generated|divider|divider|StageOut[16]~5_combout\ ) # ( !\Div2|auto_generated|divider|divider|StageOut[16]~5_combout\ & ( 
-- \Div2|auto_generated|divider|divider|StageOut[16]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Div2|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\,
	dataf => \Div2|auto_generated|divider|divider|ALT_INV_StageOut[16]~5_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LABCELL_X83_Y12_N57
\Div2|auto_generated|divider|divider|StageOut[15]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[15]~7_combout\ = ( sec(2) & ( (\Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\) # (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) ) # ( !sec(2) & ( 
-- (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \Div2|auto_generated|divider|divider|add_sub_3_result_int[0]~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~17_sumout\,
	dataf => ALT_INV_sec(2),
	combout => \Div2|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LABCELL_X83_Y12_N6
\Div2|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div2|auto_generated|divider|divider|op_6~26_cout\);

-- Location: LABCELL_X83_Y12_N9
\Div2|auto_generated|divider|divider|op_6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~22_cout\ = CARRY(( sec(0) ) + ( VCC ) + ( \Div2|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sec(0),
	cin => \Div2|auto_generated|divider|divider|op_6~26_cout\,
	cout => \Div2|auto_generated|divider|divider|op_6~22_cout\);

-- Location: LABCELL_X83_Y12_N12
\Div2|auto_generated|divider|divider|op_6~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~18_cout\ = CARRY(( GND ) + ( (!\Div2|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div2|auto_generated|divider|divider|op_5~21_sumout\))) # (\Div2|auto_generated|divider|divider|op_5~1_sumout\ & (sec(1))) ) + 
-- ( \Div2|auto_generated|divider|divider|op_6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_sec(1),
	datac => \Div2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Div2|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \Div2|auto_generated|divider|divider|op_6~22_cout\,
	cout => \Div2|auto_generated|divider|divider|op_6~18_cout\);

-- Location: LABCELL_X83_Y12_N15
\Div2|auto_generated|divider|divider|op_6~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~14_cout\ = CARRY(( (!\Div2|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div2|auto_generated|divider|divider|op_5~17_sumout\))) # (\Div2|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div2|auto_generated|divider|divider|StageOut[15]~7_combout\)) ) + ( VCC ) + ( \Div2|auto_generated|divider|divider|op_6~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div2|auto_generated|divider|divider|ALT_INV_StageOut[15]~7_combout\,
	datad => \Div2|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \Div2|auto_generated|divider|divider|op_6~18_cout\,
	cout => \Div2|auto_generated|divider|divider|op_6~14_cout\);

-- Location: LABCELL_X83_Y12_N18
\Div2|auto_generated|divider|divider|op_6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~10_cout\ = CARRY(( (!\Div2|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div2|auto_generated|divider|divider|op_5~13_sumout\))) # (\Div2|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div2|auto_generated|divider|divider|StageOut[16]~6_combout\)) ) + ( GND ) + ( \Div2|auto_generated|divider|divider|op_6~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div2|auto_generated|divider|divider|ALT_INV_StageOut[16]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Div2|auto_generated|divider|divider|op_6~14_cout\,
	cout => \Div2|auto_generated|divider|divider|op_6~10_cout\);

-- Location: LABCELL_X83_Y12_N21
\Div2|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( (!\Div2|auto_generated|divider|divider|op_5~1_sumout\ & (((\Div2|auto_generated|divider|divider|op_5~9_sumout\)))) # (\Div2|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div2|auto_generated|divider|divider|StageOut[17]~1_combout\)) # (\Div2|auto_generated|divider|divider|StageOut[17]~0_combout\))) ) + ( VCC ) + ( \Div2|auto_generated|divider|divider|op_6~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Div2|auto_generated|divider|divider|ALT_INV_StageOut[17]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datad => \Div2|auto_generated|divider|divider|ALT_INV_StageOut[17]~1_combout\,
	cin => \Div2|auto_generated|divider|divider|op_6~10_cout\,
	cout => \Div2|auto_generated|divider|divider|op_6~6_cout\);

-- Location: LABCELL_X83_Y12_N24
\Div2|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div2|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \Div2|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X83_Y10_N36
\Selector9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~9_combout\ = ( !\char~1_combout\ & ( !\Div2|auto_generated|divider|divider|op_6~1_sumout\ & ( (\Equal0~13_combout\ & (\Equal0~10_combout\ & (\Equal6~0_combout\ & \Equal0~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~13_combout\,
	datab => \ALT_INV_Equal0~10_combout\,
	datac => \ALT_INV_Equal6~0_combout\,
	datad => \ALT_INV_Equal0~7_combout\,
	datae => \ALT_INV_char~1_combout\,
	dataf => \Div2|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Selector9~9_combout\);

-- Location: LABCELL_X85_Y9_N30
\Mod2|auto_generated|divider|divider|op_6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_6~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod2|auto_generated|divider|divider|op_6~26_cout\);

-- Location: LABCELL_X85_Y9_N33
\Mod2|auto_generated|divider|divider|op_6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_6~5_sumout\ = SUM(( sec(0) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_6~26_cout\ ))
-- \Mod2|auto_generated|divider|divider|op_6~6\ = CARRY(( sec(0) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sec(0),
	cin => \Mod2|auto_generated|divider|divider|op_6~26_cout\,
	sumout => \Mod2|auto_generated|divider|divider|op_6~5_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_6~6\);

-- Location: LABCELL_X85_Y12_N0
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ = SUM(( sec(2) ) + ( !VCC ) + ( !VCC ))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ = CARRY(( sec(2) ) + ( !VCC ) + ( !VCC ))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sec(2),
	cin => GND,
	sharein => GND,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~7\);

-- Location: LABCELL_X85_Y12_N3
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ = SUM(( sec(3) ) + ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ = CARRY(( sec(3) ) + ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~7\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~6\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sec(3),
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~6\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~7\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~11\);

-- Location: LABCELL_X85_Y12_N6
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\ = SUM(( !sec(4) ) + ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ = CARRY(( !sec(4) ) + ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~11\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~10\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ = SHARE(sec(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111100000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sec(4),
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~10\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~11\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~18\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~19\);

-- Location: LABCELL_X85_Y12_N9
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\ = SUM(( sec(5) ) + ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~14\ = CARRY(( sec(5) ) + ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~19\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~18\ ))
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sec(5),
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~18\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~19\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~14\,
	shareout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~15\);

-- Location: LABCELL_X85_Y12_N12
\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ = SUM(( VCC ) + ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~15\ ) + ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~14\,
	sharein => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~15\,
	sumout => \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\);

-- Location: LABCELL_X85_Y12_N45
\Mod2|auto_generated|divider|divider|StageOut[21]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~4_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( sec(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sec(5),
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~4_combout\);

-- Location: LABCELL_X85_Y12_N48
\Mod2|auto_generated|divider|divider|StageOut[21]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~5_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[3]~13_sumout\ & ( !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~13_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~5_combout\);

-- Location: LABCELL_X85_Y12_N42
\Mod2|auto_generated|divider|divider|StageOut[19]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[19]~1_combout\ = ( !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[19]~1_combout\);

-- Location: LABCELL_X85_Y12_N54
\Mod2|auto_generated|divider|divider|StageOut[19]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[19]~2_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( sec(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sec(3),
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[19]~2_combout\);

-- Location: LABCELL_X85_Y12_N18
\Mod2|auto_generated|divider|divider|op_5~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_5~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod2|auto_generated|divider|divider|op_5~22_cout\);

-- Location: LABCELL_X85_Y12_N21
\Mod2|auto_generated|divider|divider|op_5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_5~5_sumout\ = SUM(( sec(1) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_5~22_cout\ ))
-- \Mod2|auto_generated|divider|divider|op_5~6\ = CARRY(( sec(1) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_5~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sec(1),
	cin => \Mod2|auto_generated|divider|divider|op_5~22_cout\,
	sumout => \Mod2|auto_generated|divider|divider|op_5~5_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_5~6\);

-- Location: LABCELL_X85_Y12_N24
\Mod2|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (sec(2))) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_5~6\ ))
-- \Mod2|auto_generated|divider|divider|op_5~10\ = CARRY(( (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (sec(2))) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_sec(2),
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_5~6\,
	sumout => \Mod2|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X85_Y12_N27
\Mod2|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (\Mod2|auto_generated|divider|divider|StageOut[19]~2_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[19]~1_combout\) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_5~10\ ))
-- \Mod2|auto_generated|divider|divider|op_5~14\ = CARRY(( (\Mod2|auto_generated|divider|divider|StageOut[19]~2_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[19]~1_combout\) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_5~10\,
	sumout => \Mod2|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X85_Y12_N30
\Mod2|auto_generated|divider|divider|op_5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_5~25_sumout\ = SUM(( (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (sec(4))) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_5~14\ ))
-- \Mod2|auto_generated|divider|divider|op_5~26\ = CARRY(( (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\))) # 
-- (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (sec(4))) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_sec(4),
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_5~14\,
	sumout => \Mod2|auto_generated|divider|divider|op_5~25_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_5~26\);

-- Location: LABCELL_X85_Y12_N33
\Mod2|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (\Mod2|auto_generated|divider|divider|StageOut[21]~4_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[21]~5_combout\) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_5~26\ ))
-- \Mod2|auto_generated|divider|divider|op_5~18\ = CARRY(( (\Mod2|auto_generated|divider|divider|StageOut[21]~4_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[21]~5_combout\) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_5~26\,
	sumout => \Mod2|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X85_Y12_N36
\Mod2|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|op_5~18\,
	sumout => \Mod2|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: MLABCELL_X84_Y12_N27
\Mod2|auto_generated|divider|divider|StageOut[20]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[20]~6_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[2]~17_sumout\ & ( !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~17_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[20]~6_combout\);

-- Location: MLABCELL_X84_Y12_N36
\Mod2|auto_generated|divider|divider|StageOut[20]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[20]~7_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( sec(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sec(4),
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[20]~7_combout\);

-- Location: LABCELL_X85_Y12_N51
\Mod2|auto_generated|divider|divider|StageOut[19]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[19]~3_combout\ = ( \Mod2|auto_generated|divider|divider|StageOut[19]~1_combout\ ) # ( !\Mod2|auto_generated|divider|divider|StageOut[19]~1_combout\ & ( 
-- \Mod2|auto_generated|divider|divider|StageOut[19]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[19]~3_combout\);

-- Location: MLABCELL_X84_Y12_N24
\Mod2|auto_generated|divider|divider|StageOut[18]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[18]~0_combout\ = ( \Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( (!\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (sec(2)) ) ) # ( 
-- !\Mod2|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\ & ( (\Mod2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & sec(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_sec(2),
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LABCELL_X85_Y9_N36
\Mod2|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod2|auto_generated|divider|divider|op_5~5_sumout\))) # (\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & (sec(1))) ) + ( GND ) + ( 
-- \Mod2|auto_generated|divider|divider|op_6~6\ ))
-- \Mod2|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod2|auto_generated|divider|divider|op_5~5_sumout\))) # (\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & (sec(1))) ) + ( GND ) + ( 
-- \Mod2|auto_generated|divider|divider|op_6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_sec(1),
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_6~6\,
	sumout => \Mod2|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_6~10\);

-- Location: LABCELL_X85_Y9_N39
\Mod2|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod2|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod2|auto_generated|divider|divider|StageOut[18]~0_combout\)) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_6~10\ ))
-- \Mod2|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod2|auto_generated|divider|divider|op_5~9_sumout\))) # (\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod2|auto_generated|divider|divider|StageOut[18]~0_combout\)) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_6~10\,
	sumout => \Mod2|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_6~14\);

-- Location: LABCELL_X85_Y9_N42
\Mod2|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( (!\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod2|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod2|auto_generated|divider|divider|StageOut[19]~3_combout\)) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_6~14\ ))
-- \Mod2|auto_generated|divider|divider|op_6~18\ = CARRY(( (!\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod2|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod2|auto_generated|divider|divider|StageOut[19]~3_combout\)) ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_6~14\,
	sumout => \Mod2|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Mod2|auto_generated|divider|divider|op_6~18\);

-- Location: LABCELL_X85_Y9_N45
\Mod2|auto_generated|divider|divider|op_6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_6~30_cout\ = CARRY(( (!\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod2|auto_generated|divider|divider|op_5~25_sumout\)))) # (\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod2|auto_generated|divider|divider|StageOut[20]~7_combout\)) # (\Mod2|auto_generated|divider|divider|StageOut[20]~6_combout\))) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[20]~6_combout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\,
	cin => \Mod2|auto_generated|divider|divider|op_6~18\,
	cout => \Mod2|auto_generated|divider|divider|op_6~30_cout\);

-- Location: LABCELL_X85_Y9_N48
\Mod2|auto_generated|divider|divider|op_6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_6~22_cout\ = CARRY(( (!\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & (((\Mod2|auto_generated|divider|divider|op_5~17_sumout\)))) # (\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Mod2|auto_generated|divider|divider|StageOut[21]~5_combout\)) # (\Mod2|auto_generated|divider|divider|StageOut[21]~4_combout\))) ) + ( VCC ) + ( \Mod2|auto_generated|divider|divider|op_6~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	cin => \Mod2|auto_generated|divider|divider|op_6~30_cout\,
	cout => \Mod2|auto_generated|divider|divider|op_6~22_cout\);

-- Location: LABCELL_X85_Y9_N51
\Mod2|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod2|auto_generated|divider|divider|op_6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|op_6~22_cout\,
	sumout => \Mod2|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X85_Y9_N6
\Selector9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~13_combout\ = ( \Mod2|auto_generated|divider|divider|op_6~1_sumout\ & ( sec(0) ) ) # ( !\Mod2|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod2|auto_generated|divider|divider|op_6~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_sec(0),
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_op_6~5_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Selector9~13_combout\);

-- Location: LABCELL_X83_Y10_N42
\Selector9~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~14_combout\ = ( !\Selector9~9_combout\ & ( \Selector9~13_combout\ & ( (!\Selector9~10_combout\ & (!\Equal7~1_combout\ & (!\Selector9~8_combout\ & !\Selector9~12_combout\))) ) ) ) # ( !\Selector9~9_combout\ & ( !\Selector9~13_combout\ & ( 
-- (!\Selector9~10_combout\ & (!\Selector9~8_combout\ & !\Selector9~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector9~10_combout\,
	datab => \ALT_INV_Equal7~1_combout\,
	datac => \ALT_INV_Selector9~8_combout\,
	datad => \ALT_INV_Selector9~12_combout\,
	datae => \ALT_INV_Selector9~9_combout\,
	dataf => \ALT_INV_Selector9~13_combout\,
	combout => \Selector9~14_combout\);

-- Location: LABCELL_X83_Y10_N54
\Selector9~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~15_combout\ = ( \Selector9~2_combout\ & ( \Selector9~14_combout\ ) ) # ( !\Selector9~2_combout\ & ( \Selector9~14_combout\ & ( (((\Selector9~7_combout\) # (\Selector9~6_combout\)) # (\Selector9~0_combout\)) # (\Selector9~4_combout\) ) ) ) # ( 
-- \Selector9~2_combout\ & ( !\Selector9~14_combout\ ) ) # ( !\Selector9~2_combout\ & ( !\Selector9~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector9~4_combout\,
	datab => \ALT_INV_Selector9~0_combout\,
	datac => \ALT_INV_Selector9~6_combout\,
	datad => \ALT_INV_Selector9~7_combout\,
	datae => \ALT_INV_Selector9~2_combout\,
	dataf => \ALT_INV_Selector9~14_combout\,
	combout => \Selector9~15_combout\);

-- Location: FF_X83_Y10_N55
\lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector9~15_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(0));

-- Location: MLABCELL_X82_Y4_N0
\dut|lcd_data[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|lcd_data[2]~3_combout\ = ( \dut|lcd_data[2]~1_combout\ & ( \dut|state~6_combout\ & ( (!\dut|state.send~q\ & \dut|rw~0_combout\) ) ) ) # ( !\dut|lcd_data[2]~1_combout\ & ( \dut|state~6_combout\ & ( (!\dut|state.send~q\ & \dut|rw~0_combout\) ) ) ) # ( 
-- \dut|lcd_data[2]~1_combout\ & ( !\dut|state~6_combout\ & ( (!\dut|state.send~q\ & (\dut|rw~0_combout\ & ((!\dut|state.initialize~q\) # (\dut|lcd_data[2]~2_combout\)))) ) ) ) # ( !\dut|lcd_data[2]~1_combout\ & ( !\dut|state~6_combout\ & ( 
-- (!\dut|state.send~q\ & \dut|rw~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.initialize~q\,
	datab => \dut|ALT_INV_state.send~q\,
	datac => \dut|ALT_INV_lcd_data[2]~2_combout\,
	datad => \dut|ALT_INV_rw~0_combout\,
	datae => \dut|ALT_INV_lcd_data[2]~1_combout\,
	dataf => \dut|ALT_INV_state~6_combout\,
	combout => \dut|lcd_data[2]~3_combout\);

-- Location: FF_X82_Y4_N52
\dut|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector45~1_combout\,
	asdata => lcd_bus(0),
	sclr => \dut|lcd_data[2]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(0));

-- Location: LABCELL_X83_Y4_N0
\dut|Selector46~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~9_combout\ = ( !\dut|LessThan5~1_combout\ & ( !\dut|Add0~1_sumout\ & ( (\dut|LessThan3~2_combout\ & (\dut|LessThan3~1_combout\ & (\dut|LessThan3~0_combout\ & \dut|busy~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~2_combout\,
	datab => \dut|ALT_INV_LessThan3~1_combout\,
	datac => \dut|ALT_INV_LessThan3~0_combout\,
	datad => \dut|ALT_INV_busy~2_combout\,
	datae => \dut|ALT_INV_LessThan5~1_combout\,
	dataf => \dut|ALT_INV_Add0~1_sumout\,
	combout => \dut|Selector46~9_combout\);

-- Location: MLABCELL_X82_Y4_N33
\dut|busy~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|busy~6_combout\ = ( \dut|LessThan3~6_combout\ & ( !\dut|Add0~53_sumout\ & ( (!\dut|Add0~9_sumout\ & (!\dut|Add0~5_sumout\ & (\dut|LessThan3~0_combout\ & \dut|busy~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~9_sumout\,
	datab => \dut|ALT_INV_Add0~5_sumout\,
	datac => \dut|ALT_INV_LessThan3~0_combout\,
	datad => \dut|ALT_INV_busy~4_combout\,
	datae => \dut|ALT_INV_LessThan3~6_combout\,
	dataf => \dut|ALT_INV_Add0~53_sumout\,
	combout => \dut|busy~6_combout\);

-- Location: LABCELL_X83_Y4_N18
\dut|Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector44~0_combout\ = ( \dut|LessThan6~3_combout\ & ( \dut|LessThan3~0_combout\ & ( (!\dut|LessThan7~1_combout\ & (\dut|LessThan3~1_combout\ & (!\dut|Add0~1_sumout\ & \dut|busy~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan7~1_combout\,
	datab => \dut|ALT_INV_LessThan3~1_combout\,
	datac => \dut|ALT_INV_Add0~1_sumout\,
	datad => \dut|ALT_INV_busy~2_combout\,
	datae => \dut|ALT_INV_LessThan6~3_combout\,
	dataf => \dut|ALT_INV_LessThan3~0_combout\,
	combout => \dut|Selector44~0_combout\);

-- Location: LABCELL_X83_Y4_N3
\dut|LessThan4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan4~3_combout\ = ( !\dut|LessThan4~1_combout\ & ( !\dut|Add0~1_sumout\ & ( (\dut|LessThan3~2_combout\ & (\dut|LessThan3~1_combout\ & (\dut|busy~2_combout\ & \dut|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~2_combout\,
	datab => \dut|ALT_INV_LessThan3~1_combout\,
	datac => \dut|ALT_INV_busy~2_combout\,
	datad => \dut|ALT_INV_LessThan3~0_combout\,
	datae => \dut|ALT_INV_LessThan4~1_combout\,
	dataf => \dut|ALT_INV_Add0~1_sumout\,
	combout => \dut|LessThan4~3_combout\);

-- Location: LABCELL_X83_Y4_N24
\dut|Selector44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector44~1_combout\ = ( !\dut|LessThan4~3_combout\ & ( \dut|state.initialize~DUPLICATE_q\ & ( (!\dut|Selector46~9_combout\ & (!\dut|busy~6_combout\ & (\dut|Selector44~0_combout\ & !\dut|Add0~117_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Selector46~9_combout\,
	datab => \dut|ALT_INV_busy~6_combout\,
	datac => \dut|ALT_INV_Selector44~0_combout\,
	datad => \dut|ALT_INV_Add0~117_sumout\,
	datae => \dut|ALT_INV_LessThan4~3_combout\,
	dataf => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	combout => \dut|Selector44~1_combout\);

-- Location: LABCELL_X85_Y6_N54
\Selector8~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~11_combout\ = ( \char~2_combout\ & ( \Equal0~5_combout\ & ( (!\char~3_combout\ & (!\char~1_combout\ & (!\char~0_combout\ $ (!\char~4_combout\)))) ) ) ) # ( !\char~2_combout\ & ( \Equal0~5_combout\ & ( (\char~3_combout\ & (\char~4_combout\ & 
-- (!\char~0_combout\ $ (!\char~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100100100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_char~3_combout\,
	datac => \ALT_INV_char~1_combout\,
	datad => \ALT_INV_char~4_combout\,
	datae => \ALT_INV_char~2_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Selector8~11_combout\);

-- Location: LABCELL_X80_Y10_N24
\Selector8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~9_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( hour(1) ) ) # ( !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[1]~9_sumout\,
	datad => ALT_INV_hour(1),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Selector8~9_combout\);

-- Location: LABCELL_X85_Y6_N30
\Selector8~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~10_combout\ = ( \char~2_combout\ & ( \Equal0~5_combout\ & ( (!\char~1_combout\ & (\Selector8~9_combout\ & (\Equal25~5_combout\ & !\char~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_Selector8~9_combout\,
	datac => \ALT_INV_Equal25~5_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_char~2_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Selector8~10_combout\);

-- Location: LABCELL_X85_Y6_N48
\Selector8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~5_combout\ = ( \char~3_combout\ & ( \Equal0~5_combout\ & ( (!\char~1_combout\ & (\char~4_combout\ & (\Equal6~0_combout\ & !\Div4|auto_generated|divider|divider|op_5~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_char~4_combout\,
	datac => \ALT_INV_Equal6~0_combout\,
	datad => \Div4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datae => \ALT_INV_char~3_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Selector8~5_combout\);

-- Location: LABCELL_X81_Y10_N27
\Mux64~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = ( month(1) & ( month(0) & ( !month(3) ) ) ) # ( !month(1) & ( month(0) & ( (month(3)) # (month(2)) ) ) ) # ( month(1) & ( !month(0) & ( !month(2) ) ) ) # ( !month(1) & ( !month(0) & ( (!month(2) & !month(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000101010101010101001110111011101111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(2),
	datab => ALT_INV_month(3),
	datae => ALT_INV_month(1),
	dataf => ALT_INV_month(0),
	combout => \Mux64~0_combout\);

-- Location: LABCELL_X85_Y6_N42
\Selector8~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~12_combout\ = ( \Equal0~7_combout\ & ( \Equal0~5_combout\ & ( (\Equal6~0_combout\ & ((!\char~1_combout\ & ((!\Div2|auto_generated|divider|divider|op_5~1_sumout\))) # (\char~1_combout\ & (\Mux64~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_Mux64~0_combout\,
	datac => \ALT_INV_Equal6~0_combout\,
	datad => \Div2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datae => \ALT_INV_Equal0~7_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Selector8~12_combout\);

-- Location: LABCELL_X85_Y6_N36
\Selector8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~6_combout\ = ( \Equal2~0_combout\ & ( \Equal0~5_combout\ & ( (!\char~1_combout\ & (!\Div3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (\char~3_combout\ & !\char~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \Div3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \ALT_INV_char~3_combout\,
	datad => \ALT_INV_char~4_combout\,
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Selector8~6_combout\);

-- Location: LABCELL_X83_Y11_N39
\Selector8~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~7_combout\ = ( \Mod3|auto_generated|divider|divider|op_5~9_sumout\ & ( (!\Mod3|auto_generated|divider|divider|op_5~1_sumout\) # ((!\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- ((\Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # (\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (day(1)))) ) ) # ( !\Mod3|auto_generated|divider|divider|op_5~9_sumout\ & ( 
-- (\Mod3|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ((\Mod3|auto_generated|divider|divider|add_sub_3_result_int[0]~5_sumout\))) # 
-- (\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & (day(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000010000110111110001111111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_day(1),
	datab => \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \Mod3|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[0]~5_sumout\,
	dataf => \Mod3|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \Selector8~7_combout\);

-- Location: LABCELL_X85_Y6_N24
\Selector8~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~8_combout\ = ( \Equal0~5_combout\ & ( \Selector8~7_combout\ & ( (!\char~1_combout\ & (\char~4_combout\ & (\Equal2~0_combout\ & \char~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_char~4_combout\,
	datac => \ALT_INV_Equal2~0_combout\,
	datad => \ALT_INV_char~3_combout\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_Selector8~7_combout\,
	combout => \Selector8~8_combout\);

-- Location: LABCELL_X85_Y6_N0
\Selector8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~13_combout\ = ( !\Selector8~6_combout\ & ( !\Selector8~8_combout\ & ( (!\Selector8~11_combout\ & (!\Selector8~10_combout\ & (!\Selector8~5_combout\ & !\Selector8~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector8~11_combout\,
	datab => \ALT_INV_Selector8~10_combout\,
	datac => \ALT_INV_Selector8~5_combout\,
	datad => \ALT_INV_Selector8~12_combout\,
	datae => \ALT_INV_Selector8~6_combout\,
	dataf => \ALT_INV_Selector8~8_combout\,
	combout => \Selector8~13_combout\);

-- Location: MLABCELL_X82_Y8_N54
\Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = ( \Mod4|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & (\Mod4|auto_generated|divider|divider|op_5~5_sumout\)) # (\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((year(1)))) ) ) # ( !\Mod4|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod4|auto_generated|divider|divider|op_6~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datab => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	datac => ALT_INV_year(1),
	datad => \Mod4|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	dataf => \Mod4|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Selector8~1_combout\);

-- Location: LABCELL_X85_Y10_N51
\Selector8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = ( \Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~5_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (min(1))) ) ) # ( !\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod1|auto_generated|divider|divider|op_6~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_min(1),
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Selector8~2_combout\);

-- Location: LABCELL_X85_Y9_N12
\Selector8~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~15_combout\ = ( \Mod2|auto_generated|divider|divider|op_5~1_sumout\ & ( sec(1) ) ) # ( !\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & ( \Mod2|auto_generated|divider|divider|op_5~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sec(1),
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~5_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Selector8~15_combout\);

-- Location: LABCELL_X81_Y10_N54
\Mux54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = ( month(1) & ( month(0) & ( (!month(3)) # (!month(2)) ) ) ) # ( month(1) & ( !month(0) & ( !month(3) $ (!month(2)) ) ) ) # ( !month(1) & ( !month(0) & ( !month(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000001111000011110000000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(3),
	datac => ALT_INV_month(2),
	datae => ALT_INV_month(1),
	dataf => ALT_INV_month(0),
	combout => \Mux54~0_combout\);

-- Location: MLABCELL_X84_Y6_N48
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \Equal0~11_combout\ & ( \Equal3~0_combout\ & ( (\Equal4~0_combout\ & ((!\char~1_combout\ & ((!\Div1|auto_generated|divider|divider|op_5~1_sumout\))) # (\char~1_combout\ & (\Mux54~0_combout\)))) ) ) ) # ( !\Equal0~11_combout\ & ( 
-- \Equal3~0_combout\ & ( (!\char~1_combout\ & (!\Div1|auto_generated|divider|divider|op_5~1_sumout\ & \Equal4~0_combout\)) ) ) ) # ( \Equal0~11_combout\ & ( !\Equal3~0_combout\ & ( (\Mux54~0_combout\ & (\char~1_combout\ & \Equal4~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100000000110000000000000011010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux54~0_combout\,
	datab => \ALT_INV_char~1_combout\,
	datac => \Div1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \ALT_INV_Equal4~0_combout\,
	datae => \ALT_INV_Equal0~11_combout\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: LABCELL_X79_Y10_N24
\Selector8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = ( month(1) & ( month(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_month(1),
	dataf => ALT_INV_month(3),
	combout => \Selector8~3_combout\);

-- Location: FF_X85_Y6_N13
\lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector8~14_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(1));

-- Location: MLABCELL_X84_Y6_N0
\Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = ( \Equal0~10_combout\ & ( \Equal0~13_combout\ & ( (\char~2_combout\ & (\char~1_combout\ & (\Equal25~5_combout\ & \char~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~2_combout\,
	datab => \ALT_INV_char~1_combout\,
	datac => \ALT_INV_Equal25~5_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_Equal0~10_combout\,
	dataf => \ALT_INV_Equal0~13_combout\,
	combout => \Equal13~0_combout\);

-- Location: MLABCELL_X84_Y6_N12
\Selector8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~4_combout\ = ( \WideNor0~0_combout\ & ( \WideNor0~1_combout\ & ( (!\Selector8~3_combout\ & (lcd_bus(1) & ((\Equal25~13_combout\)))) # (\Selector8~3_combout\ & (((lcd_bus(1) & \Equal25~13_combout\)) # (\Equal13~0_combout\))) ) ) ) # ( 
-- !\WideNor0~0_combout\ & ( \WideNor0~1_combout\ & ( (!\Selector8~3_combout\ & (lcd_bus(1) & ((\Equal25~13_combout\)))) # (\Selector8~3_combout\ & (((lcd_bus(1) & \Equal25~13_combout\)) # (\Equal13~0_combout\))) ) ) ) # ( \WideNor0~0_combout\ & ( 
-- !\WideNor0~1_combout\ & ( ((\Selector8~3_combout\ & \Equal13~0_combout\)) # (lcd_bus(1)) ) ) ) # ( !\WideNor0~0_combout\ & ( !\WideNor0~1_combout\ & ( (!\Selector8~3_combout\ & (lcd_bus(1) & ((\Equal25~13_combout\)))) # (\Selector8~3_combout\ & 
-- (((lcd_bus(1) & \Equal25~13_combout\)) # (\Equal13~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111001101110011011100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector8~3_combout\,
	datab => ALT_INV_lcd_bus(1),
	datac => \ALT_INV_Equal13~0_combout\,
	datad => \ALT_INV_Equal25~13_combout\,
	datae => \ALT_INV_WideNor0~0_combout\,
	dataf => \ALT_INV_WideNor0~1_combout\,
	combout => \Selector8~4_combout\);

-- Location: LABCELL_X85_Y6_N6
\Selector8~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~16_combout\ = ( !\Selector8~4_combout\ & ( \Mod2|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\Selector8~0_combout\ & ((!\Equal7~1_combout\) # (!\Selector8~15_combout\))) ) ) ) # ( !\Selector8~4_combout\ & ( 
-- !\Mod2|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\Selector8~0_combout\ & ((!\Equal7~1_combout\) # (!\Mod2|auto_generated|divider|divider|op_6~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000000000000000000011101110000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~1_combout\,
	datab => \ALT_INV_Selector8~15_combout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datad => \ALT_INV_Selector8~0_combout\,
	datae => \ALT_INV_Selector8~4_combout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Selector8~16_combout\);

-- Location: LABCELL_X85_Y6_N12
\Selector8~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~14_combout\ = ( \Selector8~2_combout\ & ( \Selector8~16_combout\ & ( ((!\Selector8~13_combout\) # ((\Equal23~0_combout\ & \Selector8~1_combout\))) # (\Equal4~1_combout\) ) ) ) # ( !\Selector8~2_combout\ & ( \Selector8~16_combout\ & ( 
-- (!\Selector8~13_combout\) # ((\Equal23~0_combout\ & \Selector8~1_combout\)) ) ) ) # ( \Selector8~2_combout\ & ( !\Selector8~16_combout\ ) ) # ( !\Selector8~2_combout\ & ( !\Selector8~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100111111010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~1_combout\,
	datab => \ALT_INV_Equal23~0_combout\,
	datac => \ALT_INV_Selector8~13_combout\,
	datad => \ALT_INV_Selector8~1_combout\,
	datae => \ALT_INV_Selector8~2_combout\,
	dataf => \ALT_INV_Selector8~16_combout\,
	combout => \Selector8~14_combout\);

-- Location: FF_X85_Y6_N14
\lcd_bus[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector8~14_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_bus[1]~DUPLICATE_q\);

-- Location: FF_X83_Y4_N25
\dut|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector44~1_combout\,
	asdata => \lcd_bus[1]~DUPLICATE_q\,
	sclr => \dut|lcd_data[2]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(1));

-- Location: LABCELL_X83_Y4_N51
\dut|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan2~2_combout\ = ( !\dut|LessThan2~1_combout\ & ( !\dut|Add0~73_sumout\ & ( (\dut|LessThan3~2_combout\ & (\dut|LessThan3~1_combout\ & (\dut|busy~2_combout\ & \dut|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~2_combout\,
	datab => \dut|ALT_INV_LessThan3~1_combout\,
	datac => \dut|ALT_INV_busy~2_combout\,
	datad => \dut|ALT_INV_LessThan3~0_combout\,
	datae => \dut|ALT_INV_LessThan2~1_combout\,
	dataf => \dut|ALT_INV_Add0~73_sumout\,
	combout => \dut|LessThan2~2_combout\);

-- Location: LABCELL_X80_Y4_N42
\dut|Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector42~0_combout\ = ( !\dut|Add0~1_sumout\ & ( \dut|state.initialize~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	dataf => \dut|ALT_INV_Add0~1_sumout\,
	combout => \dut|Selector42~0_combout\);

-- Location: LABCELL_X83_Y4_N30
\dut|Selector44~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector44~2_combout\ = ( \dut|LessThan4~1_combout\ & ( !\dut|Add0~1_sumout\ & ( (!\dut|LessThan5~1_combout\ & (\dut|LessThan3~4_combout\ & (\dut|LessThan3~2_combout\ & \dut|busy~2_combout\))) ) ) ) # ( !\dut|LessThan4~1_combout\ & ( 
-- !\dut|Add0~1_sumout\ & ( (\dut|LessThan3~4_combout\ & (\dut|LessThan3~2_combout\ & \dut|busy~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan5~1_combout\,
	datab => \dut|ALT_INV_LessThan3~4_combout\,
	datac => \dut|ALT_INV_LessThan3~2_combout\,
	datad => \dut|ALT_INV_busy~2_combout\,
	datae => \dut|ALT_INV_LessThan4~1_combout\,
	dataf => \dut|ALT_INV_Add0~1_sumout\,
	combout => \dut|Selector44~2_combout\);

-- Location: LABCELL_X83_Y4_N36
\dut|Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector43~0_combout\ = ( \dut|LessThan3~1_combout\ & ( \dut|LessThan3~0_combout\ & ( (!\dut|Add0~117_sumout\ & ((!\dut|LessThan3~2_combout\) # ((!\dut|LessThan1~2_combout\) # (!\dut|busy~2_combout\)))) ) ) ) # ( !\dut|LessThan3~1_combout\ & ( 
-- \dut|LessThan3~0_combout\ & ( !\dut|Add0~117_sumout\ ) ) ) # ( \dut|LessThan3~1_combout\ & ( !\dut|LessThan3~0_combout\ & ( !\dut|Add0~117_sumout\ ) ) ) # ( !\dut|LessThan3~1_combout\ & ( !\dut|LessThan3~0_combout\ & ( !\dut|Add0~117_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~2_combout\,
	datab => \dut|ALT_INV_Add0~117_sumout\,
	datac => \dut|ALT_INV_LessThan1~2_combout\,
	datad => \dut|ALT_INV_busy~2_combout\,
	datae => \dut|ALT_INV_LessThan3~1_combout\,
	dataf => \dut|ALT_INV_LessThan3~0_combout\,
	combout => \dut|Selector43~0_combout\);

-- Location: LABCELL_X83_Y4_N48
\dut|LessThan3~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~12_combout\ = ( !\dut|LessThan3~9_combout\ & ( !\dut|Add0~73_sumout\ & ( (\dut|LessThan3~2_combout\ & (\dut|LessThan3~1_combout\ & (\dut|LessThan3~0_combout\ & \dut|busy~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~2_combout\,
	datab => \dut|ALT_INV_LessThan3~1_combout\,
	datac => \dut|ALT_INV_LessThan3~0_combout\,
	datad => \dut|ALT_INV_busy~2_combout\,
	datae => \dut|ALT_INV_LessThan3~9_combout\,
	dataf => \dut|ALT_INV_Add0~73_sumout\,
	combout => \dut|LessThan3~12_combout\);

-- Location: LABCELL_X83_Y4_N54
\dut|Selector43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector43~1_combout\ = ( \dut|Selector43~0_combout\ & ( \dut|LessThan3~12_combout\ & ( (!\dut|LessThan2~2_combout\ & \dut|Selector42~0_combout\) ) ) ) # ( \dut|Selector43~0_combout\ & ( !\dut|LessThan3~12_combout\ & ( (!\dut|LessThan2~2_combout\ & 
-- (\dut|Selector42~0_combout\ & (\dut|Selector44~0_combout\ & !\dut|Selector44~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan2~2_combout\,
	datab => \dut|ALT_INV_Selector42~0_combout\,
	datac => \dut|ALT_INV_Selector44~0_combout\,
	datad => \dut|ALT_INV_Selector44~2_combout\,
	datae => \dut|ALT_INV_Selector43~0_combout\,
	dataf => \dut|ALT_INV_LessThan3~12_combout\,
	combout => \dut|Selector43~1_combout\);

-- Location: LABCELL_X83_Y10_N18
\Selector7~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~7_combout\ = ( \Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod1|auto_generated|divider|divider|op_6~13_sumout\ & ( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (\Mod1|auto_generated|divider|divider|op_5~9_sumout\)) # 
-- (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|StageOut[18]~0_combout\))) ) ) ) # ( !\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod1|auto_generated|divider|divider|op_6~13_sumout\ ) ) # ( 
-- \Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ( !\Mod1|auto_generated|divider|divider|op_6~13_sumout\ & ( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & (\Mod1|auto_generated|divider|divider|op_5~9_sumout\)) # 
-- (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|StageOut[18]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001110100011111111111111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	combout => \Selector7~7_combout\);

-- Location: MLABCELL_X82_Y10_N6
\Selector7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~6_combout\ = ( \Mod2|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & (\Mod2|auto_generated|divider|divider|op_5~9_sumout\)) # (\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[18]~0_combout\))) ) ) # ( !\Mod2|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod2|auto_generated|divider|divider|op_6~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Selector7~6_combout\);

-- Location: MLABCELL_X82_Y10_N33
\Selector7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~9_combout\ = ( \Mod4|auto_generated|divider|divider|op_5~1_sumout\ & ( \Mod4|auto_generated|divider|divider|StageOut[18]~0_combout\ ) ) # ( !\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \Mod4|auto_generated|divider|divider|op_5~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\,
	datad => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	dataf => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Selector7~9_combout\);

-- Location: LABCELL_X81_Y10_N0
\Mux53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = ( month(1) & ( month(0) & ( !month(2) ) ) ) # ( !month(1) & ( month(0) & ( (month(3) & month(2)) ) ) ) # ( month(1) & ( !month(0) & ( !month(2) ) ) ) # ( !month(1) & ( !month(0) & ( (!month(3) & month(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111100001111000000000011000000111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(3),
	datac => ALT_INV_month(2),
	datae => ALT_INV_month(1),
	dataf => ALT_INV_month(0),
	combout => \Mux53~0_combout\);

-- Location: LABCELL_X81_Y10_N21
\Mux63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = ( month(1) & ( month(0) & ( !month(2) $ (!month(3)) ) ) ) # ( !month(1) & ( month(0) & ( (!month(2) & month(3)) ) ) ) # ( month(1) & ( !month(0) & ( !month(2) $ (!month(3)) ) ) ) # ( !month(1) & ( !month(0) & ( (!month(2) & !month(3)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000011001100110011000100010001000100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(2),
	datab => ALT_INV_month(3),
	datae => ALT_INV_month(1),
	dataf => ALT_INV_month(0),
	combout => \Mux63~0_combout\);

-- Location: MLABCELL_X82_Y10_N0
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \Equal0~11_combout\ & ( \char~2_combout\ & ( (\char~1_combout\ & ((!\char~0_combout\) # (\Mux63~0_combout\))) ) ) ) # ( \Equal0~11_combout\ & ( !\char~2_combout\ & ( (\char~0_combout\ & (\Mux53~0_combout\ & \char~1_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_Mux53~0_combout\,
	datac => \ALT_INV_char~1_combout\,
	datad => \ALT_INV_Mux63~0_combout\,
	datae => \ALT_INV_Equal0~11_combout\,
	dataf => \ALT_INV_char~2_combout\,
	combout => \Selector7~0_combout\);

-- Location: LABCELL_X80_Y10_N21
\Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = ( hour(2) & ( (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\) # (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) ) ) # ( !hour(2) & ( 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	dataf => ALT_INV_hour(2),
	combout => \Selector7~1_combout\);

-- Location: MLABCELL_X84_Y10_N30
\Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = ( !\char~1_combout\ & ( \Equal3~0_combout\ & ( (!\char~0_combout\ & (((\char~2_combout\ & \Selector7~1_combout\)))) # (\char~0_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & 
-- (!\char~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datab => \ALT_INV_char~0_combout\,
	datac => \ALT_INV_char~2_combout\,
	datad => \ALT_INV_Selector7~1_combout\,
	datae => \ALT_INV_char~1_combout\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Selector7~2_combout\);

-- Location: MLABCELL_X82_Y10_N36
\Selector7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~10_combout\ = ( !\Selector7~0_combout\ & ( !\Selector7~2_combout\ & ( (!\Equal23~0_combout\) # ((!\Mod4|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Mod4|auto_generated|divider|divider|op_6~13_sumout\))) # 
-- (\Mod4|auto_generated|divider|divider|op_6~1_sumout\ & (!\Selector7~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111100010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector7~9_combout\,
	datab => \Mod4|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	datad => \ALT_INV_Equal23~0_combout\,
	datae => \ALT_INV_Selector7~0_combout\,
	dataf => \ALT_INV_Selector7~2_combout\,
	combout => \Selector7~10_combout\);

-- Location: LABCELL_X81_Y10_N9
\Mux58~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = ( month(1) & ( month(0) & ( !month(3) ) ) ) # ( !month(1) & ( month(0) & ( month(3) ) ) ) # ( month(1) & ( !month(0) & ( !month(2) $ (!month(3)) ) ) ) # ( !month(1) & ( !month(0) & ( (!month(2) & month(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011001100110011000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(2),
	datab => ALT_INV_month(3),
	datae => ALT_INV_month(1),
	dataf => ALT_INV_month(0),
	combout => \Mux58~0_combout\);

-- Location: MLABCELL_X82_Y10_N30
\Equal0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = ( \Equal0~12_combout\ & ( (\Equal0~7_combout\ & (\Equal0~3_combout\ & (!\char~1_combout\ & \Equal0~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~7_combout\,
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_char~1_combout\,
	datad => \ALT_INV_Equal0~10_combout\,
	dataf => \ALT_INV_Equal0~12_combout\,
	combout => \Equal0~14_combout\);

-- Location: MLABCELL_X82_Y9_N45
\Equal9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = ( \Equal25~5_combout\ & ( \char~2_combout\ & ( (\char~1_combout\ & (\Equal0~10_combout\ & (\Equal0~12_combout\ & \Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_Equal0~10_combout\,
	datac => \ALT_INV_Equal0~12_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_Equal25~5_combout\,
	dataf => \ALT_INV_char~2_combout\,
	combout => \Equal9~1_combout\);

-- Location: MLABCELL_X82_Y10_N12
\Selector7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~5_combout\ = ( \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( \Equal9~1_combout\ & ( (\Mux58~0_combout\ & \char~0_combout\) ) ) ) # ( !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( 
-- \Equal9~1_combout\ & ( (\char~0_combout\ & (((\char~2_combout\ & \Equal0~14_combout\)) # (\Mux58~0_combout\))) ) ) ) # ( !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( !\Equal9~1_combout\ & ( (\char~2_combout\ & 
-- (\char~0_combout\ & \Equal0~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000000000000011000001110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~2_combout\,
	datab => \ALT_INV_Mux58~0_combout\,
	datac => \ALT_INV_char~0_combout\,
	datad => \ALT_INV_Equal0~14_combout\,
	datae => \Div2|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	dataf => \ALT_INV_Equal9~1_combout\,
	combout => \Selector7~5_combout\);

-- Location: LABCELL_X83_Y11_N45
\Selector7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = ( \Mod3|auto_generated|divider|divider|StageOut[16]~0_combout\ & ( (!\Mod3|auto_generated|divider|divider|op_5~1_sumout\ & !\Mod3|auto_generated|divider|divider|op_5~13_sumout\) ) ) # ( 
-- !\Mod3|auto_generated|divider|divider|StageOut[16]~0_combout\ & ( (!\Mod3|auto_generated|divider|divider|op_5~1_sumout\ & ((!\Mod3|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod3|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (!\Mod3|auto_generated|divider|divider|StageOut[16]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000110000111111000011000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod3|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod3|auto_generated|divider|divider|ALT_INV_StageOut[16]~1_combout\,
	datad => \Mod3|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	dataf => \Mod3|auto_generated|divider|divider|ALT_INV_StageOut[16]~0_combout\,
	combout => \Selector7~3_combout\);

-- Location: LABCELL_X83_Y11_N6
\Selector7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = ( \Selector7~3_combout\ & ( \Equal15~0_combout\ & ( (\char~4_combout\ & (\char~0_combout\ & (!\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & \char~2_combout\))) ) ) ) # ( !\Selector7~3_combout\ & ( 
-- \Equal15~0_combout\ & ( (\char~4_combout\ & (\char~2_combout\ & ((!\char~0_combout\) # (!\Div4|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~4_combout\,
	datab => \ALT_INV_char~0_combout\,
	datac => \Div4|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datad => \ALT_INV_char~2_combout\,
	datae => \ALT_INV_Selector7~3_combout\,
	dataf => \ALT_INV_Equal15~0_combout\,
	combout => \Selector7~4_combout\);

-- Location: MLABCELL_X82_Y10_N42
\Selector7~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~11_combout\ = ( \WideNor0~0_combout\ & ( !\Selector7~4_combout\ & ( (!\Selector7~5_combout\ & ((!lcd_bus(2)) # ((!\Equal25~13_combout\ & \WideNor0~1_combout\)))) ) ) ) # ( !\WideNor0~0_combout\ & ( !\Selector7~4_combout\ & ( 
-- (!\Selector7~5_combout\ & ((!\Equal25~13_combout\) # (!lcd_bus(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000000000110011100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal25~13_combout\,
	datab => ALT_INV_lcd_bus(2),
	datac => \ALT_INV_WideNor0~1_combout\,
	datad => \ALT_INV_Selector7~5_combout\,
	datae => \ALT_INV_WideNor0~0_combout\,
	dataf => \ALT_INV_Selector7~4_combout\,
	combout => \Selector7~11_combout\);

-- Location: MLABCELL_X82_Y10_N24
\Selector7~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~8_combout\ = ( \Selector7~10_combout\ & ( \Selector7~11_combout\ & ( (!\Equal7~1_combout\ & (\Selector7~7_combout\ & (\Equal4~1_combout\))) # (\Equal7~1_combout\ & (((\Selector7~7_combout\ & \Equal4~1_combout\)) # (\Selector7~6_combout\))) ) ) 
-- ) # ( !\Selector7~10_combout\ & ( \Selector7~11_combout\ ) ) # ( \Selector7~10_combout\ & ( !\Selector7~11_combout\ ) ) # ( !\Selector7~10_combout\ & ( !\Selector7~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~1_combout\,
	datab => \ALT_INV_Selector7~7_combout\,
	datac => \ALT_INV_Equal4~1_combout\,
	datad => \ALT_INV_Selector7~6_combout\,
	datae => \ALT_INV_Selector7~10_combout\,
	dataf => \ALT_INV_Selector7~11_combout\,
	combout => \Selector7~8_combout\);

-- Location: FF_X82_Y10_N25
\lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector7~8_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(2));

-- Location: FF_X83_Y4_N56
\dut|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector43~1_combout\,
	asdata => lcd_bus(2),
	sclr => \dut|lcd_data[2]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(2));

-- Location: MLABCELL_X84_Y4_N12
\dut|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan1~3_combout\ = ( !\dut|Add0~5_sumout\ & ( \dut|LessThan3~1_combout\ & ( (\dut|LessThan3~2_combout\ & (\dut|LessThan1~2_combout\ & (!\dut|Add0~9_sumout\ & \dut|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~2_combout\,
	datab => \dut|ALT_INV_LessThan1~2_combout\,
	datac => \dut|ALT_INV_Add0~9_sumout\,
	datad => \dut|ALT_INV_LessThan3~0_combout\,
	datae => \dut|ALT_INV_Add0~5_sumout\,
	dataf => \dut|ALT_INV_LessThan3~1_combout\,
	combout => \dut|LessThan1~3_combout\);

-- Location: MLABCELL_X82_Y3_N12
\dut|Selector42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector42~1_combout\ = ( \dut|state.initialize~DUPLICATE_q\ & ( \dut|Add0~117_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	dataf => \dut|ALT_INV_Add0~117_sumout\,
	combout => \dut|Selector42~1_combout\);

-- Location: LABCELL_X83_Y4_N12
\dut|Selector42~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector42~2_combout\ = ( \dut|Selector42~1_combout\ & ( \dut|Selector42~0_combout\ ) ) # ( !\dut|Selector42~1_combout\ & ( \dut|Selector42~0_combout\ & ( ((\dut|LessThan2~1_combout\ & (\dut|LessThan3~3_combout\ & !\dut|LessThan3~9_combout\))) # 
-- (\dut|LessThan1~3_combout\) ) ) ) # ( \dut|Selector42~1_combout\ & ( !\dut|Selector42~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110111001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan2~1_combout\,
	datab => \dut|ALT_INV_LessThan1~3_combout\,
	datac => \dut|ALT_INV_LessThan3~3_combout\,
	datad => \dut|ALT_INV_LessThan3~9_combout\,
	datae => \dut|ALT_INV_Selector42~1_combout\,
	dataf => \dut|ALT_INV_Selector42~0_combout\,
	combout => \dut|Selector42~2_combout\);

-- Location: MLABCELL_X82_Y8_N57
\Selector6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~8_combout\ = ( \Mod4|auto_generated|divider|divider|op_5~1_sumout\ & ( \Mod4|auto_generated|divider|divider|StageOut[19]~3_combout\ ) ) # ( !\Mod4|auto_generated|divider|divider|op_5~1_sumout\ & ( 
-- \Mod4|auto_generated|divider|divider|op_5~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datad => \Mod4|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\,
	dataf => \Mod4|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Selector6~8_combout\);

-- Location: LABCELL_X80_Y10_N18
\Selector6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = ( \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ & ( (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\) # (hour(3)) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~17_sumout\ & ( (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & hour(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	datac => ALT_INV_hour(3),
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[3]~17_sumout\,
	combout => \Selector6~3_combout\);

-- Location: LABCELL_X83_Y9_N51
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \Equal0~12_combout\ & ( \Equal0~10_combout\ & ( (\char~2_combout\ & (\Equal0~3_combout\ & \Equal25~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~2_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal25~5_combout\,
	datae => \ALT_INV_Equal0~12_combout\,
	dataf => \ALT_INV_Equal0~10_combout\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X83_Y9_N18
\Selector6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~4_combout\ = ( \char~1_combout\ & ( \Equal1~0_combout\ & ( (\Selector8~3_combout\ & (!month(0) & \char~0_combout\)) ) ) ) # ( !\char~1_combout\ & ( \Equal1~0_combout\ & ( (\Selector6~3_combout\ & !\char~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector6~3_combout\,
	datab => \ALT_INV_Selector8~3_combout\,
	datac => ALT_INV_month(0),
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_char~1_combout\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Selector6~4_combout\);

-- Location: LABCELL_X81_Y10_N51
\Mux62~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = ( month(1) & ( month(0) & ( (month(2) & !month(3)) ) ) ) # ( month(1) & ( !month(0) & ( (month(2) & !month(3)) ) ) ) # ( !month(1) & ( !month(0) & ( !month(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100010001000100010000000000000000000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(2),
	datab => ALT_INV_month(3),
	datae => ALT_INV_month(1),
	dataf => ALT_INV_month(0),
	combout => \Mux62~0_combout\);

-- Location: MLABCELL_X82_Y10_N18
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \Equal0~11_combout\ & ( \Equal3~0_combout\ & ( (\char~2_combout\ & ((!\char~0_combout\) # ((!\char~1_combout\) # (\Mux62~0_combout\)))) ) ) ) # ( !\Equal0~11_combout\ & ( \Equal3~0_combout\ & ( (\char~0_combout\ & 
-- (!\char~1_combout\ & \char~2_combout\)) ) ) ) # ( \Equal0~11_combout\ & ( !\Equal3~0_combout\ & ( (\char~2_combout\ & ((!\char~0_combout\) # ((\char~1_combout\ & \Mux62~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101100000100000001000000111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_char~1_combout\,
	datac => \ALT_INV_char~2_combout\,
	datad => \ALT_INV_Mux62~0_combout\,
	datae => \ALT_INV_Equal0~11_combout\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: MLABCELL_X82_Y10_N54
\Selector6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~9_combout\ = ( !\Selector6~4_combout\ & ( !\Selector6~0_combout\ & ( (!\Equal23~0_combout\) # ((!\Mod4|auto_generated|divider|divider|op_6~1_sumout\ & ((!\Mod4|auto_generated|divider|divider|op_6~17_sumout\))) # 
-- (\Mod4|auto_generated|divider|divider|op_6~1_sumout\ & (!\Selector6~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111100010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector6~8_combout\,
	datab => \Mod4|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Mod4|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datad => \ALT_INV_Equal23~0_combout\,
	datae => \ALT_INV_Selector6~4_combout\,
	dataf => \ALT_INV_Selector6~0_combout\,
	combout => \Selector6~9_combout\);

-- Location: LABCELL_X85_Y10_N33
\Selector6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~6_combout\ = ( \Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_5~13_sumout\))) # (\Mod1|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[19]~3_combout\)) ) ) # ( !\Mod1|auto_generated|divider|divider|op_6~1_sumout\ & ( \Mod1|auto_generated|divider|divider|op_6~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Selector6~6_combout\);

-- Location: LABCELL_X85_Y9_N57
\Selector6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~5_combout\ = ( \Mod2|auto_generated|divider|divider|op_6~17_sumout\ & ( \Mod2|auto_generated|divider|divider|op_6~1_sumout\ & ( (!\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & (\Mod2|auto_generated|divider|divider|op_5~13_sumout\)) # 
-- (\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod2|auto_generated|divider|divider|StageOut[19]~3_combout\))) ) ) ) # ( !\Mod2|auto_generated|divider|divider|op_6~17_sumout\ & ( \Mod2|auto_generated|divider|divider|op_6~1_sumout\ & ( 
-- (!\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & (\Mod2|auto_generated|divider|divider|op_5~13_sumout\)) # (\Mod2|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod2|auto_generated|divider|divider|StageOut[19]~3_combout\))) ) ) ) # ( 
-- \Mod2|auto_generated|divider|divider|op_6~17_sumout\ & ( !\Mod2|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datac => \Mod2|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\,
	datad => \Mod2|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datae => \Mod2|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	dataf => \Mod2|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Selector6~5_combout\);

-- Location: FF_X83_Y11_N2
\lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector6~7_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(3));

-- Location: MLABCELL_X84_Y11_N54
\Mux52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = ( month(3) & ( month(0) & ( (!month(2) & month(1)) ) ) ) # ( !month(3) & ( month(0) & ( (month(2) & month(1)) ) ) ) # ( month(3) & ( !month(0) & ( (!month(2) & month(1)) ) ) ) # ( !month(3) & ( !month(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011000000110000000011000000110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(2),
	datac => ALT_INV_month(1),
	datae => ALT_INV_month(3),
	dataf => ALT_INV_month(0),
	combout => \Mux52~0_combout\);

-- Location: LABCELL_X83_Y11_N42
\Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ( \Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( (!\Mod3|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod3|auto_generated|divider|divider|op_5~17_sumout\))) # 
-- (\Mod3|auto_generated|divider|divider|op_5~1_sumout\ & (day(3))) ) ) # ( !\Mod3|auto_generated|divider|divider|add_sub_3_result_int[4]~1_sumout\ & ( (!\Mod3|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Mod3|auto_generated|divider|divider|op_5~17_sumout\)) # (\Mod3|auto_generated|divider|divider|op_5~1_sumout\ & ((\Mod3|auto_generated|divider|divider|add_sub_3_result_int[2]~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_day(3),
	datab => \Mod3|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Mod3|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datad => \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[2]~13_sumout\,
	dataf => \Mod3|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~1_sumout\,
	combout => \Selector6~1_combout\);

-- Location: MLABCELL_X82_Y9_N42
\Equal12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = ( \Equal4~0_combout\ & ( \Equal0~7_combout\ & ( (\char~1_combout\ & (\Equal0~10_combout\ & (\Equal0~3_combout\ & \Equal0~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_Equal0~10_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~12_combout\,
	datae => \ALT_INV_Equal4~0_combout\,
	dataf => \ALT_INV_Equal0~7_combout\,
	combout => \Equal12~0_combout\);

-- Location: LABCELL_X83_Y11_N54
\Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = ( \Equal15~0_combout\ & ( \Equal12~0_combout\ & ( ((\char~4_combout\ & (\Equal2~0_combout\ & \Selector6~1_combout\))) # (\Mux52~0_combout\) ) ) ) # ( !\Equal15~0_combout\ & ( \Equal12~0_combout\ & ( \Mux52~0_combout\ ) ) ) # ( 
-- \Equal15~0_combout\ & ( !\Equal12~0_combout\ & ( (\char~4_combout\ & (\Equal2~0_combout\ & \Selector6~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100001111000011110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~4_combout\,
	datab => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Mux52~0_combout\,
	datad => \ALT_INV_Selector6~1_combout\,
	datae => \ALT_INV_Equal15~0_combout\,
	dataf => \ALT_INV_Equal12~0_combout\,
	combout => \Selector6~2_combout\);

-- Location: LABCELL_X83_Y11_N48
\Selector6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~10_combout\ = ( \WideNor0~1_combout\ & ( (!\Selector6~2_combout\ & ((!lcd_bus(3)) # (!\Equal25~13_combout\))) ) ) # ( !\WideNor0~1_combout\ & ( (!\Selector6~2_combout\ & ((!lcd_bus(3)) # ((!\Equal25~13_combout\ & !\WideNor0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000000111010100000000011101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lcd_bus(3),
	datab => \ALT_INV_Equal25~13_combout\,
	datac => \ALT_INV_WideNor0~0_combout\,
	datad => \ALT_INV_Selector6~2_combout\,
	dataf => \ALT_INV_WideNor0~1_combout\,
	combout => \Selector6~10_combout\);

-- Location: LABCELL_X83_Y11_N0
\Selector6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~7_combout\ = ( \Selector6~5_combout\ & ( \Selector6~10_combout\ & ( ((!\Selector6~9_combout\) # ((\Equal4~1_combout\ & \Selector6~6_combout\))) # (\Equal7~1_combout\) ) ) ) # ( !\Selector6~5_combout\ & ( \Selector6~10_combout\ & ( 
-- (!\Selector6~9_combout\) # ((\Equal4~1_combout\ & \Selector6~6_combout\)) ) ) ) # ( \Selector6~5_combout\ & ( !\Selector6~10_combout\ ) ) # ( !\Selector6~5_combout\ & ( !\Selector6~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111101011111001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~1_combout\,
	datab => \ALT_INV_Equal7~1_combout\,
	datac => \ALT_INV_Selector6~9_combout\,
	datad => \ALT_INV_Selector6~6_combout\,
	datae => \ALT_INV_Selector6~5_combout\,
	dataf => \ALT_INV_Selector6~10_combout\,
	combout => \Selector6~7_combout\);

-- Location: FF_X83_Y11_N1
\lcd_bus[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector6~7_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_bus[3]~DUPLICATE_q\);

-- Location: FF_X83_Y4_N13
\dut|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector42~2_combout\,
	asdata => \lcd_bus[3]~DUPLICATE_q\,
	sclr => \dut|lcd_data[2]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(3));

-- Location: LABCELL_X80_Y4_N24
\dut|Selector44~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector44~3_combout\ = ( !\dut|Add0~117_sumout\ & ( \dut|state.initialize~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	dataf => \dut|ALT_INV_Add0~117_sumout\,
	combout => \dut|Selector44~3_combout\);

-- Location: MLABCELL_X82_Y4_N12
\dut|Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector41~0_combout\ = ( \dut|Selector44~3_combout\ & ( \dut|LessThan3~4_combout\ & ( (\dut|LessThan1~2_combout\ & (\dut|LessThan3~2_combout\ & (!\dut|Add0~1_sumout\ & \dut|busy~2_combout\))) ) ) ) # ( !\dut|Selector44~3_combout\ & ( 
-- \dut|LessThan3~4_combout\ ) ) # ( !\dut|Selector44~3_combout\ & ( !\dut|LessThan3~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan1~2_combout\,
	datab => \dut|ALT_INV_LessThan3~2_combout\,
	datac => \dut|ALT_INV_Add0~1_sumout\,
	datad => \dut|ALT_INV_busy~2_combout\,
	datae => \dut|ALT_INV_Selector44~3_combout\,
	dataf => \dut|ALT_INV_LessThan3~4_combout\,
	combout => \dut|Selector41~0_combout\);

-- Location: MLABCELL_X82_Y4_N6
\dut|lcd_data[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|lcd_data[4]~feeder_combout\ = ( \dut|Selector41~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dut|ALT_INV_Selector41~0_combout\,
	combout => \dut|lcd_data[4]~feeder_combout\);

-- Location: LABCELL_X85_Y6_N18
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \char~2_combout\ & ( \Equal0~5_combout\ & ( !\char~1_combout\ ) ) ) # ( !\char~2_combout\ & ( \Equal0~5_combout\ & ( (!\char~0_combout\ & ((!\char~1_combout\ & (!\char~3_combout\ & \char~4_combout\)) # (\char~1_combout\ & 
-- ((!\char~4_combout\))))) # (\char~0_combout\ & (!\char~1_combout\ & ((!\char~3_combout\) # (\char~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001010110100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_char~3_combout\,
	datac => \ALT_INV_char~1_combout\,
	datad => \ALT_INV_char~4_combout\,
	datae => \ALT_INV_char~2_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Selector3~0_combout\);

-- Location: MLABCELL_X78_Y10_N24
\Mux56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = ( month(0) & ( (!month(2) & (!month(1) & month(3))) # (month(2) & ((!month(3)))) ) ) # ( !month(0) & ( (month(2) & (month(1) & !month(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000001011000010110000101100001011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(2),
	datab => ALT_INV_month(1),
	datac => ALT_INV_month(3),
	dataf => ALT_INV_month(0),
	combout => \Mux56~0_combout\);

-- Location: LABCELL_X81_Y10_N15
\Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ( month(3) & ( !month(0) & ( !month(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(1),
	datae => ALT_INV_month(3),
	dataf => ALT_INV_month(0),
	combout => \Selector5~1_combout\);

-- Location: MLABCELL_X82_Y6_N27
\Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = ( \Equal0~7_combout\ & ( \Equal0~13_combout\ & ( (\Selector5~1_combout\ & (\Equal0~10_combout\ & (\char~1_combout\ & \Equal4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector5~1_combout\,
	datab => \ALT_INV_Equal0~10_combout\,
	datac => \ALT_INV_char~1_combout\,
	datad => \ALT_INV_Equal4~0_combout\,
	datae => \ALT_INV_Equal0~7_combout\,
	dataf => \ALT_INV_Equal0~13_combout\,
	combout => \Selector5~2_combout\);

-- Location: LABCELL_X81_Y10_N45
\Mux61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = ( month(1) & ( month(0) & ( (!month(2) & month(3)) ) ) ) # ( !month(1) & ( month(0) & ( (month(2) & !month(3)) ) ) ) # ( month(1) & ( !month(0) & ( !month(2) ) ) ) # ( !month(1) & ( !month(0) & ( !month(2) $ (!month(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110101010101010101001000100010001000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(2),
	datab => ALT_INV_month(3),
	datae => ALT_INV_month(1),
	dataf => ALT_INV_month(0),
	combout => \Mux61~0_combout\);

-- Location: LABCELL_X83_Y10_N30
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \Equal0~10_combout\ & ( \Equal0~13_combout\ & ( (\Equal6~0_combout\ & (\Equal0~7_combout\ & (\char~1_combout\ & \Mux61~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal6~0_combout\,
	datab => \ALT_INV_Equal0~7_combout\,
	datac => \ALT_INV_char~1_combout\,
	datad => \ALT_INV_Mux61~0_combout\,
	datae => \ALT_INV_Equal0~10_combout\,
	dataf => \ALT_INV_Equal0~13_combout\,
	combout => \Selector5~0_combout\);

-- Location: LABCELL_X83_Y6_N42
\Selector5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = ( \Equal9~1_combout\ & ( !\Selector5~0_combout\ & ( (!\Selector5~2_combout\ & ((!\char~0_combout\ & (!apm(10))) # (\char~0_combout\ & ((!\Mux56~0_combout\))))) ) ) ) # ( !\Equal9~1_combout\ & ( !\Selector5~0_combout\ & ( 
-- !\Selector5~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_apm(10),
	datab => \ALT_INV_Mux56~0_combout\,
	datac => \ALT_INV_Selector5~2_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_Equal9~1_combout\,
	dataf => \ALT_INV_Selector5~0_combout\,
	combout => \Selector5~3_combout\);

-- Location: LABCELL_X83_Y6_N18
\Selector5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = ( lcd_bus(4) & ( \Selector5~3_combout\ & ( (((!\WideNor0~1_combout\ & \WideNor0~0_combout\)) # (\Equal25~13_combout\)) # (\Selector3~0_combout\) ) ) ) # ( !lcd_bus(4) & ( \Selector5~3_combout\ & ( \Selector3~0_combout\ ) ) ) # ( 
-- lcd_bus(4) & ( !\Selector5~3_combout\ ) ) # ( !lcd_bus(4) & ( !\Selector5~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector3~0_combout\,
	datab => \ALT_INV_WideNor0~1_combout\,
	datac => \ALT_INV_WideNor0~0_combout\,
	datad => \ALT_INV_Equal25~13_combout\,
	datae => ALT_INV_lcd_bus(4),
	dataf => \ALT_INV_Selector5~3_combout\,
	combout => \Selector5~4_combout\);

-- Location: FF_X83_Y6_N19
\lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector5~4_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(4));

-- Location: FF_X82_Y4_N7
\dut|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|lcd_data[4]~feeder_combout\,
	asdata => lcd_bus(4),
	sclr => \dut|lcd_data[2]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(4));

-- Location: LABCELL_X83_Y6_N0
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( lcd_bus(5) & ( \WideNor0~0_combout\ & ( (!\Selector0~0_combout\ & !\Equal12~0_combout\) ) ) ) # ( !lcd_bus(5) & ( \WideNor0~0_combout\ & ( (\WideNor0~1_combout\ & (!\Selector0~0_combout\ & (!\Equal25~13_combout\ & 
-- !\Equal12~0_combout\))) ) ) ) # ( lcd_bus(5) & ( !\WideNor0~0_combout\ & ( (!\Selector0~0_combout\ & !\Equal12~0_combout\) ) ) ) # ( !lcd_bus(5) & ( !\WideNor0~0_combout\ & ( (!\Selector0~0_combout\ & (!\Equal25~13_combout\ & !\Equal12~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110011000000000001000000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~1_combout\,
	datab => \ALT_INV_Selector0~0_combout\,
	datac => \ALT_INV_Equal25~13_combout\,
	datad => \ALT_INV_Equal12~0_combout\,
	datae => ALT_INV_lcd_bus(5),
	dataf => \ALT_INV_WideNor0~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X83_Y6_N1
\lcd_bus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(5));

-- Location: FF_X82_Y4_N13
\dut|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector41~0_combout\,
	asdata => lcd_bus(5),
	sclr => \dut|lcd_data[2]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(5));

-- Location: MLABCELL_X84_Y4_N33
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: MLABCELL_X82_Y4_N21
\dut|lcd_data[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|lcd_data[6]~feeder_combout\ = \~GND~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_~GND~combout\,
	combout => \dut|lcd_data[6]~feeder_combout\);

-- Location: LABCELL_X83_Y6_N24
\Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ( \char~4_combout\ & ( \Equal0~5_combout\ & ( (!\char~1_combout\) # ((!\char~2_combout\ & !\char~0_combout\)) ) ) ) # ( !\char~4_combout\ & ( \Equal0~5_combout\ & ( (!\char~1_combout\ & (((\char~0_combout\) # (\char~3_combout\)) # 
-- (\char~2_combout\))) # (\char~1_combout\ & (!\char~2_combout\ & ((!\char~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001101110101010101110111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_char~2_combout\,
	datac => \ALT_INV_char~3_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_char~4_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Selector3~1_combout\);

-- Location: LABCELL_X83_Y6_N57
\Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = ( lcd_bus(6) & ( \WideNor0~0_combout\ & ( !\Selector3~1_combout\ ) ) ) # ( !lcd_bus(6) & ( \WideNor0~0_combout\ & ( (\WideNor0~1_combout\ & (!\Equal25~13_combout\ & !\Selector3~1_combout\)) ) ) ) # ( lcd_bus(6) & ( 
-- !\WideNor0~0_combout\ & ( !\Selector3~1_combout\ ) ) ) # ( !lcd_bus(6) & ( !\WideNor0~0_combout\ & ( (!\Equal25~13_combout\ & !\Selector3~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111111110000000000110000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideNor0~1_combout\,
	datac => \ALT_INV_Equal25~13_combout\,
	datad => \ALT_INV_Selector3~1_combout\,
	datae => ALT_INV_lcd_bus(6),
	dataf => \ALT_INV_WideNor0~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: FF_X83_Y6_N59
\lcd_bus[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector3~2_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(6));

-- Location: FF_X82_Y4_N22
\dut|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|lcd_data[6]~feeder_combout\,
	asdata => lcd_bus(6),
	sclr => \dut|lcd_data[2]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(6));

-- Location: MLABCELL_X82_Y4_N18
\dut|lcd_data[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|lcd_data[7]~feeder_combout\ = \~GND~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_~GND~combout\,
	combout => \dut|lcd_data[7]~feeder_combout\);

-- Location: LABCELL_X83_Y6_N6
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \char~4_combout\ & ( \Equal0~5_combout\ & ( (!\char~2_combout\ & (!\char~0_combout\ & (!\char~1_combout\ $ (!\char~3_combout\)))) ) ) ) # ( !\char~4_combout\ & ( \Equal0~5_combout\ & ( (!\char~2_combout\ & ((!\char~1_combout\ & 
-- (\char~3_combout\)) # (\char~1_combout\ & (!\char~3_combout\ & \char~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000010010000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_char~2_combout\,
	datac => \ALT_INV_char~3_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_char~4_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Selector2~0_combout\);

-- Location: LABCELL_X83_Y6_N30
\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( \Selector2~0_combout\ ) # ( !\Selector2~0_combout\ & ( (lcd_bus(7) & (((\WideNor0~0_combout\ & !\WideNor0~1_combout\)) # (\Equal25~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001111000000000100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~0_combout\,
	datab => \ALT_INV_WideNor0~1_combout\,
	datac => \ALT_INV_Equal25~13_combout\,
	datad => ALT_INV_lcd_bus(7),
	dataf => \ALT_INV_Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X83_Y6_N31
\lcd_bus[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector2~1_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(7));

-- Location: FF_X82_Y4_N19
\dut|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|lcd_data[7]~feeder_combout\,
	asdata => lcd_bus(7),
	sclr => \dut|lcd_data[2]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(7));

-- Location: LABCELL_X45_Y1_N0
\gcontraxt|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~69_sumout\ = SUM(( \gcontraxt|freq_count\(0) ) + ( VCC ) + ( !VCC ))
-- \gcontraxt|Add0~70\ = CARRY(( \gcontraxt|freq_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_freq_count\(0),
	cin => GND,
	sumout => \gcontraxt|Add0~69_sumout\,
	cout => \gcontraxt|Add0~70\);

-- Location: FF_X45_Y1_N47
\gcontraxt|freq_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~9_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(15));

-- Location: FF_X43_Y1_N29
\gcontraxt|freq_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \gcontraxt|Add0~17_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(10));

-- Location: FF_X45_Y1_N40
\gcontraxt|freq_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~61_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(13));

-- Location: FF_X45_Y1_N37
\gcontraxt|freq_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~65_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(12));

-- Location: LABCELL_X45_Y1_N57
\gcontraxt|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan0~3_combout\ = ( !\gcontraxt|freq_count\(12) & ( (!\gcontraxt|freq_count\(14) & !\gcontraxt|freq_count\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(14),
	datad => \gcontraxt|ALT_INV_freq_count\(13),
	dataf => \gcontraxt|ALT_INV_freq_count\(12),
	combout => \gcontraxt|LessThan0~3_combout\);

-- Location: FF_X43_Y1_N5
\gcontraxt|freq_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \gcontraxt|Add0~49_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(9));

-- Location: FF_X45_Y1_N25
\gcontraxt|freq_count[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~53_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count[8]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y1_N9
\gcontraxt|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan0~2_combout\ = ( \gcontraxt|freq_count[8]~DUPLICATE_q\ & ( \gcontraxt|freq_count\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_freq_count\(9),
	dataf => \gcontraxt|ALT_INV_freq_count[8]~DUPLICATE_q\,
	combout => \gcontraxt|LessThan0~2_combout\);

-- Location: FF_X43_Y1_N14
\gcontraxt|freq_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \gcontraxt|Add0~29_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(1));

-- Location: LABCELL_X43_Y1_N54
\gcontraxt|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan0~0_combout\ = ( \gcontraxt|freq_count\(1) & ( \gcontraxt|freq_count\(3) ) ) # ( !\gcontraxt|freq_count\(1) & ( (\gcontraxt|freq_count\(3) & \gcontraxt|freq_count\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(3),
	datad => \gcontraxt|ALT_INV_freq_count\(2),
	dataf => \gcontraxt|ALT_INV_freq_count\(1),
	combout => \gcontraxt|LessThan0~0_combout\);

-- Location: FF_X45_Y1_N16
\gcontraxt|freq_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~41_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(5));

-- Location: LABCELL_X45_Y1_N54
\gcontraxt|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan0~1_combout\ = ( !\gcontraxt|freq_count\(6) & ( (!\gcontraxt|freq_count\(5) & (!\gcontraxt|freq_count\(4) & !\gcontraxt|freq_count\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_freq_count\(5),
	datab => \gcontraxt|ALT_INV_freq_count\(4),
	datac => \gcontraxt|ALT_INV_freq_count\(7),
	dataf => \gcontraxt|ALT_INV_freq_count\(6),
	combout => \gcontraxt|LessThan0~1_combout\);

-- Location: LABCELL_X43_Y1_N24
\gcontraxt|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan0~4_combout\ = ( \gcontraxt|LessThan0~0_combout\ & ( \gcontraxt|LessThan0~1_combout\ & ( (\gcontraxt|LessThan0~3_combout\ & ((!\gcontraxt|freq_count\(11)) # ((!\gcontraxt|freq_count\(10) & !\gcontraxt|LessThan0~2_combout\)))) ) ) ) # ( 
-- !\gcontraxt|LessThan0~0_combout\ & ( \gcontraxt|LessThan0~1_combout\ & ( (\gcontraxt|LessThan0~3_combout\ & ((!\gcontraxt|freq_count\(10)) # (!\gcontraxt|freq_count\(11)))) ) ) ) # ( \gcontraxt|LessThan0~0_combout\ & ( !\gcontraxt|LessThan0~1_combout\ & ( 
-- (\gcontraxt|LessThan0~3_combout\ & ((!\gcontraxt|freq_count\(11)) # ((!\gcontraxt|freq_count\(10) & !\gcontraxt|LessThan0~2_combout\)))) ) ) ) # ( !\gcontraxt|LessThan0~0_combout\ & ( !\gcontraxt|LessThan0~1_combout\ & ( (\gcontraxt|LessThan0~3_combout\ & 
-- ((!\gcontraxt|freq_count\(11)) # ((!\gcontraxt|freq_count\(10) & !\gcontraxt|LessThan0~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110000001100100011000000110010001100100011001000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_freq_count\(10),
	datab => \gcontraxt|ALT_INV_LessThan0~3_combout\,
	datac => \gcontraxt|ALT_INV_freq_count\(11),
	datad => \gcontraxt|ALT_INV_LessThan0~2_combout\,
	datae => \gcontraxt|ALT_INV_LessThan0~0_combout\,
	dataf => \gcontraxt|ALT_INV_LessThan0~1_combout\,
	combout => \gcontraxt|LessThan0~4_combout\);

-- Location: LABCELL_X43_Y1_N39
\gcontraxt|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan0~5_combout\ = ( \gcontraxt|LessThan0~4_combout\ & ( (\gcontraxt|freq_count\(16) & \gcontraxt|freq_count\(17)) ) ) # ( !\gcontraxt|LessThan0~4_combout\ & ( (\gcontraxt|freq_count\(17) & ((\gcontraxt|freq_count\(15)) # 
-- (\gcontraxt|freq_count\(16)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_freq_count\(16),
	datac => \gcontraxt|ALT_INV_freq_count\(15),
	datad => \gcontraxt|ALT_INV_freq_count\(17),
	dataf => \gcontraxt|ALT_INV_LessThan0~4_combout\,
	combout => \gcontraxt|LessThan0~5_combout\);

-- Location: FF_X45_Y1_N56
\gcontraxt|freq_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \gcontraxt|Add0~69_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(0));

-- Location: LABCELL_X45_Y1_N3
\gcontraxt|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~29_sumout\ = SUM(( \gcontraxt|freq_count[1]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~70\ ))
-- \gcontraxt|Add0~30\ = CARRY(( \gcontraxt|freq_count[1]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_freq_count[1]~DUPLICATE_q\,
	cin => \gcontraxt|Add0~70\,
	sumout => \gcontraxt|Add0~29_sumout\,
	cout => \gcontraxt|Add0~30\);

-- Location: FF_X43_Y1_N13
\gcontraxt|freq_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \gcontraxt|Add0~29_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count[1]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y1_N6
\gcontraxt|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~25_sumout\ = SUM(( \gcontraxt|freq_count\(2) ) + ( GND ) + ( \gcontraxt|Add0~30\ ))
-- \gcontraxt|Add0~26\ = CARRY(( \gcontraxt|freq_count\(2) ) + ( GND ) + ( \gcontraxt|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_freq_count\(2),
	cin => \gcontraxt|Add0~30\,
	sumout => \gcontraxt|Add0~25_sumout\,
	cout => \gcontraxt|Add0~26\);

-- Location: FF_X43_Y1_N23
\gcontraxt|freq_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \gcontraxt|Add0~25_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(2));

-- Location: LABCELL_X45_Y1_N9
\gcontraxt|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~21_sumout\ = SUM(( \gcontraxt|freq_count\(3) ) + ( GND ) + ( \gcontraxt|Add0~26\ ))
-- \gcontraxt|Add0~22\ = CARRY(( \gcontraxt|freq_count\(3) ) + ( GND ) + ( \gcontraxt|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(3),
	cin => \gcontraxt|Add0~26\,
	sumout => \gcontraxt|Add0~21_sumout\,
	cout => \gcontraxt|Add0~22\);

-- Location: FF_X45_Y1_N11
\gcontraxt|freq_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~21_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(3));

-- Location: LABCELL_X45_Y1_N12
\gcontraxt|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~45_sumout\ = SUM(( \gcontraxt|freq_count\(4) ) + ( GND ) + ( \gcontraxt|Add0~22\ ))
-- \gcontraxt|Add0~46\ = CARRY(( \gcontraxt|freq_count\(4) ) + ( GND ) + ( \gcontraxt|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_freq_count\(4),
	cin => \gcontraxt|Add0~22\,
	sumout => \gcontraxt|Add0~45_sumout\,
	cout => \gcontraxt|Add0~46\);

-- Location: FF_X45_Y1_N14
\gcontraxt|freq_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~45_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(4));

-- Location: LABCELL_X45_Y1_N15
\gcontraxt|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~41_sumout\ = SUM(( \gcontraxt|freq_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~46\ ))
-- \gcontraxt|Add0~42\ = CARRY(( \gcontraxt|freq_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count[5]~DUPLICATE_q\,
	cin => \gcontraxt|Add0~46\,
	sumout => \gcontraxt|Add0~41_sumout\,
	cout => \gcontraxt|Add0~42\);

-- Location: FF_X45_Y1_N17
\gcontraxt|freq_count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~41_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count[5]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y1_N18
\gcontraxt|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~37_sumout\ = SUM(( \gcontraxt|freq_count\(6) ) + ( GND ) + ( \gcontraxt|Add0~42\ ))
-- \gcontraxt|Add0~38\ = CARRY(( \gcontraxt|freq_count\(6) ) + ( GND ) + ( \gcontraxt|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(6),
	cin => \gcontraxt|Add0~42\,
	sumout => \gcontraxt|Add0~37_sumout\,
	cout => \gcontraxt|Add0~38\);

-- Location: FF_X45_Y1_N20
\gcontraxt|freq_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~37_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(6));

-- Location: LABCELL_X45_Y1_N21
\gcontraxt|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~33_sumout\ = SUM(( \gcontraxt|freq_count\(7) ) + ( GND ) + ( \gcontraxt|Add0~38\ ))
-- \gcontraxt|Add0~34\ = CARRY(( \gcontraxt|freq_count\(7) ) + ( GND ) + ( \gcontraxt|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_freq_count\(7),
	cin => \gcontraxt|Add0~38\,
	sumout => \gcontraxt|Add0~33_sumout\,
	cout => \gcontraxt|Add0~34\);

-- Location: FF_X45_Y1_N23
\gcontraxt|freq_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~33_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(7));

-- Location: LABCELL_X45_Y1_N24
\gcontraxt|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~53_sumout\ = SUM(( \gcontraxt|freq_count\(8) ) + ( GND ) + ( \gcontraxt|Add0~34\ ))
-- \gcontraxt|Add0~54\ = CARRY(( \gcontraxt|freq_count\(8) ) + ( GND ) + ( \gcontraxt|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(8),
	cin => \gcontraxt|Add0~34\,
	sumout => \gcontraxt|Add0~53_sumout\,
	cout => \gcontraxt|Add0~54\);

-- Location: FF_X45_Y1_N26
\gcontraxt|freq_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~53_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(8));

-- Location: LABCELL_X45_Y1_N27
\gcontraxt|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~49_sumout\ = SUM(( \gcontraxt|freq_count[9]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~54\ ))
-- \gcontraxt|Add0~50\ = CARRY(( \gcontraxt|freq_count[9]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_freq_count[9]~DUPLICATE_q\,
	cin => \gcontraxt|Add0~54\,
	sumout => \gcontraxt|Add0~49_sumout\,
	cout => \gcontraxt|Add0~50\);

-- Location: FF_X43_Y1_N4
\gcontraxt|freq_count[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \gcontraxt|Add0~49_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count[9]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y1_N30
\gcontraxt|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~17_sumout\ = SUM(( \gcontraxt|freq_count[10]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~50\ ))
-- \gcontraxt|Add0~18\ = CARRY(( \gcontraxt|freq_count[10]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_freq_count[10]~DUPLICATE_q\,
	cin => \gcontraxt|Add0~50\,
	sumout => \gcontraxt|Add0~17_sumout\,
	cout => \gcontraxt|Add0~18\);

-- Location: FF_X43_Y1_N28
\gcontraxt|freq_count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \gcontraxt|Add0~17_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count[10]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y1_N33
\gcontraxt|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~13_sumout\ = SUM(( \gcontraxt|freq_count\(11) ) + ( GND ) + ( \gcontraxt|Add0~18\ ))
-- \gcontraxt|Add0~14\ = CARRY(( \gcontraxt|freq_count\(11) ) + ( GND ) + ( \gcontraxt|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(11),
	cin => \gcontraxt|Add0~18\,
	sumout => \gcontraxt|Add0~13_sumout\,
	cout => \gcontraxt|Add0~14\);

-- Location: FF_X45_Y1_N34
\gcontraxt|freq_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~13_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(11));

-- Location: LABCELL_X45_Y1_N36
\gcontraxt|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~65_sumout\ = SUM(( \gcontraxt|freq_count[12]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~14\ ))
-- \gcontraxt|Add0~66\ = CARRY(( \gcontraxt|freq_count[12]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count[12]~DUPLICATE_q\,
	cin => \gcontraxt|Add0~14\,
	sumout => \gcontraxt|Add0~65_sumout\,
	cout => \gcontraxt|Add0~66\);

-- Location: FF_X45_Y1_N38
\gcontraxt|freq_count[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~65_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count[12]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y1_N39
\gcontraxt|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~61_sumout\ = SUM(( \gcontraxt|freq_count[13]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~66\ ))
-- \gcontraxt|Add0~62\ = CARRY(( \gcontraxt|freq_count[13]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count[13]~DUPLICATE_q\,
	cin => \gcontraxt|Add0~66\,
	sumout => \gcontraxt|Add0~61_sumout\,
	cout => \gcontraxt|Add0~62\);

-- Location: FF_X45_Y1_N41
\gcontraxt|freq_count[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~61_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count[13]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y1_N42
\gcontraxt|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~57_sumout\ = SUM(( \gcontraxt|freq_count\(14) ) + ( GND ) + ( \gcontraxt|Add0~62\ ))
-- \gcontraxt|Add0~58\ = CARRY(( \gcontraxt|freq_count\(14) ) + ( GND ) + ( \gcontraxt|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_freq_count\(14),
	cin => \gcontraxt|Add0~62\,
	sumout => \gcontraxt|Add0~57_sumout\,
	cout => \gcontraxt|Add0~58\);

-- Location: FF_X45_Y1_N44
\gcontraxt|freq_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~57_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(14));

-- Location: LABCELL_X45_Y1_N45
\gcontraxt|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~9_sumout\ = SUM(( \gcontraxt|freq_count[15]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~58\ ))
-- \gcontraxt|Add0~10\ = CARRY(( \gcontraxt|freq_count[15]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count[15]~DUPLICATE_q\,
	cin => \gcontraxt|Add0~58\,
	sumout => \gcontraxt|Add0~9_sumout\,
	cout => \gcontraxt|Add0~10\);

-- Location: FF_X45_Y1_N46
\gcontraxt|freq_count[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~9_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count[15]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y1_N48
\gcontraxt|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~5_sumout\ = SUM(( \gcontraxt|freq_count\(16) ) + ( GND ) + ( \gcontraxt|Add0~10\ ))
-- \gcontraxt|Add0~6\ = CARRY(( \gcontraxt|freq_count\(16) ) + ( GND ) + ( \gcontraxt|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(16),
	cin => \gcontraxt|Add0~10\,
	sumout => \gcontraxt|Add0~5_sumout\,
	cout => \gcontraxt|Add0~6\);

-- Location: FF_X45_Y1_N49
\gcontraxt|freq_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~5_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(16));

-- Location: LABCELL_X45_Y1_N51
\gcontraxt|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~1_sumout\ = SUM(( \gcontraxt|freq_count\(17) ) + ( GND ) + ( \gcontraxt|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(17),
	cin => \gcontraxt|Add0~6\,
	sumout => \gcontraxt|Add0~1_sumout\);

-- Location: FF_X45_Y1_N52
\gcontraxt|freq_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~1_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(17));

-- Location: FF_X43_Y1_N43
\gcontraxt|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count~4_combout\,
	ena => \gcontraxt|pwm_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count\(1));

-- Location: LABCELL_X43_Y1_N42
\gcontraxt|pwm_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_count~4_combout\ = ( !\gcontraxt|LessThan0~5_combout\ & ( !\gcontraxt|pwm_count\(0) $ (!\gcontraxt|pwm_count\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_count\(0),
	datad => \gcontraxt|ALT_INV_pwm_count\(1),
	dataf => \gcontraxt|ALT_INV_LessThan0~5_combout\,
	combout => \gcontraxt|pwm_count~4_combout\);

-- Location: FF_X43_Y1_N44
\gcontraxt|pwm_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count~4_combout\,
	ena => \gcontraxt|pwm_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count[1]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y1_N21
\gcontraxt|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add2~0_combout\ = ( \gcontraxt|pwm_count\(0) & ( (\gcontraxt|pwm_count\(2) & \gcontraxt|pwm_count[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_pwm_count\(2),
	datac => \gcontraxt|ALT_INV_pwm_count[1]~DUPLICATE_q\,
	dataf => \gcontraxt|ALT_INV_pwm_count\(0),
	combout => \gcontraxt|Add2~0_combout\);

-- Location: FF_X43_Y1_N31
\gcontraxt|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count\(3));

-- Location: LABCELL_X43_Y1_N30
\gcontraxt|pwm_count[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_count[3]~2_combout\ = ( \gcontraxt|LessThan0~5_combout\ & ( (!\gcontraxt|pwm_count[1]~0_combout\ & \gcontraxt|pwm_count\(3)) ) ) # ( !\gcontraxt|LessThan0~5_combout\ & ( !\gcontraxt|pwm_count\(3) $ (((!\gcontraxt|pwm_count[1]~0_combout\) # 
-- (!\gcontraxt|Add2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_pwm_count[1]~0_combout\,
	datac => \gcontraxt|ALT_INV_Add2~0_combout\,
	datad => \gcontraxt|ALT_INV_pwm_count\(3),
	dataf => \gcontraxt|ALT_INV_LessThan0~5_combout\,
	combout => \gcontraxt|pwm_count[3]~2_combout\);

-- Location: FF_X43_Y1_N32
\gcontraxt|pwm_count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count[3]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y1_N6
\gcontraxt|pwm_count[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_count[4]~1_combout\ = ( \gcontraxt|LessThan0~5_combout\ & ( (!\gcontraxt|pwm_count[1]~0_combout\ & \gcontraxt|pwm_count\(4)) ) ) # ( !\gcontraxt|LessThan0~5_combout\ & ( !\gcontraxt|pwm_count\(4) $ (((!\gcontraxt|Add2~0_combout\) # 
-- ((!\gcontraxt|pwm_count[1]~0_combout\) # (!\gcontraxt|pwm_count[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000000011111111000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_Add2~0_combout\,
	datab => \gcontraxt|ALT_INV_pwm_count[1]~0_combout\,
	datac => \gcontraxt|ALT_INV_pwm_count[3]~DUPLICATE_q\,
	datad => \gcontraxt|ALT_INV_pwm_count\(4),
	dataf => \gcontraxt|ALT_INV_LessThan0~5_combout\,
	combout => \gcontraxt|pwm_count[4]~1_combout\);

-- Location: FF_X43_Y1_N8
\gcontraxt|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count\(4));

-- Location: LABCELL_X42_Y1_N54
\gcontraxt|pwm_step_count[17]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_step_count[17]~0_combout\ = ( \gcontraxt|pwm_count[0]~DUPLICATE_q\ & ( !\gcontraxt|LessThan0~5_combout\ & ( (!\gcontraxt|pwm_count\(4) & !\gcontraxt|pwm_count[3]~DUPLICATE_q\) ) ) ) # ( !\gcontraxt|pwm_count[0]~DUPLICATE_q\ & ( 
-- !\gcontraxt|LessThan0~5_combout\ & ( (!\gcontraxt|pwm_count\(4) & ((!\gcontraxt|pwm_count[3]~DUPLICATE_q\) # ((!\gcontraxt|pwm_count\(1) & !\gcontraxt|pwm_count\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_pwm_count\(4),
	datab => \gcontraxt|ALT_INV_pwm_count\(1),
	datac => \gcontraxt|ALT_INV_pwm_count\(2),
	datad => \gcontraxt|ALT_INV_pwm_count[3]~DUPLICATE_q\,
	datae => \gcontraxt|ALT_INV_pwm_count[0]~DUPLICATE_q\,
	dataf => \gcontraxt|ALT_INV_LessThan0~5_combout\,
	combout => \gcontraxt|pwm_step_count[17]~0_combout\);

-- Location: FF_X42_Y1_N41
\gcontraxt|pwm_step_count[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~1_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count[13]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N0
\gcontraxt|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~69_sumout\ = SUM(( \gcontraxt|pwm_step_count\(0) ) + ( VCC ) + ( !VCC ))
-- \gcontraxt|Add1~70\ = CARRY(( \gcontraxt|pwm_step_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_pwm_step_count\(0),
	cin => GND,
	sumout => \gcontraxt|Add1~69_sumout\,
	cout => \gcontraxt|Add1~70\);

-- Location: FF_X42_Y1_N14
\gcontraxt|pwm_step_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \gcontraxt|Add1~69_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	sload => VCC,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(0));

-- Location: LABCELL_X42_Y1_N3
\gcontraxt|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~65_sumout\ = SUM(( \gcontraxt|pwm_step_count\(1) ) + ( GND ) + ( \gcontraxt|Add1~70\ ))
-- \gcontraxt|Add1~66\ = CARRY(( \gcontraxt|pwm_step_count\(1) ) + ( GND ) + ( \gcontraxt|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_pwm_step_count\(1),
	cin => \gcontraxt|Add1~70\,
	sumout => \gcontraxt|Add1~65_sumout\,
	cout => \gcontraxt|Add1~66\);

-- Location: FF_X42_Y1_N5
\gcontraxt|pwm_step_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~65_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(1));

-- Location: LABCELL_X42_Y1_N6
\gcontraxt|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~61_sumout\ = SUM(( \gcontraxt|pwm_step_count\(2) ) + ( GND ) + ( \gcontraxt|Add1~66\ ))
-- \gcontraxt|Add1~62\ = CARRY(( \gcontraxt|pwm_step_count\(2) ) + ( GND ) + ( \gcontraxt|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_pwm_step_count\(2),
	cin => \gcontraxt|Add1~66\,
	sumout => \gcontraxt|Add1~61_sumout\,
	cout => \gcontraxt|Add1~62\);

-- Location: FF_X42_Y1_N8
\gcontraxt|pwm_step_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~61_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(2));

-- Location: LABCELL_X42_Y1_N9
\gcontraxt|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~57_sumout\ = SUM(( \gcontraxt|pwm_step_count\(3) ) + ( GND ) + ( \gcontraxt|Add1~62\ ))
-- \gcontraxt|Add1~58\ = CARRY(( \gcontraxt|pwm_step_count\(3) ) + ( GND ) + ( \gcontraxt|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count\(3),
	cin => \gcontraxt|Add1~62\,
	sumout => \gcontraxt|Add1~57_sumout\,
	cout => \gcontraxt|Add1~58\);

-- Location: FF_X42_Y1_N11
\gcontraxt|pwm_step_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~57_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(3));

-- Location: LABCELL_X42_Y1_N12
\gcontraxt|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~21_sumout\ = SUM(( \gcontraxt|pwm_step_count\(4) ) + ( GND ) + ( \gcontraxt|Add1~58\ ))
-- \gcontraxt|Add1~22\ = CARRY(( \gcontraxt|pwm_step_count\(4) ) + ( GND ) + ( \gcontraxt|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count\(4),
	cin => \gcontraxt|Add1~58\,
	sumout => \gcontraxt|Add1~21_sumout\,
	cout => \gcontraxt|Add1~22\);

-- Location: FF_X42_Y1_N58
\gcontraxt|pwm_step_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \gcontraxt|Add1~21_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	sload => VCC,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(4));

-- Location: LABCELL_X42_Y1_N15
\gcontraxt|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~25_sumout\ = SUM(( \gcontraxt|pwm_step_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~22\ ))
-- \gcontraxt|Add1~26\ = CARRY(( \gcontraxt|pwm_step_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count[5]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~22\,
	sumout => \gcontraxt|Add1~25_sumout\,
	cout => \gcontraxt|Add1~26\);

-- Location: FF_X42_Y1_N17
\gcontraxt|pwm_step_count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~25_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count[5]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N18
\gcontraxt|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~17_sumout\ = SUM(( \gcontraxt|pwm_step_count[6]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~26\ ))
-- \gcontraxt|Add1~18\ = CARRY(( \gcontraxt|pwm_step_count[6]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count[6]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~26\,
	sumout => \gcontraxt|Add1~17_sumout\,
	cout => \gcontraxt|Add1~18\);

-- Location: FF_X42_Y1_N20
\gcontraxt|pwm_step_count[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~17_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count[6]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N21
\gcontraxt|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~13_sumout\ = SUM(( \gcontraxt|pwm_step_count[7]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~18\ ))
-- \gcontraxt|Add1~14\ = CARRY(( \gcontraxt|pwm_step_count[7]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_pwm_step_count[7]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~18\,
	sumout => \gcontraxt|Add1~13_sumout\,
	cout => \gcontraxt|Add1~14\);

-- Location: FF_X42_Y1_N23
\gcontraxt|pwm_step_count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~13_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count[7]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N24
\gcontraxt|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~29_sumout\ = SUM(( \gcontraxt|pwm_step_count[8]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~14\ ))
-- \gcontraxt|Add1~30\ = CARRY(( \gcontraxt|pwm_step_count[8]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count[8]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~14\,
	sumout => \gcontraxt|Add1~29_sumout\,
	cout => \gcontraxt|Add1~30\);

-- Location: FF_X42_Y1_N26
\gcontraxt|pwm_step_count[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~29_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count[8]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N27
\gcontraxt|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~33_sumout\ = SUM(( \gcontraxt|pwm_step_count\(9) ) + ( GND ) + ( \gcontraxt|Add1~30\ ))
-- \gcontraxt|Add1~34\ = CARRY(( \gcontraxt|pwm_step_count\(9) ) + ( GND ) + ( \gcontraxt|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count\(9),
	cin => \gcontraxt|Add1~30\,
	sumout => \gcontraxt|Add1~33_sumout\,
	cout => \gcontraxt|Add1~34\);

-- Location: FF_X42_Y1_N28
\gcontraxt|pwm_step_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~33_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(9));

-- Location: LABCELL_X42_Y1_N30
\gcontraxt|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~37_sumout\ = SUM(( \gcontraxt|pwm_step_count[10]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~34\ ))
-- \gcontraxt|Add1~38\ = CARRY(( \gcontraxt|pwm_step_count[10]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_pwm_step_count[10]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~34\,
	sumout => \gcontraxt|Add1~37_sumout\,
	cout => \gcontraxt|Add1~38\);

-- Location: FF_X42_Y1_N32
\gcontraxt|pwm_step_count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~37_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count[10]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N33
\gcontraxt|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~9_sumout\ = SUM(( \gcontraxt|pwm_step_count[11]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~38\ ))
-- \gcontraxt|Add1~10\ = CARRY(( \gcontraxt|pwm_step_count[11]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_pwm_step_count[11]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~38\,
	sumout => \gcontraxt|Add1~9_sumout\,
	cout => \gcontraxt|Add1~10\);

-- Location: FF_X42_Y1_N35
\gcontraxt|pwm_step_count[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~9_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count[11]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N36
\gcontraxt|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~5_sumout\ = SUM(( \gcontraxt|pwm_step_count[12]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~10\ ))
-- \gcontraxt|Add1~6\ = CARRY(( \gcontraxt|pwm_step_count[12]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count[12]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~10\,
	sumout => \gcontraxt|Add1~5_sumout\,
	cout => \gcontraxt|Add1~6\);

-- Location: FF_X42_Y1_N38
\gcontraxt|pwm_step_count[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~5_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count[12]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N39
\gcontraxt|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~1_sumout\ = SUM(( \gcontraxt|pwm_step_count[13]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~6\ ))
-- \gcontraxt|Add1~2\ = CARRY(( \gcontraxt|pwm_step_count[13]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count[13]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~6\,
	sumout => \gcontraxt|Add1~1_sumout\,
	cout => \gcontraxt|Add1~2\);

-- Location: FF_X42_Y1_N40
\gcontraxt|pwm_step_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~1_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(13));

-- Location: FF_X42_Y1_N31
\gcontraxt|pwm_step_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~37_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(10));

-- Location: FF_X42_Y1_N25
\gcontraxt|pwm_step_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~29_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(8));

-- Location: LABCELL_X43_Y1_N48
\gcontraxt|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan2~1_combout\ = ( !\gcontraxt|pwm_step_count\(8) & ( (!\gcontraxt|pwm_step_count\(10) & !\gcontraxt|pwm_step_count\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_pwm_step_count\(10),
	datac => \gcontraxt|ALT_INV_pwm_step_count\(9),
	dataf => \gcontraxt|ALT_INV_pwm_step_count\(8),
	combout => \gcontraxt|LessThan2~1_combout\);

-- Location: FF_X42_Y1_N37
\gcontraxt|pwm_step_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~5_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(12));

-- Location: FF_X42_Y1_N34
\gcontraxt|pwm_step_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~9_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(11));

-- Location: FF_X42_Y1_N19
\gcontraxt|pwm_step_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~17_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(6));

-- Location: FF_X42_Y1_N22
\gcontraxt|pwm_step_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~13_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(7));

-- Location: FF_X42_Y1_N16
\gcontraxt|pwm_step_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~25_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(5));

-- Location: LABCELL_X43_Y1_N45
\gcontraxt|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan2~0_combout\ = ( \gcontraxt|pwm_step_count\(5) & ( (\gcontraxt|pwm_step_count\(7) & ((\gcontraxt|pwm_step_count\(4)) # (\gcontraxt|pwm_step_count\(6)))) ) ) # ( !\gcontraxt|pwm_step_count\(5) & ( (\gcontraxt|pwm_step_count\(6) & 
-- \gcontraxt|pwm_step_count\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_pwm_step_count\(6),
	datac => \gcontraxt|ALT_INV_pwm_step_count\(4),
	datad => \gcontraxt|ALT_INV_pwm_step_count\(7),
	dataf => \gcontraxt|ALT_INV_pwm_step_count\(5),
	combout => \gcontraxt|LessThan2~0_combout\);

-- Location: FF_X42_Y1_N53
\gcontraxt|pwm_step_count[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~53_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count[17]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N42
\gcontraxt|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~45_sumout\ = SUM(( \gcontraxt|pwm_step_count[14]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~2\ ))
-- \gcontraxt|Add1~46\ = CARRY(( \gcontraxt|pwm_step_count[14]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_pwm_step_count[14]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~2\,
	sumout => \gcontraxt|Add1~45_sumout\,
	cout => \gcontraxt|Add1~46\);

-- Location: FF_X42_Y1_N44
\gcontraxt|pwm_step_count[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~45_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count[14]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N45
\gcontraxt|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~41_sumout\ = SUM(( \gcontraxt|pwm_step_count[15]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~46\ ))
-- \gcontraxt|Add1~42\ = CARRY(( \gcontraxt|pwm_step_count[15]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count[15]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~46\,
	sumout => \gcontraxt|Add1~41_sumout\,
	cout => \gcontraxt|Add1~42\);

-- Location: FF_X42_Y1_N47
\gcontraxt|pwm_step_count[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~41_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count[15]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N48
\gcontraxt|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~49_sumout\ = SUM(( \gcontraxt|pwm_step_count[16]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~42\ ))
-- \gcontraxt|Add1~50\ = CARRY(( \gcontraxt|pwm_step_count[16]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count[16]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~42\,
	sumout => \gcontraxt|Add1~49_sumout\,
	cout => \gcontraxt|Add1~50\);

-- Location: FF_X42_Y1_N50
\gcontraxt|pwm_step_count[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~49_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count[16]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y1_N51
\gcontraxt|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~53_sumout\ = SUM(( \gcontraxt|pwm_step_count[17]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_pwm_step_count[17]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~50\,
	sumout => \gcontraxt|Add1~53_sumout\);

-- Location: FF_X42_Y1_N52
\gcontraxt|pwm_step_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~53_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(17));

-- Location: FF_X42_Y1_N49
\gcontraxt|pwm_step_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~49_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(16));

-- Location: FF_X42_Y1_N43
\gcontraxt|pwm_step_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~45_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(14));

-- Location: FF_X42_Y1_N46
\gcontraxt|pwm_step_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add1~41_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(15));

-- Location: LABCELL_X43_Y1_N33
\gcontraxt|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan2~2_combout\ = ( !\gcontraxt|pwm_step_count\(15) & ( (!\gcontraxt|pwm_step_count\(17) & (!\gcontraxt|pwm_step_count\(16) & !\gcontraxt|pwm_step_count\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_pwm_step_count\(17),
	datac => \gcontraxt|ALT_INV_pwm_step_count\(16),
	datad => \gcontraxt|ALT_INV_pwm_step_count\(14),
	dataf => \gcontraxt|ALT_INV_pwm_step_count\(15),
	combout => \gcontraxt|LessThan2~2_combout\);

-- Location: LABCELL_X43_Y1_N0
\gcontraxt|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan2~3_combout\ = ( \gcontraxt|LessThan2~0_combout\ & ( \gcontraxt|LessThan2~2_combout\ & ( (\gcontraxt|pwm_step_count\(13) & ((\gcontraxt|pwm_step_count\(11)) # (\gcontraxt|pwm_step_count\(12)))) ) ) ) # ( !\gcontraxt|LessThan2~0_combout\ 
-- & ( \gcontraxt|LessThan2~2_combout\ & ( (\gcontraxt|pwm_step_count\(13) & (((!\gcontraxt|LessThan2~1_combout\ & \gcontraxt|pwm_step_count\(11))) # (\gcontraxt|pwm_step_count\(12)))) ) ) ) # ( \gcontraxt|LessThan2~0_combout\ & ( 
-- !\gcontraxt|LessThan2~2_combout\ ) ) # ( !\gcontraxt|LessThan2~0_combout\ & ( !\gcontraxt|LessThan2~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000101010001010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_pwm_step_count\(13),
	datab => \gcontraxt|ALT_INV_LessThan2~1_combout\,
	datac => \gcontraxt|ALT_INV_pwm_step_count\(12),
	datad => \gcontraxt|ALT_INV_pwm_step_count\(11),
	datae => \gcontraxt|ALT_INV_LessThan2~0_combout\,
	dataf => \gcontraxt|ALT_INV_LessThan2~2_combout\,
	combout => \gcontraxt|LessThan2~3_combout\);

-- Location: LABCELL_X43_Y1_N15
\gcontraxt|pwm_count[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_count[1]~0_combout\ = ( \gcontraxt|LessThan2~3_combout\ & ( \gcontraxt|LessThan0~4_combout\ & ( ((\gcontraxt|freq_count\(17) & \gcontraxt|freq_count\(16))) # (\gcontraxt|LessThan1~0_combout\) ) ) ) # ( !\gcontraxt|LessThan2~3_combout\ & ( 
-- \gcontraxt|LessThan0~4_combout\ & ( (\gcontraxt|freq_count\(17) & \gcontraxt|freq_count\(16)) ) ) ) # ( \gcontraxt|LessThan2~3_combout\ & ( !\gcontraxt|LessThan0~4_combout\ & ( ((\gcontraxt|freq_count\(17) & ((\gcontraxt|freq_count\(16)) # 
-- (\gcontraxt|freq_count\(15))))) # (\gcontraxt|LessThan1~0_combout\) ) ) ) # ( !\gcontraxt|LessThan2~3_combout\ & ( !\gcontraxt|LessThan0~4_combout\ & ( (\gcontraxt|freq_count\(17) & ((\gcontraxt|freq_count\(16)) # (\gcontraxt|freq_count\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011010101110111011100000000001100110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_LessThan1~0_combout\,
	datab => \gcontraxt|ALT_INV_freq_count\(17),
	datac => \gcontraxt|ALT_INV_freq_count\(15),
	datad => \gcontraxt|ALT_INV_freq_count\(16),
	datae => \gcontraxt|ALT_INV_LessThan2~3_combout\,
	dataf => \gcontraxt|ALT_INV_LessThan0~4_combout\,
	combout => \gcontraxt|pwm_count[1]~0_combout\);

-- Location: FF_X43_Y1_N58
\gcontraxt|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count~3_combout\,
	ena => \gcontraxt|pwm_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count\(0));

-- Location: LABCELL_X43_Y1_N57
\gcontraxt|pwm_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_count~3_combout\ = ( !\gcontraxt|LessThan0~5_combout\ & ( !\gcontraxt|pwm_count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_pwm_count\(0),
	dataf => \gcontraxt|ALT_INV_LessThan0~5_combout\,
	combout => \gcontraxt|pwm_count~3_combout\);

-- Location: FF_X43_Y1_N59
\gcontraxt|pwm_count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count~3_combout\,
	ena => \gcontraxt|pwm_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count[0]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y1_N51
\gcontraxt|pwm_count~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_count~5_combout\ = ( !\gcontraxt|LessThan0~5_combout\ & ( !\gcontraxt|pwm_count\(2) $ (((!\gcontraxt|pwm_count[0]~DUPLICATE_q\) # (!\gcontraxt|pwm_count[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_pwm_count[0]~DUPLICATE_q\,
	datac => \gcontraxt|ALT_INV_pwm_count[1]~DUPLICATE_q\,
	datad => \gcontraxt|ALT_INV_pwm_count\(2),
	dataf => \gcontraxt|ALT_INV_LessThan0~5_combout\,
	combout => \gcontraxt|pwm_count~5_combout\);

-- Location: FF_X43_Y1_N53
\gcontraxt|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count~5_combout\,
	ena => \gcontraxt|pwm_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count\(2));

-- Location: LABCELL_X43_Y1_N18
\gcontraxt|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan1~0_combout\ = ( !\gcontraxt|pwm_count\(4) & ( (!\gcontraxt|pwm_count\(3)) # ((!\gcontraxt|pwm_count\(2) & (!\gcontraxt|pwm_count[1]~DUPLICATE_q\ & !\gcontraxt|pwm_count[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011110000111110001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_pwm_count\(2),
	datab => \gcontraxt|ALT_INV_pwm_count[1]~DUPLICATE_q\,
	datac => \gcontraxt|ALT_INV_pwm_count\(3),
	datad => \gcontraxt|ALT_INV_pwm_count[0]~DUPLICATE_q\,
	dataf => \gcontraxt|ALT_INV_pwm_count\(4),
	combout => \gcontraxt|LessThan1~0_combout\);

-- Location: LABCELL_X43_Y1_N36
\gcontraxt|pwm_value~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_value~0_combout\ = ( \gcontraxt|LessThan0~5_combout\ & ( \gcontraxt|pwm_value~q\ ) ) # ( !\gcontraxt|LessThan0~5_combout\ & ( \gcontraxt|LessThan1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_LessThan1~0_combout\,
	datad => \gcontraxt|ALT_INV_pwm_value~q\,
	dataf => \gcontraxt|ALT_INV_LessThan0~5_combout\,
	combout => \gcontraxt|pwm_value~0_combout\);

-- Location: FF_X43_Y1_N37
\gcontraxt|pwm_value\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_value~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_value~q\);

-- Location: IOIBUF_X64_Y0_N35
\constrastup~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_constrastup,
	o => \constrastup~input_o\);
END structure;


