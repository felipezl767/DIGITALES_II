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
-- Generated on "12/13/2021 14:25:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          rw_96x8_sync
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY rw_96x8_sync_vhd_vec_tst IS
END rw_96x8_sync_vhd_vec_tst;
ARCHITECTURE rw_96x8_sync_arch OF rw_96x8_sync_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL writen : STD_LOGIC;
COMPONENT rw_96x8_sync
	PORT (
	address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clock : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_out : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	writen : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : rw_96x8_sync
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	clock => clock,
	data_in => data_in,
	data_out => data_out,
	writen => writen
	);
-- address[7]
t_prcs_address_7: PROCESS
BEGIN
	address(7) <= '1';
	WAIT FOR 440000 ps;
	address(7) <= '0';
WAIT;
END PROCESS t_prcs_address_7;
-- address[6]
t_prcs_address_6: PROCESS
BEGIN
	address(6) <= '0';
WAIT;
END PROCESS t_prcs_address_6;
-- address[5]
t_prcs_address_5: PROCESS
BEGIN
	address(5) <= '0';
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
	WAIT FOR 160000 ps;
	address(3) <= '1';
	WAIT FOR 60000 ps;
	address(3) <= '0';
	WAIT FOR 160000 ps;
	address(3) <= '1';
	WAIT FOR 60000 ps;
	address(3) <= '0';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	address(2) <= '0';
	WAIT FOR 80000 ps;
	address(2) <= '1';
	WAIT FOR 80000 ps;
	address(2) <= '0';
	WAIT FOR 140000 ps;
	address(2) <= '1';
	WAIT FOR 80000 ps;
	address(2) <= '0';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		address(1) <= '0';
		WAIT FOR 40000 ps;
		address(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	address(1) <= '0';
	WAIT FOR 40000 ps;
	address(1) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 2
	LOOP
		address(1) <= '0';
		WAIT FOR 40000 ps;
		address(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	address(1) <= '0';
	WAIT FOR 40000 ps;
	address(1) <= '1';
	WAIT FOR 20000 ps;
	address(1) <= '0';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		address(0) <= '0';
		WAIT FOR 20000 ps;
		address(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	address(0) <= '0';
	WAIT FOR 40000 ps;
	address(0) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 4
	LOOP
		address(0) <= '0';
		WAIT FOR 20000 ps;
		address(0) <= '1';
		WAIT FOR 20000 ps;
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
	data_in(7) <= '0';
WAIT;
END PROCESS t_prcs_data_in_7;
-- data_in[6]
t_prcs_data_in_6: PROCESS
BEGIN
	data_in(6) <= '0';
	WAIT FOR 80000 ps;
	data_in(6) <= '1';
WAIT;
END PROCESS t_prcs_data_in_6;
-- data_in[5]
t_prcs_data_in_5: PROCESS
BEGIN
	data_in(5) <= '1';
	WAIT FOR 80000 ps;
	data_in(5) <= '0';
	WAIT FOR 640000 ps;
	data_in(5) <= '1';
WAIT;
END PROCESS t_prcs_data_in_5;
-- data_in[4]
t_prcs_data_in_4: PROCESS
BEGIN
	data_in(4) <= '1';
	WAIT FOR 80000 ps;
	data_in(4) <= '0';
	WAIT FOR 320000 ps;
	data_in(4) <= '1';
	WAIT FOR 320000 ps;
	data_in(4) <= '0';
WAIT;
END PROCESS t_prcs_data_in_4;
-- data_in[3]
t_prcs_data_in_3: PROCESS
BEGIN
	data_in(3) <= '1';
	WAIT FOR 80000 ps;
	FOR i IN 1 TO 2
	LOOP
		data_in(3) <= '0';
		WAIT FOR 160000 ps;
		data_in(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	data_in(3) <= '0';
	WAIT FOR 160000 ps;
	data_in(3) <= '1';
WAIT;
END PROCESS t_prcs_data_in_3;
-- data_in[2]
t_prcs_data_in_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		data_in(2) <= '1';
		WAIT FOR 80000 ps;
		data_in(2) <= '0';
		WAIT FOR 80000 ps;
	END LOOP;
	data_in(2) <= '1';
WAIT;
END PROCESS t_prcs_data_in_2;
-- data_in[1]
t_prcs_data_in_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		data_in(1) <= '0';
		WAIT FOR 40000 ps;
		data_in(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	data_in(1) <= '0';
WAIT;
END PROCESS t_prcs_data_in_1;
-- data_in[0]
t_prcs_data_in_0: PROCESS
BEGIN
LOOP
	data_in(0) <= '0';
	WAIT FOR 20000 ps;
	data_in(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_in_0;

-- writen
t_prcs_writen: PROCESS
BEGIN
	writen <= '1';
	WAIT FOR 220000 ps;
	writen <= '0';
	WAIT FOR 220000 ps;
	writen <= '1';
	WAIT FOR 220000 ps;
	writen <= '0';
	WAIT FOR 220000 ps;
	writen <= '1';
WAIT;
END PROCESS t_prcs_writen;
END rw_96x8_sync_arch;
