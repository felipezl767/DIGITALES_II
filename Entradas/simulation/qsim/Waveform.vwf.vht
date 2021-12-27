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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/13/2021 14:41:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Entradas
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Entradas_vhd_vec_tst IS
END Entradas_vhd_vec_tst;
ARCHITECTURE Entradas_arch OF Entradas_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_00 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_01 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_02 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_03 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_04 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_05 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_06 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_07 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_08 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_09 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_10 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_11 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_12 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_13 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_14 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL port_out_15 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL writen : STD_LOGIC;
COMPONENT Entradas
	PORT (
	address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clock : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_00 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_01 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_02 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_03 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_04 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_05 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_06 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_07 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_08 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_09 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_10 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_11 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_12 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_13 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_14 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	port_out_15 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	writen : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Entradas
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	clock => clock,
	data_in => data_in,
	port_out_00 => port_out_00,
	port_out_01 => port_out_01,
	port_out_02 => port_out_02,
	port_out_03 => port_out_03,
	port_out_04 => port_out_04,
	port_out_05 => port_out_05,
	port_out_06 => port_out_06,
	port_out_07 => port_out_07,
	port_out_08 => port_out_08,
	port_out_09 => port_out_09,
	port_out_10 => port_out_10,
	port_out_11 => port_out_11,
	port_out_12 => port_out_12,
	port_out_13 => port_out_13,
	port_out_14 => port_out_14,
	port_out_15 => port_out_15,
	reset => reset,
	writen => writen
	);
-- address[7]
t_prcs_address_7: PROCESS
BEGIN
	address(7) <= '1';
WAIT;
END PROCESS t_prcs_address_7;
-- address[6]
t_prcs_address_6: PROCESS
BEGIN
	address(6) <= '1';
WAIT;
END PROCESS t_prcs_address_6;
-- address[5]
t_prcs_address_5: PROCESS
BEGIN
	address(5) <= '1';
WAIT;
END PROCESS t_prcs_address_5;
-- address[4]
t_prcs_address_4: PROCESS
BEGIN
	address(4) <= '0';
WAIT;
END PROCESS t_prcs_address_4;
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	address(3) <= '0';
	WAIT FOR 640000 ps;
	address(3) <= '1';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	address(2) <= '0';
	WAIT FOR 320000 ps;
	address(2) <= '1';
	WAIT FOR 320000 ps;
	address(2) <= '0';
	WAIT FOR 320000 ps;
	address(2) <= '1';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		address(1) <= '0';
		WAIT FOR 160000 ps;
		address(1) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	address(1) <= '0';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		address(0) <= '0';
		WAIT FOR 80000 ps;
		address(0) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	address(0) <= '0';
WAIT;
END PROCESS t_prcs_address_0;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- data_in[7]
t_prcs_data_in_7: PROCESS
BEGIN
	data_in(7) <= '1';
WAIT;
END PROCESS t_prcs_data_in_7;
-- data_in[6]
t_prcs_data_in_6: PROCESS
BEGIN
	data_in(6) <= '0';
WAIT;
END PROCESS t_prcs_data_in_6;
-- data_in[5]
t_prcs_data_in_5: PROCESS
BEGIN
	data_in(5) <= '1';
WAIT;
END PROCESS t_prcs_data_in_5;
-- data_in[4]
t_prcs_data_in_4: PROCESS
BEGIN
	data_in(4) <= '0';
WAIT;
END PROCESS t_prcs_data_in_4;
-- data_in[3]
t_prcs_data_in_3: PROCESS
BEGIN
	data_in(3) <= '1';
WAIT;
END PROCESS t_prcs_data_in_3;
-- data_in[2]
t_prcs_data_in_2: PROCESS
BEGIN
	data_in(2) <= '0';
WAIT;
END PROCESS t_prcs_data_in_2;
-- data_in[1]
t_prcs_data_in_1: PROCESS
BEGIN
	data_in(1) <= '1';
WAIT;
END PROCESS t_prcs_data_in_1;
-- data_in[0]
t_prcs_data_in_0: PROCESS
BEGIN
	data_in(0) <= '0';
WAIT;
END PROCESS t_prcs_data_in_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- writen
t_prcs_writen: PROCESS
BEGIN
	writen <= '1';
WAIT;
END PROCESS t_prcs_writen;
END Entradas_arch;
