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

-- DATE "08/14/2021 22:02:25"

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
	constrastdown : IN std_logic;
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
-- constrastdown	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leddbkey	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- constrastup	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkin	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_constrastdown : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_leddbkey : std_logic;
SIGNAL \constrastdown~input_o\ : std_logic;
SIGNAL \clkin~input_o\ : std_logic;
SIGNAL \clkin~inputCLKENA0_outclk\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \char~17_combout\ : std_logic;
SIGNAL \char[25]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_enable~5_combout\ : std_logic;
SIGNAL \char[8]~DUPLICATE_q\ : std_logic;
SIGNAL \char[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \char~2_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \char~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \char~1_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \char~6_combout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \char~26_combout\ : std_logic;
SIGNAL \char[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \char~25_combout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \char~19_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \char~18_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \char~20_combout\ : std_logic;
SIGNAL \char[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \char~8_combout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \char~21_combout\ : std_logic;
SIGNAL \char[11]~DUPLICATE_q\ : std_logic;
SIGNAL \char[7]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_enable~0_combout\ : std_logic;
SIGNAL \lcd_enable~2_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \char~22_combout\ : std_logic;
SIGNAL \char[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \char~3_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \char~23_combout\ : std_logic;
SIGNAL \char[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \char~4_combout\ : std_logic;
SIGNAL \char[15]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_enable~4_combout\ : std_logic;
SIGNAL \dut|Add0~125_sumout\ : std_logic;
SIGNAL \dut|Add0~50\ : std_logic;
SIGNAL \dut|Add0~53_sumout\ : std_logic;
SIGNAL \dut|Add0~54\ : std_logic;
SIGNAL \dut|Add0~5_sumout\ : std_logic;
SIGNAL \dut|Add0~6\ : std_logic;
SIGNAL \dut|Add0~9_sumout\ : std_logic;
SIGNAL \dut|Add0~10\ : std_logic;
SIGNAL \dut|Add0~113_sumout\ : std_logic;
SIGNAL \dut|LessThan3~4_combout\ : std_logic;
SIGNAL \dut|LessThan8~0_combout\ : std_logic;
SIGNAL \dut|LessThan8~1_combout\ : std_logic;
SIGNAL \dut|LessThan6~0_combout\ : std_logic;
SIGNAL \dut|LessThan8~2_combout\ : std_logic;
SIGNAL \dut|LessThan3~0_combout\ : std_logic;
SIGNAL \dut|Add0~114\ : std_logic;
SIGNAL \dut|Add0~1_sumout\ : std_logic;
SIGNAL \dut|LessThan3~1_combout\ : std_logic;
SIGNAL \dut|busy~2_combout\ : std_logic;
SIGNAL \dut|lcd_data[3]~2_combout\ : std_logic;
SIGNAL \dut|LessThan0~3_combout\ : std_logic;
SIGNAL \dut|LessThan0~0_combout\ : std_logic;
SIGNAL \dut|LessThan9~0_combout\ : std_logic;
SIGNAL \dut|LessThan9~1_combout\ : std_logic;
SIGNAL \dut|LessThan9~3_combout\ : std_logic;
SIGNAL \dut|LessThan9~2_combout\ : std_logic;
SIGNAL \dut|LessThan9~4_combout\ : std_logic;
SIGNAL \dut|LessThan0~6_combout\ : std_logic;
SIGNAL \dut|LessThan9~5_combout\ : std_logic;
SIGNAL \dut|Selector34~0_combout\ : std_logic;
SIGNAL \dut|Selector35~0_combout\ : std_logic;
SIGNAL \dut|state.send~q\ : std_logic;
SIGNAL \dut|LessThan0~1_combout\ : std_logic;
SIGNAL \dut|LessThan0~2_combout\ : std_logic;
SIGNAL \dut|LessThan0~4_combout\ : std_logic;
SIGNAL \dut|lcd_data[3]~1_combout\ : std_logic;
SIGNAL \dut|state.power_up~q\ : std_logic;
SIGNAL \dut|clk_count[5]~2_combout\ : std_logic;
SIGNAL \dut|LessThan7~0_combout\ : std_logic;
SIGNAL \dut|LessThan1~0_combout\ : std_logic;
SIGNAL \dut|LessThan7~1_combout\ : std_logic;
SIGNAL \dut|LessThan6~2_combout\ : std_logic;
SIGNAL \dut|LessThan6~1_combout\ : std_logic;
SIGNAL \dut|LessThan6~3_combout\ : std_logic;
SIGNAL \dut|lcd_data[3]~3_combout\ : std_logic;
SIGNAL \dut|LessThan4~0_combout\ : std_logic;
SIGNAL \dut|LessThan4~1_combout\ : std_logic;
SIGNAL \dut|LessThan3~5_combout\ : std_logic;
SIGNAL \dut|LessThan3~2_combout\ : std_logic;
SIGNAL \dut|LessThan3~9_combout\ : std_logic;
SIGNAL \dut|clk_count[5]~1_combout\ : std_logic;
SIGNAL \dut|LessThan5~0_combout\ : std_logic;
SIGNAL \dut|LessThan5~1_combout\ : std_logic;
SIGNAL \dut|LessThan6~4_combout\ : std_logic;
SIGNAL \dut|LessThan1~1_combout\ : std_logic;
SIGNAL \dut|LessThan1~2_combout\ : std_logic;
SIGNAL \dut|LessThan2~0_combout\ : std_logic;
SIGNAL \dut|LessThan2~1_combout\ : std_logic;
SIGNAL \dut|LessThan3~6_combout\ : std_logic;
SIGNAL \dut|LessThan3~7_combout\ : std_logic;
SIGNAL \dut|clk_count[5]~0_combout\ : std_logic;
SIGNAL \dut|clk_count[5]~3_combout\ : std_logic;
SIGNAL \dut|Add0~126\ : std_logic;
SIGNAL \dut|Add0~121_sumout\ : std_logic;
SIGNAL \dut|Add0~122\ : std_logic;
SIGNAL \dut|Add0~117_sumout\ : std_logic;
SIGNAL \dut|Add0~118\ : std_logic;
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
SIGNAL \dut|clk_count[20]~DUPLICATE_q\ : std_logic;
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
SIGNAL \dut|LessThan0~5_combout\ : std_logic;
SIGNAL \dut|LessThan0~7_combout\ : std_logic;
SIGNAL \dut|LessThan0~8_combout\ : std_logic;
SIGNAL \dut|LessThan3~11_combout\ : std_logic;
SIGNAL \dut|LessThan3~12_combout\ : std_logic;
SIGNAL \dut|busy~4_combout\ : std_logic;
SIGNAL \dut|state~6_combout\ : std_logic;
SIGNAL \dut|Selector33~0_combout\ : std_logic;
SIGNAL \dut|state.initialize~q\ : std_logic;
SIGNAL \dut|lcd_data[3]~0_combout\ : std_logic;
SIGNAL \dut|Selector34~1_combout\ : std_logic;
SIGNAL \dut|Selector34~2_combout\ : std_logic;
SIGNAL \dut|state.ready~q\ : std_logic;
SIGNAL \dut|Selector34~3_combout\ : std_logic;
SIGNAL \dut|busy~q\ : std_logic;
SIGNAL \lcd_enable~3_combout\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \lcd_enable~6_combout\ : std_logic;
SIGNAL \lcd_enable~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \char[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \char~15_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \char~24_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Equal27~11_combout\ : std_logic;
SIGNAL \char[24]~DUPLICATE_q\ : std_logic;
SIGNAL \char~5_combout\ : std_logic;
SIGNAL \Equal27~2_combout\ : std_logic;
SIGNAL \Equal27~3_combout\ : std_logic;
SIGNAL \Equal27~1_combout\ : std_logic;
SIGNAL \Equal27~4_combout\ : std_logic;
SIGNAL \Equal27~0_combout\ : std_logic;
SIGNAL \Equal27~12_combout\ : std_logic;
SIGNAL \Equal27~5_combout\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Equal27~6_combout\ : std_logic;
SIGNAL \Equal27~7_combout\ : std_logic;
SIGNAL \Equal27~8_combout\ : std_logic;
SIGNAL \Equal27~9_combout\ : std_logic;
SIGNAL \Equal27~10_combout\ : std_logic;
SIGNAL \Equal27~13_combout\ : std_logic;
SIGNAL \char~16_combout\ : std_logic;
SIGNAL \char[20]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \char~10_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \char~14_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \char~13_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \char~9_combout\ : std_logic;
SIGNAL \lcd_enable~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \char~11_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \char~12_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \char~7_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~15_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~16_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \dut|rs~0_combout\ : std_logic;
SIGNAL \dut|rs~q\ : std_logic;
SIGNAL \dut|e~q\ : std_logic;
SIGNAL \dut|LessThan3~3_combout\ : std_logic;
SIGNAL \dut|Selector46~3_combout\ : std_logic;
SIGNAL \dut|state.initialize~DUPLICATE_q\ : std_logic;
SIGNAL \dut|Selector46~0_combout\ : std_logic;
SIGNAL \dut|LessThan2~2_combout\ : std_logic;
SIGNAL \dut|LessThan4~2_combout\ : std_logic;
SIGNAL \dut|Selector46~1_combout\ : std_logic;
SIGNAL \dut|Selector46~2_combout\ : std_logic;
SIGNAL \dut|clk_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \dut|LessThan10~0_combout\ : std_logic;
SIGNAL \dut|LessThan10~1_combout\ : std_logic;
SIGNAL \dut|LessThan11~0_combout\ : std_logic;
SIGNAL \dut|LessThan11~1_combout\ : std_logic;
SIGNAL \dut|Selector46~7_combout\ : std_logic;
SIGNAL \dut|LessThan12~0_combout\ : std_logic;
SIGNAL \dut|LessThan12~1_combout\ : std_logic;
SIGNAL \dut|Selector46~6_combout\ : std_logic;
SIGNAL \dut|Selector46~8_combout\ : std_logic;
SIGNAL \dut|busy~3_combout\ : std_logic;
SIGNAL \dut|Selector46~4_combout\ : std_logic;
SIGNAL \dut|LessThan1~3_combout\ : std_logic;
SIGNAL \dut|LessThan3~8_combout\ : std_logic;
SIGNAL \dut|Selector46~5_combout\ : std_logic;
SIGNAL \dut|Selector46~9_combout\ : std_logic;
SIGNAL \dut|e~DUPLICATE_q\ : std_logic;
SIGNAL \dut|Selector45~0_combout\ : std_logic;
SIGNAL \dut|LessThan3~10_combout\ : std_logic;
SIGNAL \dut|busy~5_combout\ : std_logic;
SIGNAL \dut|Selector45~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \s0~3_combout\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \process_1:char[23]~0_combout\ : std_logic;
SIGNAL \process_1:char[0]~q\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \process_1:char[1]~q\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
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
SIGNAL \process_1:char[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \process_1:char[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \process_1:char[8]~q\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \process_1:char[9]~q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \process_1:char[10]~q\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \process_1:char[11]~q\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \process_1:char[12]~q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \process_1:char[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \process_1:char[14]~q\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \process_1:char[15]~q\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \process_1:char[16]~q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \process_1:char[17]~q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \process_1:char[18]~q\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \process_1:char[19]~q\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \process_1:char[20]~q\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \process_1:char[21]~q\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \process_1:char[22]~q\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \process_1:char[23]~q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \process_1:char[24]~q\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \process_1:char[25]~q\ : std_logic;
SIGNAL \process_1:char[16]~DUPLICATE_q\ : std_logic;
SIGNAL \process_1:char[13]~q\ : std_logic;
SIGNAL \Equal28~0_combout\ : std_logic;
SIGNAL \Equal28~1_combout\ : std_logic;
SIGNAL \process_1:char[11]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \process_1:char[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \process_1:char[2]~q\ : std_logic;
SIGNAL \Equal28~3_combout\ : std_logic;
SIGNAL \process_1:char[6]~q\ : std_logic;
SIGNAL \Equal28~2_combout\ : std_logic;
SIGNAL \process_1:char[7]~q\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \Equal28~4_combout\ : std_logic;
SIGNAL \s0[0]~0_combout\ : std_logic;
SIGNAL \s0~1_combout\ : std_logic;
SIGNAL \s0~2_combout\ : std_logic;
SIGNAL \s0~4_combout\ : std_logic;
SIGNAL \s0[2]~DUPLICATE_q\ : std_logic;
SIGNAL \s0[1]~DUPLICATE_q\ : std_logic;
SIGNAL \s1[0]~0_combout\ : std_logic;
SIGNAL \s1~2_combout\ : std_logic;
SIGNAL \s1~3_combout\ : std_logic;
SIGNAL \s1[2]~DUPLICATE_q\ : std_logic;
SIGNAL \s1~1_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \m0[0]~1_combout\ : std_logic;
SIGNAL \m0~3_combout\ : std_logic;
SIGNAL \m0~4_combout\ : std_logic;
SIGNAL \m0[3]~DUPLICATE_q\ : std_logic;
SIGNAL \m0~0_combout\ : std_logic;
SIGNAL \m0[0]~DUPLICATE_q\ : std_logic;
SIGNAL \m0~2_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \m1[0]~1_combout\ : std_logic;
SIGNAL \m1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \m1~2_combout\ : std_logic;
SIGNAL \m1~3_combout\ : std_logic;
SIGNAL \m1~0_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \h0[0]~1_combout\ : std_logic;
SIGNAL \h0[3]~DUPLICATE_q\ : std_logic;
SIGNAL \h0~4_combout\ : std_logic;
SIGNAL \h0~5_combout\ : std_logic;
SIGNAL \h0~3_combout\ : std_logic;
SIGNAL \h0~2_combout\ : std_logic;
SIGNAL \h1[0]~0_combout\ : std_logic;
SIGNAL \h1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \h0~0_combout\ : std_logic;
SIGNAL \h0[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \constrastup~input_o\ : std_logic;
SIGNAL \constrastup~inputCLKENA0_outclk\ : std_logic;
SIGNAL \month~2_combout\ : std_logic;
SIGNAL \month[2]~DUPLICATE_q\ : std_logic;
SIGNAL \month~0_combout\ : std_logic;
SIGNAL \month[3]~DUPLICATE_q\ : std_logic;
SIGNAL \month~1_combout\ : std_logic;
SIGNAL \month[1]~DUPLICATE_q\ : std_logic;
SIGNAL \month[0]~DUPLICATE_q\ : std_logic;
SIGNAL \month~3_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Selector9~7_combout\ : std_logic;
SIGNAL \Selector9~8_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Selector9~5_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Equal27~14_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Selector9~4_combout\ : std_logic;
SIGNAL \Selector9~6_combout\ : std_logic;
SIGNAL \apm[10]~0_combout\ : std_logic;
SIGNAL \apm[10]~1_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \Selector9~9_combout\ : std_logic;
SIGNAL \dut|lcd_data[3]~4_combout\ : std_logic;
SIGNAL \dut|busy~6_combout\ : std_logic;
SIGNAL \dut|LessThan4~3_combout\ : std_logic;
SIGNAL \dut|Selector44~0_combout\ : std_logic;
SIGNAL \dut|Selector44~1_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \months[25]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \h0[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Selector8~4_combout\ : std_logic;
SIGNAL \Selector8~5_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Selector8~6_combout\ : std_logic;
SIGNAL \Selector8~7_combout\ : std_logic;
SIGNAL \Selector8~8_combout\ : std_logic;
SIGNAL \dut|Selector42~0_combout\ : std_logic;
SIGNAL \dut|Selector44~2_combout\ : std_logic;
SIGNAL \dut|Selector43~0_combout\ : std_logic;
SIGNAL \dut|Selector43~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \Selector7~6_combout\ : std_logic;
SIGNAL \Selector7~7_combout\ : std_logic;
SIGNAL \dut|Selector42~1_combout\ : std_logic;
SIGNAL \dut|LessThan3~13_combout\ : std_logic;
SIGNAL \dut|Selector42~2_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Equal16~0_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~5_combout\ : std_logic;
SIGNAL \months[68]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~6_combout\ : std_logic;
SIGNAL \dut|Selector44~3_combout\ : std_logic;
SIGNAL \dut|Selector41~0_combout\ : std_logic;
SIGNAL \dut|lcd_data[4]~feeder_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector5~5_combout\ : std_logic;
SIGNAL \Selector5~6_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \dut|lcd_data[6]~feeder_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Selector3~6_combout\ : std_logic;
SIGNAL \dut|lcd_data[7]~feeder_combout\ : std_logic;
SIGNAL \lcd_bus~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \gcontraxt|Add0~69_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~10\ : std_logic;
SIGNAL \gcontraxt|Add0~5_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~6\ : std_logic;
SIGNAL \gcontraxt|Add0~1_sumout\ : std_logic;
SIGNAL \gcontraxt|freq_count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|freq_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|LessThan0~3_combout\ : std_logic;
SIGNAL \gcontraxt|LessThan0~1_combout\ : std_logic;
SIGNAL \gcontraxt|LessThan0~2_combout\ : std_logic;
SIGNAL \gcontraxt|LessThan0~0_combout\ : std_logic;
SIGNAL \gcontraxt|LessThan0~4_combout\ : std_logic;
SIGNAL \gcontraxt|LessThan0~5_combout\ : std_logic;
SIGNAL \gcontraxt|Add0~70\ : std_logic;
SIGNAL \gcontraxt|Add0~25_sumout\ : std_logic;
SIGNAL \gcontraxt|freq_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add0~26\ : std_logic;
SIGNAL \gcontraxt|Add0~29_sumout\ : std_logic;
SIGNAL \gcontraxt|freq_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add0~30\ : std_logic;
SIGNAL \gcontraxt|Add0~21_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~22\ : std_logic;
SIGNAL \gcontraxt|Add0~45_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~46\ : std_logic;
SIGNAL \gcontraxt|Add0~41_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~42\ : std_logic;
SIGNAL \gcontraxt|Add0~37_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~38\ : std_logic;
SIGNAL \gcontraxt|Add0~33_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~34\ : std_logic;
SIGNAL \gcontraxt|Add0~53_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~54\ : std_logic;
SIGNAL \gcontraxt|Add0~49_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~50\ : std_logic;
SIGNAL \gcontraxt|Add0~17_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~18\ : std_logic;
SIGNAL \gcontraxt|Add0~13_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~14\ : std_logic;
SIGNAL \gcontraxt|Add0~65_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~66\ : std_logic;
SIGNAL \gcontraxt|Add0~61_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~62\ : std_logic;
SIGNAL \gcontraxt|Add0~57_sumout\ : std_logic;
SIGNAL \gcontraxt|Add0~58\ : std_logic;
SIGNAL \gcontraxt|Add0~9_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_count~1_combout\ : std_logic;
SIGNAL \gcontraxt|Add1~69_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_count~4_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|pwm_count[4]~5_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[17]~0_combout\ : std_logic;
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
SIGNAL \gcontraxt|Add1~14\ : std_logic;
SIGNAL \gcontraxt|Add1~37_sumout\ : std_logic;
SIGNAL \gcontraxt|Add1~38\ : std_logic;
SIGNAL \gcontraxt|Add1~33_sumout\ : std_logic;
SIGNAL \gcontraxt|Add1~34\ : std_logic;
SIGNAL \gcontraxt|Add1~29_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~30\ : std_logic;
SIGNAL \gcontraxt|Add1~9_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~10\ : std_logic;
SIGNAL \gcontraxt|Add1~5_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~6\ : std_logic;
SIGNAL \gcontraxt|Add1~1_sumout\ : std_logic;
SIGNAL \gcontraxt|Add1~2\ : std_logic;
SIGNAL \gcontraxt|Add1~53_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~54\ : std_logic;
SIGNAL \gcontraxt|Add1~49_sumout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add1~50\ : std_logic;
SIGNAL \gcontraxt|Add1~45_sumout\ : std_logic;
SIGNAL \gcontraxt|Add1~46\ : std_logic;
SIGNAL \gcontraxt|Add1~41_sumout\ : std_logic;
SIGNAL \gcontraxt|LessThan2~2_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[13]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|LessThan2~1_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_step_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|LessThan2~0_combout\ : std_logic;
SIGNAL \gcontraxt|LessThan2~3_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_count[1]~2_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_count~3_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|Add2~0_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_count[3]~0_combout\ : std_logic;
SIGNAL \gcontraxt|LessThan1~0_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_value~0_combout\ : std_logic;
SIGNAL \gcontraxt|pwm_value~q\ : std_logic;
SIGNAL month : std_logic_vector(3 DOWNTO 0);
SIGNAL m0 : std_logic_vector(3 DOWNTO 0);
SIGNAL h1 : std_logic_vector(3 DOWNTO 0);
SIGNAL s1 : std_logic_vector(3 DOWNTO 0);
SIGNAL h0 : std_logic_vector(3 DOWNTO 0);
SIGNAL m1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL s0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL months : std_logic_vector(71 DOWNTO 0);
SIGNAL \gcontraxt|freq_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL lcd_bus : std_logic_vector(9 DOWNTO 0);
SIGNAL char : std_logic_vector(25 DOWNTO 0);
SIGNAL \gcontraxt|pwm_step_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \gcontraxt|pwm_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL apm : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_month[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_month[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_month[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_month[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_m0[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_h0[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_s1[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_s0[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_months[68]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_s0[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_h0[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_months[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_m0[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_h1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_h0[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_m1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_count[3]~DUPLICATE_q\ : std_logic;
SIGNAL \dut|ALT_INV_state.initialize~DUPLICATE_q\ : std_logic;
SIGNAL \dut|ALT_INV_e~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[16]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[16]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[24]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_char[1]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_freq_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_freq_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_freq_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_freq_count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \dut|ALT_INV_clk_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \dut|ALT_INV_clk_count[20]~DUPLICATE_q\ : std_logic;
SIGNAL \dut|ALT_INV_clk_count[21]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_~GND~combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~16_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ALT_INV_h0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_apm[10]~0_combout\ : std_logic;
SIGNAL \ALT_INV_s1[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_s0[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal28~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal28~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal28~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal28~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal28~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL ALT_INV_month : std_logic_vector(3 DOWNTO 0);
SIGNAL \gcontraxt|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL ALT_INV_months : std_logic_vector(68 DOWNTO 8);
SIGNAL \ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_lcd_bus~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~5_combout\ : std_logic;
SIGNAL ALT_INV_m0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Selector6~4_combout\ : std_logic;
SIGNAL ALT_INV_s0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Selector6~3_combout\ : std_logic;
SIGNAL ALT_INV_h0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~14_combout\ : std_logic;
SIGNAL \ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~4_combout\ : std_logic;
SIGNAL ALT_INV_s1 : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_Selector7~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL ALT_INV_m1 : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~13_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~8_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~4_combout\ : std_logic;
SIGNAL ALT_INV_h1 : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_Equal12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~11_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~14_combout\ : std_logic;
SIGNAL \ALT_INV_char~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL ALT_INV_apm : std_logic_vector(10 DOWNTO 10);
SIGNAL \ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~5_combout\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~4_combout\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~3_combout\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideNor0~combout\ : std_logic;
SIGNAL \dut|ALT_INV_busy~q\ : std_logic;
SIGNAL \ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~13_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~12_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~11_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~10_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~9_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~8_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_char~7_combout\ : std_logic;
SIGNAL \ALT_INV_char~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~1_combout\ : std_logic;
SIGNAL \ALT_INV_char~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_char~2_combout\ : std_logic;
SIGNAL \ALT_INV_char~1_combout\ : std_logic;
SIGNAL \ALT_INV_char~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector34~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_clk_count[5]~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector34~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_clk_count[5]~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_clk_count[5]~0_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \gcontraxt|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL ALT_INV_lcd_bus : std_logic_vector(9 DOWNTO 0);
SIGNAL \dut|ALT_INV_Selector41~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector44~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector42~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~13_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector43~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector44~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector42~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector44~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_busy~6_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan4~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_lcd_data[3]~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_lcd_data[3]~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_state~6_combout\ : std_logic;
SIGNAL \dut|ALT_INV_lcd_data[3]~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_lcd_data[3]~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector45~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_busy~5_combout\ : std_logic;
SIGNAL \dut|ALT_INV_busy~4_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~12_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~11_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~10_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~8_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~7_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan11~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan11~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~6_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan9~5_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan9~4_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan9~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan9~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan10~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan10~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan12~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan12~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan9~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~5_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~4_combout\ : std_logic;
SIGNAL \dut|ALT_INV_busy~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan8~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan8~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan4~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_busy~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_Selector46~0_combout\ : std_logic;
SIGNAL \dut|ALT_INV_state.send~q\ : std_logic;
SIGNAL \dut|ALT_INV_state.initialize~q\ : std_logic;
SIGNAL \ALT_INV_lcd_enable~q\ : std_logic;
SIGNAL \dut|ALT_INV_state.ready~q\ : std_logic;
SIGNAL \dut|ALT_INV_state.power_up~q\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \dut|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_value~q\ : std_logic;
SIGNAL \dut|ALT_INV_e~q\ : std_logic;
SIGNAL \dut|ALT_INV_rs~q\ : std_logic;
SIGNAL \gcontraxt|ALT_INV_pwm_step_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \gcontraxt|ALT_INV_freq_count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \dut|ALT_INV_clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_process_1:char[0]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[1]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[2]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[3]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[4]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[5]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[6]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[19]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[20]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[21]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[22]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[23]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[15]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[14]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[13]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[12]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[9]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[10]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[8]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[11]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[7]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[18]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[17]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[16]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[24]~q\ : std_logic;
SIGNAL \ALT_INV_process_1:char[25]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL ALT_INV_char : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
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
ww_constrastdown <= constrastdown;
led <= ww_led;
leddbkey <= ww_leddbkey;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_month[3]~DUPLICATE_q\ <= NOT \month[3]~DUPLICATE_q\;
\ALT_INV_month[2]~DUPLICATE_q\ <= NOT \month[2]~DUPLICATE_q\;
\ALT_INV_month[1]~DUPLICATE_q\ <= NOT \month[1]~DUPLICATE_q\;
\ALT_INV_month[0]~DUPLICATE_q\ <= NOT \month[0]~DUPLICATE_q\;
\ALT_INV_m0[3]~DUPLICATE_q\ <= NOT \m0[3]~DUPLICATE_q\;
\ALT_INV_h0[3]~DUPLICATE_q\ <= NOT \h0[3]~DUPLICATE_q\;
\ALT_INV_s1[2]~DUPLICATE_q\ <= NOT \s1[2]~DUPLICATE_q\;
\ALT_INV_s0[2]~DUPLICATE_q\ <= NOT \s0[2]~DUPLICATE_q\;
\ALT_INV_months[68]~DUPLICATE_q\ <= NOT \months[68]~DUPLICATE_q\;
\ALT_INV_s0[1]~DUPLICATE_q\ <= NOT \s0[1]~DUPLICATE_q\;
\ALT_INV_h0[1]~DUPLICATE_q\ <= NOT \h0[1]~DUPLICATE_q\;
\ALT_INV_months[25]~DUPLICATE_q\ <= NOT \months[25]~DUPLICATE_q\;
\ALT_INV_m0[0]~DUPLICATE_q\ <= NOT \m0[0]~DUPLICATE_q\;
\ALT_INV_h1[0]~DUPLICATE_q\ <= NOT \h1[0]~DUPLICATE_q\;
\ALT_INV_h0[0]~DUPLICATE_q\ <= NOT \h0[0]~DUPLICATE_q\;
\ALT_INV_m1[0]~DUPLICATE_q\ <= NOT \m1[0]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_count[1]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_count[1]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_count[3]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_count[3]~DUPLICATE_q\;
\dut|ALT_INV_state.initialize~DUPLICATE_q\ <= NOT \dut|state.initialize~DUPLICATE_q\;
\dut|ALT_INV_e~DUPLICATE_q\ <= NOT \dut|e~DUPLICATE_q\;
\ALT_INV_process_1:char[2]~DUPLICATE_q\ <= NOT \process_1:char[2]~DUPLICATE_q\;
\ALT_INV_process_1:char[6]~DUPLICATE_q\ <= NOT \process_1:char[6]~DUPLICATE_q\;
\ALT_INV_process_1:char[13]~DUPLICATE_q\ <= NOT \process_1:char[13]~DUPLICATE_q\;
\ALT_INV_process_1:char[11]~DUPLICATE_q\ <= NOT \process_1:char[11]~DUPLICATE_q\;
\ALT_INV_process_1:char[7]~DUPLICATE_q\ <= NOT \process_1:char[7]~DUPLICATE_q\;
\ALT_INV_process_1:char[16]~DUPLICATE_q\ <= NOT \process_1:char[16]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[14]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[14]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[15]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[15]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[16]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[16]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[9]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[9]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[10]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[10]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[5]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[5]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[6]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[6]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[7]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[7]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[11]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[11]~DUPLICATE_q\;
\gcontraxt|ALT_INV_pwm_step_count[13]~DUPLICATE_q\ <= NOT \gcontraxt|pwm_step_count[13]~DUPLICATE_q\;
\ALT_INV_char[5]~DUPLICATE_q\ <= NOT \char[5]~DUPLICATE_q\;
\ALT_INV_char[15]~DUPLICATE_q\ <= NOT \char[15]~DUPLICATE_q\;
\ALT_INV_char[14]~DUPLICATE_q\ <= NOT \char[14]~DUPLICATE_q\;
\ALT_INV_char[12]~DUPLICATE_q\ <= NOT \char[12]~DUPLICATE_q\;
\ALT_INV_char[11]~DUPLICATE_q\ <= NOT \char[11]~DUPLICATE_q\;
\ALT_INV_char[9]~DUPLICATE_q\ <= NOT \char[9]~DUPLICATE_q\;
\ALT_INV_char[7]~DUPLICATE_q\ <= NOT \char[7]~DUPLICATE_q\;
\ALT_INV_char[8]~DUPLICATE_q\ <= NOT \char[8]~DUPLICATE_q\;
\ALT_INV_char[25]~DUPLICATE_q\ <= NOT \char[25]~DUPLICATE_q\;
\ALT_INV_char[20]~DUPLICATE_q\ <= NOT \char[20]~DUPLICATE_q\;
\ALT_INV_char[19]~DUPLICATE_q\ <= NOT \char[19]~DUPLICATE_q\;
\ALT_INV_char[24]~DUPLICATE_q\ <= NOT \char[24]~DUPLICATE_q\;
\ALT_INV_char[1]~DUPLICATE_q\ <= NOT \char[1]~DUPLICATE_q\;
\gcontraxt|ALT_INV_freq_count[2]~DUPLICATE_q\ <= NOT \gcontraxt|freq_count[2]~DUPLICATE_q\;
\gcontraxt|ALT_INV_freq_count[1]~DUPLICATE_q\ <= NOT \gcontraxt|freq_count[1]~DUPLICATE_q\;
\gcontraxt|ALT_INV_freq_count[11]~DUPLICATE_q\ <= NOT \gcontraxt|freq_count[11]~DUPLICATE_q\;
\gcontraxt|ALT_INV_freq_count[17]~DUPLICATE_q\ <= NOT \gcontraxt|freq_count[17]~DUPLICATE_q\;
\dut|ALT_INV_clk_count[1]~DUPLICATE_q\ <= NOT \dut|clk_count[1]~DUPLICATE_q\;
\dut|ALT_INV_clk_count[20]~DUPLICATE_q\ <= NOT \dut|clk_count[20]~DUPLICATE_q\;
\dut|ALT_INV_clk_count[21]~DUPLICATE_q\ <= NOT \dut|clk_count[21]~DUPLICATE_q\;
\ALT_INV_~GND~combout\ <= NOT \~GND~combout\;
\ALT_INV_Equal0~16_combout\ <= NOT \Equal0~16_combout\;
\ALT_INV_Equal0~15_combout\ <= NOT \Equal0~15_combout\;
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
\ALT_INV_h0~2_combout\ <= NOT \h0~2_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_apm[10]~0_combout\ <= NOT \apm[10]~0_combout\;
\ALT_INV_s1[0]~0_combout\ <= NOT \s1[0]~0_combout\;
\ALT_INV_s0[0]~0_combout\ <= NOT \s0[0]~0_combout\;
\ALT_INV_Equal28~4_combout\ <= NOT \Equal28~4_combout\;
\ALT_INV_Equal28~3_combout\ <= NOT \Equal28~3_combout\;
\ALT_INV_Equal28~2_combout\ <= NOT \Equal28~2_combout\;
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_Equal28~1_combout\ <= NOT \Equal28~1_combout\;
\ALT_INV_Equal28~0_combout\ <= NOT \Equal28~0_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
\ALT_INV_LessThan5~0_combout\ <= NOT \LessThan5~0_combout\;
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
ALT_INV_month(3) <= NOT month(3);
ALT_INV_month(2) <= NOT month(2);
ALT_INV_month(1) <= NOT month(1);
ALT_INV_month(0) <= NOT month(0);
\gcontraxt|ALT_INV_Add2~0_combout\ <= NOT \gcontraxt|Add2~0_combout\;
\gcontraxt|ALT_INV_LessThan2~3_combout\ <= NOT \gcontraxt|LessThan2~3_combout\;
\gcontraxt|ALT_INV_LessThan2~2_combout\ <= NOT \gcontraxt|LessThan2~2_combout\;
\gcontraxt|ALT_INV_LessThan2~1_combout\ <= NOT \gcontraxt|LessThan2~1_combout\;
\gcontraxt|ALT_INV_LessThan2~0_combout\ <= NOT \gcontraxt|LessThan2~0_combout\;
\gcontraxt|ALT_INV_LessThan0~5_combout\ <= NOT \gcontraxt|LessThan0~5_combout\;
\ALT_INV_Selector2~1_combout\ <= NOT \Selector2~1_combout\;
ALT_INV_months(23) <= NOT months(23);
ALT_INV_months(15) <= NOT months(15);
\ALT_INV_Equal11~0_combout\ <= NOT \Equal11~0_combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
ALT_INV_months(31) <= NOT months(31);
\ALT_INV_lcd_bus~0_combout\ <= NOT \lcd_bus~0_combout\;
\ALT_INV_Selector3~5_combout\ <= NOT \Selector3~5_combout\;
\ALT_INV_Selector3~4_combout\ <= NOT \Selector3~4_combout\;
ALT_INV_months(30) <= NOT months(30);
ALT_INV_months(14) <= NOT months(14);
\ALT_INV_Selector3~3_combout\ <= NOT \Selector3~3_combout\;
ALT_INV_months(22) <= NOT months(22);
\ALT_INV_Selector3~2_combout\ <= NOT \Selector3~2_combout\;
ALT_INV_months(39) <= NOT months(39);
\ALT_INV_Selector3~1_combout\ <= NOT \Selector3~1_combout\;
ALT_INV_months(46) <= NOT months(46);
\ALT_INV_Equal21~0_combout\ <= NOT \Equal21~0_combout\;
\ALT_INV_Equal8~0_combout\ <= NOT \Equal8~0_combout\;
\ALT_INV_Selector5~5_combout\ <= NOT \Selector5~5_combout\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_Selector5~4_combout\ <= NOT \Selector5~4_combout\;
ALT_INV_months(36) <= NOT months(36);
ALT_INV_months(20) <= NOT months(20);
\ALT_INV_Equal9~0_combout\ <= NOT \Equal9~0_combout\;
\ALT_INV_Selector5~3_combout\ <= NOT \Selector5~3_combout\;
ALT_INV_months(60) <= NOT months(60);
ALT_INV_months(52) <= NOT months(52);
\ALT_INV_Selector5~2_combout\ <= NOT \Selector5~2_combout\;
ALT_INV_months(28) <= NOT months(28);
ALT_INV_months(12) <= NOT months(12);
\ALT_INV_Selector5~1_combout\ <= NOT \Selector5~1_combout\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
ALT_INV_months(44) <= NOT months(44);
\ALT_INV_Selector6~5_combout\ <= NOT \Selector6~5_combout\;
ALT_INV_m0(3) <= NOT m0(3);
\ALT_INV_Selector6~4_combout\ <= NOT \Selector6~4_combout\;
ALT_INV_s0(3) <= NOT s0(3);
ALT_INV_months(43) <= NOT months(43);
\ALT_INV_Selector6~3_combout\ <= NOT \Selector6~3_combout\;
ALT_INV_h0(3) <= NOT h0(3);
ALT_INV_months(35) <= NOT months(35);
ALT_INV_months(19) <= NOT months(19);
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal18~0_combout\ <= NOT \Equal18~0_combout\;
\ALT_INV_Equal16~0_combout\ <= NOT \Equal16~0_combout\;
\ALT_INV_Selector6~2_combout\ <= NOT \Selector6~2_combout\;
ALT_INV_months(67) <= NOT months(67);
\ALT_INV_Equal5~1_combout\ <= NOT \Equal5~1_combout\;
\ALT_INV_Equal0~14_combout\ <= NOT \Equal0~14_combout\;
\ALT_INV_Equal10~0_combout\ <= NOT \Equal10~0_combout\;
\ALT_INV_Selector6~1_combout\ <= NOT \Selector6~1_combout\;
ALT_INV_months(59) <= NOT months(59);
ALT_INV_months(51) <= NOT months(51);
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
ALT_INV_months(11) <= NOT months(11);
\ALT_INV_Selector7~6_combout\ <= NOT \Selector7~6_combout\;
\ALT_INV_Selector7~5_combout\ <= NOT \Selector7~5_combout\;
ALT_INV_months(58) <= NOT months(58);
ALT_INV_months(50) <= NOT months(50);
ALT_INV_m0(2) <= NOT m0(2);
\ALT_INV_Selector7~4_combout\ <= NOT \Selector7~4_combout\;
ALT_INV_s1(2) <= NOT s1(2);
ALT_INV_s0(2) <= NOT s0(2);
\ALT_INV_Selector7~3_combout\ <= NOT \Selector7~3_combout\;
ALT_INV_months(66) <= NOT months(66);
ALT_INV_months(42) <= NOT months(42);
\ALT_INV_Selector7~2_combout\ <= NOT \Selector7~2_combout\;
ALT_INV_h0(2) <= NOT h0(2);
ALT_INV_m1(2) <= NOT m1(2);
\ALT_INV_Selector7~1_combout\ <= NOT \Selector7~1_combout\;
ALT_INV_months(34) <= NOT months(34);
\ALT_INV_Equal0~13_combout\ <= NOT \Equal0~13_combout\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
ALT_INV_months(26) <= NOT months(26);
\ALT_INV_Selector8~7_combout\ <= NOT \Selector8~7_combout\;
\ALT_INV_Selector8~6_combout\ <= NOT \Selector8~6_combout\;
ALT_INV_months(33) <= NOT months(33);
ALT_INV_months(65) <= NOT months(65);
\ALT_INV_Selector8~5_combout\ <= NOT \Selector8~5_combout\;
\ALT_INV_Selector8~4_combout\ <= NOT \Selector8~4_combout\;
ALT_INV_months(57) <= NOT months(57);
ALT_INV_months(49) <= NOT months(49);
\ALT_INV_Equal5~0_combout\ <= NOT \Equal5~0_combout\;
\ALT_INV_Selector8~3_combout\ <= NOT \Selector8~3_combout\;
ALT_INV_months(68) <= NOT months(68);
ALT_INV_m0(1) <= NOT m0(1);
ALT_INV_s1(1) <= NOT s1(1);
\ALT_INV_Selector8~2_combout\ <= NOT \Selector8~2_combout\;
ALT_INV_s0(1) <= NOT s0(1);
ALT_INV_months(41) <= NOT months(41);
\ALT_INV_Selector8~1_combout\ <= NOT \Selector8~1_combout\;
ALT_INV_h0(1) <= NOT h0(1);
ALT_INV_m1(1) <= NOT m1(1);
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
ALT_INV_months(18) <= NOT months(18);
\ALT_INV_Selector9~8_combout\ <= NOT \Selector9~8_combout\;
\ALT_INV_Selector9~7_combout\ <= NOT \Selector9~7_combout\;
ALT_INV_months(32) <= NOT months(32);
ALT_INV_months(25) <= NOT months(25);
ALT_INV_m0(0) <= NOT m0(0);
\ALT_INV_Equal4~1_combout\ <= NOT \Equal4~1_combout\;
\ALT_INV_Equal0~12_combout\ <= NOT \Equal0~12_combout\;
\ALT_INV_Selector9~6_combout\ <= NOT \Selector9~6_combout\;
\ALT_INV_Selector9~5_combout\ <= NOT \Selector9~5_combout\;
ALT_INV_months(56) <= NOT months(56);
ALT_INV_months(48) <= NOT months(48);
\ALT_INV_Equal13~0_combout\ <= NOT \Equal13~0_combout\;
\ALT_INV_Selector9~4_combout\ <= NOT \Selector9~4_combout\;
ALT_INV_h1(0) <= NOT h1(0);
ALT_INV_months(64) <= NOT months(64);
\ALT_INV_Equal12~1_combout\ <= NOT \Equal12~1_combout\;
\ALT_INV_Equal12~0_combout\ <= NOT \Equal12~0_combout\;
\ALT_INV_Equal0~11_combout\ <= NOT \Equal0~11_combout\;
\ALT_INV_Equal0~10_combout\ <= NOT \Equal0~10_combout\;
\ALT_INV_Selector9~3_combout\ <= NOT \Selector9~3_combout\;
ALT_INV_s1(0) <= NOT s1(0);
ALT_INV_months(40) <= NOT months(40);
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
\ALT_INV_Equal7~1_combout\ <= NOT \Equal7~1_combout\;
\ALT_INV_Equal0~9_combout\ <= NOT \Equal0~9_combout\;
\ALT_INV_Equal27~14_combout\ <= NOT \Equal27~14_combout\;
\ALT_INV_char~8_combout\ <= NOT \char~8_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Selector9~2_combout\ <= NOT \Selector9~2_combout\;
ALT_INV_h0(0) <= NOT h0(0);
ALT_INV_m1(0) <= NOT m1(0);
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Selector9~1_combout\ <= NOT \Selector9~1_combout\;
ALT_INV_s0(0) <= NOT s0(0);
ALT_INV_apm(10) <= NOT apm(10);
\ALT_INV_Equal7~0_combout\ <= NOT \Equal7~0_combout\;
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
ALT_INV_months(24) <= NOT months(24);
ALT_INV_months(8) <= NOT months(8);
\ALT_INV_Equal15~0_combout\ <= NOT \Equal15~0_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_Equal0~8_combout\ <= NOT \Equal0~8_combout\;
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_lcd_enable~5_combout\ <= NOT \lcd_enable~5_combout\;
\ALT_INV_lcd_enable~4_combout\ <= NOT \lcd_enable~4_combout\;
\ALT_INV_lcd_enable~3_combout\ <= NOT \lcd_enable~3_combout\;
\ALT_INV_lcd_enable~2_combout\ <= NOT \lcd_enable~2_combout\;
\ALT_INV_WideNor0~combout\ <= NOT \WideNor0~combout\;
\dut|ALT_INV_busy~q\ <= NOT \dut|busy~q\;
\ALT_INV_WideNor0~0_combout\ <= NOT \WideNor0~0_combout\;
\ALT_INV_Equal27~13_combout\ <= NOT \Equal27~13_combout\;
\ALT_INV_Equal27~12_combout\ <= NOT \Equal27~12_combout\;
\ALT_INV_Equal27~11_combout\ <= NOT \Equal27~11_combout\;
\ALT_INV_Equal27~10_combout\ <= NOT \Equal27~10_combout\;
\ALT_INV_Equal27~9_combout\ <= NOT \Equal27~9_combout\;
\ALT_INV_Equal27~8_combout\ <= NOT \Equal27~8_combout\;
\ALT_INV_Equal27~7_combout\ <= NOT \Equal27~7_combout\;
\ALT_INV_Equal27~6_combout\ <= NOT \Equal27~6_combout\;
\ALT_INV_Equal27~5_combout\ <= NOT \Equal27~5_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_char~7_combout\ <= NOT \char~7_combout\;
\ALT_INV_char~6_combout\ <= NOT \char~6_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal27~4_combout\ <= NOT \Equal27~4_combout\;
\ALT_INV_Equal27~3_combout\ <= NOT \Equal27~3_combout\;
\ALT_INV_Equal27~2_combout\ <= NOT \Equal27~2_combout\;
\ALT_INV_Equal27~1_combout\ <= NOT \Equal27~1_combout\;
\ALT_INV_char~5_combout\ <= NOT \char~5_combout\;
\ALT_INV_Equal27~0_combout\ <= NOT \Equal27~0_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_char~2_combout\ <= NOT \char~2_combout\;
\ALT_INV_char~1_combout\ <= NOT \char~1_combout\;
\ALT_INV_char~0_combout\ <= NOT \char~0_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_lcd_enable~1_combout\ <= NOT \lcd_enable~1_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_lcd_enable~0_combout\ <= NOT \lcd_enable~0_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\dut|ALT_INV_Selector34~1_combout\ <= NOT \dut|Selector34~1_combout\;
\dut|ALT_INV_clk_count[5]~2_combout\ <= NOT \dut|clk_count[5]~2_combout\;
\dut|ALT_INV_Selector34~0_combout\ <= NOT \dut|Selector34~0_combout\;
\dut|ALT_INV_clk_count[5]~1_combout\ <= NOT \dut|clk_count[5]~1_combout\;
\dut|ALT_INV_clk_count[5]~0_combout\ <= NOT \dut|clk_count[5]~0_combout\;
\gcontraxt|ALT_INV_LessThan1~0_combout\ <= NOT \gcontraxt|LessThan1~0_combout\;
\gcontraxt|ALT_INV_pwm_count\(2) <= NOT \gcontraxt|pwm_count\(2);
\gcontraxt|ALT_INV_pwm_count\(1) <= NOT \gcontraxt|pwm_count\(1);
\gcontraxt|ALT_INV_pwm_count\(0) <= NOT \gcontraxt|pwm_count\(0);
\gcontraxt|ALT_INV_pwm_count\(3) <= NOT \gcontraxt|pwm_count\(3);
\gcontraxt|ALT_INV_pwm_count\(4) <= NOT \gcontraxt|pwm_count\(4);
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
\dut|ALT_INV_LessThan3~13_combout\ <= NOT \dut|LessThan3~13_combout\;
ALT_INV_lcd_bus(2) <= NOT lcd_bus(2);
\dut|ALT_INV_Selector43~0_combout\ <= NOT \dut|Selector43~0_combout\;
\dut|ALT_INV_Selector44~2_combout\ <= NOT \dut|Selector44~2_combout\;
\dut|ALT_INV_Selector42~0_combout\ <= NOT \dut|Selector42~0_combout\;
ALT_INV_lcd_bus(1) <= NOT lcd_bus(1);
\dut|ALT_INV_Selector44~0_combout\ <= NOT \dut|Selector44~0_combout\;
\dut|ALT_INV_busy~6_combout\ <= NOT \dut|busy~6_combout\;
\dut|ALT_INV_LessThan4~3_combout\ <= NOT \dut|LessThan4~3_combout\;
\dut|ALT_INV_lcd_data[3]~3_combout\ <= NOT \dut|lcd_data[3]~3_combout\;
\dut|ALT_INV_lcd_data[3]~2_combout\ <= NOT \dut|lcd_data[3]~2_combout\;
\dut|ALT_INV_state~6_combout\ <= NOT \dut|state~6_combout\;
\dut|ALT_INV_lcd_data[3]~1_combout\ <= NOT \dut|lcd_data[3]~1_combout\;
\dut|ALT_INV_lcd_data[3]~0_combout\ <= NOT \dut|lcd_data[3]~0_combout\;
ALT_INV_lcd_bus(0) <= NOT lcd_bus(0);
\dut|ALT_INV_Selector45~0_combout\ <= NOT \dut|Selector45~0_combout\;
\dut|ALT_INV_busy~5_combout\ <= NOT \dut|busy~5_combout\;
\dut|ALT_INV_busy~4_combout\ <= NOT \dut|busy~4_combout\;
\dut|ALT_INV_LessThan3~12_combout\ <= NOT \dut|LessThan3~12_combout\;
\dut|ALT_INV_LessThan3~11_combout\ <= NOT \dut|LessThan3~11_combout\;
\dut|ALT_INV_LessThan3~10_combout\ <= NOT \dut|LessThan3~10_combout\;
\dut|ALT_INV_LessThan3~9_combout\ <= NOT \dut|LessThan3~9_combout\;
\dut|ALT_INV_Selector46~8_combout\ <= NOT \dut|Selector46~8_combout\;
\dut|ALT_INV_Selector46~7_combout\ <= NOT \dut|Selector46~7_combout\;
\dut|ALT_INV_LessThan11~1_combout\ <= NOT \dut|LessThan11~1_combout\;
\dut|ALT_INV_LessThan11~0_combout\ <= NOT \dut|LessThan11~0_combout\;
\dut|ALT_INV_Selector46~6_combout\ <= NOT \dut|Selector46~6_combout\;
\dut|ALT_INV_LessThan9~5_combout\ <= NOT \dut|LessThan9~5_combout\;
\dut|ALT_INV_LessThan9~4_combout\ <= NOT \dut|LessThan9~4_combout\;
\dut|ALT_INV_LessThan9~3_combout\ <= NOT \dut|LessThan9~3_combout\;
\dut|ALT_INV_LessThan9~2_combout\ <= NOT \dut|LessThan9~2_combout\;
\dut|ALT_INV_LessThan10~1_combout\ <= NOT \dut|LessThan10~1_combout\;
\dut|ALT_INV_LessThan10~0_combout\ <= NOT \dut|LessThan10~0_combout\;
\dut|ALT_INV_LessThan12~1_combout\ <= NOT \dut|LessThan12~1_combout\;
\dut|ALT_INV_LessThan12~0_combout\ <= NOT \dut|LessThan12~0_combout\;
\dut|ALT_INV_LessThan9~1_combout\ <= NOT \dut|LessThan9~1_combout\;
\dut|ALT_INV_LessThan9~0_combout\ <= NOT \dut|LessThan9~0_combout\;
\dut|ALT_INV_Selector46~5_combout\ <= NOT \dut|Selector46~5_combout\;
\dut|ALT_INV_LessThan1~3_combout\ <= NOT \dut|LessThan1~3_combout\;
\dut|ALT_INV_LessThan1~2_combout\ <= NOT \dut|LessThan1~2_combout\;
\dut|ALT_INV_LessThan6~4_combout\ <= NOT \dut|LessThan6~4_combout\;
\dut|ALT_INV_LessThan1~1_combout\ <= NOT \dut|LessThan1~1_combout\;
\dut|ALT_INV_LessThan3~8_combout\ <= NOT \dut|LessThan3~8_combout\;
\dut|ALT_INV_LessThan3~7_combout\ <= NOT \dut|LessThan3~7_combout\;
\dut|ALT_INV_LessThan3~6_combout\ <= NOT \dut|LessThan3~6_combout\;
\dut|ALT_INV_Selector46~4_combout\ <= NOT \dut|Selector46~4_combout\;
\dut|ALT_INV_busy~3_combout\ <= NOT \dut|busy~3_combout\;
\dut|ALT_INV_LessThan6~3_combout\ <= NOT \dut|LessThan6~3_combout\;
\dut|ALT_INV_LessThan6~2_combout\ <= NOT \dut|LessThan6~2_combout\;
\dut|ALT_INV_LessThan6~1_combout\ <= NOT \dut|LessThan6~1_combout\;
\dut|ALT_INV_LessThan3~5_combout\ <= NOT \dut|LessThan3~5_combout\;
\dut|ALT_INV_Selector46~3_combout\ <= NOT \dut|Selector46~3_combout\;
\dut|ALT_INV_LessThan8~2_combout\ <= NOT \dut|LessThan8~2_combout\;
\dut|ALT_INV_LessThan8~1_combout\ <= NOT \dut|LessThan8~1_combout\;
\dut|ALT_INV_LessThan8~0_combout\ <= NOT \dut|LessThan8~0_combout\;
\dut|ALT_INV_LessThan3~4_combout\ <= NOT \dut|LessThan3~4_combout\;
\dut|ALT_INV_LessThan6~0_combout\ <= NOT \dut|LessThan6~0_combout\;
\dut|ALT_INV_LessThan7~1_combout\ <= NOT \dut|LessThan7~1_combout\;
\dut|ALT_INV_LessThan7~0_combout\ <= NOT \dut|LessThan7~0_combout\;
\dut|ALT_INV_LessThan1~0_combout\ <= NOT \dut|LessThan1~0_combout\;
\dut|ALT_INV_LessThan3~3_combout\ <= NOT \dut|LessThan3~3_combout\;
\dut|ALT_INV_Selector46~2_combout\ <= NOT \dut|Selector46~2_combout\;
\dut|ALT_INV_LessThan4~2_combout\ <= NOT \dut|LessThan4~2_combout\;
\dut|ALT_INV_LessThan4~1_combout\ <= NOT \dut|LessThan4~1_combout\;
\dut|ALT_INV_LessThan4~0_combout\ <= NOT \dut|LessThan4~0_combout\;
\dut|ALT_INV_Selector46~1_combout\ <= NOT \dut|Selector46~1_combout\;
\dut|ALT_INV_LessThan5~1_combout\ <= NOT \dut|LessThan5~1_combout\;
\dut|ALT_INV_LessThan5~0_combout\ <= NOT \dut|LessThan5~0_combout\;
\dut|ALT_INV_LessThan2~2_combout\ <= NOT \dut|LessThan2~2_combout\;
\dut|ALT_INV_LessThan2~1_combout\ <= NOT \dut|LessThan2~1_combout\;
\dut|ALT_INV_LessThan2~0_combout\ <= NOT \dut|LessThan2~0_combout\;
\dut|ALT_INV_LessThan3~2_combout\ <= NOT \dut|LessThan3~2_combout\;
\dut|ALT_INV_LessThan3~1_combout\ <= NOT \dut|LessThan3~1_combout\;
\dut|ALT_INV_LessThan3~0_combout\ <= NOT \dut|LessThan3~0_combout\;
\dut|ALT_INV_busy~2_combout\ <= NOT \dut|busy~2_combout\;
\dut|ALT_INV_Selector46~0_combout\ <= NOT \dut|Selector46~0_combout\;
\dut|ALT_INV_state.send~q\ <= NOT \dut|state.send~q\;
\dut|ALT_INV_state.initialize~q\ <= NOT \dut|state.initialize~q\;
\ALT_INV_lcd_enable~q\ <= NOT \lcd_enable~q\;
ALT_INV_lcd_bus(9) <= NOT lcd_bus(9);
\dut|ALT_INV_state.ready~q\ <= NOT \dut|state.ready~q\;
\dut|ALT_INV_state.power_up~q\ <= NOT \dut|state.power_up~q\;
\dut|ALT_INV_LessThan0~8_combout\ <= NOT \dut|LessThan0~8_combout\;
\dut|ALT_INV_LessThan0~7_combout\ <= NOT \dut|LessThan0~7_combout\;
\dut|ALT_INV_LessThan0~6_combout\ <= NOT \dut|LessThan0~6_combout\;
\dut|ALT_INV_LessThan0~5_combout\ <= NOT \dut|LessThan0~5_combout\;
\dut|ALT_INV_LessThan0~4_combout\ <= NOT \dut|LessThan0~4_combout\;
\dut|ALT_INV_LessThan0~3_combout\ <= NOT \dut|LessThan0~3_combout\;
\dut|ALT_INV_LessThan0~2_combout\ <= NOT \dut|LessThan0~2_combout\;
\dut|ALT_INV_LessThan0~1_combout\ <= NOT \dut|LessThan0~1_combout\;
\dut|ALT_INV_LessThan0~0_combout\ <= NOT \dut|LessThan0~0_combout\;
\gcontraxt|ALT_INV_pwm_value~q\ <= NOT \gcontraxt|pwm_value~q\;
\dut|ALT_INV_e~q\ <= NOT \dut|e~q\;
\dut|ALT_INV_rs~q\ <= NOT \dut|rs~q\;
\gcontraxt|ALT_INV_pwm_step_count\(0) <= NOT \gcontraxt|pwm_step_count\(0);
\gcontraxt|ALT_INV_pwm_step_count\(1) <= NOT \gcontraxt|pwm_step_count\(1);
\gcontraxt|ALT_INV_pwm_step_count\(2) <= NOT \gcontraxt|pwm_step_count\(2);
\gcontraxt|ALT_INV_pwm_step_count\(3) <= NOT \gcontraxt|pwm_step_count\(3);
\gcontraxt|ALT_INV_freq_count\(0) <= NOT \gcontraxt|freq_count\(0);
\dut|ALT_INV_clk_count\(0) <= NOT \dut|clk_count\(0);
\ALT_INV_process_1:char[0]~q\ <= NOT \process_1:char[0]~q\;
\ALT_INV_process_1:char[1]~q\ <= NOT \process_1:char[1]~q\;
\ALT_INV_process_1:char[2]~q\ <= NOT \process_1:char[2]~q\;
\ALT_INV_process_1:char[3]~q\ <= NOT \process_1:char[3]~q\;
\ALT_INV_process_1:char[4]~q\ <= NOT \process_1:char[4]~q\;
\ALT_INV_process_1:char[5]~q\ <= NOT \process_1:char[5]~q\;
\ALT_INV_process_1:char[6]~q\ <= NOT \process_1:char[6]~q\;
\ALT_INV_process_1:char[19]~q\ <= NOT \process_1:char[19]~q\;
\ALT_INV_process_1:char[20]~q\ <= NOT \process_1:char[20]~q\;
\ALT_INV_process_1:char[21]~q\ <= NOT \process_1:char[21]~q\;
\ALT_INV_process_1:char[22]~q\ <= NOT \process_1:char[22]~q\;
\ALT_INV_process_1:char[23]~q\ <= NOT \process_1:char[23]~q\;
\ALT_INV_process_1:char[15]~q\ <= NOT \process_1:char[15]~q\;
\ALT_INV_process_1:char[14]~q\ <= NOT \process_1:char[14]~q\;
\ALT_INV_process_1:char[13]~q\ <= NOT \process_1:char[13]~q\;
\ALT_INV_process_1:char[12]~q\ <= NOT \process_1:char[12]~q\;
\ALT_INV_process_1:char[9]~q\ <= NOT \process_1:char[9]~q\;
\ALT_INV_process_1:char[10]~q\ <= NOT \process_1:char[10]~q\;
\ALT_INV_process_1:char[8]~q\ <= NOT \process_1:char[8]~q\;
\ALT_INV_process_1:char[11]~q\ <= NOT \process_1:char[11]~q\;
\ALT_INV_process_1:char[7]~q\ <= NOT \process_1:char[7]~q\;
\ALT_INV_process_1:char[18]~q\ <= NOT \process_1:char[18]~q\;
\ALT_INV_process_1:char[17]~q\ <= NOT \process_1:char[17]~q\;
\ALT_INV_process_1:char[16]~q\ <= NOT \process_1:char[16]~q\;
\ALT_INV_process_1:char[24]~q\ <= NOT \process_1:char[24]~q\;
\ALT_INV_process_1:char[25]~q\ <= NOT \process_1:char[25]~q\;
\gcontraxt|ALT_INV_pwm_step_count\(14) <= NOT \gcontraxt|pwm_step_count\(14);
\gcontraxt|ALT_INV_pwm_step_count\(15) <= NOT \gcontraxt|pwm_step_count\(15);
\gcontraxt|ALT_INV_pwm_step_count\(16) <= NOT \gcontraxt|pwm_step_count\(16);
\gcontraxt|ALT_INV_pwm_step_count\(17) <= NOT \gcontraxt|pwm_step_count\(17);
\gcontraxt|ALT_INV_pwm_step_count\(8) <= NOT \gcontraxt|pwm_step_count\(8);
\gcontraxt|ALT_INV_pwm_step_count\(9) <= NOT \gcontraxt|pwm_step_count\(9);
\gcontraxt|ALT_INV_pwm_step_count\(10) <= NOT \gcontraxt|pwm_step_count\(10);
\gcontraxt|ALT_INV_pwm_step_count\(5) <= NOT \gcontraxt|pwm_step_count\(5);
\gcontraxt|ALT_INV_pwm_step_count\(4) <= NOT \gcontraxt|pwm_step_count\(4);
\gcontraxt|ALT_INV_pwm_step_count\(6) <= NOT \gcontraxt|pwm_step_count\(6);
\gcontraxt|ALT_INV_pwm_step_count\(7) <= NOT \gcontraxt|pwm_step_count\(7);
\gcontraxt|ALT_INV_pwm_step_count\(11) <= NOT \gcontraxt|pwm_step_count\(11);
\gcontraxt|ALT_INV_pwm_step_count\(12) <= NOT \gcontraxt|pwm_step_count\(12);
\gcontraxt|ALT_INV_pwm_step_count\(13) <= NOT \gcontraxt|pwm_step_count\(13);
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
ALT_INV_char(4) <= NOT char(4);
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
ALT_INV_char(3) <= NOT char(3);
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
ALT_INV_char(5) <= NOT char(5);
ALT_INV_char(6) <= NOT char(6);
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
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
ALT_INV_char(0) <= NOT char(0);
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
ALT_INV_char(2) <= NOT char(2);
ALT_INV_char(16) <= NOT char(16);
ALT_INV_char(15) <= NOT char(15);
ALT_INV_char(14) <= NOT char(14);
ALT_INV_char(13) <= NOT char(13);
ALT_INV_char(12) <= NOT char(12);
ALT_INV_char(11) <= NOT char(11);
ALT_INV_char(10) <= NOT char(10);
ALT_INV_char(9) <= NOT char(9);
ALT_INV_char(7) <= NOT char(7);
ALT_INV_char(8) <= NOT char(8);
ALT_INV_char(25) <= NOT char(25);
ALT_INV_char(20) <= NOT char(20);
ALT_INV_char(19) <= NOT char(19);
ALT_INV_char(22) <= NOT char(22);
ALT_INV_char(23) <= NOT char(23);
ALT_INV_char(18) <= NOT char(18);
ALT_INV_char(17) <= NOT char(17);
ALT_INV_char(21) <= NOT char(21);
ALT_INV_char(24) <= NOT char(24);
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
ALT_INV_char(1) <= NOT char(1);
\gcontraxt|ALT_INV_freq_count\(12) <= NOT \gcontraxt|freq_count\(12);
\gcontraxt|ALT_INV_freq_count\(13) <= NOT \gcontraxt|freq_count\(13);
\gcontraxt|ALT_INV_freq_count\(14) <= NOT \gcontraxt|freq_count\(14);
\gcontraxt|ALT_INV_freq_count\(8) <= NOT \gcontraxt|freq_count\(8);
\gcontraxt|ALT_INV_freq_count\(9) <= NOT \gcontraxt|freq_count\(9);
\gcontraxt|ALT_INV_freq_count\(4) <= NOT \gcontraxt|freq_count\(4);
\gcontraxt|ALT_INV_freq_count\(5) <= NOT \gcontraxt|freq_count\(5);
\gcontraxt|ALT_INV_freq_count\(6) <= NOT \gcontraxt|freq_count\(6);
\gcontraxt|ALT_INV_freq_count\(7) <= NOT \gcontraxt|freq_count\(7);
\gcontraxt|ALT_INV_freq_count\(2) <= NOT \gcontraxt|freq_count\(2);
\gcontraxt|ALT_INV_freq_count\(1) <= NOT \gcontraxt|freq_count\(1);
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
\dut|ALT_INV_clk_count\(30) <= NOT \dut|clk_count\(30);
\dut|ALT_INV_clk_count\(29) <= NOT \dut|clk_count\(29);
\dut|ALT_INV_clk_count\(28) <= NOT \dut|clk_count\(28);
\dut|ALT_INV_clk_count\(27) <= NOT \dut|clk_count\(27);
\dut|ALT_INV_clk_count\(25) <= NOT \dut|clk_count\(25);
\dut|ALT_INV_clk_count\(24) <= NOT \dut|clk_count\(24);
\dut|ALT_INV_clk_count\(23) <= NOT \dut|clk_count\(23);
\dut|ALT_INV_clk_count\(22) <= NOT \dut|clk_count\(22);
\dut|ALT_INV_clk_count\(26) <= NOT \dut|clk_count\(26);
\dut|ALT_INV_clk_count\(31) <= NOT \dut|clk_count\(31);
\dut|ALT_INV_clk_count\(14) <= NOT \dut|clk_count\(14);
\dut|ALT_INV_clk_count\(15) <= NOT \dut|clk_count\(15);
\dut|ALT_INV_clk_count\(16) <= NOT \dut|clk_count\(16);
\dut|ALT_INV_clk_count\(8) <= NOT \dut|clk_count\(8);
\dut|ALT_INV_clk_count\(7) <= NOT \dut|clk_count\(7);
\dut|ALT_INV_clk_count\(6) <= NOT \dut|clk_count\(6);
\dut|ALT_INV_clk_count\(5) <= NOT \dut|clk_count\(5);
\dut|ALT_INV_clk_count\(9) <= NOT \dut|clk_count\(9);
\dut|ALT_INV_clk_count\(10) <= NOT \dut|clk_count\(10);
\dut|ALT_INV_clk_count\(11) <= NOT \dut|clk_count\(11);
\dut|ALT_INV_clk_count\(12) <= NOT \dut|clk_count\(12);
\dut|ALT_INV_clk_count\(13) <= NOT \dut|clk_count\(13);
\dut|ALT_INV_clk_count\(17) <= NOT \dut|clk_count\(17);
\dut|ALT_INV_clk_count\(18) <= NOT \dut|clk_count\(18);
\dut|ALT_INV_clk_count\(19) <= NOT \dut|clk_count\(19);
\dut|ALT_INV_clk_count\(20) <= NOT \dut|clk_count\(20);
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
	i => \dut|e~DUPLICATE_q\,
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
	i => \constrastup~inputCLKENA0_outclk\,
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

-- Location: LABCELL_X73_Y5_N39
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

-- Location: MLABCELL_X72_Y4_N42
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( char(24) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~62\ = CARRY(( char(24) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_char(24),
	cin => \Add0~22\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: MLABCELL_X72_Y4_N45
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \char[25]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_char[25]~DUPLICATE_q\,
	cin => \Add0~62\,
	sumout => \Add0~25_sumout\);

-- Location: LABCELL_X73_Y5_N33
\char~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~17_combout\ = ( \Add0~25_sumout\ ) # ( !\Add0~25_sumout\ & ( \LessThan0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~4_combout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \char~17_combout\);

-- Location: FF_X73_Y5_N34
\char[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~17_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[25]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y4_N45
\lcd_enable~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~5_combout\ = ( !char(21) & ( (!\char[25]~DUPLICATE_q\ & (\lcd_enable~1_combout\ & !\char[20]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char[25]~DUPLICATE_q\,
	datac => \ALT_INV_lcd_enable~1_combout\,
	datad => \ALT_INV_char[20]~DUPLICATE_q\,
	dataf => ALT_INV_char(21),
	combout => \lcd_enable~5_combout\);

-- Location: FF_X72_Y5_N32
\char[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~18_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[8]~DUPLICATE_q\);

-- Location: FF_X72_Y5_N35
\char[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~7_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(4));

-- Location: FF_X72_Y5_N50
\char[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~0_combout\,
	sclr => \Equal27~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[1]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y5_N0
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( char(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~10\ = CARRY(( char(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(0),
	cin => GND,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X72_Y5_N54
\char~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~2_combout\ = ( \LessThan0~3_combout\ & ( (!\LessThan0~1_combout\ & ((char(0)))) # (\LessThan0~1_combout\ & (\Add0~9_sumout\)) ) ) # ( !\LessThan0~3_combout\ & ( \Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => ALT_INV_char(0),
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \char~2_combout\);

-- Location: FF_X72_Y5_N56
\char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~2_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(0));

-- Location: MLABCELL_X72_Y5_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( char(1) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~2\ = CARRY(( char(1) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(1),
	cin => \Add0~10\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X73_Y3_N48
\char~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~0_combout\ = ( \LessThan0~3_combout\ & ( \Add0~1_sumout\ & ( (\LessThan0~1_combout\) # (\char[1]~DUPLICATE_q\) ) ) ) # ( !\LessThan0~3_combout\ & ( \Add0~1_sumout\ ) ) # ( \LessThan0~3_combout\ & ( !\Add0~1_sumout\ & ( (\char[1]~DUPLICATE_q\ & 
-- !\LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000011111111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_char[1]~DUPLICATE_q\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \char~0_combout\);

-- Location: FF_X72_Y5_N49
\char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~0_combout\,
	sclr => \Equal27~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(1));

-- Location: MLABCELL_X72_Y5_N6
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( char(2) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( char(2) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(2),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X72_Y5_N57
\char~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~1_combout\ = ( \LessThan0~3_combout\ & ( (!\LessThan0~1_combout\ & ((char(2)))) # (\LessThan0~1_combout\ & (\Add0~5_sumout\)) ) ) # ( !\LessThan0~3_combout\ & ( \Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => ALT_INV_char(2),
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \char~1_combout\);

-- Location: FF_X72_Y5_N59
\char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~1_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(2));

-- Location: MLABCELL_X72_Y5_N9
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( char(3) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~98\ = CARRY(( char(3) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(3),
	cin => \Add0~6\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: MLABCELL_X72_Y5_N45
\char~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~6_combout\ = ( \LessThan0~3_combout\ & ( (!\LessThan0~1_combout\ & ((char(3)))) # (\LessThan0~1_combout\ & (\Add0~97_sumout\)) ) ) # ( !\LessThan0~3_combout\ & ( \Add0~97_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Add0~97_sumout\,
	datad => ALT_INV_char(3),
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \char~6_combout\);

-- Location: FF_X72_Y5_N47
\char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~6_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(3));

-- Location: MLABCELL_X72_Y5_N12
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( char(4) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( char(4) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_char(4),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: MLABCELL_X72_Y5_N15
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \char[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~74\ = CARRY(( \char[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char[5]~DUPLICATE_q\,
	cin => \Add0~102\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X71_Y5_N44
\char[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~26_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(5));

-- Location: LABCELL_X71_Y5_N42
\char~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~26_combout\ = ( char(5) & ( ((!\LessThan0~1_combout\ & \LessThan0~3_combout\)) # (\Add0~73_sumout\) ) ) # ( !char(5) & ( (\Add0~73_sumout\ & ((!\LessThan0~3_combout\) # (\LessThan0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101001011110010111100001101000011010010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_Add0~73_sumout\,
	datae => ALT_INV_char(5),
	combout => \char~26_combout\);

-- Location: FF_X71_Y5_N43
\char[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~26_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[5]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y5_N18
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( char(6) ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( char(6) ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_char(6),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: LABCELL_X71_Y5_N48
\char~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~25_combout\ = ( \LessThan0~3_combout\ & ( \Add0~77_sumout\ & ( (char(6)) # (\LessThan0~1_combout\) ) ) ) # ( !\LessThan0~3_combout\ & ( \Add0~77_sumout\ ) ) # ( \LessThan0~3_combout\ & ( !\Add0~77_sumout\ & ( (!\LessThan0~1_combout\ & char(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101011111111111111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_char(6),
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_Add0~77_sumout\,
	combout => \char~25_combout\);

-- Location: FF_X72_Y5_N53
\char[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~25_combout\,
	sclr => \Equal27~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(6));

-- Location: MLABCELL_X72_Y5_N21
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( char(7) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~46\ = CARRY(( char(7) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_char(7),
	cin => \Add0~78\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: MLABCELL_X72_Y5_N39
\char~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~19_combout\ = ( \LessThan0~3_combout\ & ( (!\LessThan0~1_combout\ & ((char(7)))) # (\LessThan0~1_combout\ & (\Add0~45_sumout\)) ) ) # ( !\LessThan0~3_combout\ & ( \Add0~45_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Add0~45_sumout\,
	datad => ALT_INV_char(7),
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \char~19_combout\);

-- Location: FF_X72_Y5_N41
\char[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~19_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(7));

-- Location: MLABCELL_X72_Y5_N24
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \char[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~82\ = CARRY(( \char[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_char[8]~DUPLICATE_q\,
	cin => \Add0~46\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: MLABCELL_X72_Y5_N30
\char~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~18_combout\ = ( \LessThan0~3_combout\ & ( (!\LessThan0~1_combout\ & ((char(8)))) # (\LessThan0~1_combout\ & (\Add0~81_sumout\)) ) ) # ( !\LessThan0~3_combout\ & ( \Add0~81_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Add0~81_sumout\,
	datad => ALT_INV_char(8),
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \char~18_combout\);

-- Location: FF_X72_Y5_N31
\char[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~18_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(8));

-- Location: MLABCELL_X72_Y5_N27
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \char[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( \char[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char[9]~DUPLICATE_q\,
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X72_Y5_N37
\char[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~20_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(9));

-- Location: MLABCELL_X72_Y5_N36
\char~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~20_combout\ = ( \LessThan0~3_combout\ & ( (!\LessThan0~1_combout\ & ((char(9)))) # (\LessThan0~1_combout\ & (\Add0~85_sumout\)) ) ) # ( !\LessThan0~3_combout\ & ( \Add0~85_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Add0~85_sumout\,
	datad => ALT_INV_char(9),
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \char~20_combout\);

-- Location: FF_X72_Y5_N38
\char[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~20_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[9]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N0
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( char(10) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~66\ = CARRY(( char(10) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_char(10),
	cin => \Add0~86\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X73_Y4_N9
\char~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~8_combout\ = ( \Add0~65_sumout\ & ( ((!\LessThan0~3_combout\) # (\LessThan0~1_combout\)) # (char(10)) ) ) # ( !\Add0~65_sumout\ & ( (char(10) & (!\LessThan0~1_combout\ & \LessThan0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011111111001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_char(10),
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_Add0~65_sumout\,
	combout => \char~8_combout\);

-- Location: FF_X72_Y4_N50
\char[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~8_combout\,
	sclr => \Equal27~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(10));

-- Location: MLABCELL_X72_Y4_N3
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \char[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( \char[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char[11]~DUPLICATE_q\,
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X72_Y5_N44
\char[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~21_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(11));

-- Location: MLABCELL_X72_Y5_N42
\char~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~21_combout\ = ( \LessThan0~3_combout\ & ( (!\LessThan0~1_combout\ & ((char(11)))) # (\LessThan0~1_combout\ & (\Add0~69_sumout\)) ) ) # ( !\LessThan0~3_combout\ & ( \Add0~69_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Add0~69_sumout\,
	datad => ALT_INV_char(11),
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \char~21_combout\);

-- Location: FF_X72_Y5_N43
\char[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~21_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[11]~DUPLICATE_q\);

-- Location: FF_X72_Y5_N40
\char[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~19_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[7]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y5_N36
\lcd_enable~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~0_combout\ = ( !char(10) & ( (!char(8) & (!\char[11]~DUPLICATE_q\ & (!\char[7]~DUPLICATE_q\ & !char(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(8),
	datab => \ALT_INV_char[11]~DUPLICATE_q\,
	datac => \ALT_INV_char[7]~DUPLICATE_q\,
	datad => ALT_INV_char(9),
	dataf => ALT_INV_char(10),
	combout => \lcd_enable~0_combout\);

-- Location: LABCELL_X74_Y3_N51
\lcd_enable~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~2_combout\ = ( \char[1]~DUPLICATE_q\ & ( (char(3) & (char(4) & ((char(2)) # (char(0))))) ) ) # ( !\char[1]~DUPLICATE_q\ & ( (char(3) & (char(2) & char(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000101010000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(3),
	datab => ALT_INV_char(0),
	datac => ALT_INV_char(2),
	datad => ALT_INV_char(4),
	dataf => \ALT_INV_char[1]~DUPLICATE_q\,
	combout => \lcd_enable~2_combout\);

-- Location: MLABCELL_X72_Y4_N6
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \char[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~50\ = CARRY(( \char[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_char[12]~DUPLICATE_q\,
	cin => \Add0~70\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X70_Y4_N15
\char~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~22_combout\ = ( \Add0~49_sumout\ & ( \LessThan0~3_combout\ & ( (\char[12]~DUPLICATE_q\) # (\LessThan0~1_combout\) ) ) ) # ( !\Add0~49_sumout\ & ( \LessThan0~3_combout\ & ( (!\LessThan0~1_combout\ & \char[12]~DUPLICATE_q\) ) ) ) # ( \Add0~49_sumout\ 
-- & ( !\LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_char[12]~DUPLICATE_q\,
	datae => \ALT_INV_Add0~49_sumout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \char~22_combout\);

-- Location: FF_X73_Y4_N41
\char[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~22_combout\,
	sclr => \Equal27~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[12]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( char(13) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~14\ = CARRY(( char(13) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(13),
	cin => \Add0~50\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: MLABCELL_X72_Y4_N51
\char~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~3_combout\ = (!\LessThan0~3_combout\ & (((\Add0~13_sumout\)))) # (\LessThan0~3_combout\ & ((!\LessThan0~1_combout\ & ((char(13)))) # (\LessThan0~1_combout\ & (\Add0~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101101001111000010110100111100001011010011110000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => ALT_INV_char(13),
	combout => \char~3_combout\);

-- Location: FF_X72_Y4_N53
\char[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~3_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(13));

-- Location: MLABCELL_X72_Y4_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \char[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \char[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char[14]~DUPLICATE_q\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X72_Y4_N55
\char[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~23_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(14));

-- Location: MLABCELL_X72_Y4_N54
\char~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~23_combout\ = ( \LessThan0~1_combout\ & ( \Add0~17_sumout\ ) ) # ( !\LessThan0~1_combout\ & ( (!\LessThan0~3_combout\ & (\Add0~17_sumout\)) # (\LessThan0~3_combout\ & ((char(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datab => \ALT_INV_Add0~17_sumout\,
	datad => ALT_INV_char(14),
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \char~23_combout\);

-- Location: FF_X72_Y4_N56
\char[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~23_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[14]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N15
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \char[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~30\ = CARRY(( \char[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char[15]~DUPLICATE_q\,
	cin => \Add0~18\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X72_Y4_N58
\char[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~4_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(15));

-- Location: MLABCELL_X72_Y4_N57
\char~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~4_combout\ = ( \LessThan0~1_combout\ & ( \Add0~29_sumout\ ) ) # ( !\LessThan0~1_combout\ & ( (!\LessThan0~3_combout\ & (\Add0~29_sumout\)) # (\LessThan0~3_combout\ & ((char(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => ALT_INV_char(15),
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \char~4_combout\);

-- Location: FF_X72_Y4_N59
\char[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~4_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[15]~DUPLICATE_q\);

-- Location: LABCELL_X71_Y4_N0
\lcd_enable~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~4_combout\ = ( !\char[15]~DUPLICATE_q\ & ( !char(17) & ( (!\char[19]~DUPLICATE_q\ & (!\char[14]~DUPLICATE_q\ & (!char(13) & !char(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char[19]~DUPLICATE_q\,
	datab => \ALT_INV_char[14]~DUPLICATE_q\,
	datac => ALT_INV_char(13),
	datad => ALT_INV_char(6),
	datae => \ALT_INV_char[15]~DUPLICATE_q\,
	dataf => ALT_INV_char(17),
	combout => \lcd_enable~4_combout\);

-- Location: MLABCELL_X78_Y7_N0
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

-- Location: FF_X78_Y6_N29
\dut|clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~113_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(30));

-- Location: MLABCELL_X78_Y6_N18
\dut|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~49_sumout\ = SUM(( \dut|clk_count\(26) ) + ( GND ) + ( \dut|Add0~46\ ))
-- \dut|Add0~50\ = CARRY(( \dut|clk_count\(26) ) + ( GND ) + ( \dut|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_clk_count\(26),
	cin => \dut|Add0~46\,
	sumout => \dut|Add0~49_sumout\,
	cout => \dut|Add0~50\);

-- Location: MLABCELL_X78_Y6_N21
\dut|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~53_sumout\ = SUM(( \dut|clk_count\(27) ) + ( GND ) + ( \dut|Add0~50\ ))
-- \dut|Add0~54\ = CARRY(( \dut|clk_count\(27) ) + ( GND ) + ( \dut|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(27),
	cin => \dut|Add0~50\,
	sumout => \dut|Add0~53_sumout\,
	cout => \dut|Add0~54\);

-- Location: FF_X78_Y6_N23
\dut|clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~53_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(27));

-- Location: MLABCELL_X78_Y6_N24
\dut|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~5_sumout\ = SUM(( \dut|clk_count\(28) ) + ( GND ) + ( \dut|Add0~54\ ))
-- \dut|Add0~6\ = CARRY(( \dut|clk_count\(28) ) + ( GND ) + ( \dut|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_clk_count\(28),
	cin => \dut|Add0~54\,
	sumout => \dut|Add0~5_sumout\,
	cout => \dut|Add0~6\);

-- Location: FF_X78_Y6_N11
\dut|clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~5_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(28));

-- Location: MLABCELL_X78_Y6_N27
\dut|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~9_sumout\ = SUM(( \dut|clk_count\(29) ) + ( GND ) + ( \dut|Add0~6\ ))
-- \dut|Add0~10\ = CARRY(( \dut|clk_count\(29) ) + ( GND ) + ( \dut|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(29),
	cin => \dut|Add0~6\,
	sumout => \dut|Add0~9_sumout\,
	cout => \dut|Add0~10\);

-- Location: FF_X78_Y6_N41
\dut|clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~9_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(29));

-- Location: MLABCELL_X78_Y6_N30
\dut|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~113_sumout\ = SUM(( \dut|clk_count\(30) ) + ( GND ) + ( \dut|Add0~10\ ))
-- \dut|Add0~114\ = CARRY(( \dut|clk_count\(30) ) + ( GND ) + ( \dut|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(30),
	cin => \dut|Add0~10\,
	sumout => \dut|Add0~113_sumout\,
	cout => \dut|Add0~114\);

-- Location: LABCELL_X79_Y7_N21
\dut|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~4_combout\ = ( \dut|Add0~93_sumout\ & ( \dut|Add0~85_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_Add0~85_sumout\,
	dataf => \dut|ALT_INV_Add0~93_sumout\,
	combout => \dut|LessThan3~4_combout\);

-- Location: LABCELL_X79_Y7_N30
\dut|LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan8~0_combout\ = ( !\dut|Add0~89_sumout\ & ( \dut|Add0~97_sumout\ & ( (!\dut|Add0~77_sumout\) # (!\dut|Add0~81_sumout\) ) ) ) # ( !\dut|Add0~89_sumout\ & ( !\dut|Add0~97_sumout\ & ( (!\dut|Add0~77_sumout\) # ((!\dut|Add0~105_sumout\) # 
-- ((!\dut|Add0~101_sumout\) # (!\dut|Add0~81_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110000000000000000011111111101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~77_sumout\,
	datab => \dut|ALT_INV_Add0~105_sumout\,
	datac => \dut|ALT_INV_Add0~101_sumout\,
	datad => \dut|ALT_INV_Add0~81_sumout\,
	datae => \dut|ALT_INV_Add0~89_sumout\,
	dataf => \dut|ALT_INV_Add0~97_sumout\,
	combout => \dut|LessThan8~0_combout\);

-- Location: LABCELL_X79_Y7_N54
\dut|LessThan8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan8~1_combout\ = ( !\dut|Add0~69_sumout\ & ( !\dut|Add0~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dut|ALT_INV_Add0~69_sumout\,
	dataf => \dut|ALT_INV_Add0~73_sumout\,
	combout => \dut|LessThan8~1_combout\);

-- Location: LABCELL_X79_Y7_N24
\dut|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan6~0_combout\ = ( !\dut|Add0~65_sumout\ & ( !\dut|Add0~69_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_Add0~69_sumout\,
	dataf => \dut|ALT_INV_Add0~65_sumout\,
	combout => \dut|LessThan6~0_combout\);

-- Location: LABCELL_X79_Y7_N48
\dut|LessThan8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan8~2_combout\ = ( \dut|LessThan8~1_combout\ & ( !\dut|LessThan6~0_combout\ & ( (\dut|Add0~57_sumout\ & (\dut|Add0~61_sumout\ & (\dut|LessThan3~4_combout\ & !\dut|LessThan8~0_combout\))) ) ) ) # ( !\dut|LessThan8~1_combout\ & ( 
-- !\dut|LessThan6~0_combout\ & ( (\dut|Add0~57_sumout\ & \dut|Add0~61_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~57_sumout\,
	datab => \dut|ALT_INV_Add0~61_sumout\,
	datac => \dut|ALT_INV_LessThan3~4_combout\,
	datad => \dut|ALT_INV_LessThan8~0_combout\,
	datae => \dut|ALT_INV_LessThan8~1_combout\,
	dataf => \dut|ALT_INV_LessThan6~0_combout\,
	combout => \dut|LessThan8~2_combout\);

-- Location: MLABCELL_X78_Y6_N57
\dut|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~0_combout\ = ( !\dut|Add0~17_sumout\ & ( !\dut|Add0~21_sumout\ & ( (!\dut|Add0~25_sumout\ & (!\dut|Add0~13_sumout\ & (!\dut|Add0~33_sumout\ & !\dut|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~25_sumout\,
	datab => \dut|ALT_INV_Add0~13_sumout\,
	datac => \dut|ALT_INV_Add0~33_sumout\,
	datad => \dut|ALT_INV_Add0~29_sumout\,
	datae => \dut|ALT_INV_Add0~17_sumout\,
	dataf => \dut|ALT_INV_Add0~21_sumout\,
	combout => \dut|LessThan3~0_combout\);

-- Location: FF_X78_Y6_N35
\dut|clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~1_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(31));

-- Location: MLABCELL_X78_Y6_N33
\dut|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~1_sumout\ = SUM(( \dut|clk_count\(31) ) + ( GND ) + ( \dut|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(31),
	cin => \dut|Add0~114\,
	sumout => \dut|Add0~1_sumout\);

-- Location: MLABCELL_X78_Y6_N39
\dut|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~1_combout\ = ( !\dut|Add0~37_sumout\ & ( (!\dut|Add0~49_sumout\ & (!\dut|Add0~41_sumout\ & (!\dut|Add0~45_sumout\ & !\dut|Add0~53_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~49_sumout\,
	datab => \dut|ALT_INV_Add0~41_sumout\,
	datac => \dut|ALT_INV_Add0~45_sumout\,
	datad => \dut|ALT_INV_Add0~53_sumout\,
	dataf => \dut|ALT_INV_Add0~37_sumout\,
	combout => \dut|LessThan3~1_combout\);

-- Location: LABCELL_X79_Y6_N51
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

-- Location: LABCELL_X77_Y6_N6
\dut|lcd_data[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|lcd_data[3]~2_combout\ = ( \dut|LessThan3~1_combout\ & ( \dut|busy~2_combout\ & ( (!\dut|Add0~1_sumout\ & (((!\dut|LessThan3~0_combout\) # (\dut|Add0~113_sumout\)) # (\dut|LessThan8~2_combout\))) ) ) ) # ( !\dut|LessThan3~1_combout\ & ( 
-- \dut|busy~2_combout\ & ( !\dut|Add0~1_sumout\ ) ) ) # ( \dut|LessThan3~1_combout\ & ( !\dut|busy~2_combout\ & ( !\dut|Add0~1_sumout\ ) ) ) # ( !\dut|LessThan3~1_combout\ & ( !\dut|busy~2_combout\ & ( !\dut|Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan8~2_combout\,
	datab => \dut|ALT_INV_LessThan3~0_combout\,
	datac => \dut|ALT_INV_Add0~113_sumout\,
	datad => \dut|ALT_INV_Add0~1_sumout\,
	datae => \dut|ALT_INV_LessThan3~1_combout\,
	dataf => \dut|ALT_INV_busy~2_combout\,
	combout => \dut|lcd_data[3]~2_combout\);

-- Location: LABCELL_X77_Y7_N18
\dut|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~3_combout\ = ( !\dut|clk_count\(15) & ( (!\dut|clk_count\(14) & !\dut|clk_count\(16)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(14),
	datad => \dut|ALT_INV_clk_count\(16),
	dataf => \dut|ALT_INV_clk_count\(15),
	combout => \dut|LessThan0~3_combout\);

-- Location: FF_X78_Y6_N55
\dut|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~25_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(20));

-- Location: LABCELL_X77_Y7_N15
\dut|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~0_combout\ = ( !\dut|clk_count\(20) & ( !\dut|clk_count\(19) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(19),
	dataf => \dut|ALT_INV_clk_count\(20),
	combout => \dut|LessThan0~0_combout\);

-- Location: FF_X78_Y6_N43
\dut|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~29_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(21));

-- Location: LABCELL_X77_Y7_N9
\dut|LessThan9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan9~0_combout\ = ( !\dut|clk_count\(17) & ( (!\dut|clk_count\(13) & (!\dut|clk_count\(18) & !\dut|clk_count\(21))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(13),
	datac => \dut|ALT_INV_clk_count\(18),
	datad => \dut|ALT_INV_clk_count\(21),
	dataf => \dut|ALT_INV_clk_count\(17),
	combout => \dut|LessThan9~0_combout\);

-- Location: LABCELL_X77_Y7_N39
\dut|LessThan9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan9~1_combout\ = ( \dut|LessThan0~5_combout\ & ( \dut|LessThan9~0_combout\ & ( (\dut|LessThan0~3_combout\ & (\dut|LessThan0~0_combout\ & !\dut|clk_count\(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan0~3_combout\,
	datab => \dut|ALT_INV_LessThan0~0_combout\,
	datac => \dut|ALT_INV_clk_count\(12),
	datae => \dut|ALT_INV_LessThan0~5_combout\,
	dataf => \dut|ALT_INV_LessThan9~0_combout\,
	combout => \dut|LessThan9~1_combout\);

-- Location: LABCELL_X77_Y7_N51
\dut|LessThan9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan9~3_combout\ = ( \dut|clk_count\(8) & ( (\dut|clk_count\(6) & \dut|clk_count\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(6),
	datad => \dut|ALT_INV_clk_count\(7),
	dataf => \dut|ALT_INV_clk_count\(8),
	combout => \dut|LessThan9~3_combout\);

-- Location: MLABCELL_X78_Y5_N18
\dut|LessThan9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan9~2_combout\ = ( !\dut|clk_count\(3) & ( !\dut|clk_count\(5) & ( (!\dut|clk_count\(4) & !\dut|clk_count\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(4),
	datad => \dut|ALT_INV_clk_count\(2),
	datae => \dut|ALT_INV_clk_count\(3),
	dataf => \dut|ALT_INV_clk_count\(5),
	combout => \dut|LessThan9~2_combout\);

-- Location: LABCELL_X77_Y7_N21
\dut|LessThan9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan9~4_combout\ = ( \dut|LessThan9~2_combout\ & ( (\dut|clk_count\(11) & ((\dut|clk_count\(9)) # (\dut|clk_count\(10)))) ) ) # ( !\dut|LessThan9~2_combout\ & ( (\dut|clk_count\(11) & (((\dut|clk_count\(9)) # (\dut|clk_count\(10))) # 
-- (\dut|LessThan9~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111100000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan9~3_combout\,
	datab => \dut|ALT_INV_clk_count\(10),
	datac => \dut|ALT_INV_clk_count\(11),
	datad => \dut|ALT_INV_clk_count\(9),
	dataf => \dut|ALT_INV_LessThan9~2_combout\,
	combout => \dut|LessThan9~4_combout\);

-- Location: LABCELL_X77_Y7_N48
\dut|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~6_combout\ = ( !\dut|clk_count\(27) & ( (!\dut|clk_count\(29) & (!\dut|clk_count\(28) & !\dut|clk_count\(30))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(29),
	datac => \dut|ALT_INV_clk_count\(28),
	datad => \dut|ALT_INV_clk_count\(30),
	dataf => \dut|ALT_INV_clk_count\(27),
	combout => \dut|LessThan0~6_combout\);

-- Location: LABCELL_X77_Y7_N57
\dut|LessThan9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan9~5_combout\ = ( \dut|LessThan0~6_combout\ & ( !\dut|LessThan9~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_LessThan9~4_combout\,
	dataf => \dut|ALT_INV_LessThan0~6_combout\,
	combout => \dut|LessThan9~5_combout\);

-- Location: LABCELL_X77_Y7_N3
\dut|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector34~0_combout\ = ( !\dut|clk_count\(31) & ( (!\dut|LessThan9~1_combout\) # (!\dut|LessThan9~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_LessThan9~1_combout\,
	datad => \dut|ALT_INV_LessThan9~5_combout\,
	dataf => \dut|ALT_INV_clk_count\(31),
	combout => \dut|Selector34~0_combout\);

-- Location: LABCELL_X80_Y5_N51
\dut|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector35~0_combout\ = ( \dut|state.send~q\ & ( \dut|Selector34~0_combout\ & ( (\dut|state.ready~q\ & \lcd_enable~q\) ) ) ) # ( !\dut|state.send~q\ & ( \dut|Selector34~0_combout\ & ( (\dut|state.ready~q\ & \lcd_enable~q\) ) ) ) # ( 
-- \dut|state.send~q\ & ( !\dut|Selector34~0_combout\ ) ) # ( !\dut|state.send~q\ & ( !\dut|Selector34~0_combout\ & ( (\dut|state.ready~q\ & \lcd_enable~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111111111111111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.ready~q\,
	datac => \ALT_INV_lcd_enable~q\,
	datae => \dut|ALT_INV_state.send~q\,
	dataf => \dut|ALT_INV_Selector34~0_combout\,
	combout => \dut|Selector35~0_combout\);

-- Location: FF_X80_Y5_N52
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

-- Location: LABCELL_X77_Y7_N6
\dut|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~1_combout\ = ( \dut|clk_count\(8) & ( (\dut|clk_count\(7) & ((\dut|clk_count\(5)) # (\dut|clk_count\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_clk_count\(6),
	datac => \dut|ALT_INV_clk_count\(5),
	datad => \dut|ALT_INV_clk_count\(7),
	dataf => \dut|ALT_INV_clk_count\(8),
	combout => \dut|LessThan0~1_combout\);

-- Location: LABCELL_X77_Y7_N0
\dut|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~2_combout\ = ( \dut|LessThan0~1_combout\ & ( (!\dut|clk_count\(11) & (!\dut|clk_count\(12) & !\dut|clk_count\(10))) ) ) # ( !\dut|LessThan0~1_combout\ & ( (!\dut|clk_count\(11) & (!\dut|clk_count\(12) & ((!\dut|clk_count\(9)) # 
-- (!\dut|clk_count\(10))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(11),
	datab => \dut|ALT_INV_clk_count\(12),
	datac => \dut|ALT_INV_clk_count\(9),
	datad => \dut|ALT_INV_clk_count\(10),
	dataf => \dut|ALT_INV_LessThan0~1_combout\,
	combout => \dut|LessThan0~2_combout\);

-- Location: LABCELL_X77_Y7_N24
\dut|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~4_combout\ = ( \dut|LessThan0~3_combout\ & ( (\dut|clk_count\(13) & (\dut|clk_count\(18) & (\dut|clk_count\(17) & !\dut|LessThan0~2_combout\))) ) ) # ( !\dut|LessThan0~3_combout\ & ( (\dut|clk_count\(18) & \dut|clk_count\(17)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(13),
	datab => \dut|ALT_INV_clk_count\(18),
	datac => \dut|ALT_INV_clk_count\(17),
	datad => \dut|ALT_INV_LessThan0~2_combout\,
	dataf => \dut|ALT_INV_LessThan0~3_combout\,
	combout => \dut|LessThan0~4_combout\);

-- Location: LABCELL_X77_Y7_N42
\dut|lcd_data[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|lcd_data[3]~1_combout\ = ( \dut|state.power_up~q\ & ( \dut|LessThan0~4_combout\ ) ) # ( !\dut|state.power_up~q\ & ( \dut|LessThan0~4_combout\ & ( (!\dut|clk_count\(31) & ((!\dut|LessThan0~7_combout\) # (\dut|clk_count\(21)))) ) ) ) # ( 
-- \dut|state.power_up~q\ & ( !\dut|LessThan0~4_combout\ ) ) # ( !\dut|state.power_up~q\ & ( !\dut|LessThan0~4_combout\ & ( (!\dut|clk_count\(31) & ((!\dut|LessThan0~7_combout\) # ((\dut|clk_count\(21) & !\dut|LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100000111111111111111110100010101000101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(31),
	datab => \dut|ALT_INV_clk_count\(21),
	datac => \dut|ALT_INV_LessThan0~7_combout\,
	datad => \dut|ALT_INV_LessThan0~0_combout\,
	datae => \dut|ALT_INV_state.power_up~q\,
	dataf => \dut|ALT_INV_LessThan0~4_combout\,
	combout => \dut|lcd_data[3]~1_combout\);

-- Location: FF_X77_Y7_N44
\dut|state.power_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|lcd_data[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.power_up~q\);

-- Location: LABCELL_X77_Y6_N39
\dut|clk_count[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|clk_count[5]~2_combout\ = ( \dut|Selector34~0_combout\ & ( (!\dut|state.ready~q\ & ((!\dut|state.power_up~q\ & (!\dut|LessThan0~8_combout\)) # (\dut|state.power_up~q\ & ((!\dut|state.send~q\))))) ) ) # ( !\dut|Selector34~0_combout\ & ( 
-- (!\dut|state.ready~q\ & ((!\dut|LessThan0~8_combout\) # (\dut|state.power_up~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000000101011110000000010101100000000001010110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan0~8_combout\,
	datab => \dut|ALT_INV_state.send~q\,
	datac => \dut|ALT_INV_state.power_up~q\,
	datad => \dut|ALT_INV_state.ready~q\,
	dataf => \dut|ALT_INV_Selector34~0_combout\,
	combout => \dut|clk_count[5]~2_combout\);

-- Location: LABCELL_X79_Y6_N0
\dut|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan7~0_combout\ = ( \dut|Add0~105_sumout\ & ( \dut|Add0~97_sumout\ & ( (\dut|Add0~109_sumout\ & (\dut|Add0~77_sumout\ & (\dut|Add0~81_sumout\ & \dut|Add0~101_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~109_sumout\,
	datab => \dut|ALT_INV_Add0~77_sumout\,
	datac => \dut|ALT_INV_Add0~81_sumout\,
	datad => \dut|ALT_INV_Add0~101_sumout\,
	datae => \dut|ALT_INV_Add0~105_sumout\,
	dataf => \dut|ALT_INV_Add0~97_sumout\,
	combout => \dut|LessThan7~0_combout\);

-- Location: LABCELL_X79_Y6_N39
\dut|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan1~0_combout\ = ( !\dut|Add0~73_sumout\ & ( (!\dut|Add0~85_sumout\ & (!\dut|Add0~89_sumout\ & !\dut|Add0~93_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_Add0~85_sumout\,
	datac => \dut|ALT_INV_Add0~89_sumout\,
	datad => \dut|ALT_INV_Add0~93_sumout\,
	dataf => \dut|ALT_INV_Add0~73_sumout\,
	combout => \dut|LessThan1~0_combout\);

-- Location: LABCELL_X79_Y6_N6
\dut|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan7~1_combout\ = ( \dut|LessThan7~0_combout\ & ( \dut|LessThan1~0_combout\ & ( (\dut|Add0~61_sumout\ & (\dut|Add0~57_sumout\ & ((\dut|Add0~69_sumout\) # (\dut|Add0~65_sumout\)))) ) ) ) # ( !\dut|LessThan7~0_combout\ & ( 
-- \dut|LessThan1~0_combout\ & ( (\dut|Add0~61_sumout\ & (\dut|Add0~69_sumout\ & \dut|Add0~57_sumout\)) ) ) ) # ( \dut|LessThan7~0_combout\ & ( !\dut|LessThan1~0_combout\ & ( (\dut|Add0~61_sumout\ & (\dut|Add0~57_sumout\ & ((\dut|Add0~69_sumout\) # 
-- (\dut|Add0~65_sumout\)))) ) ) ) # ( !\dut|LessThan7~0_combout\ & ( !\dut|LessThan1~0_combout\ & ( (\dut|Add0~61_sumout\ & (\dut|Add0~57_sumout\ & ((\dut|Add0~69_sumout\) # (\dut|Add0~65_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000001010100000000000001010000000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~61_sumout\,
	datab => \dut|ALT_INV_Add0~65_sumout\,
	datac => \dut|ALT_INV_Add0~69_sumout\,
	datad => \dut|ALT_INV_Add0~57_sumout\,
	datae => \dut|ALT_INV_LessThan7~0_combout\,
	dataf => \dut|ALT_INV_LessThan1~0_combout\,
	combout => \dut|LessThan7~1_combout\);

-- Location: LABCELL_X79_Y6_N18
\dut|LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan6~2_combout\ = ( !\dut|Add0~105_sumout\ & ( !\dut|Add0~97_sumout\ & ( (!\dut|Add0~101_sumout\ & (!\dut|Add0~109_sumout\ & (!\dut|Add0~117_sumout\ & !\dut|Add0~77_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~101_sumout\,
	datab => \dut|ALT_INV_Add0~109_sumout\,
	datac => \dut|ALT_INV_Add0~117_sumout\,
	datad => \dut|ALT_INV_Add0~77_sumout\,
	datae => \dut|ALT_INV_Add0~105_sumout\,
	dataf => \dut|ALT_INV_Add0~97_sumout\,
	combout => \dut|LessThan6~2_combout\);

-- Location: LABCELL_X79_Y6_N48
\dut|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan6~1_combout\ = ( !\dut|Add0~93_sumout\ & ( (!\dut|Add0~81_sumout\ & (!\dut|Add0~85_sumout\ & (!\dut|Add0~73_sumout\ & !\dut|Add0~89_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~81_sumout\,
	datab => \dut|ALT_INV_Add0~85_sumout\,
	datac => \dut|ALT_INV_Add0~73_sumout\,
	datad => \dut|ALT_INV_Add0~89_sumout\,
	dataf => \dut|ALT_INV_Add0~93_sumout\,
	combout => \dut|LessThan6~1_combout\);

-- Location: LABCELL_X79_Y6_N42
\dut|LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan6~3_combout\ = ( \dut|Add0~61_sumout\ & ( \dut|LessThan6~1_combout\ & ( (\dut|Add0~57_sumout\ & (((!\dut|LessThan6~2_combout\ & \dut|Add0~65_sumout\)) # (\dut|Add0~69_sumout\))) ) ) ) # ( \dut|Add0~61_sumout\ & ( !\dut|LessThan6~1_combout\ & 
-- ( (\dut|Add0~57_sumout\ & ((\dut|Add0~69_sumout\) # (\dut|Add0~65_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011111100000000000000000000000000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan6~2_combout\,
	datab => \dut|ALT_INV_Add0~65_sumout\,
	datac => \dut|ALT_INV_Add0~69_sumout\,
	datad => \dut|ALT_INV_Add0~57_sumout\,
	datae => \dut|ALT_INV_Add0~61_sumout\,
	dataf => \dut|ALT_INV_LessThan6~1_combout\,
	combout => \dut|LessThan6~3_combout\);

-- Location: LABCELL_X77_Y6_N42
\dut|lcd_data[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|lcd_data[3]~3_combout\ = ( \dut|LessThan3~1_combout\ & ( \dut|busy~2_combout\ & ( (!\dut|Add0~113_sumout\ & (\dut|LessThan3~0_combout\ & ((!\dut|LessThan7~1_combout\) # (!\dut|LessThan6~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan7~1_combout\,
	datab => \dut|ALT_INV_LessThan6~3_combout\,
	datac => \dut|ALT_INV_Add0~113_sumout\,
	datad => \dut|ALT_INV_LessThan3~0_combout\,
	datae => \dut|ALT_INV_LessThan3~1_combout\,
	dataf => \dut|ALT_INV_busy~2_combout\,
	combout => \dut|lcd_data[3]~3_combout\);

-- Location: LABCELL_X79_Y6_N30
\dut|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan4~0_combout\ = ( \dut|Add0~97_sumout\ & ( (\dut|Add0~81_sumout\ & (((\dut|Add0~105_sumout\ & \dut|Add0~101_sumout\)) # (\dut|Add0~77_sumout\))) ) ) # ( !\dut|Add0~97_sumout\ & ( (\dut|Add0~81_sumout\ & \dut|Add0~77_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000101010001000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~81_sumout\,
	datab => \dut|ALT_INV_Add0~77_sumout\,
	datac => \dut|ALT_INV_Add0~105_sumout\,
	datad => \dut|ALT_INV_Add0~101_sumout\,
	dataf => \dut|ALT_INV_Add0~97_sumout\,
	combout => \dut|LessThan4~0_combout\);

-- Location: LABCELL_X79_Y6_N36
\dut|LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan4~1_combout\ = ( \dut|LessThan4~0_combout\ & ( (\dut|Add0~73_sumout\ & (((\dut|Add0~93_sumout\ & \dut|Add0~89_sumout\)) # (\dut|Add0~85_sumout\))) ) ) # ( !\dut|LessThan4~0_combout\ & ( (\dut|Add0~73_sumout\ & \dut|Add0~85_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000101010001000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~73_sumout\,
	datab => \dut|ALT_INV_Add0~85_sumout\,
	datac => \dut|ALT_INV_Add0~93_sumout\,
	datad => \dut|ALT_INV_Add0~89_sumout\,
	dataf => \dut|ALT_INV_LessThan4~0_combout\,
	combout => \dut|LessThan4~1_combout\);

-- Location: MLABCELL_X78_Y6_N36
\dut|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~5_combout\ = (!\dut|Add0~49_sumout\ & (!\dut|Add0~41_sumout\ & (!\dut|Add0~45_sumout\ & !\dut|Add0~37_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~49_sumout\,
	datab => \dut|ALT_INV_Add0~41_sumout\,
	datac => \dut|ALT_INV_Add0~45_sumout\,
	datad => \dut|ALT_INV_Add0~37_sumout\,
	combout => \dut|LessThan3~5_combout\);

-- Location: LABCELL_X79_Y7_N6
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

-- Location: MLABCELL_X78_Y6_N48
\dut|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~9_combout\ = ( \dut|LessThan3~5_combout\ & ( \dut|LessThan3~2_combout\ & ( (!\dut|Add0~9_sumout\ & (!\dut|Add0~53_sumout\ & (!\dut|Add0~5_sumout\ & \dut|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~9_sumout\,
	datab => \dut|ALT_INV_Add0~53_sumout\,
	datac => \dut|ALT_INV_Add0~5_sumout\,
	datad => \dut|ALT_INV_LessThan3~0_combout\,
	datae => \dut|ALT_INV_LessThan3~5_combout\,
	dataf => \dut|ALT_INV_LessThan3~2_combout\,
	combout => \dut|LessThan3~9_combout\);

-- Location: LABCELL_X77_Y6_N54
\dut|clk_count[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|clk_count[5]~1_combout\ = ( \dut|LessThan3~9_combout\ & ( \dut|Add0~113_sumout\ & ( (!\dut|state.send~q\ & ((\dut|state.power_up~q\) # (\dut|LessThan0~8_combout\))) ) ) ) # ( !\dut|LessThan3~9_combout\ & ( \dut|Add0~113_sumout\ & ( 
-- (!\dut|state.send~q\ & ((\dut|state.power_up~q\) # (\dut|LessThan0~8_combout\))) ) ) ) # ( \dut|LessThan3~9_combout\ & ( !\dut|Add0~113_sumout\ & ( (\dut|LessThan4~1_combout\ & (!\dut|state.send~q\ & ((\dut|state.power_up~q\) # 
-- (\dut|LessThan0~8_combout\)))) ) ) ) # ( !\dut|LessThan3~9_combout\ & ( !\dut|Add0~113_sumout\ & ( (!\dut|state.send~q\ & ((\dut|state.power_up~q\) # (\dut|LessThan0~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000000001110000000001110111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan0~8_combout\,
	datab => \dut|ALT_INV_state.power_up~q\,
	datac => \dut|ALT_INV_LessThan4~1_combout\,
	datad => \dut|ALT_INV_state.send~q\,
	datae => \dut|ALT_INV_LessThan3~9_combout\,
	dataf => \dut|ALT_INV_Add0~113_sumout\,
	combout => \dut|clk_count[5]~1_combout\);

-- Location: LABCELL_X79_Y6_N12
\dut|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan5~0_combout\ = ( \dut|Add0~105_sumout\ & ( \dut|Add0~97_sumout\ & ( (!\dut|Add0~101_sumout\ & (!\dut|Add0~109_sumout\ & (!\dut|Add0~77_sumout\ & !\dut|Add0~117_sumout\))) ) ) ) # ( !\dut|Add0~105_sumout\ & ( \dut|Add0~97_sumout\ & ( 
-- !\dut|Add0~77_sumout\ ) ) ) # ( \dut|Add0~105_sumout\ & ( !\dut|Add0~97_sumout\ & ( !\dut|Add0~77_sumout\ ) ) ) # ( !\dut|Add0~105_sumout\ & ( !\dut|Add0~97_sumout\ & ( !\dut|Add0~77_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~101_sumout\,
	datab => \dut|ALT_INV_Add0~109_sumout\,
	datac => \dut|ALT_INV_Add0~77_sumout\,
	datad => \dut|ALT_INV_Add0~117_sumout\,
	datae => \dut|ALT_INV_Add0~105_sumout\,
	dataf => \dut|ALT_INV_Add0~97_sumout\,
	combout => \dut|LessThan5~0_combout\);

-- Location: LABCELL_X79_Y6_N54
\dut|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan5~1_combout\ = ( \dut|Add0~81_sumout\ & ( \dut|LessThan5~0_combout\ & ( (\dut|Add0~73_sumout\ & (\dut|Add0~85_sumout\ & ((\dut|Add0~89_sumout\) # (\dut|Add0~93_sumout\)))) ) ) ) # ( !\dut|Add0~81_sumout\ & ( \dut|LessThan5~0_combout\ & ( 
-- (\dut|Add0~73_sumout\ & (\dut|Add0~85_sumout\ & ((\dut|Add0~89_sumout\) # (\dut|Add0~93_sumout\)))) ) ) ) # ( \dut|Add0~81_sumout\ & ( !\dut|LessThan5~0_combout\ & ( (\dut|Add0~73_sumout\ & \dut|Add0~85_sumout\) ) ) ) # ( !\dut|Add0~81_sumout\ & ( 
-- !\dut|LessThan5~0_combout\ & ( (\dut|Add0~73_sumout\ & (\dut|Add0~85_sumout\ & ((\dut|Add0~89_sumout\) # (\dut|Add0~93_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000111100000000000001110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~93_sumout\,
	datab => \dut|ALT_INV_Add0~89_sumout\,
	datac => \dut|ALT_INV_Add0~73_sumout\,
	datad => \dut|ALT_INV_Add0~85_sumout\,
	datae => \dut|ALT_INV_Add0~81_sumout\,
	dataf => \dut|ALT_INV_LessThan5~0_combout\,
	combout => \dut|LessThan5~1_combout\);

-- Location: LABCELL_X80_Y6_N0
\dut|LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan6~4_combout\ = ( !\dut|Add0~109_sumout\ & ( !\dut|Add0~117_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dut|ALT_INV_Add0~109_sumout\,
	dataf => \dut|ALT_INV_Add0~117_sumout\,
	combout => \dut|LessThan6~4_combout\);

-- Location: LABCELL_X79_Y6_N33
\dut|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan1~1_combout\ = ( \dut|Add0~97_sumout\ & ( (\dut|Add0~81_sumout\ & (\dut|Add0~77_sumout\ & (\dut|Add0~101_sumout\ & \dut|Add0~105_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~81_sumout\,
	datab => \dut|ALT_INV_Add0~77_sumout\,
	datac => \dut|ALT_INV_Add0~101_sumout\,
	datad => \dut|ALT_INV_Add0~105_sumout\,
	dataf => \dut|ALT_INV_Add0~97_sumout\,
	combout => \dut|LessThan1~1_combout\);

-- Location: LABCELL_X79_Y6_N24
\dut|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan1~2_combout\ = ( \dut|LessThan6~4_combout\ & ( \dut|LessThan1~1_combout\ & ( (!\dut|Add0~93_sumout\ & (!\dut|Add0~85_sumout\ & (!\dut|Add0~73_sumout\ & !\dut|Add0~89_sumout\))) ) ) ) # ( \dut|LessThan6~4_combout\ & ( 
-- !\dut|LessThan1~1_combout\ & ( (!\dut|Add0~93_sumout\ & (!\dut|Add0~85_sumout\ & (!\dut|Add0~73_sumout\ & !\dut|Add0~89_sumout\))) ) ) ) # ( !\dut|LessThan6~4_combout\ & ( !\dut|LessThan1~1_combout\ & ( (!\dut|Add0~93_sumout\ & (!\dut|Add0~85_sumout\ & 
-- (!\dut|Add0~73_sumout\ & !\dut|Add0~89_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~93_sumout\,
	datab => \dut|ALT_INV_Add0~85_sumout\,
	datac => \dut|ALT_INV_Add0~73_sumout\,
	datad => \dut|ALT_INV_Add0~89_sumout\,
	datae => \dut|ALT_INV_LessThan6~4_combout\,
	dataf => \dut|ALT_INV_LessThan1~1_combout\,
	combout => \dut|LessThan1~2_combout\);

-- Location: LABCELL_X79_Y7_N9
\dut|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan2~0_combout\ = ( \dut|Add0~105_sumout\ & ( (!\dut|Add0~97_sumout\ & ((!\dut|Add0~109_sumout\) # (!\dut|Add0~101_sumout\))) ) ) # ( !\dut|Add0~105_sumout\ & ( !\dut|Add0~97_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_Add0~109_sumout\,
	datac => \dut|ALT_INV_Add0~97_sumout\,
	datad => \dut|ALT_INV_Add0~101_sumout\,
	dataf => \dut|ALT_INV_Add0~105_sumout\,
	combout => \dut|LessThan2~0_combout\);

-- Location: LABCELL_X79_Y7_N36
\dut|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan2~1_combout\ = ( \dut|Add0~77_sumout\ & ( \dut|LessThan2~0_combout\ & ( (\dut|Add0~93_sumout\ & \dut|Add0~85_sumout\) ) ) ) # ( !\dut|Add0~77_sumout\ & ( \dut|LessThan2~0_combout\ & ( (\dut|Add0~93_sumout\ & \dut|Add0~85_sumout\) ) ) ) # ( 
-- \dut|Add0~77_sumout\ & ( !\dut|LessThan2~0_combout\ & ( (\dut|Add0~85_sumout\ & (((\dut|Add0~89_sumout\ & \dut|Add0~81_sumout\)) # (\dut|Add0~93_sumout\))) ) ) ) # ( !\dut|Add0~77_sumout\ & ( !\dut|LessThan2~0_combout\ & ( (\dut|Add0~93_sumout\ & 
-- \dut|Add0~85_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000001111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~89_sumout\,
	datab => \dut|ALT_INV_Add0~81_sumout\,
	datac => \dut|ALT_INV_Add0~93_sumout\,
	datad => \dut|ALT_INV_Add0~85_sumout\,
	datae => \dut|ALT_INV_Add0~77_sumout\,
	dataf => \dut|ALT_INV_LessThan2~0_combout\,
	combout => \dut|LessThan2~1_combout\);

-- Location: LABCELL_X79_Y7_N18
\dut|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~6_combout\ = ( \dut|Add0~105_sumout\ & ( (!\dut|Add0~101_sumout\ & (!\dut|Add0~97_sumout\ & ((!\dut|Add0~117_sumout\) # (!\dut|Add0~109_sumout\)))) ) ) # ( !\dut|Add0~105_sumout\ & ( !\dut|Add0~97_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~117_sumout\,
	datab => \dut|ALT_INV_Add0~109_sumout\,
	datac => \dut|ALT_INV_Add0~101_sumout\,
	datad => \dut|ALT_INV_Add0~97_sumout\,
	dataf => \dut|ALT_INV_Add0~105_sumout\,
	combout => \dut|LessThan3~6_combout\);

-- Location: LABCELL_X79_Y7_N42
\dut|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~7_combout\ = ( \dut|Add0~89_sumout\ & ( \dut|LessThan3~6_combout\ & ( (\dut|Add0~93_sumout\ & \dut|Add0~85_sumout\) ) ) ) # ( \dut|Add0~89_sumout\ & ( !\dut|LessThan3~6_combout\ & ( (\dut|Add0~93_sumout\ & \dut|Add0~85_sumout\) ) ) ) # ( 
-- !\dut|Add0~89_sumout\ & ( !\dut|LessThan3~6_combout\ & ( (\dut|Add0~77_sumout\ & (\dut|Add0~81_sumout\ & (\dut|Add0~93_sumout\ & \dut|Add0~85_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000111100000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~77_sumout\,
	datab => \dut|ALT_INV_Add0~81_sumout\,
	datac => \dut|ALT_INV_Add0~93_sumout\,
	datad => \dut|ALT_INV_Add0~85_sumout\,
	datae => \dut|ALT_INV_Add0~89_sumout\,
	dataf => \dut|ALT_INV_LessThan3~6_combout\,
	combout => \dut|LessThan3~7_combout\);

-- Location: MLABCELL_X78_Y6_N45
\dut|clk_count[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|clk_count[5]~0_combout\ = ( \dut|LessThan3~7_combout\ & ( \dut|LessThan3~9_combout\ & ( (!\dut|LessThan5~1_combout\) # (((!\dut|Add0~73_sumout\ & !\dut|LessThan2~1_combout\)) # (\dut|LessThan1~2_combout\)) ) ) ) # ( !\dut|LessThan3~7_combout\ & ( 
-- \dut|LessThan3~9_combout\ & ( (!\dut|Add0~73_sumout\) # ((!\dut|LessThan5~1_combout\) # (\dut|LessThan1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101111111011111110111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~73_sumout\,
	datab => \dut|ALT_INV_LessThan5~1_combout\,
	datac => \dut|ALT_INV_LessThan1~2_combout\,
	datad => \dut|ALT_INV_LessThan2~1_combout\,
	datae => \dut|ALT_INV_LessThan3~7_combout\,
	dataf => \dut|ALT_INV_LessThan3~9_combout\,
	combout => \dut|clk_count[5]~0_combout\);

-- Location: LABCELL_X77_Y6_N48
\dut|clk_count[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|clk_count[5]~3_combout\ = ( \dut|clk_count[5]~1_combout\ & ( \dut|clk_count[5]~0_combout\ & ( (!\dut|clk_count[5]~2_combout\) # ((\dut|Add0~113_sumout\ & (\dut|lcd_data[3]~2_combout\ & !\dut|lcd_data[3]~3_combout\))) ) ) ) # ( 
-- !\dut|clk_count[5]~1_combout\ & ( \dut|clk_count[5]~0_combout\ & ( !\dut|clk_count[5]~2_combout\ ) ) ) # ( \dut|clk_count[5]~1_combout\ & ( !\dut|clk_count[5]~0_combout\ & ( (!\dut|clk_count[5]~2_combout\) # ((\dut|lcd_data[3]~2_combout\ & 
-- !\dut|lcd_data[3]~3_combout\)) ) ) ) # ( !\dut|clk_count[5]~1_combout\ & ( !\dut|clk_count[5]~0_combout\ & ( !\dut|clk_count[5]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100111111000011110000111100001111000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~113_sumout\,
	datab => \dut|ALT_INV_lcd_data[3]~2_combout\,
	datac => \dut|ALT_INV_clk_count[5]~2_combout\,
	datad => \dut|ALT_INV_lcd_data[3]~3_combout\,
	datae => \dut|ALT_INV_clk_count[5]~1_combout\,
	dataf => \dut|ALT_INV_clk_count[5]~0_combout\,
	combout => \dut|clk_count[5]~3_combout\);

-- Location: FF_X78_Y7_N2
\dut|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~125_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(0));

-- Location: MLABCELL_X78_Y7_N3
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

-- Location: FF_X78_Y7_N5
\dut|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~121_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(1));

-- Location: MLABCELL_X78_Y7_N6
\dut|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~117_sumout\ = SUM(( \dut|clk_count\(2) ) + ( GND ) + ( \dut|Add0~122\ ))
-- \dut|Add0~118\ = CARRY(( \dut|clk_count\(2) ) + ( GND ) + ( \dut|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \dut|ALT_INV_clk_count\(2),
	cin => \dut|Add0~122\,
	sumout => \dut|Add0~117_sumout\,
	cout => \dut|Add0~118\);

-- Location: FF_X78_Y7_N8
\dut|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~117_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(2));

-- Location: MLABCELL_X78_Y7_N9
\dut|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~109_sumout\ = SUM(( \dut|clk_count\(3) ) + ( GND ) + ( \dut|Add0~118\ ))
-- \dut|Add0~110\ = CARRY(( \dut|clk_count\(3) ) + ( GND ) + ( \dut|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(3),
	cin => \dut|Add0~118\,
	sumout => \dut|Add0~109_sumout\,
	cout => \dut|Add0~110\);

-- Location: FF_X78_Y7_N11
\dut|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~109_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(3));

-- Location: MLABCELL_X78_Y7_N12
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

-- Location: FF_X78_Y7_N14
\dut|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~101_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(4));

-- Location: MLABCELL_X78_Y7_N15
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

-- Location: FF_X78_Y7_N17
\dut|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~105_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(5));

-- Location: MLABCELL_X78_Y7_N18
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

-- Location: FF_X78_Y7_N20
\dut|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~97_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(6));

-- Location: MLABCELL_X78_Y7_N21
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

-- Location: FF_X78_Y7_N23
\dut|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~77_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(7));

-- Location: MLABCELL_X78_Y7_N24
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

-- Location: FF_X78_Y7_N26
\dut|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~81_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(8));

-- Location: MLABCELL_X78_Y7_N27
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

-- Location: FF_X78_Y7_N29
\dut|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~89_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(9));

-- Location: MLABCELL_X78_Y7_N30
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

-- Location: FF_X78_Y7_N32
\dut|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~93_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(10));

-- Location: MLABCELL_X78_Y7_N33
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

-- Location: FF_X78_Y7_N35
\dut|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~85_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(11));

-- Location: MLABCELL_X78_Y7_N36
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

-- Location: FF_X78_Y7_N38
\dut|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~73_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(12));

-- Location: MLABCELL_X78_Y7_N39
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

-- Location: FF_X78_Y7_N41
\dut|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~65_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(13));

-- Location: MLABCELL_X78_Y7_N42
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

-- Location: FF_X78_Y7_N44
\dut|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~69_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(14));

-- Location: MLABCELL_X78_Y7_N45
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

-- Location: FF_X78_Y7_N47
\dut|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~57_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(15));

-- Location: MLABCELL_X78_Y7_N48
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

-- Location: FF_X78_Y7_N50
\dut|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~61_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(16));

-- Location: MLABCELL_X78_Y7_N51
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

-- Location: FF_X78_Y7_N53
\dut|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~13_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(17));

-- Location: MLABCELL_X78_Y7_N54
\dut|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~17_sumout\ = SUM(( \dut|clk_count\(18) ) + ( GND ) + ( \dut|Add0~14\ ))
-- \dut|Add0~18\ = CARRY(( \dut|clk_count\(18) ) + ( GND ) + ( \dut|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_clk_count\(18),
	cin => \dut|Add0~14\,
	sumout => \dut|Add0~17_sumout\,
	cout => \dut|Add0~18\);

-- Location: FF_X78_Y7_N56
\dut|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~17_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(18));

-- Location: MLABCELL_X78_Y7_N57
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

-- Location: FF_X78_Y7_N59
\dut|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~21_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(19));

-- Location: MLABCELL_X78_Y6_N0
\dut|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~25_sumout\ = SUM(( \dut|clk_count[20]~DUPLICATE_q\ ) + ( GND ) + ( \dut|Add0~22\ ))
-- \dut|Add0~26\ = CARRY(( \dut|clk_count[20]~DUPLICATE_q\ ) + ( GND ) + ( \dut|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_clk_count[20]~DUPLICATE_q\,
	cin => \dut|Add0~22\,
	sumout => \dut|Add0~25_sumout\,
	cout => \dut|Add0~26\);

-- Location: FF_X78_Y6_N56
\dut|clk_count[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~25_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count[20]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y6_N3
\dut|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~29_sumout\ = SUM(( \dut|clk_count[21]~DUPLICATE_q\ ) + ( GND ) + ( \dut|Add0~26\ ))
-- \dut|Add0~30\ = CARRY(( \dut|clk_count[21]~DUPLICATE_q\ ) + ( GND ) + ( \dut|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count[21]~DUPLICATE_q\,
	cin => \dut|Add0~26\,
	sumout => \dut|Add0~29_sumout\,
	cout => \dut|Add0~30\);

-- Location: FF_X78_Y6_N44
\dut|clk_count[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~29_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count[21]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y6_N6
\dut|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~33_sumout\ = SUM(( \dut|clk_count\(22) ) + ( GND ) + ( \dut|Add0~30\ ))
-- \dut|Add0~34\ = CARRY(( \dut|clk_count\(22) ) + ( GND ) + ( \dut|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_clk_count\(22),
	cin => \dut|Add0~30\,
	sumout => \dut|Add0~33_sumout\,
	cout => \dut|Add0~34\);

-- Location: FF_X78_Y6_N47
\dut|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~33_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(22));

-- Location: MLABCELL_X78_Y6_N9
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

-- Location: FF_X78_Y6_N38
\dut|clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~37_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(23));

-- Location: MLABCELL_X78_Y6_N12
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

-- Location: FF_X78_Y6_N59
\dut|clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~41_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(24));

-- Location: MLABCELL_X78_Y6_N15
\dut|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Add0~45_sumout\ = SUM(( \dut|clk_count\(25) ) + ( GND ) + ( \dut|Add0~42\ ))
-- \dut|Add0~46\ = CARRY(( \dut|clk_count\(25) ) + ( GND ) + ( \dut|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_clk_count\(25),
	cin => \dut|Add0~42\,
	sumout => \dut|Add0~45_sumout\,
	cout => \dut|Add0~46\);

-- Location: FF_X78_Y6_N5
\dut|clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~45_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(25));

-- Location: FF_X78_Y6_N32
\dut|clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \dut|Add0~49_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(26));

-- Location: LABCELL_X77_Y7_N54
\dut|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~5_combout\ = ( !\dut|clk_count\(22) & ( (!\dut|clk_count\(26) & (!\dut|clk_count\(23) & (!\dut|clk_count\(25) & !\dut|clk_count\(24)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(26),
	datab => \dut|ALT_INV_clk_count\(23),
	datac => \dut|ALT_INV_clk_count\(25),
	datad => \dut|ALT_INV_clk_count\(24),
	dataf => \dut|ALT_INV_clk_count\(22),
	combout => \dut|LessThan0~5_combout\);

-- Location: LABCELL_X77_Y7_N27
\dut|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~7_combout\ = ( \dut|LessThan0~6_combout\ & ( \dut|LessThan0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \dut|ALT_INV_LessThan0~5_combout\,
	dataf => \dut|ALT_INV_LessThan0~6_combout\,
	combout => \dut|LessThan0~7_combout\);

-- Location: LABCELL_X77_Y7_N12
\dut|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan0~8_combout\ = ( \dut|LessThan0~4_combout\ & ( (!\dut|clk_count\(31) & ((!\dut|LessThan0~7_combout\) # (\dut|clk_count\(21)))) ) ) # ( !\dut|LessThan0~4_combout\ & ( (!\dut|clk_count\(31) & ((!\dut|LessThan0~7_combout\) # 
-- ((!\dut|LessThan0~0_combout\ & \dut|clk_count\(21))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011100000101000001110000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan0~7_combout\,
	datab => \dut|ALT_INV_LessThan0~0_combout\,
	datac => \dut|ALT_INV_clk_count\(31),
	datad => \dut|ALT_INV_clk_count\(21),
	dataf => \dut|ALT_INV_LessThan0~4_combout\,
	combout => \dut|LessThan0~8_combout\);

-- Location: LABCELL_X79_Y7_N12
\dut|LessThan3~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~11_combout\ = ( !\dut|Add0~89_sumout\ & ( !\dut|Add0~97_sumout\ & ( (!\dut|Add0~105_sumout\) # ((!\dut|Add0~101_sumout\ & ((!\dut|Add0~117_sumout\) # (!\dut|Add0~109_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~101_sumout\,
	datab => \dut|ALT_INV_Add0~105_sumout\,
	datac => \dut|ALT_INV_Add0~117_sumout\,
	datad => \dut|ALT_INV_Add0~109_sumout\,
	datae => \dut|ALT_INV_Add0~89_sumout\,
	dataf => \dut|ALT_INV_Add0~97_sumout\,
	combout => \dut|LessThan3~11_combout\);

-- Location: LABCELL_X79_Y7_N27
\dut|LessThan3~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~12_combout\ = ( \dut|Add0~93_sumout\ & ( (\dut|Add0~85_sumout\ & (((\dut|Add0~81_sumout\ & \dut|Add0~77_sumout\)) # (\dut|Add0~89_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100110001000100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~89_sumout\,
	datab => \dut|ALT_INV_Add0~85_sumout\,
	datac => \dut|ALT_INV_Add0~81_sumout\,
	datad => \dut|ALT_INV_Add0~77_sumout\,
	dataf => \dut|ALT_INV_Add0~93_sumout\,
	combout => \dut|LessThan3~12_combout\);

-- Location: LABCELL_X79_Y7_N0
\dut|busy~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|busy~4_combout\ = ( \dut|LessThan3~12_combout\ & ( \dut|LessThan6~0_combout\ & ( (!\dut|Add0~57_sumout\ & (!\dut|Add0~61_sumout\ & (!\dut|Add0~73_sumout\ & \dut|LessThan3~11_combout\))) ) ) ) # ( !\dut|LessThan3~12_combout\ & ( 
-- \dut|LessThan6~0_combout\ & ( (!\dut|Add0~57_sumout\ & (!\dut|Add0~61_sumout\ & !\dut|Add0~73_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~57_sumout\,
	datab => \dut|ALT_INV_Add0~61_sumout\,
	datac => \dut|ALT_INV_Add0~73_sumout\,
	datad => \dut|ALT_INV_LessThan3~11_combout\,
	datae => \dut|ALT_INV_LessThan3~12_combout\,
	dataf => \dut|ALT_INV_LessThan6~0_combout\,
	combout => \dut|busy~4_combout\);

-- Location: LABCELL_X77_Y6_N0
\dut|state~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|state~6_combout\ = ( \dut|LessThan3~1_combout\ & ( \dut|busy~4_combout\ & ( (!\dut|Add0~9_sumout\ & (\dut|LessThan3~0_combout\ & (!\dut|Add0~113_sumout\ & !\dut|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~9_sumout\,
	datab => \dut|ALT_INV_LessThan3~0_combout\,
	datac => \dut|ALT_INV_Add0~113_sumout\,
	datad => \dut|ALT_INV_Add0~5_sumout\,
	datae => \dut|ALT_INV_LessThan3~1_combout\,
	dataf => \dut|ALT_INV_busy~4_combout\,
	combout => \dut|state~6_combout\);

-- Location: MLABCELL_X78_Y5_N36
\dut|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector33~0_combout\ = ( \dut|state.initialize~q\ & ( \dut|lcd_data[3]~2_combout\ & ( (((\dut|LessThan0~8_combout\ & !\dut|state.power_up~q\)) # (\dut|state~6_combout\)) # (\dut|lcd_data[3]~3_combout\) ) ) ) # ( !\dut|state.initialize~q\ & ( 
-- \dut|lcd_data[3]~2_combout\ & ( (\dut|LessThan0~8_combout\ & !\dut|state.power_up~q\) ) ) ) # ( \dut|state.initialize~q\ & ( !\dut|lcd_data[3]~2_combout\ ) ) # ( !\dut|state.initialize~q\ & ( !\dut|lcd_data[3]~2_combout\ & ( (\dut|LessThan0~8_combout\ & 
-- !\dut|state.power_up~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111111111111111101010101000000000111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan0~8_combout\,
	datab => \dut|ALT_INV_lcd_data[3]~3_combout\,
	datac => \dut|ALT_INV_state~6_combout\,
	datad => \dut|ALT_INV_state.power_up~q\,
	datae => \dut|ALT_INV_state.initialize~q\,
	dataf => \dut|ALT_INV_lcd_data[3]~2_combout\,
	combout => \dut|Selector33~0_combout\);

-- Location: FF_X78_Y5_N38
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

-- Location: LABCELL_X77_Y5_N9
\dut|lcd_data[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|lcd_data[3]~0_combout\ = ( \dut|state.ready~q\ & ( !\lcd_enable~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_lcd_enable~q\,
	datae => \dut|ALT_INV_state.ready~q\,
	combout => \dut|lcd_data[3]~0_combout\);

-- Location: LABCELL_X81_Y7_N33
\dut|Selector34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector34~1_combout\ = ( \dut|LessThan9~1_combout\ & ( \dut|LessThan9~4_combout\ & ( (!\dut|clk_count\(31) & \dut|state.send~q\) ) ) ) # ( !\dut|LessThan9~1_combout\ & ( \dut|LessThan9~4_combout\ & ( (!\dut|clk_count\(31) & \dut|state.send~q\) ) ) ) 
-- # ( \dut|LessThan9~1_combout\ & ( !\dut|LessThan9~4_combout\ & ( (!\dut|clk_count\(31) & (!\dut|LessThan0~6_combout\ & \dut|state.send~q\)) ) ) ) # ( !\dut|LessThan9~1_combout\ & ( !\dut|LessThan9~4_combout\ & ( (!\dut|clk_count\(31) & \dut|state.send~q\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010000000100000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(31),
	datab => \dut|ALT_INV_LessThan0~6_combout\,
	datac => \dut|ALT_INV_state.send~q\,
	datae => \dut|ALT_INV_LessThan9~1_combout\,
	dataf => \dut|ALT_INV_LessThan9~4_combout\,
	combout => \dut|Selector34~1_combout\);

-- Location: MLABCELL_X78_Y5_N42
\dut|Selector34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector34~2_combout\ = ( \dut|lcd_data[3]~3_combout\ & ( \dut|lcd_data[3]~2_combout\ & ( (\dut|Selector34~1_combout\) # (\dut|lcd_data[3]~0_combout\) ) ) ) # ( !\dut|lcd_data[3]~3_combout\ & ( \dut|lcd_data[3]~2_combout\ & ( 
-- (((\dut|state.initialize~q\ & !\dut|state~6_combout\)) # (\dut|Selector34~1_combout\)) # (\dut|lcd_data[3]~0_combout\) ) ) ) # ( \dut|lcd_data[3]~3_combout\ & ( !\dut|lcd_data[3]~2_combout\ & ( (\dut|Selector34~1_combout\) # (\dut|lcd_data[3]~0_combout\) 
-- ) ) ) # ( !\dut|lcd_data[3]~3_combout\ & ( !\dut|lcd_data[3]~2_combout\ & ( (\dut|Selector34~1_combout\) # (\dut|lcd_data[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111101110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.initialize~q\,
	datab => \dut|ALT_INV_lcd_data[3]~0_combout\,
	datac => \dut|ALT_INV_state~6_combout\,
	datad => \dut|ALT_INV_Selector34~1_combout\,
	datae => \dut|ALT_INV_lcd_data[3]~3_combout\,
	dataf => \dut|ALT_INV_lcd_data[3]~2_combout\,
	combout => \dut|Selector34~2_combout\);

-- Location: FF_X78_Y5_N44
\dut|state.ready\ : dffeas
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
	q => \dut|state.ready~q\);

-- Location: MLABCELL_X78_Y5_N30
\dut|Selector34~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector34~3_combout\ = ( \dut|lcd_data[3]~3_combout\ & ( \dut|lcd_data[3]~2_combout\ & ( (!\lcd_enable~q\ & \dut|state.ready~q\) ) ) ) # ( !\dut|lcd_data[3]~3_combout\ & ( \dut|lcd_data[3]~2_combout\ & ( (!\lcd_enable~q\ & 
-- (((\dut|state.initialize~q\ & !\dut|state~6_combout\)) # (\dut|state.ready~q\))) # (\lcd_enable~q\ & (((\dut|state.initialize~q\ & !\dut|state~6_combout\)))) ) ) ) # ( \dut|lcd_data[3]~3_combout\ & ( !\dut|lcd_data[3]~2_combout\ & ( (!\lcd_enable~q\ & 
-- \dut|state.ready~q\) ) ) ) # ( !\dut|lcd_data[3]~3_combout\ & ( !\dut|lcd_data[3]~2_combout\ & ( (!\lcd_enable~q\ & \dut|state.ready~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000101111001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_lcd_enable~q\,
	datab => \dut|ALT_INV_state.ready~q\,
	datac => \dut|ALT_INV_state.initialize~q\,
	datad => \dut|ALT_INV_state~6_combout\,
	datae => \dut|ALT_INV_lcd_data[3]~3_combout\,
	dataf => \dut|ALT_INV_lcd_data[3]~2_combout\,
	combout => \dut|Selector34~3_combout\);

-- Location: FF_X78_Y5_N31
\dut|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector34~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|busy~q\);

-- Location: FF_X73_Y4_N40
\char[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \char~22_combout\,
	sclr => \Equal27~13_combout\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(12));

-- Location: LABCELL_X71_Y5_N24
\lcd_enable~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~3_combout\ = ( !char(22) & ( !char(23) & ( (\dut|busy~q\ & (!\lcd_enable~q\ & (!char(12) & !char(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_busy~q\,
	datab => \ALT_INV_lcd_enable~q\,
	datac => ALT_INV_char(12),
	datad => ALT_INV_char(5),
	datae => ALT_INV_char(22),
	dataf => ALT_INV_char(23),
	combout => \lcd_enable~3_combout\);

-- Location: LABCELL_X74_Y3_N18
WideNor0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = ( !\Equal27~13_combout\ & ( !\WideNor0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Equal27~13_combout\,
	dataf => \ALT_INV_WideNor0~0_combout\,
	combout => \WideNor0~combout\);

-- Location: LABCELL_X74_Y3_N24
\lcd_enable~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~6_combout\ = ( \lcd_enable~3_combout\ & ( !\WideNor0~combout\ & ( (\lcd_enable~5_combout\ & (\lcd_enable~0_combout\ & (!\lcd_enable~2_combout\ & \lcd_enable~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_lcd_enable~5_combout\,
	datab => \ALT_INV_lcd_enable~0_combout\,
	datac => \ALT_INV_lcd_enable~2_combout\,
	datad => \ALT_INV_lcd_enable~4_combout\,
	datae => \ALT_INV_lcd_enable~3_combout\,
	dataf => \ALT_INV_WideNor0~combout\,
	combout => \lcd_enable~6_combout\);

-- Location: FF_X74_Y3_N25
lcd_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \lcd_enable~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_enable~q\);

-- Location: LABCELL_X70_Y5_N15
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

-- Location: FF_X71_Y4_N7
\char[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~15_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[19]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N24
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( char(18) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~58\ = CARRY(( char(18) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(18),
	cin => \Add0~34\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: MLABCELL_X72_Y4_N27
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \char[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~90\ = CARRY(( \char[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char[19]~DUPLICATE_q\,
	cin => \Add0~58\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: LABCELL_X71_Y4_N6
\char~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~15_combout\ = ( char(19) & ( \LessThan0~1_combout\ & ( \Add0~89_sumout\ ) ) ) # ( !char(19) & ( \LessThan0~1_combout\ & ( \Add0~89_sumout\ ) ) ) # ( char(19) & ( !\LessThan0~1_combout\ & ( (\Add0~89_sumout\) # (\LessThan0~3_combout\) ) ) ) # ( 
-- !char(19) & ( !\LessThan0~1_combout\ & ( (!\LessThan0~3_combout\ & \Add0~89_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_Add0~89_sumout\,
	datae => ALT_INV_char(19),
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \char~15_combout\);

-- Location: FF_X71_Y4_N8
\char[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~15_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(19));

-- Location: MLABCELL_X72_Y4_N18
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( char(16) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~54\ = CARRY(( char(16) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(16),
	cin => \Add0~30\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X73_Y4_N42
\char~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~24_combout\ = ( \LessThan0~1_combout\ & ( \Add0~53_sumout\ ) ) # ( !\LessThan0~1_combout\ & ( (!\LessThan0~3_combout\ & (\Add0~53_sumout\)) # (\LessThan0~3_combout\ & ((char(16)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_Add0~53_sumout\,
	datad => ALT_INV_char(16),
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \char~24_combout\);

-- Location: FF_X73_Y4_N44
\char[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~24_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(16));

-- Location: MLABCELL_X72_Y4_N21
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( char(17) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~34\ = CARRY(( char(17) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(17),
	cin => \Add0~54\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X73_Y5_N0
\Equal27~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~11_combout\ = ( char(17) & ( \Add0~89_sumout\ & ( (!\LessThan0~3_combout\ & (((\Add0~33_sumout\)))) # (\LessThan0~3_combout\ & ((!\LessThan0~1_combout\ & (char(19))) # (\LessThan0~1_combout\ & ((\Add0~33_sumout\))))) ) ) ) # ( !char(17) & ( 
-- \Add0~89_sumout\ & ( (\Add0~33_sumout\ & ((!\LessThan0~3_combout\) # (\LessThan0~1_combout\))) ) ) ) # ( char(17) & ( !\Add0~89_sumout\ & ( (char(19) & (\LessThan0~3_combout\ & !\LessThan0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010000000000001100000011110001110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(19),
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => ALT_INV_char(17),
	dataf => \ALT_INV_Add0~89_sumout\,
	combout => \Equal27~11_combout\);

-- Location: FF_X73_Y4_N28
\char[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~9_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[24]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y4_N6
\char~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~5_combout\ = ( \char[24]~DUPLICATE_q\ & ( \char[25]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_char[25]~DUPLICATE_q\,
	dataf => \ALT_INV_char[24]~DUPLICATE_q\,
	combout => \char~5_combout\);

-- Location: MLABCELL_X72_Y5_N51
\Equal27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~2_combout\ = ( char(6) & ( \LessThan0~1_combout\ & ( (!\Add0~77_sumout\ & !\Add0~73_sumout\) ) ) ) # ( !char(6) & ( \LessThan0~1_combout\ & ( (!\Add0~77_sumout\ & !\Add0~73_sumout\) ) ) ) # ( char(6) & ( !\LessThan0~1_combout\ & ( 
-- (!\Add0~77_sumout\ & (!\Add0~73_sumout\ & !\LessThan0~3_combout\)) ) ) ) # ( !char(6) & ( !\LessThan0~1_combout\ & ( (!\LessThan0~3_combout\ & (!\Add0~77_sumout\ & ((!\Add0~73_sumout\)))) # (\LessThan0~3_combout\ & (((!\char[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011001100101000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~77_sumout\,
	datab => \ALT_INV_char[5]~DUPLICATE_q\,
	datac => \ALT_INV_Add0~73_sumout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => ALT_INV_char(6),
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \Equal27~2_combout\);

-- Location: LABCELL_X73_Y5_N6
\Equal27~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~3_combout\ = ( \Add0~85_sumout\ & ( \Add0~81_sumout\ & ( (!char(8) & (!\LessThan0~1_combout\ & (!char(9) & \LessThan0~3_combout\))) ) ) ) # ( !\Add0~85_sumout\ & ( \Add0~81_sumout\ & ( (!char(8) & (!\LessThan0~1_combout\ & (!char(9) & 
-- \LessThan0~3_combout\))) ) ) ) # ( \Add0~85_sumout\ & ( !\Add0~81_sumout\ & ( (!char(8) & (!\LessThan0~1_combout\ & (!char(9) & \LessThan0~3_combout\))) ) ) ) # ( !\Add0~85_sumout\ & ( !\Add0~81_sumout\ & ( ((!\LessThan0~3_combout\) # ((!char(8) & 
-- !char(9)))) # (\LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110110011000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(8),
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_char(9),
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => \ALT_INV_Add0~85_sumout\,
	dataf => \ALT_INV_Add0~81_sumout\,
	combout => \Equal27~3_combout\);

-- Location: LABCELL_X73_Y5_N54
\Equal27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~1_combout\ = ( \Add0~69_sumout\ & ( \Add0~65_sumout\ & ( (!char(10) & (\LessThan0~3_combout\ & (!char(11) & !\LessThan0~1_combout\))) ) ) ) # ( !\Add0~69_sumout\ & ( \Add0~65_sumout\ & ( (!char(10) & (\LessThan0~3_combout\ & (!char(11) & 
-- !\LessThan0~1_combout\))) ) ) ) # ( \Add0~69_sumout\ & ( !\Add0~65_sumout\ & ( (!char(10) & (\LessThan0~3_combout\ & (!char(11) & !\LessThan0~1_combout\))) ) ) ) # ( !\Add0~69_sumout\ & ( !\Add0~65_sumout\ & ( (!\LessThan0~3_combout\) # (((!char(10) & 
-- !char(11))) # (\LessThan0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011111111001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(10),
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => ALT_INV_char(11),
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_Add0~69_sumout\,
	dataf => \ALT_INV_Add0~65_sumout\,
	combout => \Equal27~1_combout\);

-- Location: LABCELL_X73_Y5_N12
\Equal27~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~4_combout\ = ( \Equal27~1_combout\ & ( \Add0~61_sumout\ & ( (!\char~5_combout\ & (\LessThan0~4_combout\ & (\Equal27~2_combout\ & \Equal27~3_combout\))) ) ) ) # ( \Equal27~1_combout\ & ( !\Add0~61_sumout\ & ( (!\char~5_combout\ & 
-- (\Equal27~2_combout\ & \Equal27~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~5_combout\,
	datab => \ALT_INV_LessThan0~4_combout\,
	datac => \ALT_INV_Equal27~2_combout\,
	datad => \ALT_INV_Equal27~3_combout\,
	datae => \ALT_INV_Equal27~1_combout\,
	dataf => \ALT_INV_Add0~61_sumout\,
	combout => \Equal27~4_combout\);

-- Location: LABCELL_X73_Y4_N36
\Equal27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~0_combout\ = ( \LessThan0~3_combout\ & ( \Add0~57_sumout\ & ( (!\LessThan0~1_combout\ & (!char(16) & !char(18))) ) ) ) # ( \LessThan0~3_combout\ & ( !\Add0~57_sumout\ & ( (!\LessThan0~1_combout\ & (!char(16) & (!char(18)))) # 
-- (\LessThan0~1_combout\ & (((!\Add0~53_sumout\)))) ) ) ) # ( !\LessThan0~3_combout\ & ( !\Add0~57_sumout\ & ( !\Add0~53_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000110101011000000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => ALT_INV_char(16),
	datac => ALT_INV_char(18),
	datad => \ALT_INV_Add0~53_sumout\,
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_Add0~57_sumout\,
	combout => \Equal27~0_combout\);

-- Location: LABCELL_X71_Y5_N0
\Equal27~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~12_combout\ = ( \Add0~37_sumout\ & ( \Add0~41_sumout\ & ( (!\LessThan0~4_combout\) # ((char(21) & char(22))) ) ) ) # ( !\Add0~37_sumout\ & ( \Add0~41_sumout\ & ( (char(21) & (\LessThan0~4_combout\ & char(22))) ) ) ) # ( \Add0~37_sumout\ & ( 
-- !\Add0~41_sumout\ & ( (char(21) & (\LessThan0~4_combout\ & char(22))) ) ) ) # ( !\Add0~37_sumout\ & ( !\Add0~41_sumout\ & ( (char(21) & (\LessThan0~4_combout\ & char(22))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000011100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(21),
	datab => \ALT_INV_LessThan0~4_combout\,
	datac => ALT_INV_char(22),
	datae => \ALT_INV_Add0~37_sumout\,
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \Equal27~12_combout\);

-- Location: LABCELL_X73_Y3_N18
\Equal27~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~5_combout\ = ( \Add0~9_sumout\ & ( \Add0~97_sumout\ & ( (!char(3) & (!\LessThan0~1_combout\ & (!char(0) & \LessThan0~3_combout\))) ) ) ) # ( !\Add0~9_sumout\ & ( \Add0~97_sumout\ & ( (!char(3) & (!\LessThan0~1_combout\ & (!char(0) & 
-- \LessThan0~3_combout\))) ) ) ) # ( \Add0~9_sumout\ & ( !\Add0~97_sumout\ & ( (!char(3) & (!\LessThan0~1_combout\ & (!char(0) & \LessThan0~3_combout\))) ) ) ) # ( !\Add0~9_sumout\ & ( !\Add0~97_sumout\ & ( ((!\LessThan0~3_combout\) # ((!char(3) & 
-- !char(0)))) # (\LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110110011000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(3),
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_char(0),
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => \ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_Add0~97_sumout\,
	combout => \Equal27~5_combout\);

-- Location: LABCELL_X73_Y3_N0
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \LessThan0~3_combout\ & ( \Add0~1_sumout\ & ( (!\char[1]~DUPLICATE_q\ & (!\LessThan0~1_combout\ & !char(4))) ) ) ) # ( \LessThan0~3_combout\ & ( !\Add0~1_sumout\ & ( (!\LessThan0~1_combout\ & (!\char[1]~DUPLICATE_q\ & ((!char(4))))) 
-- # (\LessThan0~1_combout\ & (((!\Add0~101_sumout\)))) ) ) ) # ( !\LessThan0~3_combout\ & ( !\Add0~1_sumout\ & ( !\Add0~101_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101110000011000000000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char[1]~DUPLICATE_q\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Add0~101_sumout\,
	datad => ALT_INV_char(4),
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \Equal0~5_combout\);

-- Location: MLABCELL_X72_Y4_N30
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \char[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( \char[20]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char[20]~DUPLICATE_q\,
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: LABCELL_X73_Y3_N24
\Equal27~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~6_combout\ = ( \LessThan0~3_combout\ & ( \Add0~45_sumout\ & ( (!\LessThan0~1_combout\ & (\char[7]~DUPLICATE_q\ & (!char(2)))) # (\LessThan0~1_combout\ & (((!\Add0~5_sumout\)))) ) ) ) # ( !\LessThan0~3_combout\ & ( \Add0~45_sumout\ & ( 
-- !\Add0~5_sumout\ ) ) ) # ( \LessThan0~3_combout\ & ( !\Add0~45_sumout\ & ( (\char[7]~DUPLICATE_q\ & (!\LessThan0~1_combout\ & !char(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000011111111000000000111001101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char[7]~DUPLICATE_q\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_char(2),
	datad => \ALT_INV_Add0~5_sumout\,
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_Add0~45_sumout\,
	combout => \Equal27~6_combout\);

-- Location: LABCELL_X73_Y3_N36
\Equal27~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~7_combout\ = ( \Add0~93_sumout\ & ( \Equal27~6_combout\ & ( (\Equal27~5_combout\ & (\Equal0~5_combout\ & ((!\LessThan0~4_combout\) # (char(20))))) ) ) ) # ( !\Add0~93_sumout\ & ( \Equal27~6_combout\ & ( (\Equal27~5_combout\ & (char(20) & 
-- (\Equal0~5_combout\ & \LessThan0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal27~5_combout\,
	datab => ALT_INV_char(20),
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_LessThan0~4_combout\,
	datae => \ALT_INV_Add0~93_sumout\,
	dataf => \ALT_INV_Equal27~6_combout\,
	combout => \Equal27~7_combout\);

-- Location: LABCELL_X71_Y5_N15
\Equal27~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~8_combout\ = ( \Add0~13_sumout\ & ( \Add0~49_sumout\ & ( (!\LessThan0~3_combout\) # (((char(12) & char(13))) # (\LessThan0~1_combout\)) ) ) ) # ( !\Add0~13_sumout\ & ( \Add0~49_sumout\ & ( (char(12) & (\LessThan0~3_combout\ & (char(13) & 
-- !\LessThan0~1_combout\))) ) ) ) # ( \Add0~13_sumout\ & ( !\Add0~49_sumout\ & ( (char(12) & (\LessThan0~3_combout\ & (char(13) & !\LessThan0~1_combout\))) ) ) ) # ( !\Add0~13_sumout\ & ( !\Add0~49_sumout\ & ( (char(12) & (\LessThan0~3_combout\ & (char(13) 
-- & !\LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000001100110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(12),
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => ALT_INV_char(13),
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \Equal27~8_combout\);

-- Location: LABCELL_X71_Y5_N57
\Equal27~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~9_combout\ = ( \Add0~17_sumout\ & ( \Add0~29_sumout\ & ( (!\LessThan0~3_combout\) # (((char(15) & char(14))) # (\LessThan0~1_combout\)) ) ) ) # ( !\Add0~17_sumout\ & ( \Add0~29_sumout\ & ( (char(15) & (\LessThan0~3_combout\ & (char(14) & 
-- !\LessThan0~1_combout\))) ) ) ) # ( \Add0~17_sumout\ & ( !\Add0~29_sumout\ & ( (char(15) & (\LessThan0~3_combout\ & (char(14) & !\LessThan0~1_combout\))) ) ) ) # ( !\Add0~17_sumout\ & ( !\Add0~29_sumout\ & ( (char(15) & (\LessThan0~3_combout\ & (char(14) 
-- & !\LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000001100110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(15),
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => ALT_INV_char(14),
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \Equal27~9_combout\);

-- Location: LABCELL_X71_Y5_N33
\Equal27~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~10_combout\ = ( \Equal27~9_combout\ & ( \Add0~25_sumout\ & ( (\Equal27~8_combout\ & ((!\LessThan0~4_combout\ & ((\Add0~21_sumout\))) # (\LessThan0~4_combout\ & (char(23))))) ) ) ) # ( \Equal27~9_combout\ & ( !\Add0~25_sumout\ & ( (char(23) & 
-- (\LessThan0~4_combout\ & \Equal27~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(23),
	datab => \ALT_INV_LessThan0~4_combout\,
	datac => \ALT_INV_Equal27~8_combout\,
	datad => \ALT_INV_Add0~21_sumout\,
	datae => \ALT_INV_Equal27~9_combout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \Equal27~10_combout\);

-- Location: LABCELL_X73_Y5_N48
\Equal27~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~13_combout\ = ( \Equal27~7_combout\ & ( \Equal27~10_combout\ & ( (\Equal27~11_combout\ & (\Equal27~4_combout\ & (\Equal27~0_combout\ & \Equal27~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal27~11_combout\,
	datab => \ALT_INV_Equal27~4_combout\,
	datac => \ALT_INV_Equal27~0_combout\,
	datad => \ALT_INV_Equal27~12_combout\,
	datae => \ALT_INV_Equal27~7_combout\,
	dataf => \ALT_INV_Equal27~10_combout\,
	combout => \Equal27~13_combout\);

-- Location: FF_X73_Y4_N58
\char[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~16_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(20));

-- Location: LABCELL_X73_Y4_N57
\char~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~16_combout\ = ( \Add0~93_sumout\ & ( (!\LessThan0~4_combout\) # (char(20)) ) ) # ( !\Add0~93_sumout\ & ( (\LessThan0~4_combout\ & char(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => ALT_INV_char(20),
	dataf => \ALT_INV_Add0~93_sumout\,
	combout => \char~16_combout\);

-- Location: FF_X73_Y4_N59
\char[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~16_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \char[20]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N33
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( char(21) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~38\ = CARRY(( char(21) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_char(21),
	cin => \Add0~94\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X73_Y4_N24
\char~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~10_combout\ = (!\LessThan0~4_combout\ & (\Add0~37_sumout\)) # (\LessThan0~4_combout\ & ((char(21))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~4_combout\,
	datab => \ALT_INV_Add0~37_sumout\,
	datad => ALT_INV_char(21),
	combout => \char~10_combout\);

-- Location: FF_X73_Y4_N26
\char[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~10_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(21));

-- Location: MLABCELL_X72_Y4_N36
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( char(22) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( char(22) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_char(22),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X73_Y4_N33
\char~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~14_combout\ = ( \Add0~41_sumout\ & ( (!\LessThan0~4_combout\) # (char(22)) ) ) # ( !\Add0~41_sumout\ & ( (\LessThan0~4_combout\ & char(22)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => ALT_INV_char(22),
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \char~14_combout\);

-- Location: FF_X73_Y4_N35
\char[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~14_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(22));

-- Location: MLABCELL_X72_Y4_N39
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( char(23) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~22\ = CARRY(( char(23) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_char(23),
	cin => \Add0~42\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X73_Y4_N15
\char~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~13_combout\ = ( \Add0~21_sumout\ & ( (!\LessThan0~4_combout\) # (char(23)) ) ) # ( !\Add0~21_sumout\ & ( (\LessThan0~4_combout\ & char(23)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~4_combout\,
	datad => ALT_INV_char(23),
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \char~13_combout\);

-- Location: FF_X73_Y4_N17
\char[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~13_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(23));

-- Location: LABCELL_X73_Y4_N27
\char~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~9_combout\ = ( \char~5_combout\ ) # ( !\char~5_combout\ & ( (!\LessThan0~4_combout\ & \Add0~61_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~4_combout\,
	datad => \ALT_INV_Add0~61_sumout\,
	dataf => \ALT_INV_char~5_combout\,
	combout => \char~9_combout\);

-- Location: FF_X73_Y4_N29
\char[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~9_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(24));

-- Location: LABCELL_X73_Y4_N12
\lcd_enable~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_enable~1_combout\ = ( !char(16) & ( (!char(18) & !char(24)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_char(18),
	datad => ALT_INV_char(24),
	dataf => ALT_INV_char(16),
	combout => \lcd_enable~1_combout\);

-- Location: FF_X73_Y5_N35
\char[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~17_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(25));

-- Location: LABCELL_X73_Y5_N45
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( char(15) & ( (char(12) & (char(13) & char(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_char(12),
	datac => ALT_INV_char(13),
	datad => ALT_INV_char(14),
	dataf => ALT_INV_char(15),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X73_Y5_N30
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

-- Location: LABCELL_X71_Y4_N27
\char~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~11_combout\ = ( char(17) & ( \Add0~33_sumout\ ) ) # ( !char(17) & ( \Add0~33_sumout\ & ( (!\LessThan0~3_combout\) # (\LessThan0~1_combout\) ) ) ) # ( char(17) & ( !\Add0~33_sumout\ & ( (!\LessThan0~1_combout\ & \LessThan0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101011111111010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => ALT_INV_char(17),
	dataf => \ALT_INV_Add0~33_sumout\,
	combout => \char~11_combout\);

-- Location: FF_X71_Y4_N28
\char[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~11_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(17));

-- Location: LABCELL_X73_Y4_N3
\char~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~12_combout\ = ( \LessThan0~1_combout\ & ( \Add0~57_sumout\ ) ) # ( !\LessThan0~1_combout\ & ( (!\LessThan0~3_combout\ & (\Add0~57_sumout\)) # (\LessThan0~3_combout\ & ((char(18)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~57_sumout\,
	datac => \ALT_INV_LessThan0~3_combout\,
	datad => ALT_INV_char(18),
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \char~12_combout\);

-- Location: FF_X73_Y4_N5
\char[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \char~12_combout\,
	sclr => \Equal27~13_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(18));

-- Location: LABCELL_X73_Y4_N0
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \char[19]~DUPLICATE_q\ & ( (char(23) & (char(22) & \char[20]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_char(23),
	datac => ALT_INV_char(22),
	datad => \ALT_INV_char[20]~DUPLICATE_q\,
	dataf => \ALT_INV_char[19]~DUPLICATE_q\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X73_Y4_N30
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( char(21) & ( (!char(24) & ((!\LessThan0~0_combout\) # ((!char(18) & !char(17))))) ) ) # ( !char(21) & ( !char(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111000000000001111100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(18),
	datab => ALT_INV_char(17),
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => ALT_INV_char(24),
	dataf => ALT_INV_char(21),
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X72_Y5_N33
\char~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \char~7_combout\ = ( \LessThan0~3_combout\ & ( (!\LessThan0~1_combout\ & ((char(4)))) # (\LessThan0~1_combout\ & (\Add0~101_sumout\)) ) ) # ( !\LessThan0~3_combout\ & ( \Add0~101_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Add0~101_sumout\,
	datad => ALT_INV_char(4),
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \char~7_combout\);

-- Location: LABCELL_X73_Y4_N54
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \LessThan0~4_combout\ & ( (!\char[19]~DUPLICATE_q\ & !char(20)) ) ) # ( !\LessThan0~4_combout\ & ( (!\Add0~93_sumout\ & !\Add0~89_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~93_sumout\,
	datab => \ALT_INV_char[19]~DUPLICATE_q\,
	datac => ALT_INV_char(20),
	datad => \ALT_INV_Add0~89_sumout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X72_Y6_N24
\Equal0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~15_combout\ = ( !char(13) & ( !char(23) & ( !\char[14]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_char[14]~DUPLICATE_q\,
	datae => ALT_INV_char(13),
	dataf => ALT_INV_char(23),
	combout => \Equal0~15_combout\);

-- Location: MLABCELL_X72_Y6_N6
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \Add0~17_sumout\ & ( \Add0~21_sumout\ & ( (!\LessThan0~1_combout\ & (\LessThan0~3_combout\ & \Equal0~15_combout\)) ) ) ) # ( !\Add0~17_sumout\ & ( \Add0~21_sumout\ & ( (!\LessThan0~1_combout\ & (\LessThan0~3_combout\ & 
-- \Equal0~15_combout\)) ) ) ) # ( \Add0~17_sumout\ & ( !\Add0~21_sumout\ & ( (!\LessThan0~1_combout\ & (\LessThan0~3_combout\ & \Equal0~15_combout\)) ) ) ) # ( !\Add0~17_sumout\ & ( !\Add0~21_sumout\ & ( (!\LessThan0~1_combout\ & ((!\LessThan0~3_combout\ & 
-- ((!\Add0~13_sumout\))) # (\LessThan0~3_combout\ & (\Equal0~15_combout\)))) # (\LessThan0~1_combout\ & (((!\Add0~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_Equal0~15_combout\,
	datad => \ALT_INV_Add0~13_sumout\,
	datae => \ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X72_Y4_N48
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\Add0~29_sumout\ & ( (!\Add0~33_sumout\ & (!\Add0~25_sumout\ & ((!\LessThan0~3_combout\) # (\LessThan0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X72_Y6_N54
\Equal0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~16_combout\ = ( \LessThan0~3_combout\ & ( !\LessThan0~1_combout\ & ( (!char(12) & (!char(22) & (!\char[7]~DUPLICATE_q\ & !char(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(12),
	datab => ALT_INV_char(22),
	datac => \ALT_INV_char[7]~DUPLICATE_q\,
	datad => ALT_INV_char(21),
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \Equal0~16_combout\);

-- Location: MLABCELL_X72_Y6_N42
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \Add0~37_sumout\ & ( \Add0~41_sumout\ & ( !\Equal0~16_combout\ ) ) ) # ( !\Add0~37_sumout\ & ( \Add0~41_sumout\ & ( !\Equal0~16_combout\ ) ) ) # ( \Add0~37_sumout\ & ( !\Add0~41_sumout\ & ( !\Equal0~16_combout\ ) ) ) # ( 
-- !\Add0~37_sumout\ & ( !\Add0~41_sumout\ & ( (!\Equal0~16_combout\ & (((\LessThan0~4_combout\) # (\Add0~45_sumout\)) # (\Add0~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~49_sumout\,
	datab => \ALT_INV_Add0~45_sumout\,
	datac => \ALT_INV_Equal0~16_combout\,
	datad => \ALT_INV_LessThan0~4_combout\,
	datae => \ALT_INV_Add0~37_sumout\,
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X73_Y5_N24
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \Equal0~1_combout\ & ( !\Equal0~2_combout\ & ( (\Equal27~0_combout\ & (\Equal27~4_combout\ & (\Equal0~3_combout\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal27~0_combout\,
	datab => \ALT_INV_Equal27~4_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X74_Y5_N36
\WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = ( \char~2_combout\ & ( \Equal0~4_combout\ & ( (!\char~7_combout\) # ((!\char~1_combout\) # (!\char~6_combout\)) ) ) ) # ( !\char~2_combout\ & ( \Equal0~4_combout\ & ( (!\char~7_combout\ & (((\char~0_combout\) # (\char~6_combout\)) # 
-- (\char~1_combout\))) # (\char~7_combout\ & ((!\char~1_combout\) # ((!\char~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~7_combout\,
	datab => \ALT_INV_char~1_combout\,
	datac => \ALT_INV_char~6_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_char~2_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \WideNor0~0_combout\);

-- Location: LABCELL_X74_Y5_N30
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \char~2_combout\ & ( \Equal0~4_combout\ & ( (\char~6_combout\ & (!\char~1_combout\ & (\char~7_combout\ & \char~0_combout\))) ) ) ) # ( !\char~2_combout\ & ( \Equal0~4_combout\ & ( (\char~6_combout\ & (\char~1_combout\ & 
-- (!\char~7_combout\ & !\char~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~6_combout\,
	datab => \ALT_INV_char~1_combout\,
	datac => \ALT_INV_char~7_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_char~2_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X73_Y5_N42
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( \Equal27~13_combout\ & ( (!\Selector0~0_combout\ & lcd_bus(9)) ) ) # ( !\Equal27~13_combout\ & ( (!\Selector0~0_combout\ & ((lcd_bus(9)) # (\WideNor0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~0_combout\,
	datac => \ALT_INV_Selector0~0_combout\,
	datad => ALT_INV_lcd_bus(9),
	dataf => \ALT_INV_Equal27~13_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X73_Y5_N43
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

-- Location: MLABCELL_X78_Y5_N0
\dut|rs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|rs~0_combout\ = ( \dut|rs~q\ & ( \lcd_enable~q\ & ( (!\dut|state.power_up~q\ & (((!\dut|LessThan0~8_combout\)))) # (\dut|state.power_up~q\ & (((!\dut|state.ready~q\)) # (lcd_bus(9)))) ) ) ) # ( !\dut|rs~q\ & ( \lcd_enable~q\ & ( (lcd_bus(9) & 
-- (\dut|state.power_up~q\ & \dut|state.ready~q\)) ) ) ) # ( \dut|rs~q\ & ( !\lcd_enable~q\ & ( (!\dut|state.power_up~q\ & (!\dut|LessThan0~8_combout\)) # (\dut|state.power_up~q\ & ((!\dut|state.ready~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111100000000000000000100011111001111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lcd_bus(9),
	datab => \dut|ALT_INV_state.power_up~q\,
	datac => \dut|ALT_INV_LessThan0~8_combout\,
	datad => \dut|ALT_INV_state.ready~q\,
	datae => \dut|ALT_INV_rs~q\,
	dataf => \ALT_INV_lcd_enable~q\,
	combout => \dut|rs~0_combout\);

-- Location: FF_X78_Y5_N1
\dut|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|rs~q\);

-- Location: FF_X78_Y4_N26
\dut|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector46~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|e~q\);

-- Location: LABCELL_X77_Y4_N0
\dut|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~3_combout\ = ( !\dut|Add0~53_sumout\ & ( \dut|LessThan3~0_combout\ & ( (!\dut|Add0~49_sumout\ & (!\dut|Add0~45_sumout\ & (!\dut|Add0~41_sumout\ & !\dut|Add0~37_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~49_sumout\,
	datab => \dut|ALT_INV_Add0~45_sumout\,
	datac => \dut|ALT_INV_Add0~41_sumout\,
	datad => \dut|ALT_INV_Add0~37_sumout\,
	datae => \dut|ALT_INV_Add0~53_sumout\,
	dataf => \dut|ALT_INV_LessThan3~0_combout\,
	combout => \dut|LessThan3~3_combout\);

-- Location: MLABCELL_X78_Y4_N48
\dut|Selector46~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~3_combout\ = ( \dut|LessThan8~2_combout\ & ( \dut|LessThan3~3_combout\ & ( (!\dut|e~q\ & (((!\dut|busy~2_combout\) # (\dut|Add0~113_sumout\)) # (\dut|LessThan7~1_combout\))) ) ) ) # ( !\dut|LessThan8~2_combout\ & ( 
-- \dut|LessThan3~3_combout\ & ( (!\dut|Add0~113_sumout\ & ((!\dut|busy~2_combout\ & ((!\dut|e~q\))) # (\dut|busy~2_combout\ & (\dut|LessThan7~1_combout\)))) # (\dut|Add0~113_sumout\ & (((!\dut|e~q\)))) ) ) ) # ( \dut|LessThan8~2_combout\ & ( 
-- !\dut|LessThan3~3_combout\ & ( !\dut|e~q\ ) ) ) # ( !\dut|LessThan8~2_combout\ & ( !\dut|LessThan3~3_combout\ & ( !\dut|e~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000011101001111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan7~1_combout\,
	datab => \dut|ALT_INV_Add0~113_sumout\,
	datac => \dut|ALT_INV_e~q\,
	datad => \dut|ALT_INV_busy~2_combout\,
	datae => \dut|ALT_INV_LessThan8~2_combout\,
	dataf => \dut|ALT_INV_LessThan3~3_combout\,
	combout => \dut|Selector46~3_combout\);

-- Location: FF_X78_Y5_N37
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

-- Location: LABCELL_X79_Y4_N15
\dut|Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~0_combout\ = ( \dut|state.initialize~DUPLICATE_q\ & ( \dut|Add0~1_sumout\ & ( !\dut|state.send~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_state.send~q\,
	datae => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	dataf => \dut|ALT_INV_Add0~1_sumout\,
	combout => \dut|Selector46~0_combout\);

-- Location: MLABCELL_X78_Y4_N6
\dut|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan2~2_combout\ = ( !\dut|LessThan2~1_combout\ & ( \dut|busy~2_combout\ & ( (\dut|LessThan3~1_combout\ & (\dut|LessThan3~2_combout\ & (!\dut|Add0~73_sumout\ & \dut|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~1_combout\,
	datab => \dut|ALT_INV_LessThan3~2_combout\,
	datac => \dut|ALT_INV_Add0~73_sumout\,
	datad => \dut|ALT_INV_LessThan3~0_combout\,
	datae => \dut|ALT_INV_LessThan2~1_combout\,
	dataf => \dut|ALT_INV_busy~2_combout\,
	combout => \dut|LessThan2~2_combout\);

-- Location: MLABCELL_X78_Y4_N54
\dut|LessThan4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan4~2_combout\ = ( !\dut|LessThan4~1_combout\ & ( !\dut|Add0~9_sumout\ & ( (\dut|LessThan3~1_combout\ & (\dut|LessThan3~2_combout\ & (!\dut|Add0~5_sumout\ & \dut|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~1_combout\,
	datab => \dut|ALT_INV_LessThan3~2_combout\,
	datac => \dut|ALT_INV_Add0~5_sumout\,
	datad => \dut|ALT_INV_LessThan3~0_combout\,
	datae => \dut|ALT_INV_LessThan4~1_combout\,
	dataf => \dut|ALT_INV_Add0~9_sumout\,
	combout => \dut|LessThan4~2_combout\);

-- Location: MLABCELL_X78_Y4_N18
\dut|Selector46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~1_combout\ = ( !\dut|Add0~113_sumout\ & ( !\dut|LessThan5~1_combout\ & ( (\dut|LessThan3~0_combout\ & (\dut|LessThan3~2_combout\ & (\dut|LessThan3~1_combout\ & \dut|busy~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~0_combout\,
	datab => \dut|ALT_INV_LessThan3~2_combout\,
	datac => \dut|ALT_INV_LessThan3~1_combout\,
	datad => \dut|ALT_INV_busy~2_combout\,
	datae => \dut|ALT_INV_Add0~113_sumout\,
	dataf => \dut|ALT_INV_LessThan5~1_combout\,
	combout => \dut|Selector46~1_combout\);

-- Location: MLABCELL_X78_Y4_N3
\dut|Selector46~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~2_combout\ = ( !\dut|LessThan4~2_combout\ & ( \dut|Selector46~1_combout\ & ( (!\dut|state.send~q\ & (\dut|state.initialize~DUPLICATE_q\ & !\dut|LessThan2~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.send~q\,
	datab => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	datac => \dut|ALT_INV_LessThan2~2_combout\,
	datae => \dut|ALT_INV_LessThan4~2_combout\,
	dataf => \dut|ALT_INV_Selector46~1_combout\,
	combout => \dut|Selector46~2_combout\);

-- Location: FF_X78_Y7_N4
\dut|clk_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Add0~121_sumout\,
	sclr => \dut|clk_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count[1]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y5_N12
\dut|LessThan10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan10~0_combout\ = ( \dut|clk_count[1]~DUPLICATE_q\ & ( (\dut|clk_count\(4) & \dut|clk_count\(5)) ) ) # ( !\dut|clk_count[1]~DUPLICATE_q\ & ( (\dut|clk_count\(4) & (\dut|clk_count\(5) & ((\dut|clk_count\(3)) # (\dut|clk_count\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000000010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(4),
	datab => \dut|ALT_INV_clk_count\(2),
	datac => \dut|ALT_INV_clk_count\(5),
	datad => \dut|ALT_INV_clk_count\(3),
	dataf => \dut|ALT_INV_clk_count[1]~DUPLICATE_q\,
	combout => \dut|LessThan10~0_combout\);

-- Location: LABCELL_X77_Y7_N33
\dut|LessThan10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan10~1_combout\ = ( !\dut|LessThan10~0_combout\ & ( (!\dut|clk_count\(9) & (!\dut|clk_count\(6) & (!\dut|clk_count\(8) & !\dut|clk_count\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(9),
	datab => \dut|ALT_INV_clk_count\(6),
	datac => \dut|ALT_INV_clk_count\(8),
	datad => \dut|ALT_INV_clk_count\(7),
	dataf => \dut|ALT_INV_LessThan10~0_combout\,
	combout => \dut|LessThan10~1_combout\);

-- Location: MLABCELL_X78_Y5_N15
\dut|LessThan11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan11~0_combout\ = ( \dut|clk_count\(5) & ( (\dut|clk_count\(4) & (\dut|clk_count\(2) & \dut|clk_count\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(4),
	datab => \dut|ALT_INV_clk_count\(2),
	datad => \dut|ALT_INV_clk_count\(3),
	dataf => \dut|ALT_INV_clk_count\(5),
	combout => \dut|LessThan11~0_combout\);

-- Location: MLABCELL_X78_Y5_N24
\dut|LessThan11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan11~1_combout\ = ( \dut|clk_count\(9) & ( \dut|LessThan11~0_combout\ & ( (\dut|clk_count\(8)) # (\dut|clk_count\(7)) ) ) ) # ( \dut|clk_count\(9) & ( !\dut|LessThan11~0_combout\ & ( ((\dut|clk_count\(7) & \dut|clk_count\(6))) # 
-- (\dut|clk_count\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101110011011100000000000000000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(7),
	datab => \dut|ALT_INV_clk_count\(8),
	datac => \dut|ALT_INV_clk_count\(6),
	datae => \dut|ALT_INV_clk_count\(9),
	dataf => \dut|ALT_INV_LessThan11~0_combout\,
	combout => \dut|LessThan11~1_combout\);

-- Location: LABCELL_X81_Y7_N57
\dut|Selector46~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~7_combout\ = ( !\dut|LessThan11~1_combout\ & ( \dut|LessThan9~5_combout\ & ( (!\dut|clk_count\(11) & (!\dut|clk_count\(10) & (\dut|LessThan9~1_combout\ & !\dut|LessThan10~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(11),
	datab => \dut|ALT_INV_clk_count\(10),
	datac => \dut|ALT_INV_LessThan9~1_combout\,
	datad => \dut|ALT_INV_LessThan10~1_combout\,
	datae => \dut|ALT_INV_LessThan11~1_combout\,
	dataf => \dut|ALT_INV_LessThan9~5_combout\,
	combout => \dut|Selector46~7_combout\);

-- Location: MLABCELL_X78_Y5_N57
\dut|LessThan12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan12~0_combout\ = ( !\dut|clk_count\(3) & ( \dut|clk_count\(2) & ( (!\dut|clk_count\(5) & (!\dut|clk_count[1]~DUPLICATE_q\ & !\dut|clk_count\(4))) ) ) ) # ( !\dut|clk_count\(3) & ( !\dut|clk_count\(2) & ( (!\dut|clk_count\(5) & 
-- !\dut|clk_count\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000010001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(5),
	datab => \dut|ALT_INV_clk_count[1]~DUPLICATE_q\,
	datad => \dut|ALT_INV_clk_count\(4),
	datae => \dut|ALT_INV_clk_count\(3),
	dataf => \dut|ALT_INV_clk_count\(2),
	combout => \dut|LessThan12~0_combout\);

-- Location: LABCELL_X77_Y7_N30
\dut|LessThan12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan12~1_combout\ = ( \dut|clk_count\(8) & ( (!\dut|clk_count\(9) & (!\dut|clk_count\(7) & ((!\dut|clk_count\(6)) # (\dut|LessThan12~0_combout\)))) ) ) # ( !\dut|clk_count\(8) & ( !\dut|clk_count\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010000000101000001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(9),
	datab => \dut|ALT_INV_clk_count\(6),
	datac => \dut|ALT_INV_clk_count\(7),
	datad => \dut|ALT_INV_LessThan12~0_combout\,
	dataf => \dut|ALT_INV_clk_count\(8),
	combout => \dut|LessThan12~1_combout\);

-- Location: LABCELL_X81_Y7_N48
\dut|Selector46~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~6_combout\ = ( \dut|LessThan12~1_combout\ & ( \dut|LessThan9~5_combout\ & ( (!\dut|clk_count\(11) & \dut|LessThan9~1_combout\) ) ) ) # ( !\dut|LessThan12~1_combout\ & ( \dut|LessThan9~5_combout\ & ( (!\dut|clk_count\(11) & 
-- (!\dut|clk_count\(10) & \dut|LessThan9~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_clk_count\(11),
	datac => \dut|ALT_INV_clk_count\(10),
	datad => \dut|ALT_INV_LessThan9~1_combout\,
	datae => \dut|ALT_INV_LessThan12~1_combout\,
	dataf => \dut|ALT_INV_LessThan9~5_combout\,
	combout => \dut|Selector46~6_combout\);

-- Location: LABCELL_X81_Y7_N24
\dut|Selector46~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~8_combout\ = ( \dut|clk_count\(31) & ( \dut|Selector46~6_combout\ & ( (!\dut|state.initialize~DUPLICATE_q\ & (!\dut|state.send~q\ & \dut|e~DUPLICATE_q\)) ) ) ) # ( !\dut|clk_count\(31) & ( \dut|Selector46~6_combout\ & ( 
-- (!\dut|state.send~q\ & (!\dut|state.initialize~DUPLICATE_q\ & (\dut|e~DUPLICATE_q\))) # (\dut|state.send~q\ & (((\dut|Selector46~7_combout\)))) ) ) ) # ( \dut|clk_count\(31) & ( !\dut|Selector46~6_combout\ & ( (!\dut|state.initialize~DUPLICATE_q\ & 
-- (!\dut|state.send~q\ & \dut|e~DUPLICATE_q\)) ) ) ) # ( !\dut|clk_count\(31) & ( !\dut|Selector46~6_combout\ & ( (!\dut|state.send~q\ & (!\dut|state.initialize~DUPLICATE_q\ & (\dut|e~DUPLICATE_q\))) # (\dut|state.send~q\ & (((\dut|Selector46~7_combout\) # 
-- (\dut|e~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100111011000010000000100000001000001110110000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	datab => \dut|ALT_INV_state.send~q\,
	datac => \dut|ALT_INV_e~DUPLICATE_q\,
	datad => \dut|ALT_INV_Selector46~7_combout\,
	datae => \dut|ALT_INV_clk_count\(31),
	dataf => \dut|ALT_INV_Selector46~6_combout\,
	combout => \dut|Selector46~8_combout\);

-- Location: LABCELL_X77_Y4_N18
\dut|busy~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|busy~3_combout\ = ( !\dut|Add0~5_sumout\ & ( \dut|LessThan3~5_combout\ & ( (!\dut|Add0~53_sumout\ & (\dut|LessThan3~0_combout\ & (!\dut|LessThan6~3_combout\ & !\dut|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~53_sumout\,
	datab => \dut|ALT_INV_LessThan3~0_combout\,
	datac => \dut|ALT_INV_LessThan6~3_combout\,
	datad => \dut|ALT_INV_Add0~9_sumout\,
	datae => \dut|ALT_INV_Add0~5_sumout\,
	dataf => \dut|ALT_INV_LessThan3~5_combout\,
	combout => \dut|busy~3_combout\);

-- Location: MLABCELL_X78_Y4_N36
\dut|Selector46~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~4_combout\ = ( \dut|LessThan4~2_combout\ & ( \dut|busy~3_combout\ & ( (\dut|state.initialize~DUPLICATE_q\ & (\dut|Add0~113_sumout\ & !\dut|state.send~q\)) ) ) ) # ( !\dut|LessThan4~2_combout\ & ( \dut|busy~3_combout\ & ( 
-- (\dut|state.initialize~DUPLICATE_q\ & (\dut|Add0~113_sumout\ & !\dut|state.send~q\)) ) ) ) # ( \dut|LessThan4~2_combout\ & ( !\dut|busy~3_combout\ & ( (\dut|state.initialize~DUPLICATE_q\ & (\dut|Add0~113_sumout\ & !\dut|state.send~q\)) ) ) ) # ( 
-- !\dut|LessThan4~2_combout\ & ( !\dut|busy~3_combout\ & ( (\dut|state.initialize~DUPLICATE_q\ & (!\dut|state.send~q\ & ((!\dut|LessThan2~2_combout\) # (\dut|Add0~113_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	datab => \dut|ALT_INV_Add0~113_sumout\,
	datac => \dut|ALT_INV_state.send~q\,
	datad => \dut|ALT_INV_LessThan2~2_combout\,
	datae => \dut|ALT_INV_LessThan4~2_combout\,
	dataf => \dut|ALT_INV_busy~3_combout\,
	combout => \dut|Selector46~4_combout\);

-- Location: MLABCELL_X78_Y4_N30
\dut|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan1~3_combout\ = ( \dut|LessThan3~0_combout\ & ( \dut|LessThan3~1_combout\ & ( (!\dut|Add0~9_sumout\ & (\dut|LessThan1~2_combout\ & (!\dut|Add0~5_sumout\ & \dut|LessThan3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~9_sumout\,
	datab => \dut|ALT_INV_LessThan1~2_combout\,
	datac => \dut|ALT_INV_Add0~5_sumout\,
	datad => \dut|ALT_INV_LessThan3~2_combout\,
	datae => \dut|ALT_INV_LessThan3~0_combout\,
	dataf => \dut|ALT_INV_LessThan3~1_combout\,
	combout => \dut|LessThan1~3_combout\);

-- Location: MLABCELL_X78_Y4_N21
\dut|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~8_combout\ = ( !\dut|LessThan3~7_combout\ & ( !\dut|Add0~73_sumout\ & ( (\dut|LessThan3~0_combout\ & (\dut|LessThan3~2_combout\ & (\dut|busy~2_combout\ & \dut|LessThan3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~0_combout\,
	datab => \dut|ALT_INV_LessThan3~2_combout\,
	datac => \dut|ALT_INV_busy~2_combout\,
	datad => \dut|ALT_INV_LessThan3~1_combout\,
	datae => \dut|ALT_INV_LessThan3~7_combout\,
	dataf => \dut|ALT_INV_Add0~73_sumout\,
	combout => \dut|LessThan3~8_combout\);

-- Location: MLABCELL_X78_Y4_N42
\dut|Selector46~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~5_combout\ = ( \dut|LessThan3~8_combout\ & ( \dut|LessThan2~2_combout\ & ( (!\dut|state.send~q\ & (!\dut|Add0~113_sumout\ & (\dut|state.initialize~DUPLICATE_q\ & \dut|LessThan1~3_combout\))) ) ) ) # ( !\dut|LessThan3~8_combout\ & ( 
-- \dut|LessThan2~2_combout\ & ( (!\dut|state.send~q\ & (!\dut|Add0~113_sumout\ & (\dut|state.initialize~DUPLICATE_q\ & \dut|LessThan1~3_combout\))) ) ) ) # ( \dut|LessThan3~8_combout\ & ( !\dut|LessThan2~2_combout\ & ( (!\dut|state.send~q\ & 
-- (!\dut|Add0~113_sumout\ & \dut|state.initialize~DUPLICATE_q\)) ) ) ) # ( !\dut|LessThan3~8_combout\ & ( !\dut|LessThan2~2_combout\ & ( (!\dut|state.send~q\ & (!\dut|Add0~113_sumout\ & (\dut|state.initialize~DUPLICATE_q\ & \dut|LessThan1~3_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000010000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.send~q\,
	datab => \dut|ALT_INV_Add0~113_sumout\,
	datac => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	datad => \dut|ALT_INV_LessThan1~3_combout\,
	datae => \dut|ALT_INV_LessThan3~8_combout\,
	dataf => \dut|ALT_INV_LessThan2~2_combout\,
	combout => \dut|Selector46~5_combout\);

-- Location: MLABCELL_X78_Y4_N24
\dut|Selector46~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector46~9_combout\ = ( \dut|Selector46~4_combout\ & ( \dut|Selector46~5_combout\ ) ) # ( !\dut|Selector46~4_combout\ & ( \dut|Selector46~5_combout\ ) ) # ( \dut|Selector46~4_combout\ & ( !\dut|Selector46~5_combout\ & ( 
-- (!\dut|Selector46~3_combout\) # (((\dut|Selector46~8_combout\) # (\dut|Selector46~2_combout\)) # (\dut|Selector46~0_combout\)) ) ) ) # ( !\dut|Selector46~4_combout\ & ( !\dut|Selector46~5_combout\ & ( ((\dut|Selector46~8_combout\) # 
-- (\dut|Selector46~2_combout\)) # (\dut|Selector46~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111101111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Selector46~3_combout\,
	datab => \dut|ALT_INV_Selector46~0_combout\,
	datac => \dut|ALT_INV_Selector46~2_combout\,
	datad => \dut|ALT_INV_Selector46~8_combout\,
	datae => \dut|ALT_INV_Selector46~4_combout\,
	dataf => \dut|ALT_INV_Selector46~5_combout\,
	combout => \dut|Selector46~9_combout\);

-- Location: FF_X78_Y4_N25
\dut|e~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector46~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|e~DUPLICATE_q\);

-- Location: LABCELL_X80_Y6_N57
\dut|Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector45~0_combout\ = ( !\dut|Add0~113_sumout\ & ( !\dut|Add0~1_sumout\ & ( \dut|state.initialize~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	datae => \dut|ALT_INV_Add0~113_sumout\,
	dataf => \dut|ALT_INV_Add0~1_sumout\,
	combout => \dut|Selector45~0_combout\);

-- Location: MLABCELL_X78_Y5_N9
\dut|LessThan3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~10_combout\ = ( !\dut|Add0~41_sumout\ & ( !\dut|Add0~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dut|ALT_INV_Add0~41_sumout\,
	dataf => \dut|ALT_INV_Add0~37_sumout\,
	combout => \dut|LessThan3~10_combout\);

-- Location: MLABCELL_X78_Y5_N48
\dut|busy~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|busy~5_combout\ = ( \dut|busy~4_combout\ & ( \dut|LessThan3~0_combout\ & ( (!\dut|Add0~53_sumout\ & (!\dut|Add0~49_sumout\ & (!\dut|Add0~45_sumout\ & \dut|LessThan3~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~53_sumout\,
	datab => \dut|ALT_INV_Add0~49_sumout\,
	datac => \dut|ALT_INV_Add0~45_sumout\,
	datad => \dut|ALT_INV_LessThan3~10_combout\,
	datae => \dut|ALT_INV_busy~4_combout\,
	dataf => \dut|ALT_INV_LessThan3~0_combout\,
	combout => \dut|busy~5_combout\);

-- Location: LABCELL_X77_Y6_N30
\dut|Selector45~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector45~1_combout\ = ( \dut|Add0~113_sumout\ & ( !\dut|busy~5_combout\ & ( (\dut|Selector45~0_combout\ & (!\dut|LessThan5~1_combout\ & \dut|LessThan3~9_combout\)) ) ) ) # ( !\dut|Add0~113_sumout\ & ( !\dut|busy~5_combout\ & ( 
-- (\dut|LessThan4~1_combout\ & (\dut|Selector45~0_combout\ & (!\dut|LessThan5~1_combout\ & \dut|LessThan3~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan4~1_combout\,
	datab => \dut|ALT_INV_Selector45~0_combout\,
	datac => \dut|ALT_INV_LessThan5~1_combout\,
	datad => \dut|ALT_INV_LessThan3~9_combout\,
	datae => \dut|ALT_INV_Add0~113_sumout\,
	dataf => \dut|ALT_INV_busy~5_combout\,
	combout => \dut|Selector45~1_combout\);

-- Location: LABCELL_X75_Y4_N18
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \LessThan0~3_combout\ & ( \Add0~97_sumout\ & ( (!\LessThan0~1_combout\ & (!char(4) & !char(3))) ) ) ) # ( \LessThan0~3_combout\ & ( !\Add0~97_sumout\ & ( (!\LessThan0~1_combout\ & (!char(4) & (!char(3)))) # (\LessThan0~1_combout\ & 
-- (((!\Add0~101_sumout\)))) ) ) ) # ( !\LessThan0~3_combout\ & ( !\Add0~97_sumout\ & ( !\Add0~101_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000110101011000000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => ALT_INV_char(4),
	datac => ALT_INV_char(3),
	datad => \ALT_INV_Add0~101_sumout\,
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_Add0~97_sumout\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X74_Y4_N12
\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( \Add0~33_sumout\ & ( \Add0~29_sumout\ & ( (!\LessThan0~1_combout\ & (\LessThan0~3_combout\ & (!char(17) & !char(15)))) ) ) ) # ( !\Add0~33_sumout\ & ( \Add0~29_sumout\ & ( (!\LessThan0~1_combout\ & (\LessThan0~3_combout\ & 
-- (!char(17) & !char(15)))) ) ) ) # ( \Add0~33_sumout\ & ( !\Add0~29_sumout\ & ( (!\LessThan0~1_combout\ & (\LessThan0~3_combout\ & (!char(17) & !char(15)))) ) ) ) # ( !\Add0~33_sumout\ & ( !\Add0~29_sumout\ & ( ((!\LessThan0~3_combout\) # ((!char(17) & 
-- !char(15)))) # (\LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111011101001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => ALT_INV_char(17),
	datad => ALT_INV_char(15),
	datae => \ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \Equal0~7_combout\);

-- Location: LABCELL_X73_Y6_N36
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Add0~13_sumout\ & ( \Add0~17_sumout\ & ( (!\char[14]~DUPLICATE_q\ & (\LessThan0~3_combout\ & (!char(13) & !\LessThan0~1_combout\))) ) ) ) # ( !\Add0~13_sumout\ & ( \Add0~17_sumout\ & ( (!\char[14]~DUPLICATE_q\ & 
-- (\LessThan0~3_combout\ & (!char(13) & !\LessThan0~1_combout\))) ) ) ) # ( \Add0~13_sumout\ & ( !\Add0~17_sumout\ & ( (!\char[14]~DUPLICATE_q\ & (\LessThan0~3_combout\ & (!char(13) & !\LessThan0~1_combout\))) ) ) ) # ( !\Add0~13_sumout\ & ( 
-- !\Add0~17_sumout\ & ( (!\LessThan0~3_combout\) # (((!\char[14]~DUPLICATE_q\ & !char(13))) # (\LessThan0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011111111001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char[14]~DUPLICATE_q\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => ALT_INV_char(13),
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X74_Y4_N3
\Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = ( \Equal0~6_combout\ & ( (!\LessThan0~4_combout\ & (!\Add0~21_sumout\ & (\Equal0~7_combout\ & !\Add0~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~4_combout\,
	datab => \ALT_INV_Add0~21_sumout\,
	datac => \ALT_INV_Equal0~7_combout\,
	datad => \ALT_INV_Add0~25_sumout\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \Equal0~8_combout\);

-- Location: LABCELL_X74_Y4_N6
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( \Equal0~8_combout\ & ( !\Equal0~2_combout\ & ( (\Equal0~3_combout\ & (!\char~2_combout\ & (\Equal27~0_combout\ & \Equal27~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \ALT_INV_char~2_combout\,
	datac => \ALT_INV_Equal27~0_combout\,
	datad => \ALT_INV_Equal27~4_combout\,
	datae => \ALT_INV_Equal0~8_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X73_Y7_N24
\s0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0~3_combout\ = ( s0(2) & ( s0(0) & ( (!s0(1) & !s0(3)) ) ) ) # ( !s0(2) & ( s0(0) & ( (s0(1) & !s0(3)) ) ) ) # ( s0(2) & ( !s0(0) & ( !s0(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000001010000010100001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s0(1),
	datac => ALT_INV_s0(3),
	datae => ALT_INV_s0(2),
	dataf => ALT_INV_s0(0),
	combout => \s0~3_combout\);

-- Location: MLABCELL_X78_Y3_N0
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

-- Location: MLABCELL_X78_Y3_N48
\process_1:char[23]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1:char[23]~0_combout\ = ( \LessThan2~3_combout\ & ( \Equal28~4_combout\ ) ) # ( !\LessThan2~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal28~4_combout\,
	dataf => \ALT_INV_LessThan2~3_combout\,
	combout => \process_1:char[23]~0_combout\);

-- Location: FF_X78_Y3_N2
\process_1:char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[0]~q\);

-- Location: MLABCELL_X78_Y3_N3
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( \process_1:char[1]~q\ ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( \process_1:char[1]~q\ ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_process_1:char[1]~q\,
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X78_Y3_N5
\process_1:char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[1]~q\);

-- Location: MLABCELL_X78_Y3_N6
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( \process_1:char[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( \process_1:char[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:char[2]~DUPLICATE_q\,
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: MLABCELL_X78_Y3_N9
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

-- Location: FF_X78_Y3_N11
\process_1:char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[3]~q\);

-- Location: MLABCELL_X78_Y3_N12
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

-- Location: FF_X78_Y3_N14
\process_1:char[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[4]~q\);

-- Location: MLABCELL_X78_Y3_N15
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

-- Location: FF_X78_Y3_N17
\process_1:char[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[5]~q\);

-- Location: MLABCELL_X78_Y3_N18
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( \process_1:char[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( \process_1:char[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[6]~DUPLICATE_q\,
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X78_Y3_N20
\process_1:char[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[6]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y3_N21
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \process_1:char[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~22\ = CARRY(( \process_1:char[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_process_1:char[7]~DUPLICATE_q\,
	cin => \Add1~78\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X78_Y3_N23
\process_1:char[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[7]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y3_N24
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \process_1:char[8]~q\ ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~30\ = CARRY(( \process_1:char[8]~q\ ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[8]~q\,
	cin => \Add1~22\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X78_Y3_N26
\process_1:char[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[8]~q\);

-- Location: MLABCELL_X78_Y3_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \process_1:char[9]~q\ ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~38\ = CARRY(( \process_1:char[9]~q\ ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_process_1:char[9]~q\,
	cin => \Add1~30\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X78_Y3_N29
\process_1:char[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[9]~q\);

-- Location: MLABCELL_X78_Y2_N0
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \process_1:char[10]~q\ ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~34\ = CARRY(( \process_1:char[10]~q\ ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[10]~q\,
	cin => \Add1~38\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X78_Y2_N2
\process_1:char[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[10]~q\);

-- Location: MLABCELL_X78_Y2_N3
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \process_1:char[11]~q\ ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~26\ = CARRY(( \process_1:char[11]~q\ ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_process_1:char[11]~q\,
	cin => \Add1~34\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X78_Y2_N5
\process_1:char[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[11]~q\);

-- Location: MLABCELL_X78_Y2_N6
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \process_1:char[12]~q\ ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~42\ = CARRY(( \process_1:char[12]~q\ ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:char[12]~q\,
	cin => \Add1~26\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X78_Y2_N8
\process_1:char[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[12]~q\);

-- Location: MLABCELL_X78_Y2_N9
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \process_1:char[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( \process_1:char[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[13]~DUPLICATE_q\,
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X78_Y2_N11
\process_1:char[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[13]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y2_N12
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \process_1:char[14]~q\ ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( \process_1:char[14]~q\ ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:char[14]~q\,
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X78_Y2_N14
\process_1:char[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[14]~q\);

-- Location: MLABCELL_X78_Y2_N15
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \process_1:char[15]~q\ ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( \process_1:char[15]~q\ ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[15]~q\,
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X78_Y2_N17
\process_1:char[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[15]~q\);

-- Location: MLABCELL_X78_Y2_N18
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \process_1:char[16]~q\ ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~10\ = CARRY(( \process_1:char[16]~q\ ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[16]~q\,
	cin => \Add1~54\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X78_Y2_N20
\process_1:char[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[16]~q\);

-- Location: MLABCELL_X78_Y2_N21
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \process_1:char[17]~q\ ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( \process_1:char[17]~q\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[17]~q\,
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X78_Y2_N22
\process_1:char[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[17]~q\);

-- Location: MLABCELL_X78_Y2_N24
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \process_1:char[18]~q\ ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \process_1:char[18]~q\ ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:char[18]~q\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X78_Y2_N25
\process_1:char[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[18]~q\);

-- Location: MLABCELL_X78_Y2_N27
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( \process_1:char[19]~q\ ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~74\ = CARRY(( \process_1:char[19]~q\ ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[19]~q\,
	cin => \Add1~18\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X78_Y2_N29
\process_1:char[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[19]~q\);

-- Location: MLABCELL_X78_Y2_N30
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( \process_1:char[20]~q\ ) + ( GND ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( \process_1:char[20]~q\ ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:char[20]~q\,
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X78_Y2_N32
\process_1:char[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[20]~q\);

-- Location: MLABCELL_X78_Y2_N33
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \process_1:char[21]~q\ ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( \process_1:char[21]~q\ ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[21]~q\,
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X78_Y2_N35
\process_1:char[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[21]~q\);

-- Location: MLABCELL_X78_Y2_N36
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \process_1:char[22]~q\ ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( \process_1:char[22]~q\ ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[22]~q\,
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X78_Y2_N38
\process_1:char[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[22]~q\);

-- Location: MLABCELL_X78_Y2_N39
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \process_1:char[23]~q\ ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( \process_1:char[23]~q\ ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[23]~q\,
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X78_Y2_N41
\process_1:char[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[23]~q\);

-- Location: MLABCELL_X78_Y2_N42
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \process_1:char[24]~q\ ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~6\ = CARRY(( \process_1:char[24]~q\ ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:char[24]~q\,
	cin => \Add1~58\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X78_Y2_N43
\process_1:char[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[24]~q\);

-- Location: MLABCELL_X78_Y2_N45
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \process_1:char[25]~q\ ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1:char[25]~q\,
	cin => \Add1~6\,
	sumout => \Add1~1_sumout\);

-- Location: FF_X78_Y2_N47
\process_1:char[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[25]~q\);

-- Location: FF_X78_Y2_N19
\process_1:char[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[16]~DUPLICATE_q\);

-- Location: FF_X78_Y2_N10
\process_1:char[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[13]~q\);

-- Location: MLABCELL_X78_Y2_N48
\Equal28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal28~0_combout\ = ( \process_1:char[13]~q\ & ( \process_1:char[12]~q\ & ( (\process_1:char[15]~q\ & \process_1:char[14]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:char[15]~q\,
	datad => \ALT_INV_process_1:char[14]~q\,
	datae => \ALT_INV_process_1:char[13]~q\,
	dataf => \ALT_INV_process_1:char[12]~q\,
	combout => \Equal28~0_combout\);

-- Location: MLABCELL_X78_Y2_N54
\Equal28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal28~1_combout\ = ( \process_1:char[22]~q\ & ( \process_1:char[23]~q\ & ( (\process_1:char[21]~q\ & (\process_1:char[20]~q\ & \process_1:char[19]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[21]~q\,
	datab => \ALT_INV_process_1:char[20]~q\,
	datac => \ALT_INV_process_1:char[19]~q\,
	datae => \ALT_INV_process_1:char[22]~q\,
	dataf => \ALT_INV_process_1:char[23]~q\,
	combout => \Equal28~1_combout\);

-- Location: FF_X78_Y2_N4
\process_1:char[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[11]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y3_N30
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( !\process_1:char[9]~q\ & ( !\process_1:char[8]~q\ & ( (!\process_1:char[11]~DUPLICATE_q\ & (!\process_1:char[10]~q\ & !\process_1:char[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[11]~DUPLICATE_q\,
	datab => \ALT_INV_process_1:char[10]~q\,
	datac => \ALT_INV_process_1:char[7]~DUPLICATE_q\,
	datae => \ALT_INV_process_1:char[9]~q\,
	dataf => \ALT_INV_process_1:char[8]~q\,
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X79_Y3_N39
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( \process_1:char[17]~q\ & ( \LessThan2~0_combout\ & ( (\Equal28~1_combout\ & ((\process_1:char[16]~DUPLICATE_q\) # (\process_1:char[18]~q\))) ) ) ) # ( !\process_1:char[17]~q\ & ( \LessThan2~0_combout\ & ( (\process_1:char[18]~q\ 
-- & \Equal28~1_combout\) ) ) ) # ( \process_1:char[17]~q\ & ( !\LessThan2~0_combout\ & ( (\Equal28~1_combout\ & (((\Equal28~0_combout\) # (\process_1:char[16]~DUPLICATE_q\)) # (\process_1:char[18]~q\))) ) ) ) # ( !\process_1:char[17]~q\ & ( 
-- !\LessThan2~0_combout\ & ( (\process_1:char[18]~q\ & \Equal28~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000111111100000000010101010000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[18]~q\,
	datab => \ALT_INV_process_1:char[16]~DUPLICATE_q\,
	datac => \ALT_INV_Equal28~0_combout\,
	datad => \ALT_INV_Equal28~1_combout\,
	datae => \ALT_INV_process_1:char[17]~q\,
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: MLABCELL_X78_Y3_N42
\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ( \process_1:char[24]~q\ & ( \LessThan2~1_combout\ & ( \process_1:char[25]~q\ ) ) ) # ( !\process_1:char[24]~q\ & ( \LessThan2~1_combout\ & ( \process_1:char[25]~q\ ) ) ) # ( \process_1:char[24]~q\ & ( !\LessThan2~1_combout\ & ( 
-- \process_1:char[25]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1:char[25]~q\,
	datae => \ALT_INV_process_1:char[24]~q\,
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \LessThan2~3_combout\);

-- Location: FF_X78_Y3_N8
\process_1:char[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[2]~DUPLICATE_q\);

-- Location: FF_X78_Y3_N7
\process_1:char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[2]~q\);

-- Location: MLABCELL_X78_Y3_N54
\Equal28~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal28~3_combout\ = ( !\process_1:char[0]~q\ & ( !\process_1:char[5]~q\ & ( (!\process_1:char[2]~q\ & (!\process_1:char[4]~q\ & (!\process_1:char[1]~q\ & !\process_1:char[3]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[2]~q\,
	datab => \ALT_INV_process_1:char[4]~q\,
	datac => \ALT_INV_process_1:char[1]~q\,
	datad => \ALT_INV_process_1:char[3]~q\,
	datae => \ALT_INV_process_1:char[0]~q\,
	dataf => \ALT_INV_process_1:char[5]~q\,
	combout => \Equal28~3_combout\);

-- Location: FF_X78_Y3_N19
\process_1:char[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[6]~q\);

-- Location: LABCELL_X79_Y3_N42
\Equal28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal28~2_combout\ = ( \process_1:char[17]~q\ & ( !\process_1:char[6]~q\ & ( (!\process_1:char[18]~q\ & (\process_1:char[25]~q\ & (!\process_1:char[24]~q\ & !\process_1:char[16]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[18]~q\,
	datab => \ALT_INV_process_1:char[25]~q\,
	datac => \ALT_INV_process_1:char[24]~q\,
	datad => \ALT_INV_process_1:char[16]~DUPLICATE_q\,
	datae => \ALT_INV_process_1:char[17]~q\,
	dataf => \ALT_INV_process_1:char[6]~q\,
	combout => \Equal28~2_combout\);

-- Location: FF_X78_Y3_N22
\process_1:char[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \LessThan2~3_combout\,
	ena => \process_1:char[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \process_1:char[7]~q\);

-- Location: MLABCELL_X78_Y3_N51
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( !\process_1:char[8]~q\ & ( (!\process_1:char[11]~DUPLICATE_q\ & (!\process_1:char[10]~q\ & !\process_1:char[9]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1:char[11]~DUPLICATE_q\,
	datac => \ALT_INV_process_1:char[10]~q\,
	datad => \ALT_INV_process_1:char[9]~q\,
	dataf => \ALT_INV_process_1:char[8]~q\,
	combout => \LessThan2~2_combout\);

-- Location: LABCELL_X79_Y3_N51
\Equal28~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal28~4_combout\ = ( \process_1:char[7]~q\ & ( \LessThan2~2_combout\ & ( (\Equal28~3_combout\ & (\Equal28~2_combout\ & (\Equal28~0_combout\ & \Equal28~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal28~3_combout\,
	datab => \ALT_INV_Equal28~2_combout\,
	datac => \ALT_INV_Equal28~0_combout\,
	datad => \ALT_INV_Equal28~1_combout\,
	datae => \ALT_INV_process_1:char[7]~q\,
	dataf => \ALT_INV_LessThan2~2_combout\,
	combout => \Equal28~4_combout\);

-- Location: LABCELL_X79_Y3_N9
\s0[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0[0]~0_combout\ = ( \process_1:char[24]~q\ & ( \LessThan2~1_combout\ & ( (\Equal28~4_combout\ & \process_1:char[25]~q\) ) ) ) # ( !\process_1:char[24]~q\ & ( \LessThan2~1_combout\ & ( (\Equal28~4_combout\ & \process_1:char[25]~q\) ) ) ) # ( 
-- \process_1:char[24]~q\ & ( !\LessThan2~1_combout\ & ( (\Equal28~4_combout\ & \process_1:char[25]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal28~4_combout\,
	datac => \ALT_INV_process_1:char[25]~q\,
	datae => \ALT_INV_process_1:char[24]~q\,
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \s0[0]~0_combout\);

-- Location: FF_X73_Y7_N26
\s0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \s0~3_combout\,
	ena => \s0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s0(2));

-- Location: LABCELL_X73_Y7_N12
\s0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0~1_combout\ = ( !s0(0) & ( s0(3) & ( (!s0(1) & !s0(2)) ) ) ) # ( !s0(0) & ( !s0(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s0(1),
	datac => ALT_INV_s0(2),
	datae => ALT_INV_s0(0),
	dataf => ALT_INV_s0(3),
	combout => \s0~1_combout\);

-- Location: FF_X73_Y7_N13
\s0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \s0~1_combout\,
	ena => \s0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s0(0));

-- Location: LABCELL_X73_Y7_N54
\s0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0~2_combout\ = ( !s0(1) & ( s0(0) & ( !s0(3) ) ) ) # ( s0(1) & ( !s0(0) & ( !s0(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s0(3),
	datae => ALT_INV_s0(1),
	dataf => ALT_INV_s0(0),
	combout => \s0~2_combout\);

-- Location: FF_X73_Y7_N56
\s0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \s0~2_combout\,
	ena => \s0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s0(1));

-- Location: LABCELL_X73_Y7_N51
\s0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \s0~4_combout\ = ( !s0(3) & ( s0(0) & ( (s0(1) & s0(2)) ) ) ) # ( s0(3) & ( !s0(0) & ( (!s0(1) & !s0(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s0(1),
	datad => ALT_INV_s0(2),
	datae => ALT_INV_s0(3),
	dataf => ALT_INV_s0(0),
	combout => \s0~4_combout\);

-- Location: FF_X73_Y7_N53
\s0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \s0~4_combout\,
	ena => \s0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s0(3));

-- Location: FF_X73_Y7_N25
\s0[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \s0~3_combout\,
	ena => \s0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s0[2]~DUPLICATE_q\);

-- Location: FF_X73_Y7_N55
\s0[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \s0~2_combout\,
	ena => \s0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s0[1]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y3_N0
\s1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1[0]~0_combout\ = ( \s0[1]~DUPLICATE_q\ & ( \s0[0]~0_combout\ & ( s0(3) ) ) ) # ( !\s0[1]~DUPLICATE_q\ & ( \s0[0]~0_combout\ & ( (s0(3) & ((s0(0)) # (\s0[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_s0(3),
	datab => \ALT_INV_s0[2]~DUPLICATE_q\,
	datad => ALT_INV_s0(0),
	datae => \ALT_INV_s0[1]~DUPLICATE_q\,
	dataf => \ALT_INV_s0[0]~0_combout\,
	combout => \s1[0]~0_combout\);

-- Location: FF_X77_Y3_N58
\s1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \s1~3_combout\,
	ena => \s1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s1(2));

-- Location: LABCELL_X77_Y3_N27
\s1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1~2_combout\ = ( s1(0) & ( (!\s1[2]~DUPLICATE_q\ & !s1(1)) ) ) # ( !s1(0) & ( (!\s1[2]~DUPLICATE_q\ & s1(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s1[2]~DUPLICATE_q\,
	datad => ALT_INV_s1(1),
	dataf => ALT_INV_s1(0),
	combout => \s1~2_combout\);

-- Location: FF_X77_Y3_N28
\s1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \s1~2_combout\,
	ena => \s1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s1(1));

-- Location: LABCELL_X77_Y3_N57
\s1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1~3_combout\ = ( s1(1) & ( (s1(0) & !s1(2)) ) ) # ( !s1(1) & ( (!s1(0) & s1(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_s1(0),
	datad => ALT_INV_s1(2),
	dataf => ALT_INV_s1(1),
	combout => \s1~3_combout\);

-- Location: FF_X77_Y3_N59
\s1[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \s1~3_combout\,
	ena => \s1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s1[2]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y3_N24
\s1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1~1_combout\ = ( s1(1) & ( (!\s1[2]~DUPLICATE_q\ & !s1(0)) ) ) # ( !s1(1) & ( !s1(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s1[2]~DUPLICATE_q\,
	datad => ALT_INV_s1(0),
	dataf => ALT_INV_s1(1),
	combout => \s1~1_combout\);

-- Location: FF_X77_Y3_N26
\s1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \s1~1_combout\,
	ena => \s1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s1(0));

-- Location: LABCELL_X77_Y3_N3
\LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ( \s1[2]~DUPLICATE_q\ & ( s1(1) ) ) # ( \s1[2]~DUPLICATE_q\ & ( !s1(1) & ( s1(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_s1(0),
	datae => \ALT_INV_s1[2]~DUPLICATE_q\,
	dataf => ALT_INV_s1(1),
	combout => \LessThan4~0_combout\);

-- Location: LABCELL_X81_Y3_N33
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( s0(0) & ( s0(3) ) ) # ( !s0(0) & ( s0(3) & ( (\s0[2]~DUPLICATE_q\) # (\s0[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s0[1]~DUPLICATE_q\,
	datac => \ALT_INV_s0[2]~DUPLICATE_q\,
	datae => ALT_INV_s0(0),
	dataf => ALT_INV_s0(3),
	combout => \LessThan3~0_combout\);

-- Location: MLABCELL_X78_Y3_N36
\m0[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0[0]~1_combout\ = ( \process_1:char[24]~q\ & ( \LessThan3~0_combout\ & ( (\Equal28~4_combout\ & (\LessThan4~0_combout\ & \process_1:char[25]~q\)) ) ) ) # ( !\process_1:char[24]~q\ & ( \LessThan3~0_combout\ & ( (\Equal28~4_combout\ & 
-- (\LessThan4~0_combout\ & (\LessThan2~1_combout\ & \process_1:char[25]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal28~4_combout\,
	datab => \ALT_INV_LessThan4~0_combout\,
	datac => \ALT_INV_LessThan2~1_combout\,
	datad => \ALT_INV_process_1:char[25]~q\,
	datae => \ALT_INV_process_1:char[24]~q\,
	dataf => \ALT_INV_LessThan3~0_combout\,
	combout => \m0[0]~1_combout\);

-- Location: FF_X74_Y3_N31
\m0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \m0~4_combout\,
	ena => \m0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m0(3));

-- Location: LABCELL_X74_Y3_N9
\m0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0~3_combout\ = ( m0(3) & ( !m0(2) $ (((!m0(1)) # (\m0[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000101011110101000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m0(1),
	datac => \ALT_INV_m0[0]~DUPLICATE_q\,
	datad => ALT_INV_m0(2),
	dataf => ALT_INV_m0(3),
	combout => \m0~3_combout\);

-- Location: FF_X74_Y3_N10
\m0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \m0~3_combout\,
	ena => \m0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m0(2));

-- Location: LABCELL_X74_Y3_N30
\m0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0~4_combout\ = ( m0(2) & ( ((!m0(1)) # (!m0(3))) # (\m0[0]~DUPLICATE_q\) ) ) # ( !m0(2) & ( (!\m0[0]~DUPLICATE_q\) # ((m0(3)) # (m0(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111111110011111111111111111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_m0[0]~DUPLICATE_q\,
	datac => ALT_INV_m0(1),
	datad => ALT_INV_m0(3),
	dataf => ALT_INV_m0(2),
	combout => \m0~4_combout\);

-- Location: FF_X74_Y3_N32
\m0[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \m0~4_combout\,
	ena => \m0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m0[3]~DUPLICATE_q\);

-- Location: FF_X74_Y3_N7
\m0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \m0~0_combout\,
	ena => \m0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m0(0));

-- Location: LABCELL_X74_Y3_N6
\m0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0~0_combout\ = ( m0(2) & ( (!\m0[3]~DUPLICATE_q\) # (!m0(0)) ) ) # ( !m0(2) & ( (!m0(0)) # ((!\m0[3]~DUPLICATE_q\ & m0(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001100111111110000110011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_m0[3]~DUPLICATE_q\,
	datac => ALT_INV_m0(1),
	datad => ALT_INV_m0(0),
	dataf => ALT_INV_m0(2),
	combout => \m0~0_combout\);

-- Location: FF_X74_Y3_N8
\m0[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \m0~0_combout\,
	ena => \m0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m0[0]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y3_N33
\m0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0~2_combout\ = ( m0(3) & ( !\m0[0]~DUPLICATE_q\ $ (m0(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_m0[0]~DUPLICATE_q\,
	datad => ALT_INV_m0(1),
	dataf => ALT_INV_m0(3),
	combout => \m0~2_combout\);

-- Location: FF_X74_Y3_N35
\m0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \m0~2_combout\,
	ena => \m0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m0(1));

-- Location: LABCELL_X74_Y3_N54
\LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = ( \m0[0]~DUPLICATE_q\ & ( (!m0(3) & ((m0(2)) # (m0(1)))) ) ) # ( !\m0[0]~DUPLICATE_q\ & ( !m0(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m0(1),
	datab => ALT_INV_m0(2),
	datac => ALT_INV_m0(3),
	dataf => \ALT_INV_m0[0]~DUPLICATE_q\,
	combout => \LessThan5~0_combout\);

-- Location: LABCELL_X77_Y3_N51
\m1[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1[0]~1_combout\ = ( \LessThan3~0_combout\ & ( \s0[0]~0_combout\ & ( (\LessThan4~0_combout\ & \LessThan5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan4~0_combout\,
	datac => \ALT_INV_LessThan5~0_combout\,
	datae => \ALT_INV_LessThan3~0_combout\,
	dataf => \ALT_INV_s0[0]~0_combout\,
	combout => \m1[0]~1_combout\);

-- Location: FF_X74_Y3_N43
\m1[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \m1~0_combout\,
	ena => \m1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m1[0]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y3_N39
\m1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1~2_combout\ = ( m1(1) & ( \m1[0]~DUPLICATE_q\ & ( m1(2) ) ) ) # ( !m1(1) & ( !\m1[0]~DUPLICATE_q\ & ( m1(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_m1(2),
	datae => ALT_INV_m1(1),
	dataf => \ALT_INV_m1[0]~DUPLICATE_q\,
	combout => \m1~2_combout\);

-- Location: FF_X74_Y3_N40
\m1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \m1~2_combout\,
	ena => \m1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m1(1));

-- Location: LABCELL_X74_Y3_N0
\m1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1~3_combout\ = ( m1(1) & ( (!m1(2)) # (m1(0)) ) ) # ( !m1(1) & ( (!m1(0)) # (m1(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_m1(0),
	datad => ALT_INV_m1(2),
	dataf => ALT_INV_m1(1),
	combout => \m1~3_combout\);

-- Location: FF_X74_Y3_N2
\m1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \m1~3_combout\,
	ena => \m1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m1(2));

-- Location: LABCELL_X74_Y3_N42
\m1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m1~0_combout\ = ( m1(0) & ( m1(1) & ( !m1(2) ) ) ) # ( !m1(0) & ( m1(1) ) ) # ( !m1(0) & ( !m1(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m1(2),
	datae => ALT_INV_m1(0),
	dataf => ALT_INV_m1(1),
	combout => \m1~0_combout\);

-- Location: FF_X74_Y3_N44
\m1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \m1~0_combout\,
	ena => \m1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m1(0));

-- Location: LABCELL_X74_Y3_N12
\LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ( !m1(2) & ( \m1[0]~DUPLICATE_q\ & ( m1(1) ) ) ) # ( !m1(2) & ( !\m1[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_m1(1),
	datae => ALT_INV_m1(2),
	dataf => \ALT_INV_m1[0]~DUPLICATE_q\,
	combout => \LessThan6~0_combout\);

-- Location: LABCELL_X77_Y3_N54
\h0[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0[0]~1_combout\ = ( \s0[0]~0_combout\ & ( (\LessThan4~0_combout\ & (\LessThan6~0_combout\ & (\LessThan5~0_combout\ & \LessThan3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan4~0_combout\,
	datab => \ALT_INV_LessThan6~0_combout\,
	datac => \ALT_INV_LessThan5~0_combout\,
	datad => \ALT_INV_LessThan3~0_combout\,
	dataf => \ALT_INV_s0[0]~0_combout\,
	combout => \h0[0]~1_combout\);

-- Location: FF_X77_Y3_N23
\h0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \h0~0_combout\,
	ena => \h0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h0(0));

-- Location: FF_X77_Y3_N32
\h1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \h1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h1(0));

-- Location: FF_X77_Y3_N20
\h0[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \h0~5_combout\,
	ena => \h0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h0[3]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y3_N12
\h0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0~4_combout\ = ( h0(1) & ( (h1(0) & (!\h0[3]~DUPLICATE_q\ & h0(2))) ) ) # ( !h0(1) & ( (h1(0) & (!\h0[3]~DUPLICATE_q\ & (!h0(0) $ (!h0(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000000100000010000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_h0(0),
	datab => ALT_INV_h1(0),
	datac => \ALT_INV_h0[3]~DUPLICATE_q\,
	datad => ALT_INV_h0(2),
	dataf => ALT_INV_h0(1),
	combout => \h0~4_combout\);

-- Location: FF_X77_Y3_N13
\h0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \h0~4_combout\,
	ena => \h0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h0(2));

-- Location: LABCELL_X77_Y3_N18
\h0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0~5_combout\ = ( h0(2) & ( (\h1[0]~DUPLICATE_q\ & (!h0(1) & (h0(0) & !h0(3)))) ) ) # ( !h0(2) & ( (\h1[0]~DUPLICATE_q\ & (h0(1) & (!h0(0) & h0(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h1[0]~DUPLICATE_q\,
	datab => ALT_INV_h0(1),
	datac => ALT_INV_h0(0),
	datad => ALT_INV_h0(3),
	dataf => ALT_INV_h0(2),
	combout => \h0~5_combout\);

-- Location: FF_X77_Y3_N19
\h0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \h0~5_combout\,
	ena => \h0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h0(3));

-- Location: LABCELL_X77_Y3_N15
\h0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0~3_combout\ = ( h0(2) & ( (!h1(0)) # ((!h0(0) $ (!h0(1))) # (h0(3))) ) ) # ( !h0(2) & ( ((!h0(0) & ((!h1(0)) # (h0(1)))) # (h0(0) & ((!h0(1))))) # (h0(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111110101111110111111010111111011111111011111101111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_h0(0),
	datab => ALT_INV_h1(0),
	datac => ALT_INV_h0(3),
	datad => ALT_INV_h0(1),
	dataf => ALT_INV_h0(2),
	combout => \h0~3_combout\);

-- Location: FF_X77_Y3_N17
\h0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \h0~3_combout\,
	ena => \h0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h0(1));

-- Location: LABCELL_X77_Y3_N42
\h0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0~2_combout\ = ( h0(2) & ( (!\h0[3]~DUPLICATE_q\ & h1(0)) ) ) # ( !h0(2) & ( (!h0(1) & (((!\h0[3]~DUPLICATE_q\ & h1(0))))) # (h0(1) & ((!\h0[3]~DUPLICATE_q\) # ((!\h0[0]~DUPLICATE_q\ & h1(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110010001100001111001000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h0[0]~DUPLICATE_q\,
	datab => ALT_INV_h0(1),
	datac => \ALT_INV_h0[3]~DUPLICATE_q\,
	datad => ALT_INV_h1(0),
	dataf => ALT_INV_h0(2),
	combout => \h0~2_combout\);

-- Location: LABCELL_X77_Y3_N30
\h1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1[0]~0_combout\ = ( h1(0) & ( \LessThan6~0_combout\ & ( (!\LessThan4~0_combout\) # ((!\LessThan5~0_combout\) # ((!\s1[0]~0_combout\) # (\h0~2_combout\))) ) ) ) # ( !h1(0) & ( \LessThan6~0_combout\ & ( (\LessThan4~0_combout\ & (\LessThan5~0_combout\ & 
-- (\s1[0]~0_combout\ & !\h0~2_combout\))) ) ) ) # ( h1(0) & ( !\LessThan6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000001111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan4~0_combout\,
	datab => \ALT_INV_LessThan5~0_combout\,
	datac => \ALT_INV_s1[0]~0_combout\,
	datad => \ALT_INV_h0~2_combout\,
	datae => ALT_INV_h1(0),
	dataf => \ALT_INV_LessThan6~0_combout\,
	combout => \h1[0]~0_combout\);

-- Location: FF_X77_Y3_N31
\h1[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \h1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h1[0]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y3_N21
\h0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0~0_combout\ = ( h0(2) & ( (!\h1[0]~DUPLICATE_q\) # ((!h0(3) & !h0(0))) ) ) # ( !h0(2) & ( (!\h1[0]~DUPLICATE_q\ & ((!h0(1)) # ((!h0(0)) # (h0(3))))) # (\h1[0]~DUPLICATE_q\ & (!h0(0) & ((!h0(3)) # (h0(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101110001010111110111000101011111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_h1[0]~DUPLICATE_q\,
	datab => ALT_INV_h0(1),
	datac => ALT_INV_h0(3),
	datad => ALT_INV_h0(0),
	dataf => ALT_INV_h0(2),
	combout => \h0~0_combout\);

-- Location: FF_X77_Y3_N22
\h0[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \h0~0_combout\,
	ena => \h0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h0[0]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y4_N42
\Selector9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = ( m1(0) & ( \h0[0]~DUPLICATE_q\ & ( (\char~0_combout\ & (\Equal1~0_combout\ & (!\char~1_combout\ & \Equal3~0_combout\))) ) ) ) # ( !m1(0) & ( \h0[0]~DUPLICATE_q\ & ( (\Equal1~0_combout\ & (\Equal3~0_combout\ & (!\char~0_combout\ $ 
-- (!\char~1_combout\)))) ) ) ) # ( !m1(0) & ( !\h0[0]~DUPLICATE_q\ & ( (!\char~0_combout\ & (\Equal1~0_combout\ & (\char~1_combout\ & \Equal3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000100100000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_char~1_combout\,
	datad => \ALT_INV_Equal3~0_combout\,
	datae => ALT_INV_m1(0),
	dataf => \ALT_INV_h0[0]~DUPLICATE_q\,
	combout => \Selector9~2_combout\);

-- Location: LABCELL_X74_Y5_N18
\Equal0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = ( \Equal27~4_combout\ & ( !\Equal0~2_combout\ & ( (\Equal0~3_combout\ & \Equal27~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal27~0_combout\,
	datae => \ALT_INV_Equal27~4_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~12_combout\);

-- Location: LABCELL_X75_Y5_N24
\Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = ( \Equal0~8_combout\ & ( \Equal0~12_combout\ & ( (\char~1_combout\ & (\char~2_combout\ & (!\char~6_combout\ & \Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_char~2_combout\,
	datac => \ALT_INV_char~6_combout\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_Equal0~8_combout\,
	dataf => \ALT_INV_Equal0~12_combout\,
	combout => \Equal4~1_combout\);

-- Location: LABCELL_X73_Y3_N33
\Equal0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = ( \LessThan0~3_combout\ & ( \LessThan0~1_combout\ & ( (\Add0~9_sumout\ & !\Add0~5_sumout\) ) ) ) # ( !\LessThan0~3_combout\ & ( \LessThan0~1_combout\ & ( (\Add0~9_sumout\ & !\Add0~5_sumout\) ) ) ) # ( \LessThan0~3_combout\ & ( 
-- !\LessThan0~1_combout\ & ( (!char(2) & char(0)) ) ) ) # ( !\LessThan0~3_combout\ & ( !\LessThan0~1_combout\ & ( (\Add0~9_sumout\ & !\Add0~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000001100110001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~9_sumout\,
	datab => ALT_INV_char(2),
	datac => \ALT_INV_Add0~5_sumout\,
	datad => ALT_INV_char(0),
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_LessThan0~1_combout\,
	combout => \Equal0~10_combout\);

-- Location: LABCELL_X73_Y3_N9
\Equal15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal15~0_combout\ = ( \Add0~101_sumout\ & ( \Add0~97_sumout\ & ( (!char(3) & (!\LessThan0~1_combout\ & (char(4) & \LessThan0~3_combout\))) ) ) ) # ( !\Add0~101_sumout\ & ( \Add0~97_sumout\ & ( (!char(3) & (!\LessThan0~1_combout\ & (char(4) & 
-- \LessThan0~3_combout\))) ) ) ) # ( \Add0~101_sumout\ & ( !\Add0~97_sumout\ & ( ((!\LessThan0~3_combout\) # ((!char(3) & char(4)))) # (\LessThan0~1_combout\) ) ) ) # ( !\Add0~101_sumout\ & ( !\Add0~97_sumout\ & ( (!char(3) & (!\LessThan0~1_combout\ & 
-- (char(4) & \LessThan0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000111111110011101100000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(3),
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_char(4),
	datad => \ALT_INV_LessThan0~3_combout\,
	datae => \ALT_INV_Add0~101_sumout\,
	dataf => \ALT_INV_Add0~97_sumout\,
	combout => \Equal15~0_combout\);

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

-- Location: CLKCTRL_G5
\constrastup~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \constrastup~input_o\,
	outclk => \constrastup~inputCLKENA0_outclk\);

-- Location: FF_X75_Y6_N23
\month[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \month~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => month(2));

-- Location: FF_X74_Y7_N7
\month[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \month~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => month(1));

-- Location: LABCELL_X75_Y6_N21
\month~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \month~2_combout\ = ( month(1) & ( (!month(0) & ((!month(2)))) # (month(0) & (!month(3) & month(2))) ) ) # ( !month(1) & ( (!month(3) & month(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010101010010100001010101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(0),
	datac => ALT_INV_month(3),
	datad => ALT_INV_month(2),
	dataf => ALT_INV_month(1),
	combout => \month~2_combout\);

-- Location: FF_X75_Y6_N22
\month[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \month~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \month[2]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y6_N27
\month~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \month~0_combout\ = ( \month[2]~DUPLICATE_q\ & ( (!month(3) & !month(0)) ) ) # ( !\month[2]~DUPLICATE_q\ & ( !month(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_month(3),
	datad => ALT_INV_month(0),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \month~0_combout\);

-- Location: FF_X74_Y6_N28
\month[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \month~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => month(0));

-- Location: FF_X74_Y7_N50
\month[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \month~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \month[3]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y7_N6
\month~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \month~1_combout\ = ( \month[2]~DUPLICATE_q\ & ( (!\month[3]~DUPLICATE_q\ & (!month(0) $ (month(1)))) ) ) # ( !\month[2]~DUPLICATE_q\ & ( !month(0) $ (month(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001111000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(0),
	datac => \ALT_INV_month[3]~DUPLICATE_q\,
	datad => ALT_INV_month(1),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \month~1_combout\);

-- Location: FF_X74_Y7_N8
\month[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \month~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \month[1]~DUPLICATE_q\);

-- Location: FF_X74_Y6_N29
\month[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \month~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \month[0]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y7_N48
\month~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \month~3_combout\ = ( \month[2]~DUPLICATE_q\ & ( (\month[1]~DUPLICATE_q\ & (!\month[0]~DUPLICATE_q\ & !month(3))) ) ) # ( !\month[2]~DUPLICATE_q\ & ( month(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_month[1]~DUPLICATE_q\,
	datac => \ALT_INV_month[0]~DUPLICATE_q\,
	datad => ALT_INV_month(3),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \month~3_combout\);

-- Location: FF_X74_Y7_N49
\month[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \month~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => month(3));

-- Location: LABCELL_X75_Y7_N36
\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \month[2]~DUPLICATE_q\ & ( (!month(3)) # ((!month(0)) # (month(1))) ) ) # ( !\month[2]~DUPLICATE_q\ & ( (!month(3) & (!month(1) $ (!month(0)))) # (month(3) & (month(1) & month(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(3),
	datac => ALT_INV_month(1),
	datad => ALT_INV_month(0),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux28~0_combout\);

-- Location: FF_X75_Y7_N38
\months[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(32));

-- Location: LABCELL_X74_Y7_N51
\Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ( \month[2]~DUPLICATE_q\ & ( (!\month[3]~DUPLICATE_q\) # ((!month(0)) # (\month[1]~DUPLICATE_q\)) ) ) # ( !\month[2]~DUPLICATE_q\ & ( (!\month[3]~DUPLICATE_q\ $ (!\month[1]~DUPLICATE_q\)) # (month(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011111111010110101111111111111111101011111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_month[3]~DUPLICATE_q\,
	datac => \ALT_INV_month[1]~DUPLICATE_q\,
	datad => ALT_INV_month(0),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux33~0_combout\);

-- Location: FF_X74_Y7_N52
\months[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(25));

-- Location: LABCELL_X74_Y7_N36
\Selector9~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~7_combout\ = ( months(25) & ( \Equal0~4_combout\ & ( (\Equal0~10_combout\ & (!\char~0_combout\ & (\Equal15~0_combout\ & !months(32)))) ) ) ) # ( !months(25) & ( \Equal0~4_combout\ & ( (\Equal0~10_combout\ & (\Equal15~0_combout\ & ((!months(32)) 
-- # (\char~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000010000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~10_combout\,
	datab => \ALT_INV_char~0_combout\,
	datac => \ALT_INV_Equal15~0_combout\,
	datad => ALT_INV_months(32),
	datae => ALT_INV_months(25),
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Selector9~7_combout\);

-- Location: LABCELL_X74_Y7_N30
\Selector9~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~8_combout\ = ( !\Selector9~7_combout\ & ( \WideNor0~0_combout\ & ( (!lcd_bus(0) & (((!\Equal4~1_combout\)) # (m0(0)))) # (lcd_bus(0) & (!\Equal27~13_combout\ & ((!\Equal4~1_combout\) # (m0(0))))) ) ) ) # ( !\Selector9~7_combout\ & ( 
-- !\WideNor0~0_combout\ & ( (!lcd_bus(0) & ((!\Equal4~1_combout\) # (m0(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000100010000000000000000011111010001100100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lcd_bus(0),
	datab => ALT_INV_m0(0),
	datac => \ALT_INV_Equal27~13_combout\,
	datad => \ALT_INV_Equal4~1_combout\,
	datae => \ALT_INV_Selector9~7_combout\,
	dataf => \ALT_INV_WideNor0~0_combout\,
	combout => \Selector9~8_combout\);

-- Location: LABCELL_X74_Y6_N48
\Mux44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = ( \month[1]~DUPLICATE_q\ & ( (!month(2) & (\month[0]~DUPLICATE_q\ & !month(3))) ) ) # ( !\month[1]~DUPLICATE_q\ & ( (!month(2) & (!\month[0]~DUPLICATE_q\ & month(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(2),
	datac => \ALT_INV_month[0]~DUPLICATE_q\,
	datad => ALT_INV_month(3),
	dataf => \ALT_INV_month[1]~DUPLICATE_q\,
	combout => \Mux44~0_combout\);

-- Location: FF_X74_Y6_N50
\months[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(8));

-- Location: LABCELL_X74_Y7_N3
\Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = ( !\month[2]~DUPLICATE_q\ & ( (!\month[1]~DUPLICATE_q\ & (\month[3]~DUPLICATE_q\ & !month(0))) # (\month[1]~DUPLICATE_q\ & ((month(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_month[3]~DUPLICATE_q\,
	datab => \ALT_INV_month[1]~DUPLICATE_q\,
	datac => ALT_INV_month(0),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux34~0_combout\);

-- Location: FF_X74_Y7_N5
\months[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(24));

-- Location: LABCELL_X73_Y6_N54
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( months(24) & ( \Equal3~0_combout\ & ( (\Equal15~0_combout\ & ((!\char~1_combout\ & (\char~0_combout\)) # (\char~1_combout\ & (!\char~0_combout\ & months(8))))) ) ) ) # ( !months(24) & ( \Equal3~0_combout\ & ( (\Equal15~0_combout\ 
-- & (\char~1_combout\ & (!\char~0_combout\ & months(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal15~0_combout\,
	datab => \ALT_INV_char~1_combout\,
	datac => \ALT_INV_char~0_combout\,
	datad => ALT_INV_months(8),
	datae => ALT_INV_months(24),
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: LABCELL_X75_Y7_N27
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \month[0]~DUPLICATE_q\ & ( (!month(3) & (month(2) & !month(1))) # (month(3) & (!month(2))) ) ) # ( !\month[0]~DUPLICATE_q\ & ( (!month(3) & (!month(2) $ (!month(1)))) # (month(3) & (!month(2) & !month(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000000001111001100000000111100001100000011110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(3),
	datac => ALT_INV_month(2),
	datad => ALT_INV_month(1),
	dataf => \ALT_INV_month[0]~DUPLICATE_q\,
	combout => \Mux4~0_combout\);

-- Location: FF_X75_Y7_N28
\months[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(64));

-- Location: LABCELL_X73_Y7_N0
\Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = ( \char~0_combout\ & ( (\char~6_combout\ & !\char~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_char~6_combout\,
	datad => \ALT_INV_char~7_combout\,
	dataf => \ALT_INV_char~0_combout\,
	combout => \Equal13~0_combout\);

-- Location: LABCELL_X73_Y7_N6
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \month[2]~DUPLICATE_q\ & ( (!\month[1]~DUPLICATE_q\ & (!\month[0]~DUPLICATE_q\ $ (month(3)))) ) ) # ( !\month[2]~DUPLICATE_q\ & ( (\month[0]~DUPLICATE_q\ & (month(3) & !\month[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_month[0]~DUPLICATE_q\,
	datac => ALT_INV_month(3),
	datad => \ALT_INV_month[1]~DUPLICATE_q\,
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux14~0_combout\);

-- Location: FF_X73_Y7_N8
\months[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(48));

-- Location: LABCELL_X73_Y7_N3
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \month[0]~DUPLICATE_q\ & ( (!\month[3]~DUPLICATE_q\ & !\month[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_month[3]~DUPLICATE_q\,
	datad => \ALT_INV_month[1]~DUPLICATE_q\,
	dataf => \ALT_INV_month[0]~DUPLICATE_q\,
	combout => \Mux9~0_combout\);

-- Location: FF_X73_Y7_N5
\months[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(56));

-- Location: LABCELL_X73_Y7_N36
\Selector9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~5_combout\ = ( \char~1_combout\ & ( \Equal0~4_combout\ & ( (\Equal13~0_combout\ & ((!\char~2_combout\ & ((!months(56)))) # (\char~2_combout\ & (months(48))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal13~0_combout\,
	datab => ALT_INV_months(48),
	datac => ALT_INV_months(56),
	datad => \ALT_INV_char~2_combout\,
	datae => \ALT_INV_char~1_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Selector9~5_combout\);

-- Location: LABCELL_X73_Y3_N54
\Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = ( \LessThan0~3_combout\ & ( \Add0~97_sumout\ & ( (!\LessThan0~1_combout\ & (char(3) & ((!char(4))))) # (\LessThan0~1_combout\ & (((!\Add0~101_sumout\)))) ) ) ) # ( !\LessThan0~3_combout\ & ( \Add0~97_sumout\ & ( !\Add0~101_sumout\ ) ) 
-- ) # ( \LessThan0~3_combout\ & ( !\Add0~97_sumout\ & ( (char(3) & (!\LessThan0~1_combout\ & !char(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000000000011110000111100000111010000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_char(3),
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Add0~101_sumout\,
	datad => ALT_INV_char(4),
	datae => \ALT_INV_LessThan0~3_combout\,
	dataf => \ALT_INV_Add0~97_sumout\,
	combout => \Equal7~0_combout\);

-- Location: LABCELL_X74_Y3_N3
\Equal12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = ( \Equal7~0_combout\ & ( !\char~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char~0_combout\,
	dataf => \ALT_INV_Equal7~0_combout\,
	combout => \Equal12~0_combout\);

-- Location: LABCELL_X73_Y4_N48
\Equal27~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal27~14_combout\ = ( \Equal27~2_combout\ & ( \Equal27~3_combout\ & ( (!\char~8_combout\ & ((!\LessThan0~4_combout\ & ((!\Add0~69_sumout\))) # (\LessThan0~4_combout\ & (!\char[11]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char[11]~DUPLICATE_q\,
	datab => \ALT_INV_char~8_combout\,
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => \ALT_INV_Add0~69_sumout\,
	datae => \ALT_INV_Equal27~2_combout\,
	dataf => \ALT_INV_Equal27~3_combout\,
	combout => \Equal27~14_combout\);

-- Location: LABCELL_X73_Y4_N18
\Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = ( \Equal0~3_combout\ & ( \Equal27~14_combout\ & ( (!\char~5_combout\ & (\Equal27~0_combout\ & ((!\Add0~61_sumout\) # (\LessThan0~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~4_combout\,
	datab => \ALT_INV_char~5_combout\,
	datac => \ALT_INV_Equal27~0_combout\,
	datad => \ALT_INV_Add0~61_sumout\,
	datae => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal27~14_combout\,
	combout => \Equal0~9_combout\);

-- Location: LABCELL_X74_Y4_N24
\Equal12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = ( !\Equal0~2_combout\ & ( \Equal0~9_combout\ & ( (\Equal0~8_combout\ & (\char~2_combout\ & (\char~1_combout\ & \Equal12~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~8_combout\,
	datab => \ALT_INV_char~2_combout\,
	datac => \ALT_INV_char~1_combout\,
	datad => \ALT_INV_Equal12~0_combout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~9_combout\,
	combout => \Equal12~1_combout\);

-- Location: LABCELL_X75_Y7_N54
\Equal0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = ( \Equal0~9_combout\ & ( \Equal0~8_combout\ & ( (\Equal0~5_combout\ & (!\Equal0~2_combout\ & (!\char~6_combout\ & \Equal0~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_char~6_combout\,
	datad => \ALT_INV_Equal0~10_combout\,
	datae => \ALT_INV_Equal0~9_combout\,
	dataf => \ALT_INV_Equal0~8_combout\,
	combout => \Equal0~11_combout\);

-- Location: LABCELL_X73_Y7_N30
\Selector9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~4_combout\ = ( \char~7_combout\ & ( \Equal0~4_combout\ & ( (!\char~1_combout\ & (!\char~2_combout\ & (\char~6_combout\ & \char~0_combout\))) ) ) ) # ( !\char~7_combout\ & ( \Equal0~4_combout\ & ( (!\char~1_combout\ & (\char~2_combout\ & 
-- (\char~6_combout\ & \char~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_char~2_combout\,
	datac => \ALT_INV_char~6_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_char~7_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Selector9~4_combout\);

-- Location: LABCELL_X74_Y7_N12
\Selector9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~6_combout\ = ( \Equal0~11_combout\ & ( !\Selector9~4_combout\ & ( (\h1[0]~DUPLICATE_q\ & (!\Selector9~5_combout\ & ((!months(64)) # (!\Equal12~1_combout\)))) ) ) ) # ( !\Equal0~11_combout\ & ( !\Selector9~4_combout\ & ( (!\Selector9~5_combout\ 
-- & ((!months(64)) # (!\Equal12~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000001100000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_months(64),
	datab => \ALT_INV_h1[0]~DUPLICATE_q\,
	datac => \ALT_INV_Selector9~5_combout\,
	datad => \ALT_INV_Equal12~1_combout\,
	datae => \ALT_INV_Equal0~11_combout\,
	dataf => \ALT_INV_Selector9~4_combout\,
	combout => \Selector9~6_combout\);

-- Location: LABCELL_X77_Y3_N9
\apm[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \apm[10]~0_combout\ = ( h0(2) & ( !h1(0) ) ) # ( !h0(2) & ( (!h1(0) & ((!h0(1)) # (\h0[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_h0(1),
	datac => ALT_INV_h1(0),
	datad => \ALT_INV_h0[3]~DUPLICATE_q\,
	dataf => ALT_INV_h0(2),
	combout => \apm[10]~0_combout\);

-- Location: LABCELL_X77_Y3_N36
\apm[10]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \apm[10]~1_combout\ = ( apm(10) & ( \LessThan6~0_combout\ ) ) # ( !apm(10) & ( \LessThan6~0_combout\ & ( (\s1[0]~0_combout\ & (\LessThan5~0_combout\ & (\LessThan4~0_combout\ & \apm[10]~0_combout\))) ) ) ) # ( apm(10) & ( !\LessThan6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s1[0]~0_combout\,
	datab => \ALT_INV_LessThan5~0_combout\,
	datac => \ALT_INV_LessThan4~0_combout\,
	datad => \ALT_INV_apm[10]~0_combout\,
	datae => ALT_INV_apm(10),
	dataf => \ALT_INV_LessThan6~0_combout\,
	combout => \apm[10]~1_combout\);

-- Location: FF_X77_Y3_N37
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

-- Location: LABCELL_X73_Y3_N12
\Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = ( \Equal7~0_combout\ & ( \Equal3~0_combout\ & ( (!\char~1_combout\ & ((!\char~0_combout\ & (s0(0))) # (\char~0_combout\ & ((!apm(10)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => ALT_INV_s0(0),
	datac => \ALT_INV_char~1_combout\,
	datad => ALT_INV_apm(10),
	datae => \ALT_INV_Equal7~0_combout\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: LABCELL_X75_Y4_N3
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( !\char~7_combout\ & ( \char~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_char~0_combout\,
	dataf => \ALT_INV_char~7_combout\,
	combout => \Equal2~0_combout\);

-- Location: LABCELL_X75_Y4_N24
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ( \Equal0~9_combout\ & ( !\Equal0~2_combout\ & ( (!\char~6_combout\ & (\Equal0~8_combout\ & (\char~2_combout\ & \char~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~6_combout\,
	datab => \ALT_INV_Equal0~8_combout\,
	datac => \ALT_INV_char~2_combout\,
	datad => \ALT_INV_char~1_combout\,
	datae => \ALT_INV_Equal0~9_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal4~0_combout\);

-- Location: LABCELL_X75_Y4_N54
\Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = ( \Equal0~9_combout\ & ( !\Equal0~2_combout\ & ( (!\char~0_combout\ & (\Equal0~8_combout\ & (!\char~2_combout\ & !\char~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_Equal0~8_combout\,
	datac => \ALT_INV_char~2_combout\,
	datad => \ALT_INV_char~1_combout\,
	datae => \ALT_INV_Equal0~9_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal7~1_combout\);

-- Location: LABCELL_X75_Y6_N51
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \month[1]~DUPLICATE_q\ & ( (!month(3) & (month(0) & !month(2))) # (month(3) & ((month(2)))) ) ) # ( !\month[1]~DUPLICATE_q\ & ( !month(0) $ (((!month(3) & !month(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010101010010110101010101001010000000011110101000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(0),
	datac => ALT_INV_month(3),
	datad => ALT_INV_month(2),
	dataf => \ALT_INV_month[1]~DUPLICATE_q\,
	combout => \Mux21~0_combout\);

-- Location: FF_X75_Y6_N52
\months[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(40));

-- Location: LABCELL_X75_Y4_N42
\Selector9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = ( \Equal7~1_combout\ & ( months(40) & ( (\Equal2~0_combout\ & (\Equal4~0_combout\ & s1(0))) ) ) ) # ( !\Equal7~1_combout\ & ( months(40) & ( (\Equal2~0_combout\ & (\Equal4~0_combout\ & s1(0))) ) ) ) # ( \Equal7~1_combout\ & ( 
-- !months(40) & ( ((\Equal2~0_combout\ & (\Equal4~0_combout\ & s1(0)))) # (\Equal15~0_combout\) ) ) ) # ( !\Equal7~1_combout\ & ( !months(40) & ( (\Equal2~0_combout\ & (\Equal4~0_combout\ & s1(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101001100110011011100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_Equal15~0_combout\,
	datac => \ALT_INV_Equal4~0_combout\,
	datad => ALT_INV_s1(0),
	datae => \ALT_INV_Equal7~1_combout\,
	dataf => ALT_INV_months(40),
	combout => \Selector9~3_combout\);

-- Location: LABCELL_X74_Y7_N18
\Selector9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~9_combout\ = ( \Selector9~1_combout\ & ( \Selector9~3_combout\ ) ) # ( !\Selector9~1_combout\ & ( \Selector9~3_combout\ ) ) # ( \Selector9~1_combout\ & ( !\Selector9~3_combout\ ) ) # ( !\Selector9~1_combout\ & ( !\Selector9~3_combout\ & ( 
-- ((!\Selector9~8_combout\) # ((!\Selector9~6_combout\) # (\Selector9~0_combout\))) # (\Selector9~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector9~2_combout\,
	datab => \ALT_INV_Selector9~8_combout\,
	datac => \ALT_INV_Selector9~0_combout\,
	datad => \ALT_INV_Selector9~6_combout\,
	datae => \ALT_INV_Selector9~1_combout\,
	dataf => \ALT_INV_Selector9~3_combout\,
	combout => \Selector9~9_combout\);

-- Location: FF_X74_Y7_N20
\lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector9~9_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(0));

-- Location: LABCELL_X77_Y6_N12
\dut|lcd_data[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|lcd_data[3]~4_combout\ = ( \dut|state~6_combout\ & ( \dut|lcd_data[3]~3_combout\ & ( (!\dut|state.send~q\ & \dut|lcd_data[3]~1_combout\) ) ) ) # ( !\dut|state~6_combout\ & ( \dut|lcd_data[3]~3_combout\ & ( (!\dut|state.send~q\ & 
-- \dut|lcd_data[3]~1_combout\) ) ) ) # ( \dut|state~6_combout\ & ( !\dut|lcd_data[3]~3_combout\ & ( (!\dut|state.send~q\ & \dut|lcd_data[3]~1_combout\) ) ) ) # ( !\dut|state~6_combout\ & ( !\dut|lcd_data[3]~3_combout\ & ( (!\dut|state.send~q\ & 
-- (\dut|lcd_data[3]~1_combout\ & ((!\dut|state.initialize~DUPLICATE_q\) # (!\dut|lcd_data[3]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100000001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.send~q\,
	datab => \dut|ALT_INV_lcd_data[3]~1_combout\,
	datac => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	datad => \dut|ALT_INV_lcd_data[3]~2_combout\,
	datae => \dut|ALT_INV_state~6_combout\,
	dataf => \dut|ALT_INV_lcd_data[3]~3_combout\,
	combout => \dut|lcd_data[3]~4_combout\);

-- Location: FF_X77_Y6_N31
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
	sclr => \dut|lcd_data[3]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(0));

-- Location: MLABCELL_X78_Y6_N51
\dut|busy~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|busy~6_combout\ = ( \dut|LessThan3~5_combout\ & ( \dut|busy~4_combout\ & ( (!\dut|Add0~9_sumout\ & (!\dut|Add0~53_sumout\ & (\dut|LessThan3~0_combout\ & !\dut|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~9_sumout\,
	datab => \dut|ALT_INV_Add0~53_sumout\,
	datac => \dut|ALT_INV_LessThan3~0_combout\,
	datad => \dut|ALT_INV_Add0~5_sumout\,
	datae => \dut|ALT_INV_LessThan3~5_combout\,
	dataf => \dut|ALT_INV_busy~4_combout\,
	combout => \dut|busy~6_combout\);

-- Location: LABCELL_X80_Y6_N27
\dut|LessThan4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan4~3_combout\ = ( !\dut|Add0~113_sumout\ & ( \dut|busy~2_combout\ & ( (!\dut|LessThan4~1_combout\ & (\dut|LessThan3~2_combout\ & (\dut|LessThan3~1_combout\ & \dut|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan4~1_combout\,
	datab => \dut|ALT_INV_LessThan3~2_combout\,
	datac => \dut|ALT_INV_LessThan3~1_combout\,
	datad => \dut|ALT_INV_LessThan3~0_combout\,
	datae => \dut|ALT_INV_Add0~113_sumout\,
	dataf => \dut|ALT_INV_busy~2_combout\,
	combout => \dut|LessThan4~3_combout\);

-- Location: LABCELL_X77_Y4_N48
\dut|Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector44~0_combout\ = ( \dut|LessThan3~0_combout\ & ( \dut|busy~2_combout\ & ( (\dut|LessThan3~1_combout\ & (!\dut|LessThan7~1_combout\ & (\dut|LessThan6~3_combout\ & !\dut|Add0~113_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~1_combout\,
	datab => \dut|ALT_INV_LessThan7~1_combout\,
	datac => \dut|ALT_INV_LessThan6~3_combout\,
	datad => \dut|ALT_INV_Add0~113_sumout\,
	datae => \dut|ALT_INV_LessThan3~0_combout\,
	dataf => \dut|ALT_INV_busy~2_combout\,
	combout => \dut|Selector44~0_combout\);

-- Location: LABCELL_X77_Y6_N24
\dut|Selector44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector44~1_combout\ = ( \dut|Selector44~0_combout\ & ( !\dut|Selector46~1_combout\ & ( (\dut|state.initialize~DUPLICATE_q\ & (!\dut|Add0~1_sumout\ & (!\dut|busy~6_combout\ & !\dut|LessThan4~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	datab => \dut|ALT_INV_Add0~1_sumout\,
	datac => \dut|ALT_INV_busy~6_combout\,
	datad => \dut|ALT_INV_LessThan4~3_combout\,
	datae => \dut|ALT_INV_Selector44~0_combout\,
	dataf => \dut|ALT_INV_Selector46~1_combout\,
	combout => \dut|Selector44~1_combout\);

-- Location: LABCELL_X75_Y6_N39
\Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = ( \month[1]~DUPLICATE_q\ & ( (!month(2) & (month(3) & !month(0))) ) ) # ( !\month[1]~DUPLICATE_q\ & ( (month(2) & (month(3) & month(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(2),
	datac => ALT_INV_month(3),
	datad => ALT_INV_month(0),
	dataf => \ALT_INV_month[1]~DUPLICATE_q\,
	combout => \Mux39~0_combout\);

-- Location: FF_X75_Y6_N40
\months[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(18));

-- Location: FF_X74_Y7_N53
\months[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \months[25]~DUPLICATE_q\);

-- Location: LABCELL_X73_Y6_N18
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \months[25]~DUPLICATE_q\ & ( \Equal3~0_combout\ & ( (\Equal15~0_combout\ & (\char~1_combout\ & (!\char~0_combout\ & months(18)))) ) ) ) # ( !\months[25]~DUPLICATE_q\ & ( \Equal3~0_combout\ & ( (\Equal15~0_combout\ & 
-- ((!\char~1_combout\ & (\char~0_combout\)) # (\char~1_combout\ & (!\char~0_combout\ & months(18))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000101000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal15~0_combout\,
	datab => \ALT_INV_char~1_combout\,
	datac => \ALT_INV_char~0_combout\,
	datad => ALT_INV_months(18),
	datae => \ALT_INV_months[25]~DUPLICATE_q\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: LABCELL_X75_Y6_N0
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !month(0) & ( (!month(1) & month(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(1),
	datac => ALT_INV_month(3),
	dataf => ALT_INV_month(0),
	combout => \Mux0~0_combout\);

-- Location: FF_X75_Y6_N1
\months[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(68));

-- Location: LABCELL_X73_Y6_N42
\Selector8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = ( months(68) & ( \Equal4~0_combout\ & ( (!\char~0_combout\ & (((m0(1))) # (\char~7_combout\))) # (\char~0_combout\ & (!\char~7_combout\ & ((s1(1))))) ) ) ) # ( !months(68) & ( \Equal4~0_combout\ & ( (!\char~7_combout\ & 
-- ((!\char~0_combout\ & (m0(1))) # (\char~0_combout\ & ((s1(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000010011000010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_char~7_combout\,
	datac => ALT_INV_m0(1),
	datad => ALT_INV_s1(1),
	datae => ALT_INV_months(68),
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \Selector8~3_combout\);

-- Location: FF_X77_Y3_N16
\h0[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \h0~3_combout\,
	ena => \h0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h0[1]~DUPLICATE_q\);

-- Location: LABCELL_X74_Y4_N36
\Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = ( \char~0_combout\ & ( \Equal3~0_combout\ & ( (\Equal1~0_combout\ & (!\char~1_combout\ & !\h0[1]~DUPLICATE_q\)) ) ) ) # ( !\char~0_combout\ & ( \Equal3~0_combout\ & ( (m1(1) & (\Equal1~0_combout\ & \char~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_m1(1),
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_char~1_combout\,
	datad => \ALT_INV_h0[1]~DUPLICATE_q\,
	datae => \ALT_INV_char~0_combout\,
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: LABCELL_X75_Y6_N18
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( !\month[2]~DUPLICATE_q\ & ( (\month[1]~DUPLICATE_q\ & ((!month(3)) # (month(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(3),
	datac => ALT_INV_month(0),
	datad => \ALT_INV_month[1]~DUPLICATE_q\,
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux20~0_combout\);

-- Location: FF_X75_Y6_N20
\months[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(41));

-- Location: LABCELL_X74_Y6_N18
\Selector8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = ( \Equal7~1_combout\ & ( (!\char~7_combout\ & (\s0[1]~DUPLICATE_q\ & ((\char~6_combout\)))) # (\char~7_combout\ & (((months(41) & !\char~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011010100000000001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s0[1]~DUPLICATE_q\,
	datab => ALT_INV_months(41),
	datac => \ALT_INV_char~7_combout\,
	datad => \ALT_INV_char~6_combout\,
	dataf => \ALT_INV_Equal7~1_combout\,
	combout => \Selector8~2_combout\);

-- Location: LABCELL_X74_Y7_N45
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( month(0) & ( \month[2]~DUPLICATE_q\ & ( (\month[1]~DUPLICATE_q\ & \month[3]~DUPLICATE_q\) ) ) ) # ( !month(0) & ( \month[2]~DUPLICATE_q\ ) ) # ( month(0) & ( !\month[2]~DUPLICATE_q\ & ( !\month[1]~DUPLICATE_q\ $ 
-- (\month[3]~DUPLICATE_q\) ) ) ) # ( !month(0) & ( !\month[2]~DUPLICATE_q\ & ( (!\month[1]~DUPLICATE_q\ & \month[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000111100000000111111111111111111110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_month[1]~DUPLICATE_q\,
	datad => \ALT_INV_month[3]~DUPLICATE_q\,
	datae => ALT_INV_month(0),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux13~0_combout\);

-- Location: FF_X74_Y7_N46
\months[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(49));

-- Location: LABCELL_X73_Y7_N9
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \month[1]~DUPLICATE_q\ & ( \month[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_month[3]~DUPLICATE_q\,
	dataf => \ALT_INV_month[1]~DUPLICATE_q\,
	combout => \Mux8~0_combout\);

-- Location: FF_X73_Y7_N11
\months[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(57));

-- Location: LABCELL_X73_Y6_N30
\Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = ( \Equal27~4_combout\ & ( \Equal0~8_combout\ & ( (\Equal27~0_combout\ & (\char~1_combout\ & (\Equal0~3_combout\ & !\Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal27~0_combout\,
	datab => \ALT_INV_char~1_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Equal27~4_combout\,
	dataf => \ALT_INV_Equal0~8_combout\,
	combout => \Equal5~0_combout\);

-- Location: LABCELL_X73_Y6_N12
\Selector8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~4_combout\ = ( \char~6_combout\ & ( \Equal0~4_combout\ & ( (\char~2_combout\ & (\char~7_combout\ & !\char~1_combout\)) ) ) ) # ( !\char~6_combout\ & ( \Equal0~4_combout\ & ( (\char~0_combout\ & ((!\char~2_combout\ & (!\char~7_combout\ & 
-- \char~1_combout\)) # (\char~2_combout\ & (!\char~7_combout\ $ (\char~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000010010001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~2_combout\,
	datab => \ALT_INV_char~7_combout\,
	datac => \ALT_INV_char~0_combout\,
	datad => \ALT_INV_char~1_combout\,
	datae => \ALT_INV_char~6_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Selector8~4_combout\);

-- Location: LABCELL_X73_Y6_N0
\Selector8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~5_combout\ = ( \Equal13~0_combout\ & ( !\Selector8~4_combout\ & ( (!\Equal5~0_combout\) # ((!\char~2_combout\ & ((!months(57)))) # (\char~2_combout\ & (months(49)))) ) ) ) # ( !\Equal13~0_combout\ & ( !\Selector8~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111100010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_months(49),
	datab => ALT_INV_months(57),
	datac => \ALT_INV_char~2_combout\,
	datad => \ALT_INV_Equal5~0_combout\,
	datae => \ALT_INV_Equal13~0_combout\,
	dataf => \ALT_INV_Selector8~4_combout\,
	combout => \Selector8~5_combout\);

-- Location: LABCELL_X75_Y7_N39
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \month[0]~DUPLICATE_q\ & ( (!month(1)) # ((month(3) & month(2))) ) ) # ( !\month[0]~DUPLICATE_q\ & ( !month(2) $ (((!month(1)) # (month(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000011000011111100001111111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(3),
	datac => ALT_INV_month(2),
	datad => ALT_INV_month(1),
	dataf => \ALT_INV_month[0]~DUPLICATE_q\,
	combout => \Mux3~0_combout\);

-- Location: FF_X75_Y7_N41
\months[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(65));

-- Location: LABCELL_X75_Y6_N48
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( month(0) & ( (month(3) & !month(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_month(3),
	datad => ALT_INV_month(2),
	dataf => ALT_INV_month(0),
	combout => \Mux27~0_combout\);

-- Location: FF_X75_Y6_N50
\months[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(33));

-- Location: LABCELL_X73_Y6_N24
\Selector8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~6_combout\ = ( months(24) & ( \Equal0~4_combout\ & ( (\Equal15~0_combout\ & (\Equal0~10_combout\ & ((months(33)) # (\char~0_combout\)))) ) ) ) # ( !months(24) & ( \Equal0~4_combout\ & ( (!\char~0_combout\ & (\Equal15~0_combout\ & 
-- (\Equal0~10_combout\ & months(33)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_Equal15~0_combout\,
	datac => \ALT_INV_Equal0~10_combout\,
	datad => ALT_INV_months(33),
	datae => ALT_INV_months(24),
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Selector8~6_combout\);

-- Location: LABCELL_X73_Y6_N48
\Selector8~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~7_combout\ = ( \WideNor0~0_combout\ & ( !\Selector8~6_combout\ & ( (!\Equal27~13_combout\ & (((!\Equal12~1_combout\)) # (months(65)))) # (\Equal27~13_combout\ & (!lcd_bus(1) & ((!\Equal12~1_combout\) # (months(65))))) ) ) ) # ( 
-- !\WideNor0~0_combout\ & ( !\Selector8~6_combout\ & ( (!lcd_bus(1) & ((!\Equal12~1_combout\) # (months(65)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000000111100111010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal27~13_combout\,
	datab => ALT_INV_months(65),
	datac => \ALT_INV_Equal12~1_combout\,
	datad => ALT_INV_lcd_bus(1),
	datae => \ALT_INV_WideNor0~0_combout\,
	dataf => \ALT_INV_Selector8~6_combout\,
	combout => \Selector8~7_combout\);

-- Location: LABCELL_X73_Y6_N6
\Selector8~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~8_combout\ = ( \Selector8~5_combout\ & ( \Selector8~7_combout\ & ( (((\Selector8~2_combout\) # (\Selector8~1_combout\)) # (\Selector8~3_combout\)) # (\Selector8~0_combout\) ) ) ) # ( !\Selector8~5_combout\ & ( \Selector8~7_combout\ ) ) # ( 
-- \Selector8~5_combout\ & ( !\Selector8~7_combout\ ) ) # ( !\Selector8~5_combout\ & ( !\Selector8~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector8~0_combout\,
	datab => \ALT_INV_Selector8~3_combout\,
	datac => \ALT_INV_Selector8~1_combout\,
	datad => \ALT_INV_Selector8~2_combout\,
	datae => \ALT_INV_Selector8~5_combout\,
	dataf => \ALT_INV_Selector8~7_combout\,
	combout => \Selector8~8_combout\);

-- Location: FF_X73_Y6_N8
\lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector8~8_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(1));

-- Location: FF_X77_Y6_N26
\dut|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector44~1_combout\,
	asdata => lcd_bus(1),
	sclr => \dut|lcd_data[3]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(1));

-- Location: LABCELL_X77_Y4_N33
\dut|Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector42~0_combout\ = ( !\dut|Add0~113_sumout\ & ( \dut|state.initialize~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	datae => \dut|ALT_INV_Add0~113_sumout\,
	combout => \dut|Selector42~0_combout\);

-- Location: LABCELL_X77_Y4_N12
\dut|Selector44~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector44~2_combout\ = ( !\dut|Add0~113_sumout\ & ( \dut|busy~2_combout\ & ( (\dut|LessThan3~3_combout\ & (\dut|LessThan3~2_combout\ & ((!\dut|LessThan5~1_combout\) # (!\dut|LessThan4~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~3_combout\,
	datab => \dut|ALT_INV_LessThan5~1_combout\,
	datac => \dut|ALT_INV_LessThan4~1_combout\,
	datad => \dut|ALT_INV_LessThan3~2_combout\,
	datae => \dut|ALT_INV_Add0~113_sumout\,
	dataf => \dut|ALT_INV_busy~2_combout\,
	combout => \dut|Selector44~2_combout\);

-- Location: LABCELL_X77_Y4_N6
\dut|Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector43~0_combout\ = ( \dut|LessThan3~0_combout\ & ( \dut|busy~2_combout\ & ( (!\dut|Add0~1_sumout\ & ((!\dut|LessThan1~2_combout\) # ((!\dut|LessThan3~1_combout\) # (!\dut|LessThan3~2_combout\)))) ) ) ) # ( !\dut|LessThan3~0_combout\ & ( 
-- \dut|busy~2_combout\ & ( !\dut|Add0~1_sumout\ ) ) ) # ( \dut|LessThan3~0_combout\ & ( !\dut|busy~2_combout\ & ( !\dut|Add0~1_sumout\ ) ) ) # ( !\dut|LessThan3~0_combout\ & ( !\dut|busy~2_combout\ & ( !\dut|Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan1~2_combout\,
	datab => \dut|ALT_INV_Add0~1_sumout\,
	datac => \dut|ALT_INV_LessThan3~1_combout\,
	datad => \dut|ALT_INV_LessThan3~2_combout\,
	datae => \dut|ALT_INV_LessThan3~0_combout\,
	dataf => \dut|ALT_INV_busy~2_combout\,
	combout => \dut|Selector43~0_combout\);

-- Location: LABCELL_X77_Y4_N36
\dut|Selector43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector43~1_combout\ = ( !\dut|LessThan2~2_combout\ & ( \dut|LessThan3~8_combout\ & ( (\dut|Selector42~0_combout\ & \dut|Selector43~0_combout\) ) ) ) # ( !\dut|LessThan2~2_combout\ & ( !\dut|LessThan3~8_combout\ & ( (\dut|Selector42~0_combout\ & 
-- (!\dut|Selector44~2_combout\ & (\dut|Selector44~0_combout\ & \dut|Selector43~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Selector42~0_combout\,
	datab => \dut|ALT_INV_Selector44~2_combout\,
	datac => \dut|ALT_INV_Selector44~0_combout\,
	datad => \dut|ALT_INV_Selector43~0_combout\,
	datae => \dut|ALT_INV_LessThan2~2_combout\,
	dataf => \dut|ALT_INV_LessThan3~8_combout\,
	combout => \dut|Selector43~1_combout\);

-- Location: LABCELL_X74_Y4_N45
\Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = ( m1(2) & ( h0(2) & ( (\char~0_combout\ & (\Equal1~0_combout\ & (\Equal3~0_combout\ & !\char~1_combout\))) ) ) ) # ( !m1(2) & ( h0(2) & ( (\Equal1~0_combout\ & (\Equal3~0_combout\ & (!\char~0_combout\ $ (!\char~1_combout\)))) ) ) ) 
-- # ( !m1(2) & ( !h0(2) & ( (!\char~0_combout\ & (\Equal1~0_combout\ & (\Equal3~0_combout\ & \char~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000001000000100000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_Equal3~0_combout\,
	datad => \ALT_INV_char~1_combout\,
	datae => ALT_INV_m1(2),
	dataf => ALT_INV_h0(2),
	combout => \Selector7~2_combout\);

-- Location: LABCELL_X75_Y4_N48
\Selector7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = ( \Equal7~1_combout\ & ( \Equal4~0_combout\ & ( (!\Equal2~0_combout\ & (\s0[2]~DUPLICATE_q\ & ((\Equal7~0_combout\)))) # (\Equal2~0_combout\ & (((\s0[2]~DUPLICATE_q\ & \Equal7~0_combout\)) # (s1(2)))) ) ) ) # ( !\Equal7~1_combout\ 
-- & ( \Equal4~0_combout\ & ( (\Equal2~0_combout\ & s1(2)) ) ) ) # ( \Equal7~1_combout\ & ( !\Equal4~0_combout\ & ( (\s0[2]~DUPLICATE_q\ & \Equal7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000101000001010000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => \ALT_INV_s0[2]~DUPLICATE_q\,
	datac => ALT_INV_s1(2),
	datad => \ALT_INV_Equal7~0_combout\,
	datae => \ALT_INV_Equal7~1_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \Selector7~4_combout\);

-- Location: LABCELL_X74_Y4_N48
\Equal0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = ( \Equal0~8_combout\ & ( \Equal27~4_combout\ & ( (\Equal0~3_combout\ & (\Equal0~10_combout\ & (\Equal27~0_combout\ & !\Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \ALT_INV_Equal0~10_combout\,
	datac => \ALT_INV_Equal27~0_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Equal0~8_combout\,
	dataf => \ALT_INV_Equal27~4_combout\,
	combout => \Equal0~13_combout\);

-- Location: LABCELL_X74_Y7_N24
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \month[2]~DUPLICATE_q\ & ( (!\month[1]~DUPLICATE_q\ & \month[0]~DUPLICATE_q\) ) ) # ( !\month[2]~DUPLICATE_q\ & ( (!\month[3]~DUPLICATE_q\ & (\month[1]~DUPLICATE_q\ & \month[0]~DUPLICATE_q\)) # (\month[3]~DUPLICATE_q\ & 
-- ((!\month[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001001010010010100100101001000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_month[3]~DUPLICATE_q\,
	datab => \ALT_INV_month[1]~DUPLICATE_q\,
	datac => \ALT_INV_month[0]~DUPLICATE_q\,
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux26~0_combout\);

-- Location: FF_X74_Y7_N26
\months[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(34));

-- Location: LABCELL_X74_Y4_N18
\Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = ( months(34) & ( months(18) & ( (\Equal0~13_combout\ & ((!\char~7_combout\ & (\char~0_combout\ & \char~6_combout\)) # (\char~7_combout\ & ((!\char~6_combout\))))) ) ) ) # ( !months(34) & ( months(18) & ( (\char~0_combout\ & 
-- (\Equal0~13_combout\ & (!\char~7_combout\ $ (!\char~6_combout\)))) ) ) ) # ( months(34) & ( !months(18) & ( (\Equal0~13_combout\ & ((!\char~0_combout\ & (\char~7_combout\ & !\char~6_combout\)) # (\char~0_combout\ & (!\char~7_combout\ & 
-- \char~6_combout\)))) ) ) ) # ( !months(34) & ( !months(18) & ( (\char~0_combout\ & (!\char~7_combout\ & (\Equal0~13_combout\ & \char~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000100000010000000001000001000000001100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_char~7_combout\,
	datac => \ALT_INV_Equal0~13_combout\,
	datad => \ALT_INV_char~6_combout\,
	datae => ALT_INV_months(34),
	dataf => ALT_INV_months(18),
	combout => \Selector7~1_combout\);

-- Location: LABCELL_X75_Y7_N21
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \month[0]~DUPLICATE_q\ & ( \month[2]~DUPLICATE_q\ & ( (!month(3) & !month(1)) ) ) ) # ( !\month[0]~DUPLICATE_q\ & ( \month[2]~DUPLICATE_q\ & ( !month(3) ) ) ) # ( \month[0]~DUPLICATE_q\ & ( !\month[2]~DUPLICATE_q\ & ( !month(3) ) ) ) 
-- # ( !\month[0]~DUPLICATE_q\ & ( !\month[2]~DUPLICATE_q\ & ( (!month(3) & month(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000111100001111000011110000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_month(3),
	datad => ALT_INV_month(1),
	datae => \ALT_INV_month[0]~DUPLICATE_q\,
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux19~0_combout\);

-- Location: FF_X75_Y7_N22
\months[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(42));

-- Location: LABCELL_X74_Y7_N0
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \month[2]~DUPLICATE_q\ & ( (!\month[1]~DUPLICATE_q\ & (!\month[3]~DUPLICATE_q\ $ (month(0)))) ) ) # ( !\month[2]~DUPLICATE_q\ & ( \month[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_month[1]~DUPLICATE_q\,
	datac => \ALT_INV_month[3]~DUPLICATE_q\,
	datad => ALT_INV_month(0),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux2~0_combout\);

-- Location: FF_X74_Y7_N1
\months[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(66));

-- Location: LABCELL_X75_Y4_N0
\Selector7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = ( \Equal15~0_combout\ & ( (!months(42) & (((\Equal12~1_combout\ & months(66))) # (\Equal7~1_combout\))) # (months(42) & (\Equal12~1_combout\ & ((months(66))))) ) ) # ( !\Equal15~0_combout\ & ( (\Equal12~1_combout\ & months(66)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001010001110110000101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_months(42),
	datab => \ALT_INV_Equal12~1_combout\,
	datac => \ALT_INV_Equal7~1_combout\,
	datad => ALT_INV_months(66),
	dataf => \ALT_INV_Equal15~0_combout\,
	combout => \Selector7~3_combout\);

-- Location: LABCELL_X75_Y6_N3
\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( !\month[2]~DUPLICATE_q\ & ( (month(3) & ((!month(1)) # (month(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(1),
	datac => ALT_INV_month(3),
	datad => ALT_INV_month(0),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux32~0_combout\);

-- Location: FF_X75_Y6_N5
\months[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(26));

-- Location: LABCELL_X75_Y6_N9
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( months(26) & ( months(68) & ( (\Equal15~0_combout\ & (\Equal3~0_combout\ & (!\char~0_combout\ $ (!\char~1_combout\)))) ) ) ) # ( !months(26) & ( months(68) & ( (!\char~0_combout\ & (\char~1_combout\ & (\Equal15~0_combout\ & 
-- \Equal3~0_combout\))) ) ) ) # ( months(26) & ( !months(68) & ( (\char~0_combout\ & (!\char~1_combout\ & (\Equal15~0_combout\ & \Equal3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000100000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_char~1_combout\,
	datac => \ALT_INV_Equal15~0_combout\,
	datad => \ALT_INV_Equal3~0_combout\,
	datae => ALT_INV_months(26),
	dataf => ALT_INV_months(68),
	combout => \Selector7~0_combout\);

-- Location: LABCELL_X75_Y7_N9
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \month[0]~DUPLICATE_q\ & ( \month[2]~DUPLICATE_q\ & ( !month(3) $ (!month(1)) ) ) ) # ( !\month[0]~DUPLICATE_q\ & ( \month[2]~DUPLICATE_q\ & ( (!month(3) & month(1)) ) ) ) # ( \month[0]~DUPLICATE_q\ & ( !\month[2]~DUPLICATE_q\ & ( 
-- !month(3) $ (!month(1)) ) ) ) # ( !\month[0]~DUPLICATE_q\ & ( !\month[2]~DUPLICATE_q\ & ( month(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011111111000000000000111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_month(3),
	datad => ALT_INV_month(1),
	datae => \ALT_INV_month[0]~DUPLICATE_q\,
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux7~0_combout\);

-- Location: FF_X75_Y7_N10
\months[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(58));

-- Location: LABCELL_X75_Y7_N45
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \month[0]~DUPLICATE_q\ & ( (!month(3) & ((!month(2)) # (!month(1)))) # (month(3) & (month(2))) ) ) # ( !\month[0]~DUPLICATE_q\ & ( (!month(3) & (!month(2) $ (!month(1)))) # (month(3) & ((!month(1)) # (month(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000011001111111100001111001111110000111100111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(3),
	datac => ALT_INV_month(2),
	datad => ALT_INV_month(1),
	dataf => \ALT_INV_month[0]~DUPLICATE_q\,
	combout => \Mux12~0_combout\);

-- Location: FF_X75_Y7_N46
\months[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(50));

-- Location: LABCELL_X74_Y5_N24
\Selector7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~5_combout\ = ( months(58) & ( months(50) & ( (!\char~2_combout\ & (\char~1_combout\ & (\Equal13~0_combout\ & \Equal0~4_combout\))) ) ) ) # ( months(58) & ( !months(50) & ( (\char~1_combout\ & (\Equal13~0_combout\ & \Equal0~4_combout\)) ) ) ) # 
-- ( !months(58) & ( !months(50) & ( (\char~2_combout\ & (\char~1_combout\ & (\Equal13~0_combout\ & \Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000001100000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~2_combout\,
	datab => \ALT_INV_char~1_combout\,
	datac => \ALT_INV_Equal13~0_combout\,
	datad => \ALT_INV_Equal0~4_combout\,
	datae => ALT_INV_months(58),
	dataf => ALT_INV_months(50),
	combout => \Selector7~5_combout\);

-- Location: LABCELL_X74_Y5_N6
\Selector7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~6_combout\ = ( \WideNor0~0_combout\ & ( !\Selector7~5_combout\ & ( (!lcd_bus(2) & (((!m0(2)) # (!\Equal4~1_combout\)))) # (lcd_bus(2) & (!\Equal27~13_combout\ & ((!m0(2)) # (!\Equal4~1_combout\)))) ) ) ) # ( !\WideNor0~0_combout\ & ( 
-- !\Selector7~5_combout\ & ( (!lcd_bus(2) & ((!m0(2)) # (!\Equal4~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000111011101110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lcd_bus(2),
	datab => \ALT_INV_Equal27~13_combout\,
	datac => ALT_INV_m0(2),
	datad => \ALT_INV_Equal4~1_combout\,
	datae => \ALT_INV_WideNor0~0_combout\,
	dataf => \ALT_INV_Selector7~5_combout\,
	combout => \Selector7~6_combout\);

-- Location: LABCELL_X75_Y4_N15
\Selector7~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~7_combout\ = ( \Selector7~0_combout\ & ( \Selector7~6_combout\ ) ) # ( !\Selector7~0_combout\ & ( \Selector7~6_combout\ & ( (((\Selector7~3_combout\) # (\Selector7~1_combout\)) # (\Selector7~4_combout\)) # (\Selector7~2_combout\) ) ) ) # ( 
-- \Selector7~0_combout\ & ( !\Selector7~6_combout\ ) ) # ( !\Selector7~0_combout\ & ( !\Selector7~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector7~2_combout\,
	datab => \ALT_INV_Selector7~4_combout\,
	datac => \ALT_INV_Selector7~1_combout\,
	datad => \ALT_INV_Selector7~3_combout\,
	datae => \ALT_INV_Selector7~0_combout\,
	dataf => \ALT_INV_Selector7~6_combout\,
	combout => \Selector7~7_combout\);

-- Location: FF_X75_Y4_N17
\lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector7~7_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(2));

-- Location: FF_X77_Y4_N37
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
	sclr => \dut|lcd_data[3]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(2));

-- Location: LABCELL_X77_Y4_N24
\dut|Selector42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector42~1_combout\ = ( \dut|Add0~1_sumout\ & ( \dut|state.initialize~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	datae => \dut|ALT_INV_Add0~1_sumout\,
	combout => \dut|Selector42~1_combout\);

-- Location: MLABCELL_X78_Y4_N57
\dut|LessThan3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|LessThan3~13_combout\ = ( !\dut|Add0~73_sumout\ & ( !\dut|Add0~9_sumout\ & ( (\dut|LessThan3~1_combout\ & (\dut|LessThan3~2_combout\ & (\dut|LessThan3~0_combout\ & !\dut|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan3~1_combout\,
	datab => \dut|ALT_INV_LessThan3~2_combout\,
	datac => \dut|ALT_INV_LessThan3~0_combout\,
	datad => \dut|ALT_INV_Add0~5_sumout\,
	datae => \dut|ALT_INV_Add0~73_sumout\,
	dataf => \dut|ALT_INV_Add0~9_sumout\,
	combout => \dut|LessThan3~13_combout\);

-- Location: MLABCELL_X78_Y4_N12
\dut|Selector42~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector42~2_combout\ = ( \dut|LessThan3~13_combout\ & ( \dut|LessThan1~3_combout\ & ( (\dut|Selector42~0_combout\) # (\dut|Selector42~1_combout\) ) ) ) # ( !\dut|LessThan3~13_combout\ & ( \dut|LessThan1~3_combout\ & ( (\dut|Selector42~0_combout\) # 
-- (\dut|Selector42~1_combout\) ) ) ) # ( \dut|LessThan3~13_combout\ & ( !\dut|LessThan1~3_combout\ & ( ((\dut|LessThan2~1_combout\ & (!\dut|LessThan3~7_combout\ & \dut|Selector42~0_combout\))) # (\dut|Selector42~1_combout\) ) ) ) # ( 
-- !\dut|LessThan3~13_combout\ & ( !\dut|LessThan1~3_combout\ & ( \dut|Selector42~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110100111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_LessThan2~1_combout\,
	datab => \dut|ALT_INV_LessThan3~7_combout\,
	datac => \dut|ALT_INV_Selector42~1_combout\,
	datad => \dut|ALT_INV_Selector42~0_combout\,
	datae => \dut|ALT_INV_LessThan3~13_combout\,
	dataf => \dut|ALT_INV_LessThan1~3_combout\,
	combout => \dut|Selector42~2_combout\);

-- Location: LABCELL_X75_Y7_N33
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( month(0) & ( \month[2]~DUPLICATE_q\ & ( (!month(3) & !month(1)) ) ) ) # ( !month(0) & ( \month[2]~DUPLICATE_q\ & ( (!month(3) & month(1)) ) ) ) # ( month(0) & ( !\month[2]~DUPLICATE_q\ & ( (month(3) & month(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_month(3),
	datad => ALT_INV_month(1),
	datae => ALT_INV_month(0),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux18~0_combout\);

-- Location: FF_X75_Y7_N34
\months[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(43));

-- Location: LABCELL_X75_Y5_N6
\Selector6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~4_combout\ = ( \Equal7~1_combout\ & ( (!\char~6_combout\ & (\char~7_combout\ & (months(43)))) # (\char~6_combout\ & (!\char~7_combout\ & ((s0(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010010001100000001001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~6_combout\,
	datab => \ALT_INV_char~7_combout\,
	datac => ALT_INV_months(43),
	datad => ALT_INV_s0(3),
	dataf => \ALT_INV_Equal7~1_combout\,
	combout => \Selector6~4_combout\);

-- Location: LABCELL_X74_Y6_N24
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \month[1]~DUPLICATE_q\ & ( (!month(2)) # (month(3)) ) ) # ( !\month[1]~DUPLICATE_q\ & ( (month(3)) # (\month[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(2),
	datac => \ALT_INV_month[0]~DUPLICATE_q\,
	datad => ALT_INV_month(3),
	dataf => \ALT_INV_month[1]~DUPLICATE_q\,
	combout => \Mux11~0_combout\);

-- Location: FF_X74_Y6_N25
\months[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(51));

-- Location: LABCELL_X74_Y6_N21
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \month[1]~DUPLICATE_q\ & ( (month(3) & !\month[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_month(3),
	datad => \ALT_INV_month[0]~DUPLICATE_q\,
	dataf => \ALT_INV_month[1]~DUPLICATE_q\,
	combout => \Mux6~0_combout\);

-- Location: FF_X74_Y6_N23
\months[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(59));

-- Location: LABCELL_X74_Y6_N54
\Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ( \Equal13~0_combout\ & ( \Equal0~4_combout\ & ( (\char~1_combout\ & ((!\char~2_combout\ & ((months(59)))) # (\char~2_combout\ & (!months(51))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => ALT_INV_months(51),
	datac => ALT_INV_months(59),
	datad => \ALT_INV_char~2_combout\,
	datae => \ALT_INV_Equal13~0_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Selector6~1_combout\);

-- Location: LABCELL_X75_Y6_N45
\Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = ( \month[2]~DUPLICATE_q\ ) # ( !\month[2]~DUPLICATE_q\ & ( (\month[1]~DUPLICATE_q\) # (month(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(3),
	datad => \ALT_INV_month[1]~DUPLICATE_q\,
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux38~0_combout\);

-- Location: FF_X75_Y6_N46
\months[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(19));

-- Location: LABCELL_X73_Y3_N42
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !char(2) & ( \Add0~5_sumout\ & ( (\LessThan0~3_combout\ & (!\LessThan0~1_combout\ & \char[1]~DUPLICATE_q\)) ) ) ) # ( char(2) & ( !\Add0~5_sumout\ & ( (\Add0~1_sumout\ & ((!\LessThan0~3_combout\) # (\LessThan0~1_combout\))) ) ) ) # 
-- ( !char(2) & ( !\Add0~5_sumout\ & ( (!\LessThan0~3_combout\ & (((\Add0~1_sumout\)))) # (\LessThan0~3_combout\ & ((!\LessThan0~1_combout\ & (\char[1]~DUPLICATE_q\)) # (\LessThan0~1_combout\ & ((\Add0~1_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000000001011101100000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_char[1]~DUPLICATE_q\,
	datad => \ALT_INV_Add0~1_sumout\,
	datae => ALT_INV_char(2),
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X75_Y6_N30
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( \Equal0~8_combout\ & ( \Equal0~9_combout\ & ( (\Equal1~1_combout\ & (!\char~2_combout\ & (!\Equal0~2_combout\ & \Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~1_combout\,
	datab => \ALT_INV_char~2_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_Equal0~8_combout\,
	dataf => \ALT_INV_Equal0~9_combout\,
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X73_Y7_N21
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( !\month[1]~DUPLICATE_q\ & ( \month[2]~DUPLICATE_q\ & ( \month[0]~DUPLICATE_q\ ) ) ) # ( \month[1]~DUPLICATE_q\ & ( !\month[2]~DUPLICATE_q\ & ( !\month[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_month[0]~DUPLICATE_q\,
	datae => \ALT_INV_month[1]~DUPLICATE_q\,
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux25~0_combout\);

-- Location: FF_X73_Y7_N22
\months[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(35));

-- Location: LABCELL_X75_Y5_N0
\Equal16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal16~0_combout\ = ( \Equal0~10_combout\ & ( \Equal15~0_combout\ & ( (\Equal0~9_combout\ & (!\Equal0~2_combout\ & (\Equal0~8_combout\ & !\char~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~9_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal0~8_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_Equal0~10_combout\,
	dataf => \ALT_INV_Equal15~0_combout\,
	combout => \Equal16~0_combout\);

-- Location: LABCELL_X74_Y6_N0
\Equal18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = ( \Equal0~9_combout\ & ( \Equal0~8_combout\ & ( (\char~0_combout\ & (\Equal0~10_combout\ & (!\Equal0~2_combout\ & \Equal15~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_Equal0~10_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal15~0_combout\,
	datae => \ALT_INV_Equal0~9_combout\,
	dataf => \ALT_INV_Equal0~8_combout\,
	combout => \Equal18~0_combout\);

-- Location: LABCELL_X74_Y5_N48
\Selector6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = ( \Equal16~0_combout\ & ( \Equal18~0_combout\ & ( (months(19) & (!months(35) & ((!h0(3)) # (!\Equal1~2_combout\)))) ) ) ) # ( !\Equal16~0_combout\ & ( \Equal18~0_combout\ & ( (months(19) & ((!h0(3)) # (!\Equal1~2_combout\))) ) ) ) 
-- # ( \Equal16~0_combout\ & ( !\Equal18~0_combout\ & ( (!months(35) & ((!h0(3)) # (!\Equal1~2_combout\))) ) ) ) # ( !\Equal16~0_combout\ & ( !\Equal18~0_combout\ & ( (!h0(3)) # (!\Equal1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100000000000110010001100100011001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_h0(3),
	datab => ALT_INV_months(19),
	datac => \ALT_INV_Equal1~2_combout\,
	datad => ALT_INV_months(35),
	datae => \ALT_INV_Equal16~0_combout\,
	dataf => \ALT_INV_Equal18~0_combout\,
	combout => \Selector6~3_combout\);

-- Location: LABCELL_X74_Y7_N9
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \month[2]~DUPLICATE_q\ & ( ((month(0) & !\month[1]~DUPLICATE_q\)) # (\month[3]~DUPLICATE_q\) ) ) # ( !\month[2]~DUPLICATE_q\ & ( (!\month[3]~DUPLICATE_q\ & (month(0))) # (\month[3]~DUPLICATE_q\ & ((!\month[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010011100100111001001110101011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_month[3]~DUPLICATE_q\,
	datab => ALT_INV_month(0),
	datac => \ALT_INV_month[1]~DUPLICATE_q\,
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux1~0_combout\);

-- Location: FF_X74_Y7_N10
\months[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(67));

-- Location: LABCELL_X74_Y5_N12
\Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = ( \Equal0~9_combout\ & ( \Equal0~8_combout\ & ( (\Equal0~10_combout\ & (\Equal7~0_combout\ & (\char~0_combout\ & !\Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~10_combout\,
	datab => \ALT_INV_Equal7~0_combout\,
	datac => \ALT_INV_char~0_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Equal0~9_combout\,
	dataf => \ALT_INV_Equal0~8_combout\,
	combout => \Equal10~0_combout\);

-- Location: LABCELL_X75_Y6_N54
\Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = ( \Equal0~9_combout\ & ( (\Equal0~8_combout\ & (!\Equal0~2_combout\ & (\Equal27~5_combout\ & \char~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~8_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal27~5_combout\,
	datad => \ALT_INV_char~1_combout\,
	dataf => \ALT_INV_Equal0~9_combout\,
	combout => \Equal5~1_combout\);

-- Location: LABCELL_X75_Y6_N57
\Equal0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = ( \Equal0~9_combout\ & ( (\Equal0~8_combout\ & (!\Equal0~2_combout\ & (\Equal0~10_combout\ & !\char~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~8_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal0~10_combout\,
	datad => \ALT_INV_char~6_combout\,
	dataf => \ALT_INV_Equal0~9_combout\,
	combout => \Equal0~14_combout\);

-- Location: LABCELL_X74_Y5_N42
\Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = ( \Equal5~1_combout\ & ( \Equal0~14_combout\ & ( (!\Equal2~0_combout\ & (!\Equal10~0_combout\ & ((!\Equal12~1_combout\) # (months(67))))) ) ) ) # ( !\Equal5~1_combout\ & ( \Equal0~14_combout\ & ( (!\Equal2~0_combout\ & 
-- (!\Equal10~0_combout\ & ((!\Equal12~1_combout\) # (months(67))))) ) ) ) # ( \Equal5~1_combout\ & ( !\Equal0~14_combout\ & ( (!\Equal2~0_combout\ & (!\Equal10~0_combout\ & ((!\Equal12~1_combout\) # (months(67))))) ) ) ) # ( !\Equal5~1_combout\ & ( 
-- !\Equal0~14_combout\ & ( (!\Equal10~0_combout\ & ((!\Equal12~1_combout\) # (months(67)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000000101000100000000010100010000000001010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datab => ALT_INV_months(67),
	datac => \ALT_INV_Equal12~1_combout\,
	datad => \ALT_INV_Equal10~0_combout\,
	datae => \ALT_INV_Equal5~1_combout\,
	dataf => \ALT_INV_Equal0~14_combout\,
	combout => \Selector6~2_combout\);

-- Location: LABCELL_X74_Y5_N3
\Selector6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~5_combout\ = ( \Equal4~1_combout\ & ( (m0(3) & ((!lcd_bus(3)) # ((\WideNor0~0_combout\ & !\Equal27~13_combout\)))) ) ) # ( !\Equal4~1_combout\ & ( (!lcd_bus(3)) # ((\WideNor0~0_combout\ & !\Equal27~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101000100111111110100010000001111000001000000111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~0_combout\,
	datab => \ALT_INV_Equal27~13_combout\,
	datac => ALT_INV_m0(3),
	datad => ALT_INV_lcd_bus(3),
	dataf => \ALT_INV_Equal4~1_combout\,
	combout => \Selector6~5_combout\);

-- Location: FF_X75_Y6_N2
\months[68]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \months[68]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y6_N36
\Mux43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = ( month(0) & ( (!month(2) & !month(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_month(2),
	datad => ALT_INV_month(3),
	dataf => ALT_INV_month(0),
	combout => \Mux43~0_combout\);

-- Location: FF_X75_Y6_N37
\months[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(11));

-- Location: LABCELL_X75_Y6_N6
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \months[68]~DUPLICATE_q\ & ( months(11) & ( (\Equal3~0_combout\ & (\Equal15~0_combout\ & (!\char~0_combout\ $ (!\char~1_combout\)))) ) ) ) # ( !\months[68]~DUPLICATE_q\ & ( months(11) & ( (!\char~0_combout\ & (\char~1_combout\ & 
-- (\Equal3~0_combout\ & \Equal15~0_combout\))) ) ) ) # ( \months[68]~DUPLICATE_q\ & ( !months(11) & ( (\char~0_combout\ & (!\char~1_combout\ & (\Equal3~0_combout\ & \Equal15~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000100000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_char~1_combout\,
	datac => \ALT_INV_Equal3~0_combout\,
	datad => \ALT_INV_Equal15~0_combout\,
	datae => \ALT_INV_months[68]~DUPLICATE_q\,
	dataf => ALT_INV_months(11),
	combout => \Selector6~0_combout\);

-- Location: LABCELL_X74_Y5_N54
\Selector6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~6_combout\ = ( \Selector6~5_combout\ & ( \Selector6~0_combout\ ) ) # ( !\Selector6~5_combout\ & ( \Selector6~0_combout\ ) ) # ( \Selector6~5_combout\ & ( !\Selector6~0_combout\ & ( (((!\Selector6~3_combout\) # (!\Selector6~2_combout\)) # 
-- (\Selector6~1_combout\)) # (\Selector6~4_combout\) ) ) ) # ( !\Selector6~5_combout\ & ( !\Selector6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector6~4_combout\,
	datab => \ALT_INV_Selector6~1_combout\,
	datac => \ALT_INV_Selector6~3_combout\,
	datad => \ALT_INV_Selector6~2_combout\,
	datae => \ALT_INV_Selector6~5_combout\,
	dataf => \ALT_INV_Selector6~0_combout\,
	combout => \Selector6~6_combout\);

-- Location: FF_X74_Y5_N56
\lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector6~6_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(3));

-- Location: FF_X78_Y4_N14
\dut|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \dut|Selector42~2_combout\,
	asdata => lcd_bus(3),
	sclr => \dut|lcd_data[3]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(3));

-- Location: LABCELL_X81_Y6_N3
\dut|Selector44~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector44~3_combout\ = ( \dut|state.initialize~DUPLICATE_q\ & ( !\dut|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \dut|ALT_INV_state.initialize~DUPLICATE_q\,
	dataf => \dut|ALT_INV_Add0~1_sumout\,
	combout => \dut|Selector44~3_combout\);

-- Location: LABCELL_X77_Y6_N18
\dut|Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|Selector41~0_combout\ = ( \dut|busy~2_combout\ & ( \dut|Selector44~3_combout\ & ( (!\dut|Add0~113_sumout\ & (\dut|LessThan1~2_combout\ & (\dut|LessThan3~2_combout\ & \dut|LessThan3~3_combout\))) ) ) ) # ( \dut|busy~2_combout\ & ( 
-- !\dut|Selector44~3_combout\ ) ) # ( !\dut|busy~2_combout\ & ( !\dut|Selector44~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \dut|ALT_INV_Add0~113_sumout\,
	datab => \dut|ALT_INV_LessThan1~2_combout\,
	datac => \dut|ALT_INV_LessThan3~2_combout\,
	datad => \dut|ALT_INV_LessThan3~3_combout\,
	datae => \dut|ALT_INV_busy~2_combout\,
	dataf => \dut|ALT_INV_Selector44~3_combout\,
	combout => \dut|Selector41~0_combout\);

-- Location: LABCELL_X77_Y6_N36
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

-- Location: LABCELL_X74_Y6_N36
\Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ( \char~6_combout\ & ( \Equal5~0_combout\ & ( (!\char~0_combout\ & (\char~2_combout\ & (!\char~7_combout\ & \months[68]~DUPLICATE_q\))) ) ) ) # ( !\char~6_combout\ & ( \Equal5~0_combout\ & ( (!\char~0_combout\ & (\char~2_combout\ & 
-- (\char~7_combout\ & \months[68]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_char~2_combout\,
	datac => \ALT_INV_char~7_combout\,
	datad => \ALT_INV_months[68]~DUPLICATE_q\,
	datae => \ALT_INV_char~6_combout\,
	dataf => \ALT_INV_Equal5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LABCELL_X73_Y7_N45
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \month[0]~DUPLICATE_q\ & ( \month[2]~DUPLICATE_q\ & ( (!\month[3]~DUPLICATE_q\ & !\month[1]~DUPLICATE_q\) ) ) ) # ( !\month[0]~DUPLICATE_q\ & ( \month[2]~DUPLICATE_q\ & ( (!\month[3]~DUPLICATE_q\ & !\month[1]~DUPLICATE_q\) ) ) ) # ( 
-- \month[0]~DUPLICATE_q\ & ( !\month[2]~DUPLICATE_q\ & ( (\month[3]~DUPLICATE_q\ & \month[1]~DUPLICATE_q\) ) ) ) # ( !\month[0]~DUPLICATE_q\ & ( !\month[2]~DUPLICATE_q\ & ( (\month[1]~DUPLICATE_q\) # (\month[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000000000000111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_month[3]~DUPLICATE_q\,
	datad => \ALT_INV_month[1]~DUPLICATE_q\,
	datae => \ALT_INV_month[0]~DUPLICATE_q\,
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux10~0_combout\);

-- Location: FF_X73_Y7_N46
\months[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(52));

-- Location: LABCELL_X74_Y7_N27
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \month[2]~DUPLICATE_q\ & ( (!\month[3]~DUPLICATE_q\ & ((month(0)) # (\month[1]~DUPLICATE_q\))) ) ) # ( !\month[2]~DUPLICATE_q\ & ( (\month[3]~DUPLICATE_q\ & (!\month[1]~DUPLICATE_q\ & month(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_month[3]~DUPLICATE_q\,
	datab => \ALT_INV_month[1]~DUPLICATE_q\,
	datac => ALT_INV_month(0),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux5~0_combout\);

-- Location: FF_X74_Y7_N28
\months[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(60));

-- Location: LABCELL_X74_Y6_N30
\Selector5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = ( months(60) & ( \Equal0~4_combout\ & ( (\char~1_combout\ & (\Equal13~0_combout\ & ((!\char~2_combout\) # (months(52))))) ) ) ) # ( !months(60) & ( \Equal0~4_combout\ & ( (\char~1_combout\ & (\char~2_combout\ & (months(52) & 
-- \Equal13~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_char~2_combout\,
	datac => ALT_INV_months(52),
	datad => \ALT_INV_Equal13~0_combout\,
	datae => ALT_INV_months(60),
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Selector5~3_combout\);

-- Location: LABCELL_X75_Y4_N6
\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \month[1]~DUPLICATE_q\ & ( month(0) ) ) # ( !\month[1]~DUPLICATE_q\ & ( month(0) & ( (!month(3)) # (\month[2]~DUPLICATE_q\) ) ) ) # ( \month[1]~DUPLICATE_q\ & ( !month(0) ) ) # ( !\month[1]~DUPLICATE_q\ & ( !month(0) & ( 
-- (\month[2]~DUPLICATE_q\) # (month(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111111111111111111111110000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_month(3),
	datad => \ALT_INV_month[2]~DUPLICATE_q\,
	datae => \ALT_INV_month[1]~DUPLICATE_q\,
	dataf => ALT_INV_month(0),
	combout => \Mux31~0_combout\);

-- Location: FF_X75_Y4_N8
\months[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(28));

-- Location: LABCELL_X75_Y7_N51
\Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = ( month(0) & ( month(2) & ( (month(3) & !month(1)) ) ) ) # ( month(0) & ( !month(2) & ( (!month(3) & month(1)) ) ) ) # ( !month(0) & ( !month(2) & ( (month(3) & month(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_month(3),
	datad => ALT_INV_month(1),
	datae => ALT_INV_month(0),
	dataf => ALT_INV_month(2),
	combout => \Mux42~0_combout\);

-- Location: FF_X75_Y7_N52
\months[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(12));

-- Location: LABCELL_X74_Y4_N30
\Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = ( \char~1_combout\ & ( months(12) & ( (\Equal15~0_combout\ & (!\char~0_combout\ & \Equal3~0_combout\)) ) ) ) # ( !\char~1_combout\ & ( months(12) & ( (!months(28) & (\Equal15~0_combout\ & (\char~0_combout\ & \Equal3~0_combout\))) ) 
-- ) ) # ( !\char~1_combout\ & ( !months(12) & ( (!months(28) & (\Equal15~0_combout\ & (\char~0_combout\ & \Equal3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_months(28),
	datab => \ALT_INV_Equal15~0_combout\,
	datac => \ALT_INV_char~0_combout\,
	datad => \ALT_INV_Equal3~0_combout\,
	datae => \ALT_INV_char~1_combout\,
	dataf => ALT_INV_months(12),
	combout => \Selector5~2_combout\);

-- Location: LABCELL_X74_Y6_N12
\Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = ( \Equal0~9_combout\ & ( \Equal0~8_combout\ & ( (\Equal7~0_combout\ & (!\char~2_combout\ & (\Equal1~1_combout\ & !\Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal7~0_combout\,
	datab => \ALT_INV_char~2_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Equal0~9_combout\,
	dataf => \ALT_INV_Equal0~8_combout\,
	combout => \Equal9~0_combout\);

-- Location: LABCELL_X74_Y7_N57
\Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = ( \month[2]~DUPLICATE_q\ ) # ( !\month[2]~DUPLICATE_q\ & ( (!\month[1]~DUPLICATE_q\ & ((month(0)) # (\month[3]~DUPLICATE_q\))) # (\month[1]~DUPLICATE_q\ & ((!month(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110001111100011111000111110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_month[3]~DUPLICATE_q\,
	datab => \ALT_INV_month[1]~DUPLICATE_q\,
	datac => ALT_INV_month(0),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux37~0_combout\);

-- Location: FF_X74_Y7_N58
\months[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(20));

-- Location: LABCELL_X75_Y7_N42
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \month[0]~DUPLICATE_q\ & ( (!\month[2]~DUPLICATE_q\ & (!month(3) $ (!month(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(3),
	datac => \ALT_INV_month[2]~DUPLICATE_q\,
	datad => ALT_INV_month(1),
	dataf => \ALT_INV_month[0]~DUPLICATE_q\,
	combout => \Mux24~0_combout\);

-- Location: FF_X75_Y7_N43
\months[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(36));

-- Location: LABCELL_X74_Y6_N42
\Selector5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = ( !months(36) & ( \Equal16~0_combout\ & ( (!apm(10) & (((!\Equal18~0_combout\) # (months(20))))) # (apm(10) & (!\Equal9~0_combout\ & ((!\Equal18~0_combout\) # (months(20))))) ) ) ) # ( months(36) & ( !\Equal16~0_combout\ & ( 
-- (!apm(10) & (((!\Equal18~0_combout\) # (months(20))))) # (apm(10) & (!\Equal9~0_combout\ & ((!\Equal18~0_combout\) # (months(20))))) ) ) ) # ( !months(36) & ( !\Equal16~0_combout\ & ( (!apm(10) & (((!\Equal18~0_combout\) # (months(20))))) # (apm(10) & 
-- (!\Equal9~0_combout\ & ((!\Equal18~0_combout\) # (months(20))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011101110111000001110111011100000111011100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_apm(10),
	datab => \ALT_INV_Equal9~0_combout\,
	datac => \ALT_INV_Equal18~0_combout\,
	datad => ALT_INV_months(20),
	datae => ALT_INV_months(36),
	dataf => \ALT_INV_Equal16~0_combout\,
	combout => \Selector5~4_combout\);

-- Location: LABCELL_X74_Y7_N54
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \month[2]~DUPLICATE_q\ & ( (!\month[1]~DUPLICATE_q\) # ((month(0)) # (\month[3]~DUPLICATE_q\)) ) ) # ( !\month[2]~DUPLICATE_q\ & ( !\month[1]~DUPLICATE_q\ $ (((!month(0)) # (\month[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111000011001100111100001111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_month[1]~DUPLICATE_q\,
	datac => \ALT_INV_month[3]~DUPLICATE_q\,
	datad => ALT_INV_month(0),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux17~0_combout\);

-- Location: FF_X74_Y7_N56
\months[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(44));

-- Location: LABCELL_X73_Y5_N18
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( !months(44) & ( \Equal0~4_combout\ & ( (!\char~1_combout\ & (!\char~0_combout\ & (\Equal15~0_combout\ & !\char~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_char~0_combout\,
	datac => \ALT_INV_Equal15~0_combout\,
	datad => \ALT_INV_char~2_combout\,
	datae => ALT_INV_months(44),
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Selector5~0_combout\);

-- Location: LABCELL_X75_Y5_N54
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \char~2_combout\ & ( \Equal0~4_combout\ & ( (!\char~7_combout\ & (((!\char~6_combout\)))) # (\char~7_combout\ & ((!\char~1_combout\ & (\char~6_combout\ & !\char~0_combout\)) # (\char~1_combout\ & (!\char~6_combout\ & 
-- \char~0_combout\)))) ) ) ) # ( !\char~2_combout\ & ( \Equal0~4_combout\ & ( (!\char~1_combout\ & (!\char~6_combout\ $ (((!\char~0_combout\) # (\char~7_combout\))))) # (\char~1_combout\ & (!\char~7_combout\ & (!\char~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001010110000101100001011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~1_combout\,
	datab => \ALT_INV_char~7_combout\,
	datac => \ALT_INV_char~6_combout\,
	datad => \ALT_INV_char~0_combout\,
	datae => \ALT_INV_char~2_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Selector3~0_combout\);

-- Location: LABCELL_X74_Y6_N51
\Selector5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~5_combout\ = ( !\Selector3~0_combout\ & ( (!lcd_bus(4)) # ((!\Equal27~13_combout\ & \WideNor0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111100110011001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_lcd_bus(4),
	datac => \ALT_INV_Equal27~13_combout\,
	datad => \ALT_INV_WideNor0~0_combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \Selector5~5_combout\);

-- Location: LABCELL_X74_Y6_N6
\Selector5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~6_combout\ = ( \Selector5~0_combout\ & ( \Selector5~5_combout\ ) ) # ( !\Selector5~0_combout\ & ( \Selector5~5_combout\ & ( (((!\Selector5~4_combout\) # (\Selector5~2_combout\)) # (\Selector5~3_combout\)) # (\Selector5~1_combout\) ) ) ) # ( 
-- \Selector5~0_combout\ & ( !\Selector5~5_combout\ ) ) # ( !\Selector5~0_combout\ & ( !\Selector5~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector5~1_combout\,
	datab => \ALT_INV_Selector5~3_combout\,
	datac => \ALT_INV_Selector5~2_combout\,
	datad => \ALT_INV_Selector5~4_combout\,
	datae => \ALT_INV_Selector5~0_combout\,
	dataf => \ALT_INV_Selector5~5_combout\,
	combout => \Selector5~6_combout\);

-- Location: FF_X74_Y6_N8
\lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector5~6_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(4));

-- Location: FF_X77_Y6_N37
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
	sclr => \dut|lcd_data[3]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(4));

-- Location: LABCELL_X74_Y5_N0
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( !\Selector0~0_combout\ & ( (!\Equal12~1_combout\ & (((\WideNor0~0_combout\ & !\Equal27~13_combout\)) # (lcd_bus(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011110000010000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideNor0~0_combout\,
	datab => \ALT_INV_Equal27~13_combout\,
	datac => \ALT_INV_Equal12~1_combout\,
	datad => ALT_INV_lcd_bus(5),
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X74_Y5_N2
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

-- Location: FF_X77_Y6_N19
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
	sclr => \dut|lcd_data[3]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(5));

-- Location: LABCELL_X79_Y4_N30
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

-- Location: LABCELL_X77_Y5_N27
\dut|lcd_data[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|lcd_data[6]~feeder_combout\ = \~GND~combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_~GND~combout\,
	combout => \dut|lcd_data[6]~feeder_combout\);

-- Location: LABCELL_X75_Y6_N42
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( month(0) & ( (month(2) & \month[1]~DUPLICATE_q\) ) ) # ( !month(0) & ( month(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_month(2),
	datad => \ALT_INV_month[1]~DUPLICATE_q\,
	dataf => ALT_INV_month(0),
	combout => \Mux23~0_combout\);

-- Location: FF_X75_Y6_N44
\months[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(39));

-- Location: LABCELL_X75_Y5_N36
\Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = ( \Equal16~0_combout\ & ( \Equal4~0_combout\ & ( ((\char~7_combout\ & (!\char~0_combout\ & !months(68)))) # (months(39)) ) ) ) # ( !\Equal16~0_combout\ & ( \Equal4~0_combout\ & ( (\char~7_combout\ & (!\char~0_combout\ & 
-- !months(68))) ) ) ) # ( \Equal16~0_combout\ & ( !\Equal4~0_combout\ & ( months(39) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101000100000000000100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~7_combout\,
	datab => \ALT_INV_char~0_combout\,
	datac => ALT_INV_months(39),
	datad => ALT_INV_months(68),
	datae => \ALT_INV_Equal16~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: LABCELL_X75_Y5_N42
\Selector3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = ( \WideNor0~0_combout\ & ( (!\Selector3~0_combout\ & ((!\Equal27~13_combout\) # (lcd_bus(6)))) ) ) # ( !\WideNor0~0_combout\ & ( (lcd_bus(6) & !\Selector3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011011101000000001101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lcd_bus(6),
	datab => \ALT_INV_Equal27~13_combout\,
	datad => \ALT_INV_Selector3~0_combout\,
	dataf => \ALT_INV_WideNor0~0_combout\,
	combout => \Selector3~5_combout\);

-- Location: LABCELL_X75_Y5_N9
\Equal21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = ( \char~7_combout\ & ( \char~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_char~0_combout\,
	dataf => \ALT_INV_char~7_combout\,
	combout => \Equal21~0_combout\);

-- Location: LABCELL_X75_Y5_N3
\Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = ( \Equal0~10_combout\ & ( \Equal7~0_combout\ & ( (\Equal0~9_combout\ & (!\Equal0~2_combout\ & (!\char~0_combout\ & \Equal0~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~9_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_char~0_combout\,
	datad => \ALT_INV_Equal0~8_combout\,
	datae => \ALT_INV_Equal0~10_combout\,
	dataf => \ALT_INV_Equal7~0_combout\,
	combout => \Equal8~0_combout\);

-- Location: LABCELL_X75_Y5_N45
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \month[2]~DUPLICATE_q\ & ( (!\month[1]~DUPLICATE_q\ & !\month[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_month[1]~DUPLICATE_q\,
	datad => \ALT_INV_month[0]~DUPLICATE_q\,
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux16~0_combout\);

-- Location: FF_X75_Y5_N47
\months[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(46));

-- Location: LABCELL_X75_Y5_N18
\Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ( \Equal7~1_combout\ & ( \Equal5~1_combout\ & ( (!\Equal21~0_combout\ & (!\Equal8~0_combout\ & ((!\Equal15~0_combout\) # (!months(46))))) ) ) ) # ( !\Equal7~1_combout\ & ( \Equal5~1_combout\ & ( (!\Equal21~0_combout\ & 
-- !\Equal8~0_combout\) ) ) ) # ( \Equal7~1_combout\ & ( !\Equal5~1_combout\ & ( (!\Equal8~0_combout\ & ((!\Equal15~0_combout\) # (!months(46)))) ) ) ) # ( !\Equal7~1_combout\ & ( !\Equal5~1_combout\ & ( !\Equal8~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001010000011000000110000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal15~0_combout\,
	datab => \ALT_INV_Equal21~0_combout\,
	datac => \ALT_INV_Equal8~0_combout\,
	datad => ALT_INV_months(46),
	datae => \ALT_INV_Equal7~1_combout\,
	dataf => \ALT_INV_Equal5~1_combout\,
	combout => \Selector3~1_combout\);

-- Location: LABCELL_X75_Y6_N12
\Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = ( month(3) & ( !month(2) $ (((!month(0)) # (month(1)))) ) ) # ( !month(3) & ( (!month(1) $ (!month(0))) # (month(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111110101010111111111010101010101101001010101010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_month(2),
	datac => ALT_INV_month(1),
	datad => ALT_INV_month(0),
	dataf => ALT_INV_month(3),
	combout => \Mux36~0_combout\);

-- Location: FF_X75_Y6_N14
\months[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(22));

-- Location: LABCELL_X75_Y6_N24
\Selector3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = ( \char~7_combout\ & ( \Equal0~4_combout\ & ( (\Equal0~10_combout\ & (\char~0_combout\ & ((months(22)) # (\char~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~6_combout\,
	datab => \ALT_INV_Equal0~10_combout\,
	datac => \ALT_INV_char~0_combout\,
	datad => ALT_INV_months(22),
	datae => \ALT_INV_char~7_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Selector3~3_combout\);

-- Location: LABCELL_X74_Y4_N0
\Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = ( \month[0]~DUPLICATE_q\ & ( !month(3) $ (\month[2]~DUPLICATE_q\) ) ) # ( !\month[0]~DUPLICATE_q\ & ( (month(3) & !\month[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_month(3),
	datad => \ALT_INV_month[2]~DUPLICATE_q\,
	dataf => \ALT_INV_month[0]~DUPLICATE_q\,
	combout => \Mux41~0_combout\);

-- Location: FF_X74_Y4_N2
\months[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(14));

-- Location: LABCELL_X75_Y7_N24
\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( month(2) & ( !month(3) ) ) # ( !month(2) & ( (!month(3) & (!month(1) $ (!month(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_month(3),
	datac => ALT_INV_month(1),
	datad => ALT_INV_month(0),
	dataf => ALT_INV_month(2),
	combout => \Mux30~0_combout\);

-- Location: FF_X75_Y7_N26
\months[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(30));

-- Location: LABCELL_X74_Y4_N54
\Selector3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = ( months(14) & ( months(30) & ( (\char~0_combout\ & (\Equal3~0_combout\ & (!\char~1_combout\ & \Equal15~0_combout\))) ) ) ) # ( !months(14) & ( months(30) & ( (\Equal3~0_combout\ & (\Equal15~0_combout\ & (!\char~0_combout\ $ 
-- (!\char~1_combout\)))) ) ) ) # ( !months(14) & ( !months(30) & ( (!\char~0_combout\ & (\Equal3~0_combout\ & (\char~1_combout\ & \Equal15~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000100100000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_Equal3~0_combout\,
	datac => \ALT_INV_char~1_combout\,
	datad => \ALT_INV_Equal15~0_combout\,
	datae => ALT_INV_months(14),
	dataf => ALT_INV_months(30),
	combout => \Selector3~4_combout\);

-- Location: LABCELL_X75_Y5_N48
\Selector3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~6_combout\ = ( !\Selector3~4_combout\ & ( (!\Selector3~2_combout\ & (\Selector3~5_combout\ & (\Selector3~1_combout\ & !\Selector3~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector3~2_combout\,
	datab => \ALT_INV_Selector3~5_combout\,
	datac => \ALT_INV_Selector3~1_combout\,
	datad => \ALT_INV_Selector3~3_combout\,
	dataf => \ALT_INV_Selector3~4_combout\,
	combout => \Selector3~6_combout\);

-- Location: FF_X75_Y5_N50
\lcd_bus[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector3~6_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(6));

-- Location: FF_X77_Y5_N29
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
	sclr => \dut|lcd_data[3]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(6));

-- Location: LABCELL_X77_Y4_N45
\dut|lcd_data[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dut|lcd_data[7]~feeder_combout\ = ( \~GND~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_~GND~combout\,
	combout => \dut|lcd_data[7]~feeder_combout\);

-- Location: LABCELL_X75_Y5_N51
\lcd_bus~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_bus~0_combout\ = ( \WideNor0~0_combout\ & ( !\Equal27~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal27~13_combout\,
	dataf => \ALT_INV_WideNor0~0_combout\,
	combout => \lcd_bus~0_combout\);

-- Location: LABCELL_X75_Y7_N0
\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( month(0) & ( \month[2]~DUPLICATE_q\ & ( !month(3) ) ) ) # ( !month(0) & ( \month[2]~DUPLICATE_q\ & ( !month(3) ) ) ) # ( !month(0) & ( !\month[2]~DUPLICATE_q\ & ( (month(1) & !month(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_month(1),
	datad => ALT_INV_month(3),
	datae => ALT_INV_month(0),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux29~0_combout\);

-- Location: FF_X75_Y7_N1
\months[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(31));

-- Location: LABCELL_X75_Y5_N12
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \Equal0~8_combout\ & ( \Equal0~12_combout\ & ( (months(31) & (!\char~2_combout\ & (\Equal1~1_combout\ & \Equal15~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_months(31),
	datab => \ALT_INV_char~2_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Equal15~0_combout\,
	datae => \ALT_INV_Equal0~8_combout\,
	dataf => \ALT_INV_Equal0~12_combout\,
	combout => \Selector2~0_combout\);

-- Location: LABCELL_X75_Y4_N30
\Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = ( \Equal0~9_combout\ & ( !\Equal0~2_combout\ & ( (!\char~0_combout\ & (\char~1_combout\ & (!\char~2_combout\ & \Equal0~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~0_combout\,
	datab => \ALT_INV_char~1_combout\,
	datac => \ALT_INV_char~2_combout\,
	datad => \ALT_INV_Equal0~8_combout\,
	datae => \ALT_INV_Equal0~9_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal11~0_combout\);

-- Location: LABCELL_X75_Y7_N15
\Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = ( \month[3]~DUPLICATE_q\ & ( \month[2]~DUPLICATE_q\ ) ) # ( \month[3]~DUPLICATE_q\ & ( !\month[2]~DUPLICATE_q\ & ( !month(0) ) ) ) # ( !\month[3]~DUPLICATE_q\ & ( !\month[2]~DUPLICATE_q\ & ( month(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_month(0),
	datae => \ALT_INV_month[3]~DUPLICATE_q\,
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux40~0_combout\);

-- Location: FF_X75_Y7_N17
\months[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(15));

-- Location: LABCELL_X75_Y6_N15
\Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = ( \month[2]~DUPLICATE_q\ & ( !month(3) ) ) # ( !\month[2]~DUPLICATE_q\ & ( (!\month[1]~DUPLICATE_q\ & (month(3) & month(0))) # (\month[1]~DUPLICATE_q\ & (!month(3) & !month(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100001100000000110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_month[1]~DUPLICATE_q\,
	datac => ALT_INV_month(3),
	datad => ALT_INV_month(0),
	dataf => \ALT_INV_month[2]~DUPLICATE_q\,
	combout => \Mux35~0_combout\);

-- Location: FF_X75_Y6_N16
\months[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \constrastup~inputCLKENA0_outclk\,
	d => \Mux35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => months(23));

-- Location: LABCELL_X75_Y4_N36
\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( months(23) & ( \Equal18~0_combout\ ) ) # ( !months(23) & ( \Equal18~0_combout\ & ( (\Equal11~0_combout\ & ((!\char~6_combout\ & (\char~7_combout\ & !months(15))) # (\char~6_combout\ & (!\char~7_combout\)))) ) ) ) # ( months(23) & 
-- ( !\Equal18~0_combout\ & ( (\Equal11~0_combout\ & ((!\char~6_combout\ & (\char~7_combout\ & !months(15))) # (\char~6_combout\ & (!\char~7_combout\)))) ) ) ) # ( !months(23) & ( !\Equal18~0_combout\ & ( (\Equal11~0_combout\ & ((!\char~6_combout\ & 
-- (\char~7_combout\ & !months(15))) # (\char~6_combout\ & (!\char~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010000000100100001000000010010000100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_char~6_combout\,
	datab => \ALT_INV_Equal11~0_combout\,
	datac => \ALT_INV_char~7_combout\,
	datad => ALT_INV_months(15),
	datae => ALT_INV_months(23),
	dataf => \ALT_INV_Equal18~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LABCELL_X75_Y5_N30
\Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = ( lcd_bus(7) & ( \Selector2~1_combout\ ) ) # ( !lcd_bus(7) & ( \Selector2~1_combout\ ) ) # ( lcd_bus(7) & ( !\Selector2~1_combout\ & ( ((!\lcd_bus~0_combout\) # ((!\Selector3~1_combout\) # (\Selector2~0_combout\))) # 
-- (\Selector3~2_combout\) ) ) ) # ( !lcd_bus(7) & ( !\Selector2~1_combout\ & ( ((!\Selector3~1_combout\) # (\Selector2~0_combout\)) # (\Selector3~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111111011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector3~2_combout\,
	datab => \ALT_INV_lcd_bus~0_combout\,
	datac => \ALT_INV_Selector3~1_combout\,
	datad => \ALT_INV_Selector2~0_combout\,
	datae => ALT_INV_lcd_bus(7),
	dataf => \ALT_INV_Selector2~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: FF_X75_Y5_N31
\lcd_bus[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \Selector2~2_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(7));

-- Location: FF_X77_Y4_N46
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
	sclr => \dut|lcd_data[3]~0_combout\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(7));

-- Location: LABCELL_X37_Y7_N0
\gcontraxt|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~69_sumout\ = SUM(( \gcontraxt|freq_count\(0) ) + ( VCC ) + ( !VCC ))
-- \gcontraxt|Add0~70\ = CARRY(( \gcontraxt|freq_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_freq_count\(0),
	cin => GND,
	sumout => \gcontraxt|Add0~69_sumout\,
	cout => \gcontraxt|Add0~70\);

-- Location: LABCELL_X37_Y7_N45
\gcontraxt|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~9_sumout\ = SUM(( \gcontraxt|freq_count\(15) ) + ( GND ) + ( \gcontraxt|Add0~58\ ))
-- \gcontraxt|Add0~10\ = CARRY(( \gcontraxt|freq_count\(15) ) + ( GND ) + ( \gcontraxt|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(15),
	cin => \gcontraxt|Add0~58\,
	sumout => \gcontraxt|Add0~9_sumout\,
	cout => \gcontraxt|Add0~10\);

-- Location: LABCELL_X37_Y7_N48
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

-- Location: FF_X37_Y7_N50
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

-- Location: LABCELL_X37_Y7_N51
\gcontraxt|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~1_sumout\ = SUM(( \gcontraxt|freq_count[17]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count[17]~DUPLICATE_q\,
	cin => \gcontraxt|Add0~6\,
	sumout => \gcontraxt|Add0~1_sumout\);

-- Location: FF_X37_Y7_N52
\gcontraxt|freq_count[17]~DUPLICATE\ : dffeas
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
	q => \gcontraxt|freq_count[17]~DUPLICATE_q\);

-- Location: FF_X37_Y7_N34
\gcontraxt|freq_count[11]~DUPLICATE\ : dffeas
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
	q => \gcontraxt|freq_count[11]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y7_N57
\gcontraxt|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan0~3_combout\ = ( !\gcontraxt|freq_count\(13) & ( (!\gcontraxt|freq_count\(14) & !\gcontraxt|freq_count\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(14),
	datad => \gcontraxt|ALT_INV_freq_count\(12),
	dataf => \gcontraxt|ALT_INV_freq_count\(13),
	combout => \gcontraxt|LessThan0~3_combout\);

-- Location: LABCELL_X37_Y7_N54
\gcontraxt|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan0~1_combout\ = ( !\gcontraxt|freq_count\(5) & ( (!\gcontraxt|freq_count\(4) & (!\gcontraxt|freq_count\(6) & !\gcontraxt|freq_count\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_freq_count\(4),
	datac => \gcontraxt|ALT_INV_freq_count\(6),
	datad => \gcontraxt|ALT_INV_freq_count\(7),
	dataf => \gcontraxt|ALT_INV_freq_count\(5),
	combout => \gcontraxt|LessThan0~1_combout\);

-- Location: LABCELL_X36_Y7_N27
\gcontraxt|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan0~2_combout\ = ( \gcontraxt|freq_count\(9) & ( \gcontraxt|freq_count\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_freq_count\(8),
	dataf => \gcontraxt|ALT_INV_freq_count\(9),
	combout => \gcontraxt|LessThan0~2_combout\);

-- Location: FF_X37_Y7_N8
\gcontraxt|freq_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~29_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(2));

-- Location: FF_X36_Y7_N53
\gcontraxt|freq_count[1]\ : dffeas
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
	q => \gcontraxt|freq_count\(1));

-- Location: LABCELL_X36_Y7_N42
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

-- Location: LABCELL_X36_Y7_N12
\gcontraxt|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan0~4_combout\ = ( \gcontraxt|LessThan0~2_combout\ & ( \gcontraxt|LessThan0~0_combout\ & ( (!\gcontraxt|freq_count[11]~DUPLICATE_q\ & \gcontraxt|LessThan0~3_combout\) ) ) ) # ( !\gcontraxt|LessThan0~2_combout\ & ( 
-- \gcontraxt|LessThan0~0_combout\ & ( (\gcontraxt|LessThan0~3_combout\ & ((!\gcontraxt|freq_count[11]~DUPLICATE_q\) # (!\gcontraxt|freq_count\(10)))) ) ) ) # ( \gcontraxt|LessThan0~2_combout\ & ( !\gcontraxt|LessThan0~0_combout\ & ( 
-- (\gcontraxt|LessThan0~3_combout\ & ((!\gcontraxt|freq_count[11]~DUPLICATE_q\) # ((!\gcontraxt|freq_count\(10) & \gcontraxt|LessThan0~1_combout\)))) ) ) ) # ( !\gcontraxt|LessThan0~2_combout\ & ( !\gcontraxt|LessThan0~0_combout\ & ( 
-- (\gcontraxt|LessThan0~3_combout\ & ((!\gcontraxt|freq_count[11]~DUPLICATE_q\) # (!\gcontraxt|freq_count\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001000100011001000110010001100100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_freq_count[11]~DUPLICATE_q\,
	datab => \gcontraxt|ALT_INV_LessThan0~3_combout\,
	datac => \gcontraxt|ALT_INV_freq_count\(10),
	datad => \gcontraxt|ALT_INV_LessThan0~1_combout\,
	datae => \gcontraxt|ALT_INV_LessThan0~2_combout\,
	dataf => \gcontraxt|ALT_INV_LessThan0~0_combout\,
	combout => \gcontraxt|LessThan0~4_combout\);

-- Location: LABCELL_X36_Y7_N30
\gcontraxt|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan0~5_combout\ = ( \gcontraxt|LessThan0~4_combout\ & ( (\gcontraxt|freq_count[17]~DUPLICATE_q\ & \gcontraxt|freq_count\(16)) ) ) # ( !\gcontraxt|LessThan0~4_combout\ & ( (\gcontraxt|freq_count[17]~DUPLICATE_q\ & 
-- ((\gcontraxt|freq_count\(16)) # (\gcontraxt|freq_count\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_freq_count\(15),
	datac => \gcontraxt|ALT_INV_freq_count[17]~DUPLICATE_q\,
	datad => \gcontraxt|ALT_INV_freq_count\(16),
	dataf => \gcontraxt|ALT_INV_LessThan0~4_combout\,
	combout => \gcontraxt|LessThan0~5_combout\);

-- Location: FF_X36_Y7_N16
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

-- Location: LABCELL_X37_Y7_N3
\gcontraxt|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~25_sumout\ = SUM(( \gcontraxt|freq_count[1]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~70\ ))
-- \gcontraxt|Add0~26\ = CARRY(( \gcontraxt|freq_count[1]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_freq_count[1]~DUPLICATE_q\,
	cin => \gcontraxt|Add0~70\,
	sumout => \gcontraxt|Add0~25_sumout\,
	cout => \gcontraxt|Add0~26\);

-- Location: FF_X36_Y7_N52
\gcontraxt|freq_count[1]~DUPLICATE\ : dffeas
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
	q => \gcontraxt|freq_count[1]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y7_N6
\gcontraxt|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~29_sumout\ = SUM(( \gcontraxt|freq_count[2]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~26\ ))
-- \gcontraxt|Add0~30\ = CARRY(( \gcontraxt|freq_count[2]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_freq_count[2]~DUPLICATE_q\,
	cin => \gcontraxt|Add0~26\,
	sumout => \gcontraxt|Add0~29_sumout\,
	cout => \gcontraxt|Add0~30\);

-- Location: FF_X37_Y7_N7
\gcontraxt|freq_count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~29_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count[2]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y7_N9
\gcontraxt|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~21_sumout\ = SUM(( \gcontraxt|freq_count\(3) ) + ( GND ) + ( \gcontraxt|Add0~30\ ))
-- \gcontraxt|Add0~22\ = CARRY(( \gcontraxt|freq_count\(3) ) + ( GND ) + ( \gcontraxt|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(3),
	cin => \gcontraxt|Add0~30\,
	sumout => \gcontraxt|Add0~21_sumout\,
	cout => \gcontraxt|Add0~22\);

-- Location: FF_X37_Y7_N11
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

-- Location: LABCELL_X37_Y7_N12
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

-- Location: FF_X37_Y7_N14
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

-- Location: LABCELL_X37_Y7_N15
\gcontraxt|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~41_sumout\ = SUM(( \gcontraxt|freq_count\(5) ) + ( GND ) + ( \gcontraxt|Add0~46\ ))
-- \gcontraxt|Add0~42\ = CARRY(( \gcontraxt|freq_count\(5) ) + ( GND ) + ( \gcontraxt|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(5),
	cin => \gcontraxt|Add0~46\,
	sumout => \gcontraxt|Add0~41_sumout\,
	cout => \gcontraxt|Add0~42\);

-- Location: FF_X37_Y7_N17
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

-- Location: LABCELL_X37_Y7_N18
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

-- Location: FF_X37_Y7_N20
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

-- Location: LABCELL_X37_Y7_N21
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

-- Location: FF_X37_Y7_N23
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

-- Location: LABCELL_X37_Y7_N24
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

-- Location: FF_X36_Y7_N59
\gcontraxt|freq_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \gcontraxt|Add0~53_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(8));

-- Location: LABCELL_X37_Y7_N27
\gcontraxt|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~49_sumout\ = SUM(( \gcontraxt|freq_count\(9) ) + ( GND ) + ( \gcontraxt|Add0~54\ ))
-- \gcontraxt|Add0~50\ = CARRY(( \gcontraxt|freq_count\(9) ) + ( GND ) + ( \gcontraxt|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_freq_count\(9),
	cin => \gcontraxt|Add0~54\,
	sumout => \gcontraxt|Add0~49_sumout\,
	cout => \gcontraxt|Add0~50\);

-- Location: FF_X37_Y7_N29
\gcontraxt|freq_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~49_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(9));

-- Location: LABCELL_X37_Y7_N30
\gcontraxt|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~17_sumout\ = SUM(( \gcontraxt|freq_count\(10) ) + ( GND ) + ( \gcontraxt|Add0~50\ ))
-- \gcontraxt|Add0~18\ = CARRY(( \gcontraxt|freq_count\(10) ) + ( GND ) + ( \gcontraxt|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(10),
	cin => \gcontraxt|Add0~50\,
	sumout => \gcontraxt|Add0~17_sumout\,
	cout => \gcontraxt|Add0~18\);

-- Location: FF_X37_Y7_N31
\gcontraxt|freq_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|Add0~17_sumout\,
	sclr => \gcontraxt|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|freq_count\(10));

-- Location: LABCELL_X37_Y7_N33
\gcontraxt|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~13_sumout\ = SUM(( \gcontraxt|freq_count\(11) ) + ( GND ) + ( \gcontraxt|Add0~18\ ))
-- \gcontraxt|Add0~14\ = CARRY(( \gcontraxt|freq_count\(11) ) + ( GND ) + ( \gcontraxt|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_freq_count\(11),
	cin => \gcontraxt|Add0~18\,
	sumout => \gcontraxt|Add0~13_sumout\,
	cout => \gcontraxt|Add0~14\);

-- Location: FF_X37_Y7_N35
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

-- Location: LABCELL_X37_Y7_N36
\gcontraxt|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~65_sumout\ = SUM(( \gcontraxt|freq_count\(12) ) + ( GND ) + ( \gcontraxt|Add0~14\ ))
-- \gcontraxt|Add0~66\ = CARRY(( \gcontraxt|freq_count\(12) ) + ( GND ) + ( \gcontraxt|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(12),
	cin => \gcontraxt|Add0~14\,
	sumout => \gcontraxt|Add0~65_sumout\,
	cout => \gcontraxt|Add0~66\);

-- Location: FF_X37_Y7_N38
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

-- Location: LABCELL_X37_Y7_N39
\gcontraxt|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add0~61_sumout\ = SUM(( \gcontraxt|freq_count\(13) ) + ( GND ) + ( \gcontraxt|Add0~66\ ))
-- \gcontraxt|Add0~62\ = CARRY(( \gcontraxt|freq_count\(13) ) + ( GND ) + ( \gcontraxt|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_freq_count\(13),
	cin => \gcontraxt|Add0~66\,
	sumout => \gcontraxt|Add0~61_sumout\,
	cout => \gcontraxt|Add0~62\);

-- Location: FF_X37_Y7_N41
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

-- Location: LABCELL_X37_Y7_N42
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

-- Location: FF_X37_Y7_N44
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

-- Location: FF_X37_Y7_N46
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

-- Location: FF_X37_Y7_N53
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

-- Location: LABCELL_X36_Y7_N45
\gcontraxt|pwm_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_count~1_combout\ = (!\gcontraxt|LessThan0~5_combout\ & !\gcontraxt|pwm_count\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_LessThan0~5_combout\,
	datad => \gcontraxt|ALT_INV_pwm_count\(0),
	combout => \gcontraxt|pwm_count~1_combout\);

-- Location: LABCELL_X35_Y7_N0
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

-- Location: FF_X36_Y7_N7
\gcontraxt|pwm_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count~3_combout\,
	ena => \gcontraxt|pwm_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count\(1));

-- Location: LABCELL_X36_Y7_N33
\gcontraxt|pwm_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_count~4_combout\ = ( \gcontraxt|pwm_count\(1) & ( (!\gcontraxt|LessThan0~5_combout\ & (!\gcontraxt|pwm_count\(0) $ (!\gcontraxt|pwm_count\(2)))) ) ) # ( !\gcontraxt|pwm_count\(1) & ( (!\gcontraxt|LessThan0~5_combout\ & 
-- \gcontraxt|pwm_count\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_pwm_count\(0),
	datac => \gcontraxt|ALT_INV_LessThan0~5_combout\,
	datad => \gcontraxt|ALT_INV_pwm_count\(2),
	dataf => \gcontraxt|ALT_INV_pwm_count\(1),
	combout => \gcontraxt|pwm_count~4_combout\);

-- Location: FF_X36_Y7_N35
\gcontraxt|pwm_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count~4_combout\,
	ena => \gcontraxt|pwm_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count\(2));

-- Location: FF_X36_Y7_N25
\gcontraxt|pwm_count[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count[3]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y7_N54
\gcontraxt|pwm_count[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_count[4]~5_combout\ = (!\gcontraxt|LessThan0~5_combout\ & \gcontraxt|pwm_count\(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_LessThan0~5_combout\,
	datad => \gcontraxt|ALT_INV_pwm_count\(4),
	combout => \gcontraxt|pwm_count[4]~5_combout\);

-- Location: FF_X36_Y7_N56
\gcontraxt|pwm_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count\(4));

-- Location: LABCELL_X35_Y7_N54
\gcontraxt|pwm_step_count[17]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_step_count[17]~0_combout\ = ( \gcontraxt|pwm_count[1]~DUPLICATE_q\ & ( !\gcontraxt|LessThan0~5_combout\ & ( (!\gcontraxt|pwm_count[3]~DUPLICATE_q\ & !\gcontraxt|pwm_count\(4)) ) ) ) # ( !\gcontraxt|pwm_count[1]~DUPLICATE_q\ & ( 
-- !\gcontraxt|LessThan0~5_combout\ & ( (!\gcontraxt|pwm_count\(4) & ((!\gcontraxt|pwm_count[3]~DUPLICATE_q\) # ((!\gcontraxt|pwm_count\(2) & !\gcontraxt|pwm_count\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_pwm_count\(2),
	datab => \gcontraxt|ALT_INV_pwm_count[3]~DUPLICATE_q\,
	datac => \gcontraxt|ALT_INV_pwm_count\(0),
	datad => \gcontraxt|ALT_INV_pwm_count\(4),
	datae => \gcontraxt|ALT_INV_pwm_count[1]~DUPLICATE_q\,
	dataf => \gcontraxt|ALT_INV_LessThan0~5_combout\,
	combout => \gcontraxt|pwm_step_count[17]~0_combout\);

-- Location: FF_X35_Y7_N17
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

-- Location: LABCELL_X35_Y7_N3
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

-- Location: FF_X35_Y7_N5
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

-- Location: LABCELL_X35_Y7_N6
\gcontraxt|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~61_sumout\ = SUM(( \gcontraxt|pwm_step_count\(2) ) + ( GND ) + ( \gcontraxt|Add1~66\ ))
-- \gcontraxt|Add1~62\ = CARRY(( \gcontraxt|pwm_step_count\(2) ) + ( GND ) + ( \gcontraxt|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_pwm_step_count\(2),
	cin => \gcontraxt|Add1~66\,
	sumout => \gcontraxt|Add1~61_sumout\,
	cout => \gcontraxt|Add1~62\);

-- Location: FF_X35_Y7_N7
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

-- Location: LABCELL_X35_Y7_N9
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

-- Location: FF_X35_Y7_N11
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

-- Location: LABCELL_X35_Y7_N12
\gcontraxt|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~21_sumout\ = SUM(( \gcontraxt|pwm_step_count\(4) ) + ( GND ) + ( \gcontraxt|Add1~58\ ))
-- \gcontraxt|Add1~22\ = CARRY(( \gcontraxt|pwm_step_count\(4) ) + ( GND ) + ( \gcontraxt|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_pwm_step_count\(4),
	cin => \gcontraxt|Add1~58\,
	sumout => \gcontraxt|Add1~21_sumout\,
	cout => \gcontraxt|Add1~22\);

-- Location: FF_X35_Y7_N56
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

-- Location: LABCELL_X35_Y7_N15
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

-- Location: FF_X35_Y7_N59
\gcontraxt|pwm_step_count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \gcontraxt|Add1~25_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	sload => VCC,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count[5]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y7_N18
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

-- Location: FF_X35_Y7_N20
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

-- Location: LABCELL_X35_Y7_N21
\gcontraxt|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~13_sumout\ = SUM(( \gcontraxt|pwm_step_count\(7) ) + ( GND ) + ( \gcontraxt|Add1~18\ ))
-- \gcontraxt|Add1~14\ = CARRY(( \gcontraxt|pwm_step_count\(7) ) + ( GND ) + ( \gcontraxt|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_pwm_step_count\(7),
	cin => \gcontraxt|Add1~18\,
	sumout => \gcontraxt|Add1~13_sumout\,
	cout => \gcontraxt|Add1~14\);

-- Location: FF_X35_Y7_N23
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

-- Location: LABCELL_X35_Y7_N24
\gcontraxt|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~37_sumout\ = SUM(( \gcontraxt|pwm_step_count\(8) ) + ( GND ) + ( \gcontraxt|Add1~14\ ))
-- \gcontraxt|Add1~38\ = CARRY(( \gcontraxt|pwm_step_count\(8) ) + ( GND ) + ( \gcontraxt|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count\(8),
	cin => \gcontraxt|Add1~14\,
	sumout => \gcontraxt|Add1~37_sumout\,
	cout => \gcontraxt|Add1~38\);

-- Location: FF_X35_Y7_N26
\gcontraxt|pwm_step_count[8]\ : dffeas
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
	q => \gcontraxt|pwm_step_count\(8));

-- Location: LABCELL_X35_Y7_N27
\gcontraxt|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~33_sumout\ = SUM(( \gcontraxt|pwm_step_count\(9) ) + ( GND ) + ( \gcontraxt|Add1~38\ ))
-- \gcontraxt|Add1~34\ = CARRY(( \gcontraxt|pwm_step_count\(9) ) + ( GND ) + ( \gcontraxt|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_pwm_step_count\(9),
	cin => \gcontraxt|Add1~38\,
	sumout => \gcontraxt|Add1~33_sumout\,
	cout => \gcontraxt|Add1~34\);

-- Location: FF_X35_Y7_N29
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

-- Location: LABCELL_X35_Y7_N30
\gcontraxt|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~29_sumout\ = SUM(( \gcontraxt|pwm_step_count[10]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~34\ ))
-- \gcontraxt|Add1~30\ = CARRY(( \gcontraxt|pwm_step_count[10]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_pwm_step_count[10]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~34\,
	sumout => \gcontraxt|Add1~29_sumout\,
	cout => \gcontraxt|Add1~30\);

-- Location: FF_X35_Y7_N32
\gcontraxt|pwm_step_count[10]~DUPLICATE\ : dffeas
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
	q => \gcontraxt|pwm_step_count[10]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y7_N33
\gcontraxt|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~9_sumout\ = SUM(( \gcontraxt|pwm_step_count[11]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~30\ ))
-- \gcontraxt|Add1~10\ = CARRY(( \gcontraxt|pwm_step_count[11]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_pwm_step_count[11]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~30\,
	sumout => \gcontraxt|Add1~9_sumout\,
	cout => \gcontraxt|Add1~10\);

-- Location: FF_X35_Y7_N35
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

-- Location: LABCELL_X35_Y7_N36
\gcontraxt|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~5_sumout\ = SUM(( \gcontraxt|pwm_step_count\(12) ) + ( GND ) + ( \gcontraxt|Add1~10\ ))
-- \gcontraxt|Add1~6\ = CARRY(( \gcontraxt|pwm_step_count\(12) ) + ( GND ) + ( \gcontraxt|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \gcontraxt|ALT_INV_pwm_step_count\(12),
	cin => \gcontraxt|Add1~10\,
	sumout => \gcontraxt|Add1~5_sumout\,
	cout => \gcontraxt|Add1~6\);

-- Location: FF_X35_Y7_N37
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

-- Location: FF_X35_Y7_N34
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

-- Location: FF_X35_Y7_N47
\gcontraxt|pwm_step_count[15]~DUPLICATE\ : dffeas
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
	q => \gcontraxt|pwm_step_count[15]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y7_N39
\gcontraxt|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~1_sumout\ = SUM(( \gcontraxt|pwm_step_count\(13) ) + ( GND ) + ( \gcontraxt|Add1~6\ ))
-- \gcontraxt|Add1~2\ = CARRY(( \gcontraxt|pwm_step_count\(13) ) + ( GND ) + ( \gcontraxt|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count\(13),
	cin => \gcontraxt|Add1~6\,
	sumout => \gcontraxt|Add1~1_sumout\,
	cout => \gcontraxt|Add1~2\);

-- Location: FF_X35_Y7_N41
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

-- Location: LABCELL_X35_Y7_N42
\gcontraxt|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~53_sumout\ = SUM(( \gcontraxt|pwm_step_count[14]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~2\ ))
-- \gcontraxt|Add1~54\ = CARRY(( \gcontraxt|pwm_step_count[14]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_pwm_step_count[14]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~2\,
	sumout => \gcontraxt|Add1~53_sumout\,
	cout => \gcontraxt|Add1~54\);

-- Location: FF_X35_Y7_N44
\gcontraxt|pwm_step_count[14]~DUPLICATE\ : dffeas
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
	q => \gcontraxt|pwm_step_count[14]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y7_N45
\gcontraxt|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~49_sumout\ = SUM(( \gcontraxt|pwm_step_count[15]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~54\ ))
-- \gcontraxt|Add1~50\ = CARRY(( \gcontraxt|pwm_step_count[15]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count[15]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~54\,
	sumout => \gcontraxt|Add1~49_sumout\,
	cout => \gcontraxt|Add1~50\);

-- Location: FF_X35_Y7_N46
\gcontraxt|pwm_step_count[15]\ : dffeas
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
	q => \gcontraxt|pwm_step_count\(15));

-- Location: FF_X35_Y7_N43
\gcontraxt|pwm_step_count[14]\ : dffeas
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
	q => \gcontraxt|pwm_step_count\(14));

-- Location: FF_X35_Y7_N50
\gcontraxt|pwm_step_count[16]~DUPLICATE\ : dffeas
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
	q => \gcontraxt|pwm_step_count[16]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y7_N48
\gcontraxt|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~45_sumout\ = SUM(( \gcontraxt|pwm_step_count[16]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~50\ ))
-- \gcontraxt|Add1~46\ = CARRY(( \gcontraxt|pwm_step_count[16]~DUPLICATE_q\ ) + ( GND ) + ( \gcontraxt|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count[16]~DUPLICATE_q\,
	cin => \gcontraxt|Add1~50\,
	sumout => \gcontraxt|Add1~45_sumout\,
	cout => \gcontraxt|Add1~46\);

-- Location: FF_X35_Y7_N49
\gcontraxt|pwm_step_count[16]\ : dffeas
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
	q => \gcontraxt|pwm_step_count\(16));

-- Location: LABCELL_X35_Y7_N51
\gcontraxt|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add1~41_sumout\ = SUM(( \gcontraxt|pwm_step_count\(17) ) + ( GND ) + ( \gcontraxt|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count\(17),
	cin => \gcontraxt|Add1~46\,
	sumout => \gcontraxt|Add1~41_sumout\);

-- Location: FF_X35_Y7_N52
\gcontraxt|pwm_step_count[17]\ : dffeas
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
	q => \gcontraxt|pwm_step_count\(17));

-- Location: LABCELL_X36_Y7_N9
\gcontraxt|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan2~2_combout\ = ( !\gcontraxt|pwm_step_count\(17) & ( (!\gcontraxt|pwm_step_count\(15) & (!\gcontraxt|pwm_step_count\(14) & !\gcontraxt|pwm_step_count\(16))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_pwm_step_count\(15),
	datac => \gcontraxt|ALT_INV_pwm_step_count\(14),
	datad => \gcontraxt|ALT_INV_pwm_step_count\(16),
	dataf => \gcontraxt|ALT_INV_pwm_step_count\(17),
	combout => \gcontraxt|LessThan2~2_combout\);

-- Location: FF_X35_Y7_N40
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

-- Location: FF_X35_Y7_N31
\gcontraxt|pwm_step_count[10]\ : dffeas
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
	q => \gcontraxt|pwm_step_count\(10));

-- Location: FF_X35_Y7_N28
\gcontraxt|pwm_step_count[9]~DUPLICATE\ : dffeas
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
	q => \gcontraxt|pwm_step_count[9]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y7_N36
\gcontraxt|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan2~1_combout\ = ( !\gcontraxt|pwm_step_count\(8) & ( (!\gcontraxt|pwm_step_count\(10) & !\gcontraxt|pwm_step_count[9]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \gcontraxt|ALT_INV_pwm_step_count\(10),
	datad => \gcontraxt|ALT_INV_pwm_step_count[9]~DUPLICATE_q\,
	dataf => \gcontraxt|ALT_INV_pwm_step_count\(8),
	combout => \gcontraxt|LessThan2~1_combout\);

-- Location: FF_X35_Y7_N58
\gcontraxt|pwm_step_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	asdata => \gcontraxt|Add1~25_sumout\,
	sclr => \gcontraxt|LessThan2~3_combout\,
	sload => VCC,
	ena => \gcontraxt|pwm_step_count[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_step_count\(5));

-- Location: FF_X35_Y7_N19
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

-- Location: FF_X35_Y7_N22
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

-- Location: LABCELL_X36_Y7_N39
\gcontraxt|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan2~0_combout\ = ( \gcontraxt|pwm_step_count\(4) & ( (\gcontraxt|pwm_step_count[7]~DUPLICATE_q\ & ((\gcontraxt|pwm_step_count\(6)) # (\gcontraxt|pwm_step_count\(5)))) ) ) # ( !\gcontraxt|pwm_step_count\(4) & ( 
-- (\gcontraxt|pwm_step_count\(6) & \gcontraxt|pwm_step_count[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_pwm_step_count\(5),
	datac => \gcontraxt|ALT_INV_pwm_step_count\(6),
	datad => \gcontraxt|ALT_INV_pwm_step_count[7]~DUPLICATE_q\,
	dataf => \gcontraxt|ALT_INV_pwm_step_count\(4),
	combout => \gcontraxt|LessThan2~0_combout\);

-- Location: LABCELL_X36_Y7_N21
\gcontraxt|LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan2~3_combout\ = ( \gcontraxt|LessThan2~1_combout\ & ( \gcontraxt|LessThan2~0_combout\ & ( (!\gcontraxt|LessThan2~2_combout\) # ((\gcontraxt|pwm_step_count[13]~DUPLICATE_q\ & ((\gcontraxt|pwm_step_count\(11)) # 
-- (\gcontraxt|pwm_step_count\(12))))) ) ) ) # ( !\gcontraxt|LessThan2~1_combout\ & ( \gcontraxt|LessThan2~0_combout\ & ( (!\gcontraxt|LessThan2~2_combout\) # ((\gcontraxt|pwm_step_count[13]~DUPLICATE_q\ & ((\gcontraxt|pwm_step_count\(11)) # 
-- (\gcontraxt|pwm_step_count\(12))))) ) ) ) # ( \gcontraxt|LessThan2~1_combout\ & ( !\gcontraxt|LessThan2~0_combout\ & ( (!\gcontraxt|LessThan2~2_combout\) # ((\gcontraxt|pwm_step_count\(12) & \gcontraxt|pwm_step_count[13]~DUPLICATE_q\)) ) ) ) # ( 
-- !\gcontraxt|LessThan2~1_combout\ & ( !\gcontraxt|LessThan2~0_combout\ & ( (!\gcontraxt|LessThan2~2_combout\) # ((\gcontraxt|pwm_step_count[13]~DUPLICATE_q\ & ((\gcontraxt|pwm_step_count\(11)) # (\gcontraxt|pwm_step_count\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110111111100001111010111110000111101111111000011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_pwm_step_count\(12),
	datab => \gcontraxt|ALT_INV_pwm_step_count\(11),
	datac => \gcontraxt|ALT_INV_LessThan2~2_combout\,
	datad => \gcontraxt|ALT_INV_pwm_step_count[13]~DUPLICATE_q\,
	datae => \gcontraxt|ALT_INV_LessThan2~1_combout\,
	dataf => \gcontraxt|ALT_INV_LessThan2~0_combout\,
	combout => \gcontraxt|LessThan2~3_combout\);

-- Location: LABCELL_X36_Y7_N0
\gcontraxt|pwm_count[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_count[1]~2_combout\ = ( \gcontraxt|freq_count\(17) & ( \gcontraxt|LessThan1~0_combout\ & ( (((\gcontraxt|freq_count\(15) & !\gcontraxt|LessThan0~4_combout\)) # (\gcontraxt|freq_count\(16))) # (\gcontraxt|LessThan2~3_combout\) ) ) ) # ( 
-- !\gcontraxt|freq_count\(17) & ( \gcontraxt|LessThan1~0_combout\ & ( \gcontraxt|LessThan2~3_combout\ ) ) ) # ( \gcontraxt|freq_count\(17) & ( !\gcontraxt|LessThan1~0_combout\ & ( ((\gcontraxt|freq_count\(15) & !\gcontraxt|LessThan0~4_combout\)) # 
-- (\gcontraxt|freq_count\(16)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001001111111100001111000011110100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_freq_count\(15),
	datab => \gcontraxt|ALT_INV_LessThan0~4_combout\,
	datac => \gcontraxt|ALT_INV_LessThan2~3_combout\,
	datad => \gcontraxt|ALT_INV_freq_count\(16),
	datae => \gcontraxt|ALT_INV_freq_count\(17),
	dataf => \gcontraxt|ALT_INV_LessThan1~0_combout\,
	combout => \gcontraxt|pwm_count[1]~2_combout\);

-- Location: FF_X36_Y7_N47
\gcontraxt|pwm_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count~1_combout\,
	ena => \gcontraxt|pwm_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count\(0));

-- Location: LABCELL_X36_Y7_N6
\gcontraxt|pwm_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_count~3_combout\ = (!\gcontraxt|LessThan0~5_combout\ & (!\gcontraxt|pwm_count\(0) $ (!\gcontraxt|pwm_count\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000110000110000000011000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_pwm_count\(0),
	datac => \gcontraxt|ALT_INV_LessThan0~5_combout\,
	datad => \gcontraxt|ALT_INV_pwm_count\(1),
	combout => \gcontraxt|pwm_count~3_combout\);

-- Location: FF_X36_Y7_N8
\gcontraxt|pwm_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count~3_combout\,
	ena => \gcontraxt|pwm_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count[1]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y7_N36
\gcontraxt|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|Add2~0_combout\ = ( \gcontraxt|pwm_count\(0) & ( (\gcontraxt|pwm_count[1]~DUPLICATE_q\ & \gcontraxt|pwm_count\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \gcontraxt|ALT_INV_pwm_count[1]~DUPLICATE_q\,
	datac => \gcontraxt|ALT_INV_pwm_count\(2),
	dataf => \gcontraxt|ALT_INV_pwm_count\(0),
	combout => \gcontraxt|Add2~0_combout\);

-- Location: LABCELL_X36_Y7_N24
\gcontraxt|pwm_count[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_count[3]~0_combout\ = ( \gcontraxt|LessThan2~3_combout\ & ( (!\gcontraxt|LessThan0~5_combout\ & (!\gcontraxt|pwm_count\(3) $ (((!\gcontraxt|LessThan1~0_combout\) # (!\gcontraxt|Add2~0_combout\))))) ) ) # ( !\gcontraxt|LessThan2~3_combout\ & 
-- ( (!\gcontraxt|LessThan0~5_combout\ & \gcontraxt|pwm_count\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000100110010000000010011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_LessThan1~0_combout\,
	datab => \gcontraxt|ALT_INV_LessThan0~5_combout\,
	datac => \gcontraxt|ALT_INV_Add2~0_combout\,
	datad => \gcontraxt|ALT_INV_pwm_count\(3),
	dataf => \gcontraxt|ALT_INV_LessThan2~3_combout\,
	combout => \gcontraxt|pwm_count[3]~0_combout\);

-- Location: FF_X36_Y7_N26
\gcontraxt|pwm_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputCLKENA0_outclk\,
	d => \gcontraxt|pwm_count[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gcontraxt|pwm_count\(3));

-- Location: LABCELL_X36_Y7_N57
\gcontraxt|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|LessThan1~0_combout\ = ( \gcontraxt|pwm_count\(2) & ( (!\gcontraxt|pwm_count\(3) & !\gcontraxt|pwm_count\(4)) ) ) # ( !\gcontraxt|pwm_count\(2) & ( (!\gcontraxt|pwm_count\(4) & ((!\gcontraxt|pwm_count\(3)) # 
-- ((!\gcontraxt|pwm_count[1]~DUPLICATE_q\ & !\gcontraxt|pwm_count\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000000111010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_pwm_count\(3),
	datab => \gcontraxt|ALT_INV_pwm_count[1]~DUPLICATE_q\,
	datac => \gcontraxt|ALT_INV_pwm_count\(0),
	datad => \gcontraxt|ALT_INV_pwm_count\(4),
	dataf => \gcontraxt|ALT_INV_pwm_count\(2),
	combout => \gcontraxt|LessThan1~0_combout\);

-- Location: LABCELL_X36_Y7_N48
\gcontraxt|pwm_value~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gcontraxt|pwm_value~0_combout\ = ( \gcontraxt|pwm_value~q\ & ( \gcontraxt|LessThan0~4_combout\ & ( ((\gcontraxt|freq_count\(16) & \gcontraxt|freq_count\(17))) # (\gcontraxt|LessThan1~0_combout\) ) ) ) # ( !\gcontraxt|pwm_value~q\ & ( 
-- \gcontraxt|LessThan0~4_combout\ & ( (\gcontraxt|LessThan1~0_combout\ & ((!\gcontraxt|freq_count\(16)) # (!\gcontraxt|freq_count\(17)))) ) ) ) # ( \gcontraxt|pwm_value~q\ & ( !\gcontraxt|LessThan0~4_combout\ & ( ((\gcontraxt|freq_count\(17) & 
-- ((\gcontraxt|freq_count\(16)) # (\gcontraxt|freq_count\(15))))) # (\gcontraxt|LessThan1~0_combout\) ) ) ) # ( !\gcontraxt|pwm_value~q\ & ( !\gcontraxt|LessThan0~4_combout\ & ( (\gcontraxt|LessThan1~0_combout\ & ((!\gcontraxt|freq_count\(17)) # 
-- ((!\gcontraxt|freq_count\(15) & !\gcontraxt|freq_count\(16))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111000000001111111111100000000111111000000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \gcontraxt|ALT_INV_freq_count\(15),
	datab => \gcontraxt|ALT_INV_freq_count\(16),
	datac => \gcontraxt|ALT_INV_freq_count\(17),
	datad => \gcontraxt|ALT_INV_LessThan1~0_combout\,
	datae => \gcontraxt|ALT_INV_pwm_value~q\,
	dataf => \gcontraxt|ALT_INV_LessThan0~4_combout\,
	combout => \gcontraxt|pwm_value~0_combout\);

-- Location: FF_X36_Y7_N49
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

-- Location: IOIBUF_X64_Y0_N52
\constrastdown~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_constrastdown,
	o => \constrastdown~input_o\);
END structure;


