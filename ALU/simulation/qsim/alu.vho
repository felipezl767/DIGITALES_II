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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "12/16/2021 15:44:04"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
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

ENTITY 	alu IS
    PORT (
	B : IN std_logic_vector(7 DOWNTO 0);
	Bus1 : IN std_logic_vector(7 DOWNTO 0);
	ALU_se1 : IN std_logic_vector(2 DOWNTO 0);
	ALU_Result : OUT std_logic_vector(7 DOWNTO 0);
	NZVC : OUT std_logic_vector(3 DOWNTO 0)
	);
END alu;

ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Bus1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_se1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ALU_Result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_NZVC : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALU_Result[0]~output_o\ : std_logic;
SIGNAL \ALU_Result[1]~output_o\ : std_logic;
SIGNAL \ALU_Result[2]~output_o\ : std_logic;
SIGNAL \ALU_Result[3]~output_o\ : std_logic;
SIGNAL \ALU_Result[4]~output_o\ : std_logic;
SIGNAL \ALU_Result[5]~output_o\ : std_logic;
SIGNAL \ALU_Result[6]~output_o\ : std_logic;
SIGNAL \ALU_Result[7]~output_o\ : std_logic;
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \ALU_se1[0]~input_o\ : std_logic;
SIGNAL \Bus1[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \ALU_Result[0]~0_combout\ : std_logic;
SIGNAL \ALU_se1[1]~input_o\ : std_logic;
SIGNAL \ALU_se1[2]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ALU_Result[0]$latch~combout\ : std_logic;
SIGNAL \Bus1[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \ALU_Result[1]~1_combout\ : std_logic;
SIGNAL \ALU_Result[1]$latch~combout\ : std_logic;
SIGNAL \Bus1[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \ALU_Result[2]~2_combout\ : std_logic;
SIGNAL \ALU_Result[2]$latch~combout\ : std_logic;
SIGNAL \Bus1[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \ALU_Result[3]~3_combout\ : std_logic;
SIGNAL \ALU_Result[3]$latch~combout\ : std_logic;
SIGNAL \Bus1[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \ALU_Result[4]~4_combout\ : std_logic;
SIGNAL \ALU_Result[4]$latch~combout\ : std_logic;
SIGNAL \Bus1[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \ALU_Result[5]~5_combout\ : std_logic;
SIGNAL \ALU_Result[5]$latch~combout\ : std_logic;
SIGNAL \Bus1[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \ALU_Result[6]~6_combout\ : std_logic;
SIGNAL \ALU_Result[6]$latch~combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Bus1[7]~input_o\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \ALU_Result[7]~7_combout\ : std_logic;
SIGNAL \ALU_Result[7]$latch~combout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \NZVC[0]~0_combout\ : std_logic;
SIGNAL \NZVC[0]$latch~combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \NZVC[1]~1_combout\ : std_logic;
SIGNAL \NZVC[1]$latch~combout\ : std_logic;
SIGNAL \NZVC[2]~2_combout\ : std_logic;
SIGNAL \NZVC[2]~3_combout\ : std_logic;
SIGNAL \NZVC[2]~4_combout\ : std_logic;
SIGNAL \NZVC[2]~5_combout\ : std_logic;
SIGNAL \NZVC[2]~6_combout\ : std_logic;
SIGNAL \NZVC[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bus1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bus1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bus1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bus1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bus1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bus1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bus1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Bus1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALU_se1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALU_se1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALU_se1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_NZVC[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_NZVC[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_NZVC[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_NZVC[2]~6_combout\ : std_logic;
SIGNAL \ALT_INV_NZVC[2]~5_combout\ : std_logic;
SIGNAL \ALT_INV_NZVC[2]~4_combout\ : std_logic;
SIGNAL \ALT_INV_NZVC[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_NZVC[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_NZVC[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_NZVC[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[7]~7_combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_B <= B;
ww_Bus1 <= Bus1;
ww_ALU_se1 <= ALU_se1;
ALU_Result <= ww_ALU_Result;
NZVC <= ww_NZVC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_Bus1[1]~input_o\ <= NOT \Bus1[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_Bus1[0]~input_o\ <= NOT \Bus1[0]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_Bus1[3]~input_o\ <= NOT \Bus1[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_Bus1[2]~input_o\ <= NOT \Bus1[2]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_Bus1[6]~input_o\ <= NOT \Bus1[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_Bus1[5]~input_o\ <= NOT \Bus1[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_Bus1[4]~input_o\ <= NOT \Bus1[4]~input_o\;
\ALT_INV_Bus1[7]~input_o\ <= NOT \Bus1[7]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_ALU_se1[2]~input_o\ <= NOT \ALU_se1[2]~input_o\;
\ALT_INV_ALU_se1[1]~input_o\ <= NOT \ALU_se1[1]~input_o\;
\ALT_INV_ALU_se1[0]~input_o\ <= NOT \ALU_se1[0]~input_o\;
\ALT_INV_NZVC[2]$latch~combout\ <= NOT \NZVC[2]$latch~combout\;
\ALT_INV_NZVC[1]$latch~combout\ <= NOT \NZVC[1]$latch~combout\;
\ALT_INV_NZVC[0]$latch~combout\ <= NOT \NZVC[0]$latch~combout\;
\ALT_INV_ALU_Result[7]$latch~combout\ <= NOT \ALU_Result[7]$latch~combout\;
\ALT_INV_ALU_Result[6]$latch~combout\ <= NOT \ALU_Result[6]$latch~combout\;
\ALT_INV_ALU_Result[5]$latch~combout\ <= NOT \ALU_Result[5]$latch~combout\;
\ALT_INV_ALU_Result[4]$latch~combout\ <= NOT \ALU_Result[4]$latch~combout\;
\ALT_INV_ALU_Result[3]$latch~combout\ <= NOT \ALU_Result[3]$latch~combout\;
\ALT_INV_ALU_Result[2]$latch~combout\ <= NOT \ALU_Result[2]$latch~combout\;
\ALT_INV_ALU_Result[1]$latch~combout\ <= NOT \ALU_Result[1]$latch~combout\;
\ALT_INV_ALU_Result[0]$latch~combout\ <= NOT \ALU_Result[0]$latch~combout\;
\ALT_INV_NZVC[2]~6_combout\ <= NOT \NZVC[2]~6_combout\;
\ALT_INV_NZVC[2]~5_combout\ <= NOT \NZVC[2]~5_combout\;
\ALT_INV_NZVC[2]~4_combout\ <= NOT \NZVC[2]~4_combout\;
\ALT_INV_NZVC[2]~3_combout\ <= NOT \NZVC[2]~3_combout\;
\ALT_INV_NZVC[2]~2_combout\ <= NOT \NZVC[2]~2_combout\;
\ALT_INV_NZVC[1]~1_combout\ <= NOT \NZVC[1]~1_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_NZVC[0]~0_combout\ <= NOT \NZVC[0]~0_combout\;
\ALT_INV_ALU_Result[7]~7_combout\ <= NOT \ALU_Result[7]~7_combout\;
\ALT_INV_ALU_Result[6]~6_combout\ <= NOT \ALU_Result[6]~6_combout\;
\ALT_INV_ALU_Result[5]~5_combout\ <= NOT \ALU_Result[5]~5_combout\;
\ALT_INV_ALU_Result[4]~4_combout\ <= NOT \ALU_Result[4]~4_combout\;
\ALT_INV_ALU_Result[3]~3_combout\ <= NOT \ALU_Result[3]~3_combout\;
\ALT_INV_ALU_Result[2]~2_combout\ <= NOT \ALU_Result[2]~2_combout\;
\ALT_INV_ALU_Result[1]~1_combout\ <= NOT \ALU_Result[1]~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_ALU_Result[0]~0_combout\ <= NOT \ALU_Result[0]~0_combout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;

\ALU_Result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[0]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[0]~output_o\);

\ALU_Result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[1]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[1]~output_o\);

\ALU_Result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[2]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[2]~output_o\);

\ALU_Result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[3]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[3]~output_o\);

\ALU_Result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[4]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[4]~output_o\);

\ALU_Result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[5]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[5]~output_o\);

\ALU_Result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[6]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[6]~output_o\);

\ALU_Result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[7]$latch~combout\,
	devoe => ww_devoe,
	o => \ALU_Result[7]~output_o\);

\NZVC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[0]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

\NZVC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[1]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

\NZVC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \NZVC[2]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

\NZVC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[7]$latch~combout\,
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

\ALU_se1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_se1(0),
	o => \ALU_se1[0]~input_o\);

\Bus1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(0),
	o => \Bus1[0]~input_o\);

\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \Bus1[0]~input_o\ ) + ( \B[0]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \Bus1[0]~input_o\ ) + ( \B[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Bus1[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\B[0]~input_o\ $ (!\Bus1[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !\B[0]~input_o\ $ (!\Bus1[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~3\ = SHARE((!\Bus1[0]~input_o\) # (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_Bus1[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\,
	shareout => \Add1~3\);

\ALU_Result[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[0]~0_combout\ = (!\ALU_se1[0]~input_o\ & (\Add0~1_sumout\)) # (\ALU_se1[0]~input_o\ & ((\Add1~1_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_se1[0]~input_o\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add1~1_sumout\,
	combout => \ALU_Result[0]~0_combout\);

\ALU_se1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_se1(1),
	o => \ALU_se1[1]~input_o\);

\ALU_se1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_se1(2),
	o => \ALU_se1[2]~input_o\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ALU_se1[1]~input_o\ & !\ALU_se1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_se1[1]~input_o\,
	datab => \ALT_INV_ALU_se1[2]~input_o\,
	combout => \Equal0~0_combout\);

\ALU_Result[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[0]$latch~combout\ = ( \ALU_Result[0]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[0]~0_combout\ ) ) ) # ( !\ALU_Result[0]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[0]~0_combout\ ) ) ) # ( \ALU_Result[0]$latch~combout\ & ( 
-- !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ALU_Result[0]~0_combout\,
	datae => \ALT_INV_ALU_Result[0]$latch~combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \ALU_Result[0]$latch~combout\);

\Bus1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(1),
	o => \Bus1[1]~input_o\);

\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \Bus1[1]~input_o\ ) + ( \B[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \Bus1[1]~input_o\ ) + ( \B[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Bus1[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\B[1]~input_o\ $ (\Bus1[1]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !\B[1]~input_o\ $ (\Bus1[1]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~7\ = SHARE((\B[1]~input_o\ & !\Bus1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_Bus1[1]~input_o\,
	cin => \Add1~2\,
	sharein => \Add1~3\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\,
	shareout => \Add1~7\);

\ALU_Result[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[1]~1_combout\ = (!\ALU_se1[0]~input_o\ & (\Add0~5_sumout\)) # (\ALU_se1[0]~input_o\ & ((\Add1~5_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_se1[0]~input_o\,
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add1~5_sumout\,
	combout => \ALU_Result[1]~1_combout\);

\ALU_Result[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[1]$latch~combout\ = ( \ALU_Result[1]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[1]~1_combout\ ) ) ) # ( !\ALU_Result[1]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[1]~1_combout\ ) ) ) # ( \ALU_Result[1]$latch~combout\ & ( 
-- !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ALU_Result[1]~1_combout\,
	datae => \ALT_INV_ALU_Result[1]$latch~combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \ALU_Result[1]$latch~combout\);

\Bus1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(2),
	o => \Bus1[2]~input_o\);

\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \Bus1[2]~input_o\ ) + ( \B[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \Bus1[2]~input_o\ ) + ( \B[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Bus1[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\B[2]~input_o\ $ (\Bus1[2]~input_o\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !\B[2]~input_o\ $ (\Bus1[2]~input_o\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~11\ = SHARE((\B[2]~input_o\ & !\Bus1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Bus1[2]~input_o\,
	cin => \Add1~6\,
	sharein => \Add1~7\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\,
	shareout => \Add1~11\);

\ALU_Result[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[2]~2_combout\ = (!\ALU_se1[0]~input_o\ & (\Add0~9_sumout\)) # (\ALU_se1[0]~input_o\ & ((\Add1~9_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_se1[0]~input_o\,
	datab => \ALT_INV_Add0~9_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	combout => \ALU_Result[2]~2_combout\);

\ALU_Result[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[2]$latch~combout\ = ( \ALU_Result[2]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[2]~2_combout\ ) ) ) # ( !\ALU_Result[2]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[2]~2_combout\ ) ) ) # ( \ALU_Result[2]$latch~combout\ & ( 
-- !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ALU_Result[2]~2_combout\,
	datae => \ALT_INV_ALU_Result[2]$latch~combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \ALU_Result[2]$latch~combout\);

\Bus1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(3),
	o => \Bus1[3]~input_o\);

\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \Bus1[3]~input_o\ ) + ( \B[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \Bus1[3]~input_o\ ) + ( \B[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Bus1[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\B[3]~input_o\ $ (\Bus1[3]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !\B[3]~input_o\ $ (\Bus1[3]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~15\ = SHARE((\B[3]~input_o\ & !\Bus1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_Bus1[3]~input_o\,
	cin => \Add1~10\,
	sharein => \Add1~11\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\,
	shareout => \Add1~15\);

\ALU_Result[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[3]~3_combout\ = (!\ALU_se1[0]~input_o\ & (\Add0~13_sumout\)) # (\ALU_se1[0]~input_o\ & ((\Add1~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_se1[0]~input_o\,
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_Add1~13_sumout\,
	combout => \ALU_Result[3]~3_combout\);

\ALU_Result[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[3]$latch~combout\ = ( \ALU_Result[3]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[3]~3_combout\ ) ) ) # ( !\ALU_Result[3]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[3]~3_combout\ ) ) ) # ( \ALU_Result[3]$latch~combout\ & ( 
-- !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ALU_Result[3]~3_combout\,
	datae => \ALT_INV_ALU_Result[3]$latch~combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \ALU_Result[3]$latch~combout\);

\Bus1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(4),
	o => \Bus1[4]~input_o\);

\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \Bus1[4]~input_o\ ) + ( \B[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \Bus1[4]~input_o\ ) + ( \B[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Bus1[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\B[4]~input_o\ $ (\Bus1[4]~input_o\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !\B[4]~input_o\ $ (\Bus1[4]~input_o\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~19\ = SHARE((\B[4]~input_o\ & !\Bus1[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_Bus1[4]~input_o\,
	cin => \Add1~14\,
	sharein => \Add1~15\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\,
	shareout => \Add1~19\);

\ALU_Result[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[4]~4_combout\ = (!\ALU_se1[0]~input_o\ & (\Add0~17_sumout\)) # (\ALU_se1[0]~input_o\ & ((\Add1~17_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_se1[0]~input_o\,
	datab => \ALT_INV_Add0~17_sumout\,
	datac => \ALT_INV_Add1~17_sumout\,
	combout => \ALU_Result[4]~4_combout\);

\ALU_Result[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[4]$latch~combout\ = ( \ALU_Result[4]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[4]~4_combout\ ) ) ) # ( !\ALU_Result[4]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[4]~4_combout\ ) ) ) # ( \ALU_Result[4]$latch~combout\ & ( 
-- !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ALU_Result[4]~4_combout\,
	datae => \ALT_INV_ALU_Result[4]$latch~combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \ALU_Result[4]$latch~combout\);

\Bus1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(5),
	o => \Bus1[5]~input_o\);

\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \Bus1[5]~input_o\ ) + ( \B[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \Bus1[5]~input_o\ ) + ( \B[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Bus1[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\B[5]~input_o\ $ (\Bus1[5]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !\B[5]~input_o\ $ (\Bus1[5]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~23\ = SHARE((\B[5]~input_o\ & !\Bus1[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_Bus1[5]~input_o\,
	cin => \Add1~18\,
	sharein => \Add1~19\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\,
	shareout => \Add1~23\);

\ALU_Result[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[5]~5_combout\ = (!\ALU_se1[0]~input_o\ & (\Add0~21_sumout\)) # (\ALU_se1[0]~input_o\ & ((\Add1~21_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_se1[0]~input_o\,
	datab => \ALT_INV_Add0~21_sumout\,
	datac => \ALT_INV_Add1~21_sumout\,
	combout => \ALU_Result[5]~5_combout\);

\ALU_Result[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[5]$latch~combout\ = ( \ALU_Result[5]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[5]~5_combout\ ) ) ) # ( !\ALU_Result[5]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[5]~5_combout\ ) ) ) # ( \ALU_Result[5]$latch~combout\ & ( 
-- !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ALU_Result[5]~5_combout\,
	datae => \ALT_INV_ALU_Result[5]$latch~combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \ALU_Result[5]$latch~combout\);

\Bus1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(6),
	o => \Bus1[6]~input_o\);

\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \Bus1[6]~input_o\ ) + ( \B[6]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \Bus1[6]~input_o\ ) + ( \B[6]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Bus1[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\B[6]~input_o\ $ (\Bus1[6]~input_o\) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\B[6]~input_o\ $ (\Bus1[6]~input_o\) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~27\ = SHARE((\B[6]~input_o\ & !\Bus1[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_Bus1[6]~input_o\,
	cin => \Add1~22\,
	sharein => \Add1~23\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\,
	shareout => \Add1~27\);

\ALU_Result[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[6]~6_combout\ = (!\ALU_se1[0]~input_o\ & (\Add0~25_sumout\)) # (\ALU_se1[0]~input_o\ & ((\Add1~25_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_se1[0]~input_o\,
	datab => \ALT_INV_Add0~25_sumout\,
	datac => \ALT_INV_Add1~25_sumout\,
	combout => \ALU_Result[6]~6_combout\);

\ALU_Result[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[6]$latch~combout\ = ( \ALU_Result[6]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[6]~6_combout\ ) ) ) # ( !\ALU_Result[6]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[6]~6_combout\ ) ) ) # ( \ALU_Result[6]$latch~combout\ & ( 
-- !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ALU_Result[6]~6_combout\,
	datae => \ALT_INV_ALU_Result[6]$latch~combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \ALU_Result[6]$latch~combout\);

\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\Bus1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Bus1(7),
	o => \Bus1[7]~input_o\);

\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !\B[7]~input_o\ $ (\Bus1[7]~input_o\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !\B[7]~input_o\ $ (\Bus1[7]~input_o\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~31\ = SHARE((\B[7]~input_o\ & !\Bus1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_Bus1[7]~input_o\,
	cin => \Add1~26\,
	sharein => \Add1~27\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\,
	shareout => \Add1~31\);

\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \Bus1[7]~input_o\ ) + ( \B[7]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Bus1[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\);

\ALU_Result[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[7]~7_combout\ = (!\ALU_se1[0]~input_o\ & ((\Add0~29_sumout\))) # (\ALU_se1[0]~input_o\ & (\Add1~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_se1[0]~input_o\,
	datab => \ALT_INV_Add1~29_sumout\,
	datac => \ALT_INV_Add0~29_sumout\,
	combout => \ALU_Result[7]~7_combout\);

\ALU_Result[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[7]$latch~combout\ = ( \ALU_Result[7]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[7]~7_combout\ ) ) ) # ( !\ALU_Result[7]$latch~combout\ & ( \Equal0~0_combout\ & ( \ALU_Result[7]~7_combout\ ) ) ) # ( \ALU_Result[7]$latch~combout\ & ( 
-- !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ALU_Result[7]~7_combout\,
	datae => \ALT_INV_ALU_Result[7]$latch~combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \ALU_Result[7]$latch~combout\);

\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( VCC ) + ( \Add1~31\ ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Add1~30\,
	sharein => \Add1~31\,
	sumout => \Add1~33_sumout\);

\NZVC[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NZVC[0]~0_combout\ = (!\ALU_se1[0]~input_o\ & (\Add0~29_sumout\)) # (\ALU_se1[0]~input_o\ & ((\Add1~33_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_se1[0]~input_o\,
	datab => \ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_Add1~33_sumout\,
	combout => \NZVC[0]~0_combout\);

\NZVC[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \NZVC[0]$latch~combout\ = ( \NZVC[0]$latch~combout\ & ( \Equal0~0_combout\ & ( \NZVC[0]~0_combout\ ) ) ) # ( !\NZVC[0]$latch~combout\ & ( \Equal0~0_combout\ & ( \NZVC[0]~0_combout\ ) ) ) # ( \NZVC[0]$latch~combout\ & ( !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_NZVC[0]~0_combout\,
	datae => \ALT_INV_NZVC[0]$latch~combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \NZVC[0]$latch~combout\);

\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \B[7]~input_o\ & ( \Bus1[7]~input_o\ & ( (!\Bus1[5]~input_o\ & (!\B[5]~input_o\ & (!\Bus1[6]~input_o\ $ (\B[6]~input_o\)))) # (\Bus1[5]~input_o\ & (\B[5]~input_o\ & (!\Bus1[6]~input_o\ $ (\B[6]~input_o\)))) ) ) ) # ( 
-- !\B[7]~input_o\ & ( !\Bus1[7]~input_o\ & ( (!\Bus1[5]~input_o\ & (!\B[5]~input_o\ & (!\Bus1[6]~input_o\ $ (\B[6]~input_o\)))) # (\Bus1[5]~input_o\ & (\B[5]~input_o\ & (!\Bus1[6]~input_o\ $ (\B[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Bus1[5]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_Bus1[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_Bus1[7]~input_o\,
	combout => \LessThan0~0_combout\);

\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\Bus1[1]~input_o\ & (\Bus1[0]~input_o\ & (!\B[0]~input_o\ & !\B[1]~input_o\))) # (\Bus1[1]~input_o\ & ((!\B[1]~input_o\) # ((\Bus1[0]~input_o\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100000100010011110000010001001111000001000100111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Bus1[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Bus1[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	combout => \LessThan0~1_combout\);

\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \LessThan0~1_combout\ & ( (!\Bus1[3]~input_o\ & (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\Bus1[2]~input_o\)))) # (\Bus1[3]~input_o\ & (((!\B[2]~input_o\) # (!\B[3]~input_o\)) # (\Bus1[2]~input_o\))) ) ) # ( !\LessThan0~1_combout\ 
-- & ( (!\Bus1[3]~input_o\ & (\Bus1[2]~input_o\ & (!\B[2]~input_o\ & !\B[3]~input_o\))) # (\Bus1[3]~input_o\ & ((!\B[3]~input_o\) # ((\Bus1[2]~input_o\ & !\B[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100000100110111110000110101001111000001001101111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Bus1[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_Bus1[3]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( \B[7]~input_o\ & ( \Bus1[7]~input_o\ & ( (!\Bus1[6]~input_o\ & (\Bus1[5]~input_o\ & (!\B[5]~input_o\ & !\B[6]~input_o\))) # (\Bus1[6]~input_o\ & ((!\B[6]~input_o\) # ((\Bus1[5]~input_o\ & !\B[5]~input_o\)))) ) ) ) # ( 
-- !\B[7]~input_o\ & ( \Bus1[7]~input_o\ ) ) # ( !\B[7]~input_o\ & ( !\Bus1[7]~input_o\ & ( (!\Bus1[6]~input_o\ & (\Bus1[5]~input_o\ & (!\B[5]~input_o\ & !\B[6]~input_o\))) # (\Bus1[6]~input_o\ & ((!\B[6]~input_o\) # ((\Bus1[5]~input_o\ & !\B[5]~input_o\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100000100000000000000000011111111111111110100111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Bus1[5]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_Bus1[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_Bus1[7]~input_o\,
	combout => \LessThan0~3_combout\);

\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( !\LessThan0~3_combout\ & ( (!\LessThan0~0_combout\) # ((!\Bus1[4]~input_o\ & ((!\LessThan0~2_combout\) # (\B[4]~input_o\))) # (\Bus1[4]~input_o\ & (\B[4]~input_o\ & !\LessThan0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111110010000000000000000011111011111100100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Bus1[4]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~2_combout\,
	datae => \ALT_INV_LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

\NZVC[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \NZVC[1]~1_combout\ = ( \Add0~29_sumout\ & ( \LessThan0~4_combout\ & ( (!\Add1~29_sumout\ & (!\Bus1[7]~input_o\ & (!\ALU_se1[0]~input_o\ $ (\B[7]~input_o\)))) # (\Add1~29_sumout\ & (!\B[7]~input_o\ & (!\ALU_se1[0]~input_o\ $ (\Bus1[7]~input_o\)))) ) ) ) # 
-- ( !\Add0~29_sumout\ & ( \LessThan0~4_combout\ & ( (!\Add1~29_sumout\ & (\B[7]~input_o\ & (!\ALU_se1[0]~input_o\ $ (!\Bus1[7]~input_o\)))) # (\Add1~29_sumout\ & (\Bus1[7]~input_o\ & (!\ALU_se1[0]~input_o\ $ (!\B[7]~input_o\)))) ) ) ) # ( \Add0~29_sumout\ & 
-- ( !\LessThan0~4_combout\ & ( (!\B[7]~input_o\ & (!\Bus1[7]~input_o\ $ (((\ALU_se1[0]~input_o\ & !\Add1~29_sumout\))))) ) ) ) # ( !\Add0~29_sumout\ & ( !\LessThan0~4_combout\ & ( (!\ALU_se1[0]~input_o\ & (\B[7]~input_o\ & (\Bus1[7]~input_o\))) # 
-- (\ALU_se1[0]~input_o\ & (!\B[7]~input_o\ & (!\Bus1[7]~input_o\ $ (!\Add1~29_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001000010100001001100000000010010000001101001000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_se1[0]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_Bus1[7]~input_o\,
	datad => \ALT_INV_Add1~29_sumout\,
	datae => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \NZVC[1]~1_combout\);

\NZVC[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \NZVC[1]$latch~combout\ = ( \NZVC[1]$latch~combout\ & ( \Equal0~0_combout\ & ( \NZVC[1]~1_combout\ ) ) ) # ( !\NZVC[1]$latch~combout\ & ( \Equal0~0_combout\ & ( \NZVC[1]~1_combout\ ) ) ) # ( \NZVC[1]$latch~combout\ & ( !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_NZVC[1]~1_combout\,
	datae => \ALT_INV_NZVC[1]$latch~combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \NZVC[1]$latch~combout\);

\NZVC[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \NZVC[2]~2_combout\ = ( !\Add0~13_sumout\ & ( !\Add0~17_sumout\ & ( (!\ALU_se1[0]~input_o\ & (!\Add0~1_sumout\ & (!\Add0~5_sumout\ & !\Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_se1[0]~input_o\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_Add0~9_sumout\,
	datae => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \NZVC[2]~2_combout\);

\NZVC[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \NZVC[2]~3_combout\ = (!\Add0~21_sumout\ & !\Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~21_sumout\,
	datab => \ALT_INV_Add0~25_sumout\,
	combout => \NZVC[2]~3_combout\);

\NZVC[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \NZVC[2]~4_combout\ = ( !\Add1~13_sumout\ & ( !\Add1~17_sumout\ & ( (\ALU_se1[0]~input_o\ & (!\Add1~1_sumout\ & (!\Add1~5_sumout\ & !\Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_se1[0]~input_o\,
	datab => \ALT_INV_Add1~1_sumout\,
	datac => \ALT_INV_Add1~5_sumout\,
	datad => \ALT_INV_Add1~9_sumout\,
	datae => \ALT_INV_Add1~13_sumout\,
	dataf => \ALT_INV_Add1~17_sumout\,
	combout => \NZVC[2]~4_combout\);

\NZVC[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \NZVC[2]~5_combout\ = (!\Add1~21_sumout\ & !\Add1~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~21_sumout\,
	datab => \ALT_INV_Add1~25_sumout\,
	combout => \NZVC[2]~5_combout\);

\NZVC[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \NZVC[2]~6_combout\ = ( \NZVC[2]~4_combout\ & ( \NZVC[2]~5_combout\ & ( (!\Add1~29_sumout\) # ((!\Add0~29_sumout\ & (\NZVC[2]~2_combout\ & \NZVC[2]~3_combout\))) ) ) ) # ( !\NZVC[2]~4_combout\ & ( \NZVC[2]~5_combout\ & ( (!\Add0~29_sumout\ & 
-- (\NZVC[2]~2_combout\ & \NZVC[2]~3_combout\)) ) ) ) # ( \NZVC[2]~4_combout\ & ( !\NZVC[2]~5_combout\ & ( (!\Add0~29_sumout\ & (\NZVC[2]~2_combout\ & \NZVC[2]~3_combout\)) ) ) ) # ( !\NZVC[2]~4_combout\ & ( !\NZVC[2]~5_combout\ & ( (!\Add0~29_sumout\ & 
-- (\NZVC[2]~2_combout\ & \NZVC[2]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000011001010101010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~29_sumout\,
	datab => \ALT_INV_Add0~29_sumout\,
	datac => \ALT_INV_NZVC[2]~2_combout\,
	datad => \ALT_INV_NZVC[2]~3_combout\,
	datae => \ALT_INV_NZVC[2]~4_combout\,
	dataf => \ALT_INV_NZVC[2]~5_combout\,
	combout => \NZVC[2]~6_combout\);

\NZVC[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \NZVC[2]$latch~combout\ = ( \NZVC[2]$latch~combout\ & ( \Equal0~0_combout\ & ( \NZVC[2]~6_combout\ ) ) ) # ( !\NZVC[2]$latch~combout\ & ( \Equal0~0_combout\ & ( \NZVC[2]~6_combout\ ) ) ) # ( \NZVC[2]$latch~combout\ & ( !\Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_NZVC[2]~6_combout\,
	datae => \ALT_INV_NZVC[2]$latch~combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \NZVC[2]$latch~combout\);

ww_ALU_Result(0) <= \ALU_Result[0]~output_o\;

ww_ALU_Result(1) <= \ALU_Result[1]~output_o\;

ww_ALU_Result(2) <= \ALU_Result[2]~output_o\;

ww_ALU_Result(3) <= \ALU_Result[3]~output_o\;

ww_ALU_Result(4) <= \ALU_Result[4]~output_o\;

ww_ALU_Result(5) <= \ALU_Result[5]~output_o\;

ww_ALU_Result(6) <= \ALU_Result[6]~output_o\;

ww_ALU_Result(7) <= \ALU_Result[7]~output_o\;

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;
END structure;


