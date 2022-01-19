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
-- Generated on "12/16/2021 15:44:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          alu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_vhd_vec_tst IS
END alu_vhd_vec_tst;
ARCHITECTURE alu_arch OF alu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALU_Result : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ALU_se1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Bus1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL NZVC : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT alu
	PORT (
	ALU_Result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ALU_se1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Bus1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	NZVC : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	ALU_Result => ALU_Result,
	ALU_se1 => ALU_se1,
	B => B,
	Bus1 => Bus1,
	NZVC => NZVC
	);
-- ALU_se1[2]
t_prcs_ALU_se1_2: PROCESS
BEGIN
	ALU_se1(2) <= '0';
WAIT;
END PROCESS t_prcs_ALU_se1_2;
-- ALU_se1[1]
t_prcs_ALU_se1_1: PROCESS
BEGIN
	ALU_se1(1) <= '0';
WAIT;
END PROCESS t_prcs_ALU_se1_1;
-- ALU_se1[0]
t_prcs_ALU_se1_0: PROCESS
BEGIN
	ALU_se1(0) <= '0';
WAIT;
END PROCESS t_prcs_ALU_se1_0;
-- B[7]
t_prcs_B_7: PROCESS
BEGIN
	B(7) <= '0';
WAIT;
END PROCESS t_prcs_B_7;
-- B[6]
t_prcs_B_6: PROCESS
BEGIN
	B(6) <= '0';
WAIT;
END PROCESS t_prcs_B_6;
-- B[5]
t_prcs_B_5: PROCESS
BEGIN
	B(5) <= '0';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '0';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '1';
WAIT;
END PROCESS t_prcs_B_0;
-- Bus1[7]
t_prcs_Bus1_7: PROCESS
BEGIN
	Bus1(7) <= '0';
WAIT;
END PROCESS t_prcs_Bus1_7;
-- Bus1[6]
t_prcs_Bus1_6: PROCESS
BEGIN
	Bus1(6) <= '0';
WAIT;
END PROCESS t_prcs_Bus1_6;
-- Bus1[5]
t_prcs_Bus1_5: PROCESS
BEGIN
	Bus1(5) <= '0';
WAIT;
END PROCESS t_prcs_Bus1_5;
-- Bus1[4]
t_prcs_Bus1_4: PROCESS
BEGIN
	Bus1(4) <= '0';
WAIT;
END PROCESS t_prcs_Bus1_4;
-- Bus1[3]
t_prcs_Bus1_3: PROCESS
BEGIN
	Bus1(3) <= '0';
WAIT;
END PROCESS t_prcs_Bus1_3;
-- Bus1[2]
t_prcs_Bus1_2: PROCESS
BEGIN
	Bus1(2) <= '0';
WAIT;
END PROCESS t_prcs_Bus1_2;
-- Bus1[1]
t_prcs_Bus1_1: PROCESS
BEGIN
	Bus1(1) <= '1';
WAIT;
END PROCESS t_prcs_Bus1_1;
-- Bus1[0]
t_prcs_Bus1_0: PROCESS
BEGIN
	Bus1(0) <= '1';
WAIT;
END PROCESS t_prcs_Bus1_0;
END alu_arch;
