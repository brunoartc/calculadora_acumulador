-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/22/2020 14:07:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          calculadora
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY calculadora_vhd_vec_tst IS
END calculadora_vhd_vec_tst;
ARCHITECTURE calculadora_arch OF calculadora_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a_ula : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL b_ula : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL data_f_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL data_out_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL entrada_accumulador : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL hab_but_next_out : STD_LOGIC;
SIGNAL hab_chave_low : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL igual_flag_out : STD_LOGIC;
SIGNAL immediato_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL inst_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL menor_flag_out : STD_LOGIC;
SIGNAL out_acc : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pc_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pso : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL return_add_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL ula_op_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ula_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT calculadora
	PORT (
	a_ula : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	b_ula : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLOCK_50 : IN STD_LOGIC;
	data_f_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	data_out_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	entrada_accumulador : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	hab_but_next_out : OUT STD_LOGIC;
	hab_chave_low : OUT STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	igual_flag_out : OUT STD_LOGIC;
	immediato_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	inst_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	menor_flag_out : OUT STD_LOGIC;
	out_acc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pc_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pso : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	return_add_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
	ula_op_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ula_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : calculadora
	PORT MAP (
-- list connections between master ports and signals
	a_ula => a_ula,
	b_ula => b_ula,
	CLOCK_50 => CLOCK_50,
	data_f_out => data_f_out,
	data_out_out => data_out_out,
	entrada_accumulador => entrada_accumulador,
	hab_but_next_out => hab_but_next_out,
	hab_chave_low => hab_chave_low,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	igual_flag_out => igual_flag_out,
	immediato_out => immediato_out,
	inst_out => inst_out,
	KEY => KEY,
	menor_flag_out => menor_flag_out,
	out_acc => out_acc,
	pc_out => pc_out,
	pso => pso,
	return_add_out => return_add_out,
	SW => SW,
	ula_op_out => ula_op_out,
	ula_out => ula_out
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 10000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
WAIT;
END PROCESS t_prcs_KEY_0;
END calculadora_arch;
