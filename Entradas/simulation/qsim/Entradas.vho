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

-- DATE "12/13/2021 14:41:48"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
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

ENTITY 	Entradas IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	writen : IN std_logic;
	address : IN std_logic_vector(7 DOWNTO 0);
	data_in : IN std_logic_vector(7 DOWNTO 0);
	port_out_00 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_01 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_02 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_03 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_04 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_05 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_06 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_07 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_08 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_09 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_10 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_11 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_12 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_13 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_14 : BUFFER std_logic_vector(7 DOWNTO 0);
	port_out_15 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Entradas;

-- Design Ports Information
-- port_out_00[0]	-- port_out_00[1]	-- port_out_00[2]	-- port_out_00[3]	-- port_out_00[4]	-- port_out_00[5]	-- port_out_00[6]	-- port_out_00[7]	-- port_out_01[0]	-- port_out_01[1]	-- port_out_01[2]	-- port_out_01[3]	-- port_out_01[4]	-- port_out_01[5]	-- port_out_01[6]	-- port_out_01[7]	-- port_out_02[0]	-- port_out_02[1]	-- port_out_02[2]	-- port_out_02[3]	-- port_out_02[4]	-- port_out_02[5]	-- port_out_02[6]	-- port_out_02[7]	-- port_out_03[0]	-- port_out_03[1]	-- port_out_03[2]	-- port_out_03[3]	-- port_out_03[4]	-- port_out_03[5]	-- port_out_03[6]	-- port_out_03[7]	-- port_out_04[0]	-- port_out_04[1]	-- port_out_04[2]	-- port_out_04[3]	-- port_out_04[4]	-- port_out_04[5]	-- port_out_04[6]	-- port_out_04[7]	-- port_out_05[0]	-- port_out_05[1]	-- port_out_05[2]	-- port_out_05[3]	-- port_out_05[4]	-- port_out_05[5]	-- port_out_05[6]	-- port_out_05[7]	-- port_out_06[0]	-- port_out_06[1]	-- port_out_06[2]	-- port_out_06[3]	-- port_out_06[4]	-- port_out_06[5]	-- port_out_06[6]	-- port_out_06[7]	-- port_out_07[0]	-- port_out_07[1]	-- port_out_07[2]	-- port_out_07[3]	-- port_out_07[4]	-- port_out_07[5]	-- port_out_07[6]	-- port_out_07[7]	-- port_out_08[0]	-- port_out_08[1]	-- port_out_08[2]	-- port_out_08[3]	-- port_out_08[4]	-- port_out_08[5]	-- port_out_08[6]	-- port_out_08[7]	-- port_out_09[0]	-- port_out_09[1]	-- port_out_09[2]	-- port_out_09[3]	-- port_out_09[4]	-- port_out_09[5]	-- port_out_09[6]	-- port_out_09[7]	-- port_out_10[0]	-- port_out_10[1]	-- port_out_10[2]	-- port_out_10[3]	-- port_out_10[4]	-- port_out_10[5]	-- port_out_10[6]	-- port_out_10[7]	-- port_out_11[0]	-- port_out_11[1]	-- port_out_11[2]	-- port_out_11[3]	-- port_out_11[4]	-- port_out_11[5]	-- port_out_11[6]	-- port_out_11[7]	-- port_out_12[0]	-- port_out_12[1]	-- port_out_12[2]	-- port_out_12[3]	-- port_out_12[4]	-- port_out_12[5]	-- port_out_12[6]	-- port_out_12[7]	-- port_out_13[0]	-- port_out_13[1]	-- port_out_13[2]	-- port_out_13[3]	-- port_out_13[4]	-- port_out_13[5]	-- port_out_13[6]	-- port_out_13[7]	-- port_out_14[0]	-- port_out_14[1]	-- port_out_14[2]	-- port_out_14[3]	-- port_out_14[4]	-- port_out_14[5]	-- port_out_14[6]	-- port_out_14[7]	-- port_out_15[0]	-- port_out_15[1]	-- port_out_15[2]	-- port_out_15[3]	-- port_out_15[4]	-- port_out_15[5]	-- port_out_15[6]	-- port_out_15[7]	-- data_in[0]	-- clock	-- reset	-- address[0]	-- address[3]	-- writen	-- address[4]	-- address[5]	-- address[6]	-- address[7]	-- address[1]	-- address[2]	-- data_in[1]	-- data_in[2]	-- data_in[3]	-- data_in[4]	-- data_in[5]	-- data_in[6]	-- data_in[7]	

ARCHITECTURE structure OF Entradas IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_writen : std_logic;
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_00 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_01 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_02 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_03 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_04 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_05 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_06 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_07 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_08 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_09 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_10 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_11 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_12 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_13 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_14 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_out_15 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \writen~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \U12~0_combout\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \U3~0_combout\ : std_logic;
SIGNAL \port_out_00[0]~reg0_q\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \port_out_00[1]~reg0_q\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \port_out_00[2]~reg0_q\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \port_out_00[3]~reg0_q\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \port_out_00[4]~reg0_q\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \port_out_00[5]~reg0_q\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \port_out_00[6]~reg0_q\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \port_out_00[7]~reg0_q\ : std_logic;
SIGNAL \U4~0_combout\ : std_logic;
SIGNAL \port_out_01[0]~reg0_q\ : std_logic;
SIGNAL \port_out_01[1]~reg0_q\ : std_logic;
SIGNAL \port_out_01[2]~reg0_q\ : std_logic;
SIGNAL \port_out_01[3]~reg0_q\ : std_logic;
SIGNAL \port_out_01[4]~reg0_q\ : std_logic;
SIGNAL \port_out_01[5]~reg0_q\ : std_logic;
SIGNAL \port_out_01[6]~reg0_q\ : std_logic;
SIGNAL \port_out_01[7]~reg0_q\ : std_logic;
SIGNAL \U5~0_combout\ : std_logic;
SIGNAL \port_out_02[0]~reg0_q\ : std_logic;
SIGNAL \port_out_02[1]~reg0_q\ : std_logic;
SIGNAL \port_out_02[2]~reg0_q\ : std_logic;
SIGNAL \port_out_02[3]~reg0_q\ : std_logic;
SIGNAL \port_out_02[4]~reg0_q\ : std_logic;
SIGNAL \port_out_02[5]~reg0_q\ : std_logic;
SIGNAL \port_out_02[6]~reg0_q\ : std_logic;
SIGNAL \port_out_02[7]~reg0_q\ : std_logic;
SIGNAL \U6~0_combout\ : std_logic;
SIGNAL \port_out_03[0]~reg0_q\ : std_logic;
SIGNAL \port_out_03[1]~reg0_q\ : std_logic;
SIGNAL \port_out_03[2]~reg0_q\ : std_logic;
SIGNAL \port_out_03[3]~reg0_q\ : std_logic;
SIGNAL \port_out_03[4]~reg0_q\ : std_logic;
SIGNAL \port_out_03[5]~reg0_q\ : std_logic;
SIGNAL \port_out_03[6]~reg0_q\ : std_logic;
SIGNAL \port_out_03[7]~reg0_q\ : std_logic;
SIGNAL \U7~0_combout\ : std_logic;
SIGNAL \port_out_04[0]~reg0_q\ : std_logic;
SIGNAL \port_out_04[1]~reg0_q\ : std_logic;
SIGNAL \port_out_04[2]~reg0_q\ : std_logic;
SIGNAL \port_out_04[3]~reg0_q\ : std_logic;
SIGNAL \port_out_04[4]~reg0_q\ : std_logic;
SIGNAL \port_out_04[5]~reg0_q\ : std_logic;
SIGNAL \port_out_04[6]~reg0_q\ : std_logic;
SIGNAL \port_out_04[7]~reg0_q\ : std_logic;
SIGNAL \U8~0_combout\ : std_logic;
SIGNAL \port_out_05[0]~reg0_q\ : std_logic;
SIGNAL \port_out_05[1]~reg0_q\ : std_logic;
SIGNAL \port_out_05[2]~reg0_q\ : std_logic;
SIGNAL \port_out_05[3]~reg0_q\ : std_logic;
SIGNAL \port_out_05[4]~reg0_q\ : std_logic;
SIGNAL \port_out_05[5]~reg0_q\ : std_logic;
SIGNAL \port_out_05[6]~reg0_q\ : std_logic;
SIGNAL \port_out_05[7]~reg0_q\ : std_logic;
SIGNAL \U9~0_combout\ : std_logic;
SIGNAL \port_out_06[0]~reg0_q\ : std_logic;
SIGNAL \port_out_06[1]~reg0_q\ : std_logic;
SIGNAL \port_out_06[2]~reg0_q\ : std_logic;
SIGNAL \port_out_06[3]~reg0_q\ : std_logic;
SIGNAL \port_out_06[4]~reg0_q\ : std_logic;
SIGNAL \port_out_06[5]~reg0_q\ : std_logic;
SIGNAL \port_out_06[6]~reg0_q\ : std_logic;
SIGNAL \port_out_06[7]~reg0_q\ : std_logic;
SIGNAL \U10~0_combout\ : std_logic;
SIGNAL \port_out_07[0]~reg0_q\ : std_logic;
SIGNAL \port_out_07[1]~reg0_q\ : std_logic;
SIGNAL \port_out_07[2]~reg0_q\ : std_logic;
SIGNAL \port_out_07[3]~reg0_q\ : std_logic;
SIGNAL \port_out_07[4]~reg0_q\ : std_logic;
SIGNAL \port_out_07[5]~reg0_q\ : std_logic;
SIGNAL \port_out_07[6]~reg0_q\ : std_logic;
SIGNAL \port_out_07[7]~reg0_q\ : std_logic;
SIGNAL \U11~0_combout\ : std_logic;
SIGNAL \port_out_08[0]~reg0_q\ : std_logic;
SIGNAL \port_out_08[1]~reg0_q\ : std_logic;
SIGNAL \port_out_08[2]~reg0_q\ : std_logic;
SIGNAL \port_out_08[3]~reg0_q\ : std_logic;
SIGNAL \port_out_08[4]~reg0_q\ : std_logic;
SIGNAL \port_out_08[5]~reg0_q\ : std_logic;
SIGNAL \port_out_08[6]~reg0_q\ : std_logic;
SIGNAL \port_out_08[7]~reg0_q\ : std_logic;
SIGNAL \U12~1_combout\ : std_logic;
SIGNAL \port_out_09[0]~reg0_q\ : std_logic;
SIGNAL \port_out_09[1]~reg0_q\ : std_logic;
SIGNAL \port_out_09[2]~reg0_q\ : std_logic;
SIGNAL \port_out_09[3]~reg0_q\ : std_logic;
SIGNAL \port_out_09[4]~reg0_q\ : std_logic;
SIGNAL \port_out_09[5]~reg0_q\ : std_logic;
SIGNAL \port_out_09[6]~reg0_q\ : std_logic;
SIGNAL \port_out_09[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_address[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_writen~input_o\ : std_logic;
SIGNAL \ALT_INV_address[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_U12~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_writen <= writen;
ww_address <= address;
ww_data_in <= data_in;
port_out_00 <= ww_port_out_00;
port_out_01 <= ww_port_out_01;
port_out_02 <= ww_port_out_02;
port_out_03 <= ww_port_out_03;
port_out_04 <= ww_port_out_04;
port_out_05 <= ww_port_out_05;
port_out_06 <= ww_port_out_06;
port_out_07 <= ww_port_out_07;
port_out_08 <= ww_port_out_08;
port_out_09 <= ww_port_out_09;
port_out_10 <= ww_port_out_10;
port_out_11 <= ww_port_out_11;
port_out_12 <= ww_port_out_12;
port_out_13 <= ww_port_out_13;
port_out_14 <= ww_port_out_14;
port_out_15 <= ww_port_out_15;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_address[2]~input_o\ <= NOT \address[2]~input_o\;
\ALT_INV_address[1]~input_o\ <= NOT \address[1]~input_o\;
\ALT_INV_address[7]~input_o\ <= NOT \address[7]~input_o\;
\ALT_INV_address[6]~input_o\ <= NOT \address[6]~input_o\;
\ALT_INV_address[5]~input_o\ <= NOT \address[5]~input_o\;
\ALT_INV_address[4]~input_o\ <= NOT \address[4]~input_o\;
\ALT_INV_writen~input_o\ <= NOT \writen~input_o\;
\ALT_INV_address[3]~input_o\ <= NOT \address[3]~input_o\;
\ALT_INV_address[0]~input_o\ <= NOT \address[0]~input_o\;
\ALT_INV_U12~0_combout\ <= NOT \U12~0_combout\;

\port_out_00[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_00(0));

\port_out_00[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_00(1));

\port_out_00[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_00(2));

\port_out_00[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_00(3));

\port_out_00[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_00(4));

\port_out_00[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_00(5));

\port_out_00[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_00(6));

\port_out_00[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_00[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_00(7));

\port_out_01[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_01(0));

\port_out_01[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_01(1));

\port_out_01[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_01(2));

\port_out_01[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_01(3));

\port_out_01[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_01(4));

\port_out_01[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_01(5));

\port_out_01[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_01(6));

\port_out_01[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_01[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_01(7));

\port_out_02[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_02[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_02(0));

\port_out_02[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_02[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_02(1));

\port_out_02[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_02[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_02(2));

\port_out_02[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_02[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_02(3));

\port_out_02[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_02[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_02(4));

\port_out_02[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_02[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_02(5));

\port_out_02[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_02[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_02(6));

\port_out_02[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_02[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_02(7));

\port_out_03[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_03[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_03(0));

\port_out_03[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_03[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_03(1));

\port_out_03[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_03[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_03(2));

\port_out_03[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_03[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_03(3));

\port_out_03[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_03[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_03(4));

\port_out_03[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_03[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_03(5));

\port_out_03[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_03[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_03(6));

\port_out_03[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_03[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_03(7));

\port_out_04[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_04[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_04(0));

\port_out_04[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_04[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_04(1));

\port_out_04[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_04[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_04(2));

\port_out_04[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_04[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_04(3));

\port_out_04[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_04[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_04(4));

\port_out_04[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_04[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_04(5));

\port_out_04[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_04[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_04(6));

\port_out_04[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_04[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_04(7));

\port_out_05[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_05[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_05(0));

\port_out_05[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_05[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_05(1));

\port_out_05[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_05[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_05(2));

\port_out_05[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_05[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_05(3));

\port_out_05[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_05[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_05(4));

\port_out_05[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_05[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_05(5));

\port_out_05[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_05[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_05(6));

\port_out_05[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_05[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_05(7));

\port_out_06[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_06[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_06(0));

\port_out_06[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_06[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_06(1));

\port_out_06[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_06[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_06(2));

\port_out_06[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_06[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_06(3));

\port_out_06[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_06[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_06(4));

\port_out_06[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_06[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_06(5));

\port_out_06[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_06[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_06(6));

\port_out_06[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_06[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_06(7));

\port_out_07[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_07[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_07(0));

\port_out_07[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_07[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_07(1));

\port_out_07[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_07[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_07(2));

\port_out_07[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_07[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_07(3));

\port_out_07[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_07[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_07(4));

\port_out_07[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_07[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_07(5));

\port_out_07[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_07[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_07(6));

\port_out_07[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_07[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_07(7));

\port_out_08[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_08[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_08(0));

\port_out_08[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_08[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_08(1));

\port_out_08[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_08[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_08(2));

\port_out_08[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_08[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_08(3));

\port_out_08[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_08[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_08(4));

\port_out_08[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_08[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_08(5));

\port_out_08[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_08[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_08(6));

\port_out_08[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_08[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_08(7));

\port_out_09[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_09[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_09(0));

\port_out_09[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_09[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_09(1));

\port_out_09[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_09[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_09(2));

\port_out_09[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_09[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_09(3));

\port_out_09[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_09[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_09(4));

\port_out_09[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_09[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_09(5));

\port_out_09[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_09[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_09(6));

\port_out_09[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out_09[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_port_out_09(7));

\port_out_10[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_10(0));

\port_out_10[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_10(1));

\port_out_10[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_10(2));

\port_out_10[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_10(3));

\port_out_10[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_10(4));

\port_out_10[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_10(5));

\port_out_10[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_10(6));

\port_out_10[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_10(7));

\port_out_11[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_11(0));

\port_out_11[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_11(1));

\port_out_11[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_11(2));

\port_out_11[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_11(3));

\port_out_11[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_11(4));

\port_out_11[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_11(5));

\port_out_11[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_11(6));

\port_out_11[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_11(7));

\port_out_12[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_12(0));

\port_out_12[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_12(1));

\port_out_12[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_12(2));

\port_out_12[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_12(3));

\port_out_12[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_12(4));

\port_out_12[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_12(5));

\port_out_12[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_12(6));

\port_out_12[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_12(7));

\port_out_13[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_13(0));

\port_out_13[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_13(1));

\port_out_13[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_13(2));

\port_out_13[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_13(3));

\port_out_13[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_13(4));

\port_out_13[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_13(5));

\port_out_13[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_13(6));

\port_out_13[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_13(7));

\port_out_14[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_14(0));

\port_out_14[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_14(1));

\port_out_14[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_14(2));

\port_out_14[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_14(3));

\port_out_14[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_14(4));

\port_out_14[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_14(5));

\port_out_14[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_14(6));

\port_out_14[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_14(7));

\port_out_15[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_15(0));

\port_out_15[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_15(1));

\port_out_15[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_15(2));

\port_out_15[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_15(3));

\port_out_15[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_15(4));

\port_out_15[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_15(5));

\port_out_15[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_15(6));

\port_out_15[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_port_out_15(7));

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\data_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

\address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

\writen~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writen,
	o => \writen~input_o\);

\address[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

\address[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

\address[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

\address[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

\U12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U12~0_combout\ = ( \address[7]~input_o\ & ( (\writen~input_o\ & (!\address[4]~input_o\ & (\address[5]~input_o\ & \address[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_writen~input_o\,
	datab => \ALT_INV_address[4]~input_o\,
	datac => \ALT_INV_address[5]~input_o\,
	datad => \ALT_INV_address[6]~input_o\,
	datae => \ALT_INV_address[7]~input_o\,
	combout => \U12~0_combout\);

\address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

\address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

\U3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3~0_combout\ = ( !\address[2]~input_o\ & ( (!\address[0]~input_o\ & (!\address[3]~input_o\ & (\U12~0_combout\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \U3~0_combout\);

\port_out_00[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[0]~reg0_q\);

\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

\port_out_00[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[1]~reg0_q\);

\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

\port_out_00[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[2]~reg0_q\);

\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

\port_out_00[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[3]~reg0_q\);

\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

\port_out_00[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[4]~reg0_q\);

\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

\port_out_00[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[5]~reg0_q\);

\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

\port_out_00[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[6]~reg0_q\);

\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

\port_out_00[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_00[7]~reg0_q\);

\U4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4~0_combout\ = ( !\address[2]~input_o\ & ( (\address[0]~input_o\ & (!\address[3]~input_o\ & (\U12~0_combout\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \U4~0_combout\);

\port_out_01[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[0]~reg0_q\);

\port_out_01[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[1]~reg0_q\);

\port_out_01[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[2]~reg0_q\);

\port_out_01[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[3]~reg0_q\);

\port_out_01[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[4]~reg0_q\);

\port_out_01[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[5]~reg0_q\);

\port_out_01[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[6]~reg0_q\);

\port_out_01[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_01[7]~reg0_q\);

\U5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5~0_combout\ = ( !\address[2]~input_o\ & ( (!\address[0]~input_o\ & (!\address[3]~input_o\ & (\U12~0_combout\ & \address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \U5~0_combout\);

\port_out_02[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_02[0]~reg0_q\);

\port_out_02[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_02[1]~reg0_q\);

\port_out_02[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_02[2]~reg0_q\);

\port_out_02[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_02[3]~reg0_q\);

\port_out_02[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_02[4]~reg0_q\);

\port_out_02[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_02[5]~reg0_q\);

\port_out_02[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_02[6]~reg0_q\);

\port_out_02[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_02[7]~reg0_q\);

\U6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6~0_combout\ = ( !\address[2]~input_o\ & ( (\address[0]~input_o\ & (!\address[3]~input_o\ & (\U12~0_combout\ & \address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \U6~0_combout\);

\port_out_03[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_03[0]~reg0_q\);

\port_out_03[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_03[1]~reg0_q\);

\port_out_03[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_03[2]~reg0_q\);

\port_out_03[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_03[3]~reg0_q\);

\port_out_03[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_03[4]~reg0_q\);

\port_out_03[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_03[5]~reg0_q\);

\port_out_03[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_03[6]~reg0_q\);

\port_out_03[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_03[7]~reg0_q\);

\U7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U7~0_combout\ = ( \address[2]~input_o\ & ( (!\address[0]~input_o\ & (!\address[3]~input_o\ & (\U12~0_combout\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \U7~0_combout\);

\port_out_04[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_04[0]~reg0_q\);

\port_out_04[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_04[1]~reg0_q\);

\port_out_04[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_04[2]~reg0_q\);

\port_out_04[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_04[3]~reg0_q\);

\port_out_04[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_04[4]~reg0_q\);

\port_out_04[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_04[5]~reg0_q\);

\port_out_04[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_04[6]~reg0_q\);

\port_out_04[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_04[7]~reg0_q\);

\U8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U8~0_combout\ = ( \address[2]~input_o\ & ( (\address[0]~input_o\ & (!\address[3]~input_o\ & (\U12~0_combout\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \U8~0_combout\);

\port_out_05[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_05[0]~reg0_q\);

\port_out_05[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_05[1]~reg0_q\);

\port_out_05[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_05[2]~reg0_q\);

\port_out_05[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_05[3]~reg0_q\);

\port_out_05[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_05[4]~reg0_q\);

\port_out_05[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_05[5]~reg0_q\);

\port_out_05[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_05[6]~reg0_q\);

\port_out_05[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_05[7]~reg0_q\);

\U9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9~0_combout\ = ( \address[2]~input_o\ & ( (!\address[0]~input_o\ & (!\address[3]~input_o\ & (\U12~0_combout\ & \address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \U9~0_combout\);

\port_out_06[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_06[0]~reg0_q\);

\port_out_06[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_06[1]~reg0_q\);

\port_out_06[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_06[2]~reg0_q\);

\port_out_06[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_06[3]~reg0_q\);

\port_out_06[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_06[4]~reg0_q\);

\port_out_06[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_06[5]~reg0_q\);

\port_out_06[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_06[6]~reg0_q\);

\port_out_06[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_06[7]~reg0_q\);

\U10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U10~0_combout\ = ( \address[2]~input_o\ & ( (\address[0]~input_o\ & (!\address[3]~input_o\ & (\U12~0_combout\ & \address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \U10~0_combout\);

\port_out_07[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_07[0]~reg0_q\);

\port_out_07[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_07[1]~reg0_q\);

\port_out_07[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_07[2]~reg0_q\);

\port_out_07[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_07[3]~reg0_q\);

\port_out_07[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_07[4]~reg0_q\);

\port_out_07[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_07[5]~reg0_q\);

\port_out_07[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_07[6]~reg0_q\);

\port_out_07[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_07[7]~reg0_q\);

\U11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U11~0_combout\ = ( !\address[2]~input_o\ & ( (!\address[0]~input_o\ & (\address[3]~input_o\ & (\U12~0_combout\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \U11~0_combout\);

\port_out_08[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_08[0]~reg0_q\);

\port_out_08[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_08[1]~reg0_q\);

\port_out_08[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_08[2]~reg0_q\);

\port_out_08[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_08[3]~reg0_q\);

\port_out_08[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_08[4]~reg0_q\);

\port_out_08[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_08[5]~reg0_q\);

\port_out_08[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_08[6]~reg0_q\);

\port_out_08[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_08[7]~reg0_q\);

\U12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U12~1_combout\ = ( !\address[2]~input_o\ & ( (\address[0]~input_o\ & (\address[3]~input_o\ & (\U12~0_combout\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \U12~1_combout\);

\port_out_09[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_09[0]~reg0_q\);

\port_out_09[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_09[1]~reg0_q\);

\port_out_09[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_09[2]~reg0_q\);

\port_out_09[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_09[3]~reg0_q\);

\port_out_09[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_09[4]~reg0_q\);

\port_out_09[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_09[5]~reg0_q\);

\port_out_09[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_09[6]~reg0_q\);

\port_out_09[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out_09[7]~reg0_q\);

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


