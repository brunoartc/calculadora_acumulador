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
-- Generated on "04/12/2020 03:37:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          calc_proc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY calc_proc_vhd_vec_tst IS
END calc_proc_vhd_vec_tst;
ARCHITECTURE calc_proc_arch OF calc_proc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL acumulador_mux_old : STD_LOGIC;
SIGNAL addr_Out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL DATA_FLOW : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL data_In : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_Out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL enable_acumulador_old : STD_LOGIC;
SIGNAL imediato : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL jump_mux_old : STD_LOGIC;
SIGNAL pcReset : STD_LOGIC;
SIGNAL pontosDeControle_out : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sel_mux_ula_old : STD_LOGIC;
SIGNAL ula_op_old : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT calc_proc
	PORT (
	acumulador_mux_old : IN STD_LOGIC;
	addr_Out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	clock : IN STD_LOGIC;
	DATA_FLOW : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	data_In : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_Out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	enable_acumulador_old : IN STD_LOGIC;
	imediato : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	jump_mux_old : IN STD_LOGIC;
	pcReset : IN STD_LOGIC;
	pontosDeControle_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	sel_mux_ula_old : IN STD_LOGIC;
	ula_op_old : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : calc_proc
	PORT MAP (
-- list connections between master ports and signals
	acumulador_mux_old => acumulador_mux_old,
	addr_Out => addr_Out,
	clock => clock,
	DATA_FLOW => DATA_FLOW,
	data_In => data_In,
	data_Out => data_Out,
	enable_acumulador_old => enable_acumulador_old,
	imediato => imediato,
	jump_mux_old => jump_mux_old,
	pcReset => pcReset,
	pontosDeControle_out => pontosDeControle_out,
	sel_mux_ula_old => sel_mux_ula_old,
	ula_op_old => ula_op_old
	);

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
END calc_proc_arch;
