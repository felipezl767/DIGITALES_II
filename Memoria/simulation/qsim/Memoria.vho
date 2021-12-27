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

-- DATE "12/16/2021 00:29:04"

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

ENTITY 	Memoria IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	writen : IN std_logic;
	address : IN std_logic_vector(7 DOWNTO 0);
	data_in : IN std_logic_vector(7 DOWNTO 0);
	port_in_00 : IN std_logic_vector(7 DOWNTO 0);
	port_in_01 : IN std_logic_vector(7 DOWNTO 0);
	port_in_02 : IN std_logic_vector(7 DOWNTO 0);
	port_in_03 : IN std_logic_vector(7 DOWNTO 0);
	port_in_04 : IN std_logic_vector(7 DOWNTO 0);
	port_in_05 : IN std_logic_vector(7 DOWNTO 0);
	port_in_06 : IN std_logic_vector(7 DOWNTO 0);
	port_in_07 : IN std_logic_vector(7 DOWNTO 0);
	port_in_08 : IN std_logic_vector(7 DOWNTO 0);
	port_in_09 : IN std_logic_vector(7 DOWNTO 0);
	port_in_10 : IN std_logic_vector(7 DOWNTO 0);
	port_in_11 : IN std_logic_vector(7 DOWNTO 0);
	port_in_12 : IN std_logic_vector(7 DOWNTO 0);
	port_in_13 : IN std_logic_vector(7 DOWNTO 0);
	port_in_14 : IN std_logic_vector(7 DOWNTO 0);
	port_in_15 : IN std_logic_vector(7 DOWNTO 0);
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
END Memoria;

-- Design Ports Information
-- port_in_00[0]	-- port_in_00[1]	-- port_in_00[2]	-- port_in_00[3]	-- port_in_00[4]	-- port_in_00[5]	-- port_in_00[6]	-- port_in_00[7]	-- port_in_01[0]	-- port_in_01[1]	-- port_in_01[2]	-- port_in_01[3]	-- port_in_01[4]	-- port_in_01[5]	-- port_in_01[6]	-- port_in_01[7]	-- port_in_02[0]	-- port_in_02[1]	-- port_in_02[2]	-- port_in_02[3]	-- port_in_02[4]	-- port_in_02[5]	-- port_in_02[6]	-- port_in_02[7]	-- port_in_03[0]	-- port_in_03[1]	-- port_in_03[2]	-- port_in_03[3]	-- port_in_03[4]	-- port_in_03[5]	-- port_in_03[6]	-- port_in_03[7]	-- port_in_04[0]	-- port_in_04[1]	-- port_in_04[2]	-- port_in_04[3]	-- port_in_04[4]	-- port_in_04[5]	-- port_in_04[6]	-- port_in_04[7]	-- port_in_05[0]	-- port_in_05[1]	-- port_in_05[2]	-- port_in_05[3]	-- port_in_05[4]	-- port_in_05[5]	-- port_in_05[6]	-- port_in_05[7]	-- port_in_06[0]	-- port_in_06[1]	-- port_in_06[2]	-- port_in_06[3]	-- port_in_06[4]	-- port_in_06[5]	-- port_in_06[6]	-- port_in_06[7]	-- port_in_07[0]	-- port_in_07[1]	-- port_in_07[2]	-- port_in_07[3]	-- port_in_07[4]	-- port_in_07[5]	-- port_in_07[6]	-- port_in_07[7]	-- port_in_08[0]	-- port_in_08[1]	-- port_in_08[2]	-- port_in_08[3]	-- port_in_08[4]	-- port_in_08[5]	-- port_in_08[6]	-- port_in_08[7]	-- port_in_09[0]	-- port_in_09[1]	-- port_in_09[2]	-- port_in_09[3]	-- port_in_09[4]	-- port_in_09[5]	-- port_in_09[6]	-- port_in_09[7]	-- port_in_10[0]	-- port_in_10[1]	-- port_in_10[2]	-- port_in_10[3]	-- port_in_10[4]	-- port_in_10[5]	-- port_in_10[6]	-- port_in_10[7]	-- port_in_11[0]	-- port_in_11[1]	-- port_in_11[2]	-- port_in_11[3]	-- port_in_11[4]	-- port_in_11[5]	-- port_in_11[6]	-- port_in_11[7]	-- port_in_12[0]	-- port_in_12[1]	-- port_in_12[2]	-- port_in_12[3]	-- port_in_12[4]	-- port_in_12[5]	-- port_in_12[6]	-- port_in_12[7]	-- port_in_13[0]	-- port_in_13[1]	-- port_in_13[2]	-- port_in_13[3]	-- port_in_13[4]	-- port_in_13[5]	-- port_in_13[6]	-- port_in_13[7]	-- port_in_14[0]	-- port_in_14[1]	-- port_in_14[2]	-- port_in_14[3]	-- port_in_14[4]	-- port_in_14[5]	-- port_in_14[6]	-- port_in_14[7]	-- port_in_15[0]	-- port_in_15[1]	-- port_in_15[2]	-- port_in_15[3]	-- port_in_15[4]	-- port_in_15[5]	-- port_in_15[6]	-- port_in_15[7]	-- port_out_00[0]	-- port_out_00[1]	-- port_out_00[2]	-- port_out_00[3]	-- port_out_00[4]	-- port_out_00[5]	-- port_out_00[6]	-- port_out_00[7]	-- port_out_01[0]	-- port_out_01[1]	-- port_out_01[2]	-- port_out_01[3]	-- port_out_01[4]	-- port_out_01[5]	-- port_out_01[6]	-- port_out_01[7]	-- port_out_02[0]	-- port_out_02[1]	-- port_out_02[2]	-- port_out_02[3]	-- port_out_02[4]	-- port_out_02[5]	-- port_out_02[6]	-- port_out_02[7]	-- port_out_03[0]	-- port_out_03[1]	-- port_out_03[2]	-- port_out_03[3]	-- port_out_03[4]	-- port_out_03[5]	-- port_out_03[6]	-- port_out_03[7]	-- port_out_04[0]	-- port_out_04[1]	-- port_out_04[2]	-- port_out_04[3]	-- port_out_04[4]	-- port_out_04[5]	-- port_out_04[6]	-- port_out_04[7]	-- port_out_05[0]	-- port_out_05[1]	-- port_out_05[2]	-- port_out_05[3]	-- port_out_05[4]	-- port_out_05[5]	-- port_out_05[6]	-- port_out_05[7]	-- port_out_06[0]	-- port_out_06[1]	-- port_out_06[2]	-- port_out_06[3]	-- port_out_06[4]	-- port_out_06[5]	-- port_out_06[6]	-- port_out_06[7]	-- port_out_07[0]	-- port_out_07[1]	-- port_out_07[2]	-- port_out_07[3]	-- port_out_07[4]	-- port_out_07[5]	-- port_out_07[6]	-- port_out_07[7]	-- port_out_08[0]	-- port_out_08[1]	-- port_out_08[2]	-- port_out_08[3]	-- port_out_08[4]	-- port_out_08[5]	-- port_out_08[6]	-- port_out_08[7]	-- port_out_09[0]	-- port_out_09[1]	-- port_out_09[2]	-- port_out_09[3]	-- port_out_09[4]	-- port_out_09[5]	-- port_out_09[6]	-- port_out_09[7]	-- port_out_10[0]	-- port_out_10[1]	-- port_out_10[2]	-- port_out_10[3]	-- port_out_10[4]	-- port_out_10[5]	-- port_out_10[6]	-- port_out_10[7]	-- port_out_11[0]	-- port_out_11[1]	-- port_out_11[2]	-- port_out_11[3]	-- port_out_11[4]	-- port_out_11[5]	-- port_out_11[6]	-- port_out_11[7]	-- port_out_12[0]	-- port_out_12[1]	-- port_out_12[2]	-- port_out_12[3]	-- port_out_12[4]	-- port_out_12[5]	-- port_out_12[6]	-- port_out_12[7]	-- port_out_13[0]	-- port_out_13[1]	-- port_out_13[2]	-- port_out_13[3]	-- port_out_13[4]	-- port_out_13[5]	-- port_out_13[6]	-- port_out_13[7]	-- port_out_14[0]	-- port_out_14[1]	-- port_out_14[2]	-- port_out_14[3]	-- port_out_14[4]	-- port_out_14[5]	-- port_out_14[6]	-- port_out_14[7]	-- port_out_15[0]	-- port_out_15[1]	-- port_out_15[2]	-- port_out_15[3]	-- port_out_15[4]	-- port_out_15[5]	-- port_out_15[6]	-- port_out_15[7]	-- data_in[0]	-- clock	-- reset	-- address[0]	-- address[3]	-- writen	-- address[4]	-- address[5]	-- address[6]	-- address[7]	-- address[1]	-- address[2]	-- data_in[1]	-- data_in[2]	-- data_in[3]	-- data_in[4]	-- data_in[5]	-- data_in[6]	-- data_in[7]	

ARCHITECTURE structure OF Memoria IS
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
SIGNAL ww_port_in_00 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_01 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_02 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_03 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_04 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_05 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_06 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_07 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_08 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_09 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_10 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_11 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_12 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_13 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_14 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_port_in_15 : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \port_in_00[0]~input_o\ : std_logic;
SIGNAL \port_in_00[1]~input_o\ : std_logic;
SIGNAL \port_in_00[2]~input_o\ : std_logic;
SIGNAL \port_in_00[3]~input_o\ : std_logic;
SIGNAL \port_in_00[4]~input_o\ : std_logic;
SIGNAL \port_in_00[5]~input_o\ : std_logic;
SIGNAL \port_in_00[6]~input_o\ : std_logic;
SIGNAL \port_in_00[7]~input_o\ : std_logic;
SIGNAL \port_in_01[0]~input_o\ : std_logic;
SIGNAL \port_in_01[1]~input_o\ : std_logic;
SIGNAL \port_in_01[2]~input_o\ : std_logic;
SIGNAL \port_in_01[3]~input_o\ : std_logic;
SIGNAL \port_in_01[4]~input_o\ : std_logic;
SIGNAL \port_in_01[5]~input_o\ : std_logic;
SIGNAL \port_in_01[6]~input_o\ : std_logic;
SIGNAL \port_in_01[7]~input_o\ : std_logic;
SIGNAL \port_in_02[0]~input_o\ : std_logic;
SIGNAL \port_in_02[1]~input_o\ : std_logic;
SIGNAL \port_in_02[2]~input_o\ : std_logic;
SIGNAL \port_in_02[3]~input_o\ : std_logic;
SIGNAL \port_in_02[4]~input_o\ : std_logic;
SIGNAL \port_in_02[5]~input_o\ : std_logic;
SIGNAL \port_in_02[6]~input_o\ : std_logic;
SIGNAL \port_in_02[7]~input_o\ : std_logic;
SIGNAL \port_in_03[0]~input_o\ : std_logic;
SIGNAL \port_in_03[1]~input_o\ : std_logic;
SIGNAL \port_in_03[2]~input_o\ : std_logic;
SIGNAL \port_in_03[3]~input_o\ : std_logic;
SIGNAL \port_in_03[4]~input_o\ : std_logic;
SIGNAL \port_in_03[5]~input_o\ : std_logic;
SIGNAL \port_in_03[6]~input_o\ : std_logic;
SIGNAL \port_in_03[7]~input_o\ : std_logic;
SIGNAL \port_in_04[0]~input_o\ : std_logic;
SIGNAL \port_in_04[1]~input_o\ : std_logic;
SIGNAL \port_in_04[2]~input_o\ : std_logic;
SIGNAL \port_in_04[3]~input_o\ : std_logic;
SIGNAL \port_in_04[4]~input_o\ : std_logic;
SIGNAL \port_in_04[5]~input_o\ : std_logic;
SIGNAL \port_in_04[6]~input_o\ : std_logic;
SIGNAL \port_in_04[7]~input_o\ : std_logic;
SIGNAL \port_in_05[0]~input_o\ : std_logic;
SIGNAL \port_in_05[1]~input_o\ : std_logic;
SIGNAL \port_in_05[2]~input_o\ : std_logic;
SIGNAL \port_in_05[3]~input_o\ : std_logic;
SIGNAL \port_in_05[4]~input_o\ : std_logic;
SIGNAL \port_in_05[5]~input_o\ : std_logic;
SIGNAL \port_in_05[6]~input_o\ : std_logic;
SIGNAL \port_in_05[7]~input_o\ : std_logic;
SIGNAL \port_in_06[0]~input_o\ : std_logic;
SIGNAL \port_in_06[1]~input_o\ : std_logic;
SIGNAL \port_in_06[2]~input_o\ : std_logic;
SIGNAL \port_in_06[3]~input_o\ : std_logic;
SIGNAL \port_in_06[4]~input_o\ : std_logic;
SIGNAL \port_in_06[5]~input_o\ : std_logic;
SIGNAL \port_in_06[6]~input_o\ : std_logic;
SIGNAL \port_in_06[7]~input_o\ : std_logic;
SIGNAL \port_in_07[0]~input_o\ : std_logic;
SIGNAL \port_in_07[1]~input_o\ : std_logic;
SIGNAL \port_in_07[2]~input_o\ : std_logic;
SIGNAL \port_in_07[3]~input_o\ : std_logic;
SIGNAL \port_in_07[4]~input_o\ : std_logic;
SIGNAL \port_in_07[5]~input_o\ : std_logic;
SIGNAL \port_in_07[6]~input_o\ : std_logic;
SIGNAL \port_in_07[7]~input_o\ : std_logic;
SIGNAL \port_in_08[0]~input_o\ : std_logic;
SIGNAL \port_in_08[1]~input_o\ : std_logic;
SIGNAL \port_in_08[2]~input_o\ : std_logic;
SIGNAL \port_in_08[3]~input_o\ : std_logic;
SIGNAL \port_in_08[4]~input_o\ : std_logic;
SIGNAL \port_in_08[5]~input_o\ : std_logic;
SIGNAL \port_in_08[6]~input_o\ : std_logic;
SIGNAL \port_in_08[7]~input_o\ : std_logic;
SIGNAL \port_in_09[0]~input_o\ : std_logic;
SIGNAL \port_in_09[1]~input_o\ : std_logic;
SIGNAL \port_in_09[2]~input_o\ : std_logic;
SIGNAL \port_in_09[3]~input_o\ : std_logic;
SIGNAL \port_in_09[4]~input_o\ : std_logic;
SIGNAL \port_in_09[5]~input_o\ : std_logic;
SIGNAL \port_in_09[6]~input_o\ : std_logic;
SIGNAL \port_in_09[7]~input_o\ : std_logic;
SIGNAL \port_in_10[0]~input_o\ : std_logic;
SIGNAL \port_in_10[1]~input_o\ : std_logic;
SIGNAL \port_in_10[2]~input_o\ : std_logic;
SIGNAL \port_in_10[3]~input_o\ : std_logic;
SIGNAL \port_in_10[4]~input_o\ : std_logic;
SIGNAL \port_in_10[5]~input_o\ : std_logic;
SIGNAL \port_in_10[6]~input_o\ : std_logic;
SIGNAL \port_in_10[7]~input_o\ : std_logic;
SIGNAL \port_in_11[0]~input_o\ : std_logic;
SIGNAL \port_in_11[1]~input_o\ : std_logic;
SIGNAL \port_in_11[2]~input_o\ : std_logic;
SIGNAL \port_in_11[3]~input_o\ : std_logic;
SIGNAL \port_in_11[4]~input_o\ : std_logic;
SIGNAL \port_in_11[5]~input_o\ : std_logic;
SIGNAL \port_in_11[6]~input_o\ : std_logic;
SIGNAL \port_in_11[7]~input_o\ : std_logic;
SIGNAL \port_in_12[0]~input_o\ : std_logic;
SIGNAL \port_in_12[1]~input_o\ : std_logic;
SIGNAL \port_in_12[2]~input_o\ : std_logic;
SIGNAL \port_in_12[3]~input_o\ : std_logic;
SIGNAL \port_in_12[4]~input_o\ : std_logic;
SIGNAL \port_in_12[5]~input_o\ : std_logic;
SIGNAL \port_in_12[6]~input_o\ : std_logic;
SIGNAL \port_in_12[7]~input_o\ : std_logic;
SIGNAL \port_in_13[0]~input_o\ : std_logic;
SIGNAL \port_in_13[1]~input_o\ : std_logic;
SIGNAL \port_in_13[2]~input_o\ : std_logic;
SIGNAL \port_in_13[3]~input_o\ : std_logic;
SIGNAL \port_in_13[4]~input_o\ : std_logic;
SIGNAL \port_in_13[5]~input_o\ : std_logic;
SIGNAL \port_in_13[6]~input_o\ : std_logic;
SIGNAL \port_in_13[7]~input_o\ : std_logic;
SIGNAL \port_in_14[0]~input_o\ : std_logic;
SIGNAL \port_in_14[1]~input_o\ : std_logic;
SIGNAL \port_in_14[2]~input_o\ : std_logic;
SIGNAL \port_in_14[3]~input_o\ : std_logic;
SIGNAL \port_in_14[4]~input_o\ : std_logic;
SIGNAL \port_in_14[5]~input_o\ : std_logic;
SIGNAL \port_in_14[6]~input_o\ : std_logic;
SIGNAL \port_in_14[7]~input_o\ : std_logic;
SIGNAL \port_in_15[0]~input_o\ : std_logic;
SIGNAL \port_in_15[1]~input_o\ : std_logic;
SIGNAL \port_in_15[2]~input_o\ : std_logic;
SIGNAL \port_in_15[3]~input_o\ : std_logic;
SIGNAL \port_in_15[4]~input_o\ : std_logic;
SIGNAL \port_in_15[5]~input_o\ : std_logic;
SIGNAL \port_in_15[6]~input_o\ : std_logic;
SIGNAL \port_in_15[7]~input_o\ : std_logic;
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
SIGNAL \port_out|U12~0_combout\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \port_out|U3~0_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \port_out|U4~0_combout\ : std_logic;
SIGNAL \port_out|U5~0_combout\ : std_logic;
SIGNAL \port_out|U6~0_combout\ : std_logic;
SIGNAL \port_out|U7~0_combout\ : std_logic;
SIGNAL \port_out|U8~0_combout\ : std_logic;
SIGNAL \port_out|U9~0_combout\ : std_logic;
SIGNAL \port_out|U10~0_combout\ : std_logic;
SIGNAL \port_out|U11~0_combout\ : std_logic;
SIGNAL \port_out|U12~1_combout\ : std_logic;
SIGNAL \port_out|port_out_08\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_out|port_out_00\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_out|port_out_01\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_out|port_out_02\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_out|port_out_03\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_out|port_out_04\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_out|port_out_05\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_out|port_out_06\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_out|port_out_07\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \port_out|port_out_09\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_address[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_writen~input_o\ : std_logic;
SIGNAL \ALT_INV_address[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[0]~input_o\ : std_logic;
SIGNAL \port_out|ALT_INV_U12~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_writen <= writen;
ww_address <= address;
ww_data_in <= data_in;
ww_port_in_00 <= port_in_00;
ww_port_in_01 <= port_in_01;
ww_port_in_02 <= port_in_02;
ww_port_in_03 <= port_in_03;
ww_port_in_04 <= port_in_04;
ww_port_in_05 <= port_in_05;
ww_port_in_06 <= port_in_06;
ww_port_in_07 <= port_in_07;
ww_port_in_08 <= port_in_08;
ww_port_in_09 <= port_in_09;
ww_port_in_10 <= port_in_10;
ww_port_in_11 <= port_in_11;
ww_port_in_12 <= port_in_12;
ww_port_in_13 <= port_in_13;
ww_port_in_14 <= port_in_14;
ww_port_in_15 <= port_in_15;
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
\port_out|ALT_INV_U12~0_combout\ <= NOT \port_out|U12~0_combout\;

\port_out_00[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \port_out|port_out_00\(0),
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
	i => \port_out|port_out_00\(1),
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
	i => \port_out|port_out_00\(2),
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
	i => \port_out|port_out_00\(3),
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
	i => \port_out|port_out_00\(4),
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
	i => \port_out|port_out_00\(5),
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
	i => \port_out|port_out_00\(6),
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
	i => \port_out|port_out_00\(7),
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
	i => \port_out|port_out_01\(0),
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
	i => \port_out|port_out_01\(1),
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
	i => \port_out|port_out_01\(2),
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
	i => \port_out|port_out_01\(3),
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
	i => \port_out|port_out_01\(4),
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
	i => \port_out|port_out_01\(5),
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
	i => \port_out|port_out_01\(6),
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
	i => \port_out|port_out_01\(7),
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
	i => \port_out|port_out_02\(0),
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
	i => \port_out|port_out_02\(1),
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
	i => \port_out|port_out_02\(2),
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
	i => \port_out|port_out_02\(3),
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
	i => \port_out|port_out_02\(4),
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
	i => \port_out|port_out_02\(5),
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
	i => \port_out|port_out_02\(6),
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
	i => \port_out|port_out_02\(7),
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
	i => \port_out|port_out_03\(0),
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
	i => \port_out|port_out_03\(1),
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
	i => \port_out|port_out_03\(2),
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
	i => \port_out|port_out_03\(3),
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
	i => \port_out|port_out_03\(4),
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
	i => \port_out|port_out_03\(5),
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
	i => \port_out|port_out_03\(6),
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
	i => \port_out|port_out_03\(7),
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
	i => \port_out|port_out_04\(0),
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
	i => \port_out|port_out_04\(1),
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
	i => \port_out|port_out_04\(2),
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
	i => \port_out|port_out_04\(3),
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
	i => \port_out|port_out_04\(4),
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
	i => \port_out|port_out_04\(5),
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
	i => \port_out|port_out_04\(6),
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
	i => \port_out|port_out_04\(7),
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
	i => \port_out|port_out_05\(0),
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
	i => \port_out|port_out_05\(1),
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
	i => \port_out|port_out_05\(2),
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
	i => \port_out|port_out_05\(3),
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
	i => \port_out|port_out_05\(4),
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
	i => \port_out|port_out_05\(5),
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
	i => \port_out|port_out_05\(6),
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
	i => \port_out|port_out_05\(7),
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
	i => \port_out|port_out_06\(0),
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
	i => \port_out|port_out_06\(1),
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
	i => \port_out|port_out_06\(2),
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
	i => \port_out|port_out_06\(3),
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
	i => \port_out|port_out_06\(4),
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
	i => \port_out|port_out_06\(5),
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
	i => \port_out|port_out_06\(6),
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
	i => \port_out|port_out_06\(7),
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
	i => \port_out|port_out_07\(0),
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
	i => \port_out|port_out_07\(1),
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
	i => \port_out|port_out_07\(2),
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
	i => \port_out|port_out_07\(3),
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
	i => \port_out|port_out_07\(4),
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
	i => \port_out|port_out_07\(5),
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
	i => \port_out|port_out_07\(6),
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
	i => \port_out|port_out_07\(7),
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
	i => \port_out|port_out_08\(0),
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
	i => \port_out|port_out_08\(1),
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
	i => \port_out|port_out_08\(2),
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
	i => \port_out|port_out_08\(3),
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
	i => \port_out|port_out_08\(4),
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
	i => \port_out|port_out_08\(5),
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
	i => \port_out|port_out_08\(6),
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
	i => \port_out|port_out_08\(7),
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
	i => \port_out|port_out_09\(0),
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
	i => \port_out|port_out_09\(1),
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
	i => \port_out|port_out_09\(2),
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
	i => \port_out|port_out_09\(3),
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
	i => \port_out|port_out_09\(4),
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
	i => \port_out|port_out_09\(5),
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
	i => \port_out|port_out_09\(6),
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
	i => \port_out|port_out_09\(7),
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

\port_out|U12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_out|U12~0_combout\ = ( \address[7]~input_o\ & ( (\writen~input_o\ & (!\address[4]~input_o\ & (\address[5]~input_o\ & \address[6]~input_o\))) ) )

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
	combout => \port_out|U12~0_combout\);

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

\port_out|U3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_out|U3~0_combout\ = ( !\address[2]~input_o\ & ( (!\address[0]~input_o\ & (!\address[3]~input_o\ & (\port_out|U12~0_combout\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \port_out|ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \port_out|U3~0_combout\);

\port_out|port_out_00[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_00\(0));

\data_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

\port_out|port_out_00[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_00\(1));

\data_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

\port_out|port_out_00[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_00\(2));

\data_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

\port_out|port_out_00[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_00\(3));

\data_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

\port_out|port_out_00[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_00\(4));

\data_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

\port_out|port_out_00[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_00\(5));

\data_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

\port_out|port_out_00[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_00\(6));

\data_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

\port_out|port_out_00[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_00\(7));

\port_out|U4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_out|U4~0_combout\ = ( !\address[2]~input_o\ & ( (\address[0]~input_o\ & (!\address[3]~input_o\ & (\port_out|U12~0_combout\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \port_out|ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \port_out|U4~0_combout\);

\port_out|port_out_01[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_01\(0));

\port_out|port_out_01[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_01\(1));

\port_out|port_out_01[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_01\(2));

\port_out|port_out_01[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_01\(3));

\port_out|port_out_01[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_01\(4));

\port_out|port_out_01[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_01\(5));

\port_out|port_out_01[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_01\(6));

\port_out|port_out_01[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_01\(7));

\port_out|U5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_out|U5~0_combout\ = ( !\address[2]~input_o\ & ( (!\address[0]~input_o\ & (!\address[3]~input_o\ & (\port_out|U12~0_combout\ & \address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \port_out|ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \port_out|U5~0_combout\);

\port_out|port_out_02[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_02\(0));

\port_out|port_out_02[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_02\(1));

\port_out|port_out_02[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_02\(2));

\port_out|port_out_02[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_02\(3));

\port_out|port_out_02[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_02\(4));

\port_out|port_out_02[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_02\(5));

\port_out|port_out_02[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_02\(6));

\port_out|port_out_02[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_02\(7));

\port_out|U6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_out|U6~0_combout\ = ( !\address[2]~input_o\ & ( (\address[0]~input_o\ & (!\address[3]~input_o\ & (\port_out|U12~0_combout\ & \address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \port_out|ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \port_out|U6~0_combout\);

\port_out|port_out_03[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_03\(0));

\port_out|port_out_03[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_03\(1));

\port_out|port_out_03[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_03\(2));

\port_out|port_out_03[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_03\(3));

\port_out|port_out_03[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_03\(4));

\port_out|port_out_03[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_03\(5));

\port_out|port_out_03[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_03\(6));

\port_out|port_out_03[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_03\(7));

\port_out|U7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_out|U7~0_combout\ = ( \address[2]~input_o\ & ( (!\address[0]~input_o\ & (!\address[3]~input_o\ & (\port_out|U12~0_combout\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \port_out|ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \port_out|U7~0_combout\);

\port_out|port_out_04[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_04\(0));

\port_out|port_out_04[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_04\(1));

\port_out|port_out_04[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_04\(2));

\port_out|port_out_04[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_04\(3));

\port_out|port_out_04[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_04\(4));

\port_out|port_out_04[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_04\(5));

\port_out|port_out_04[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_04\(6));

\port_out|port_out_04[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_04\(7));

\port_out|U8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_out|U8~0_combout\ = ( \address[2]~input_o\ & ( (\address[0]~input_o\ & (!\address[3]~input_o\ & (\port_out|U12~0_combout\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \port_out|ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \port_out|U8~0_combout\);

\port_out|port_out_05[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_05\(0));

\port_out|port_out_05[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_05\(1));

\port_out|port_out_05[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_05\(2));

\port_out|port_out_05[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_05\(3));

\port_out|port_out_05[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_05\(4));

\port_out|port_out_05[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_05\(5));

\port_out|port_out_05[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_05\(6));

\port_out|port_out_05[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_05\(7));

\port_out|U9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_out|U9~0_combout\ = ( \address[2]~input_o\ & ( (!\address[0]~input_o\ & (!\address[3]~input_o\ & (\port_out|U12~0_combout\ & \address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \port_out|ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \port_out|U9~0_combout\);

\port_out|port_out_06[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_06\(0));

\port_out|port_out_06[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_06\(1));

\port_out|port_out_06[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_06\(2));

\port_out|port_out_06[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_06\(3));

\port_out|port_out_06[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_06\(4));

\port_out|port_out_06[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_06\(5));

\port_out|port_out_06[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_06\(6));

\port_out|port_out_06[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_06\(7));

\port_out|U10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_out|U10~0_combout\ = ( \address[2]~input_o\ & ( (\address[0]~input_o\ & (!\address[3]~input_o\ & (\port_out|U12~0_combout\ & \address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \port_out|ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \port_out|U10~0_combout\);

\port_out|port_out_07[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_07\(0));

\port_out|port_out_07[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_07\(1));

\port_out|port_out_07[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_07\(2));

\port_out|port_out_07[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_07\(3));

\port_out|port_out_07[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_07\(4));

\port_out|port_out_07[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_07\(5));

\port_out|port_out_07[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_07\(6));

\port_out|port_out_07[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_07\(7));

\port_out|U11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_out|U11~0_combout\ = ( !\address[2]~input_o\ & ( (!\address[0]~input_o\ & (\address[3]~input_o\ & (\port_out|U12~0_combout\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \port_out|ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \port_out|U11~0_combout\);

\port_out|port_out_08[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_08\(0));

\port_out|port_out_08[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_08\(1));

\port_out|port_out_08[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_08\(2));

\port_out|port_out_08[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_08\(3));

\port_out|port_out_08[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_08\(4));

\port_out|port_out_08[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_08\(5));

\port_out|port_out_08[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_08\(6));

\port_out|port_out_08[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_08\(7));

\port_out|U12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \port_out|U12~1_combout\ = ( !\address[2]~input_o\ & ( (\address[0]~input_o\ & (\address[3]~input_o\ & (\port_out|U12~0_combout\ & !\address[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_address[3]~input_o\,
	datac => \port_out|ALT_INV_U12~0_combout\,
	datad => \ALT_INV_address[1]~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \port_out|U12~1_combout\);

\port_out|port_out_09[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[0]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_09\(0));

\port_out|port_out_09[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[1]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_09\(1));

\port_out|port_out_09[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[2]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_09\(2));

\port_out|port_out_09[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[3]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_09\(3));

\port_out|port_out_09[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[4]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_09\(4));

\port_out|port_out_09[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[5]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_09\(5));

\port_out|port_out_09[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[6]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_09\(6));

\port_out|port_out_09[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_in[7]~input_o\,
	clrn => \reset~input_o\,
	ena => \port_out|U12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \port_out|port_out_09\(7));

\port_in_00[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(0),
	o => \port_in_00[0]~input_o\);

\port_in_00[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(1),
	o => \port_in_00[1]~input_o\);

\port_in_00[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(2),
	o => \port_in_00[2]~input_o\);

\port_in_00[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(3),
	o => \port_in_00[3]~input_o\);

\port_in_00[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(4),
	o => \port_in_00[4]~input_o\);

\port_in_00[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(5),
	o => \port_in_00[5]~input_o\);

\port_in_00[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(6),
	o => \port_in_00[6]~input_o\);

\port_in_00[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_00(7),
	o => \port_in_00[7]~input_o\);

\port_in_01[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(0),
	o => \port_in_01[0]~input_o\);

\port_in_01[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(1),
	o => \port_in_01[1]~input_o\);

\port_in_01[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(2),
	o => \port_in_01[2]~input_o\);

\port_in_01[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(3),
	o => \port_in_01[3]~input_o\);

\port_in_01[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(4),
	o => \port_in_01[4]~input_o\);

\port_in_01[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(5),
	o => \port_in_01[5]~input_o\);

\port_in_01[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(6),
	o => \port_in_01[6]~input_o\);

\port_in_01[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_01(7),
	o => \port_in_01[7]~input_o\);

\port_in_02[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(0),
	o => \port_in_02[0]~input_o\);

\port_in_02[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(1),
	o => \port_in_02[1]~input_o\);

\port_in_02[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(2),
	o => \port_in_02[2]~input_o\);

\port_in_02[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(3),
	o => \port_in_02[3]~input_o\);

\port_in_02[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(4),
	o => \port_in_02[4]~input_o\);

\port_in_02[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(5),
	o => \port_in_02[5]~input_o\);

\port_in_02[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(6),
	o => \port_in_02[6]~input_o\);

\port_in_02[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_02(7),
	o => \port_in_02[7]~input_o\);

\port_in_03[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(0),
	o => \port_in_03[0]~input_o\);

\port_in_03[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(1),
	o => \port_in_03[1]~input_o\);

\port_in_03[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(2),
	o => \port_in_03[2]~input_o\);

\port_in_03[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(3),
	o => \port_in_03[3]~input_o\);

\port_in_03[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(4),
	o => \port_in_03[4]~input_o\);

\port_in_03[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(5),
	o => \port_in_03[5]~input_o\);

\port_in_03[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(6),
	o => \port_in_03[6]~input_o\);

\port_in_03[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_03(7),
	o => \port_in_03[7]~input_o\);

\port_in_04[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(0),
	o => \port_in_04[0]~input_o\);

\port_in_04[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(1),
	o => \port_in_04[1]~input_o\);

\port_in_04[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(2),
	o => \port_in_04[2]~input_o\);

\port_in_04[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(3),
	o => \port_in_04[3]~input_o\);

\port_in_04[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(4),
	o => \port_in_04[4]~input_o\);

\port_in_04[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(5),
	o => \port_in_04[5]~input_o\);

\port_in_04[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(6),
	o => \port_in_04[6]~input_o\);

\port_in_04[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_04(7),
	o => \port_in_04[7]~input_o\);

\port_in_05[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(0),
	o => \port_in_05[0]~input_o\);

\port_in_05[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(1),
	o => \port_in_05[1]~input_o\);

\port_in_05[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(2),
	o => \port_in_05[2]~input_o\);

\port_in_05[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(3),
	o => \port_in_05[3]~input_o\);

\port_in_05[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(4),
	o => \port_in_05[4]~input_o\);

\port_in_05[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(5),
	o => \port_in_05[5]~input_o\);

\port_in_05[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(6),
	o => \port_in_05[6]~input_o\);

\port_in_05[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_05(7),
	o => \port_in_05[7]~input_o\);

\port_in_06[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(0),
	o => \port_in_06[0]~input_o\);

\port_in_06[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(1),
	o => \port_in_06[1]~input_o\);

\port_in_06[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(2),
	o => \port_in_06[2]~input_o\);

\port_in_06[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(3),
	o => \port_in_06[3]~input_o\);

\port_in_06[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(4),
	o => \port_in_06[4]~input_o\);

\port_in_06[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(5),
	o => \port_in_06[5]~input_o\);

\port_in_06[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(6),
	o => \port_in_06[6]~input_o\);

\port_in_06[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_06(7),
	o => \port_in_06[7]~input_o\);

\port_in_07[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(0),
	o => \port_in_07[0]~input_o\);

\port_in_07[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(1),
	o => \port_in_07[1]~input_o\);

\port_in_07[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(2),
	o => \port_in_07[2]~input_o\);

\port_in_07[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(3),
	o => \port_in_07[3]~input_o\);

\port_in_07[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(4),
	o => \port_in_07[4]~input_o\);

\port_in_07[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(5),
	o => \port_in_07[5]~input_o\);

\port_in_07[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(6),
	o => \port_in_07[6]~input_o\);

\port_in_07[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_07(7),
	o => \port_in_07[7]~input_o\);

\port_in_08[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(0),
	o => \port_in_08[0]~input_o\);

\port_in_08[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(1),
	o => \port_in_08[1]~input_o\);

\port_in_08[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(2),
	o => \port_in_08[2]~input_o\);

\port_in_08[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(3),
	o => \port_in_08[3]~input_o\);

\port_in_08[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(4),
	o => \port_in_08[4]~input_o\);

\port_in_08[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(5),
	o => \port_in_08[5]~input_o\);

\port_in_08[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(6),
	o => \port_in_08[6]~input_o\);

\port_in_08[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_08(7),
	o => \port_in_08[7]~input_o\);

\port_in_09[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(0),
	o => \port_in_09[0]~input_o\);

\port_in_09[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(1),
	o => \port_in_09[1]~input_o\);

\port_in_09[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(2),
	o => \port_in_09[2]~input_o\);

\port_in_09[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(3),
	o => \port_in_09[3]~input_o\);

\port_in_09[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(4),
	o => \port_in_09[4]~input_o\);

\port_in_09[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(5),
	o => \port_in_09[5]~input_o\);

\port_in_09[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(6),
	o => \port_in_09[6]~input_o\);

\port_in_09[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_09(7),
	o => \port_in_09[7]~input_o\);

\port_in_10[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(0),
	o => \port_in_10[0]~input_o\);

\port_in_10[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(1),
	o => \port_in_10[1]~input_o\);

\port_in_10[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(2),
	o => \port_in_10[2]~input_o\);

\port_in_10[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(3),
	o => \port_in_10[3]~input_o\);

\port_in_10[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(4),
	o => \port_in_10[4]~input_o\);

\port_in_10[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(5),
	o => \port_in_10[5]~input_o\);

\port_in_10[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(6),
	o => \port_in_10[6]~input_o\);

\port_in_10[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_10(7),
	o => \port_in_10[7]~input_o\);

\port_in_11[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(0),
	o => \port_in_11[0]~input_o\);

\port_in_11[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(1),
	o => \port_in_11[1]~input_o\);

\port_in_11[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(2),
	o => \port_in_11[2]~input_o\);

\port_in_11[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(3),
	o => \port_in_11[3]~input_o\);

\port_in_11[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(4),
	o => \port_in_11[4]~input_o\);

\port_in_11[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(5),
	o => \port_in_11[5]~input_o\);

\port_in_11[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(6),
	o => \port_in_11[6]~input_o\);

\port_in_11[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_11(7),
	o => \port_in_11[7]~input_o\);

\port_in_12[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(0),
	o => \port_in_12[0]~input_o\);

\port_in_12[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(1),
	o => \port_in_12[1]~input_o\);

\port_in_12[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(2),
	o => \port_in_12[2]~input_o\);

\port_in_12[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(3),
	o => \port_in_12[3]~input_o\);

\port_in_12[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(4),
	o => \port_in_12[4]~input_o\);

\port_in_12[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(5),
	o => \port_in_12[5]~input_o\);

\port_in_12[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(6),
	o => \port_in_12[6]~input_o\);

\port_in_12[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_12(7),
	o => \port_in_12[7]~input_o\);

\port_in_13[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(0),
	o => \port_in_13[0]~input_o\);

\port_in_13[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(1),
	o => \port_in_13[1]~input_o\);

\port_in_13[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(2),
	o => \port_in_13[2]~input_o\);

\port_in_13[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(3),
	o => \port_in_13[3]~input_o\);

\port_in_13[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(4),
	o => \port_in_13[4]~input_o\);

\port_in_13[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(5),
	o => \port_in_13[5]~input_o\);

\port_in_13[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(6),
	o => \port_in_13[6]~input_o\);

\port_in_13[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_13(7),
	o => \port_in_13[7]~input_o\);

\port_in_14[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(0),
	o => \port_in_14[0]~input_o\);

\port_in_14[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(1),
	o => \port_in_14[1]~input_o\);

\port_in_14[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(2),
	o => \port_in_14[2]~input_o\);

\port_in_14[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(3),
	o => \port_in_14[3]~input_o\);

\port_in_14[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(4),
	o => \port_in_14[4]~input_o\);

\port_in_14[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(5),
	o => \port_in_14[5]~input_o\);

\port_in_14[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(6),
	o => \port_in_14[6]~input_o\);

\port_in_14[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_14(7),
	o => \port_in_14[7]~input_o\);

\port_in_15[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(0),
	o => \port_in_15[0]~input_o\);

\port_in_15[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(1),
	o => \port_in_15[1]~input_o\);

\port_in_15[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(2),
	o => \port_in_15[2]~input_o\);

\port_in_15[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(3),
	o => \port_in_15[3]~input_o\);

\port_in_15[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(4),
	o => \port_in_15[4]~input_o\);

\port_in_15[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(5),
	o => \port_in_15[5]~input_o\);

\port_in_15[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(6),
	o => \port_in_15[6]~input_o\);

\port_in_15[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_in_15(7),
	o => \port_in_15[7]~input_o\);

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


