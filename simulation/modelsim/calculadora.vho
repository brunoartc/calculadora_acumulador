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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "04/22/2020 17:52:17"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calculadora IS
    PORT (
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	pso : BUFFER std_logic_vector(14 DOWNTO 0);
	immediato_out : BUFFER std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	inst_out : BUFFER std_logic_vector(4 DOWNTO 0);
	data_f_out : BUFFER std_logic_vector(15 DOWNTO 0);
	out_acc : BUFFER std_logic_vector(7 DOWNTO 0);
	data_out_out : BUFFER std_logic_vector(7 DOWNTO 0);
	hab_chave_low : BUFFER std_logic;
	return_add_out : BUFFER std_logic_vector(7 DOWNTO 0);
	hab_but_next_out : BUFFER std_logic;
	ula_op_out : BUFFER std_logic_vector(3 DOWNTO 0);
	ula_out : BUFFER std_logic_vector(7 DOWNTO 0);
	a_ula : BUFFER std_logic_vector(7 DOWNTO 0);
	b_ula : BUFFER std_logic_vector(7 DOWNTO 0);
	entrada_accumulador : BUFFER std_logic_vector(7 DOWNTO 0);
	menor_flag_out : BUFFER std_logic;
	igual_flag_out : BUFFER std_logic;
	pc_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END calculadora;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[0]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[4]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[5]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[6]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[7]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[8]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[9]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[11]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[12]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[13]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pso[14]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediato_out[0]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediato_out[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediato_out[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediato_out[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediato_out[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediato_out[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediato_out[6]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediato_out[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[1]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[2]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[3]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst_out[4]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[2]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[4]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[5]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[6]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[7]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[9]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[10]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[11]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[12]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[13]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[14]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_f_out[15]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_acc[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_acc[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_acc[2]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_acc[3]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_acc[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_acc[5]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_acc[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_acc[7]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_out[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_out[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_out[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_out[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_out[4]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_out[5]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_out[6]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_out[7]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hab_chave_low	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- return_add_out[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- return_add_out[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- return_add_out[2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- return_add_out[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- return_add_out[4]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- return_add_out[5]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- return_add_out[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- return_add_out[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hab_but_next_out	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op_out[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op_out[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op_out[2]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_op_out[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[0]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[1]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[2]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[3]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[5]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[6]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[7]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_ula[0]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_ula[1]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_ula[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_ula[3]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_ula[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_ula[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_ula[6]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_ula[7]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_ula[0]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_ula[1]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_ula[2]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_ula[3]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_ula[4]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_ula[5]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_ula[6]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_ula[7]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_accumulador[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_accumulador[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_accumulador[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_accumulador[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_accumulador[4]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_accumulador[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_accumulador[6]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_accumulador[7]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- menor_flag_out	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- igual_flag_out	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[0]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[1]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[2]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[3]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[4]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[5]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[6]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[7]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF calculadora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pso : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_immediato_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_inst_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_data_f_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_out_acc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_out_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hab_chave_low : std_logic;
SIGNAL ww_return_add_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hab_but_next_out : std_logic;
SIGNAL ww_ula_op_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ula_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_a_ula : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b_ula : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_entrada_accumulador : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_menor_flag_out : std_logic;
SIGNAL ww_igual_flag_out : std_logic;
SIGNAL ww_pc_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \pso[0]~output_o\ : std_logic;
SIGNAL \pso[1]~output_o\ : std_logic;
SIGNAL \pso[2]~output_o\ : std_logic;
SIGNAL \pso[3]~output_o\ : std_logic;
SIGNAL \pso[4]~output_o\ : std_logic;
SIGNAL \pso[5]~output_o\ : std_logic;
SIGNAL \pso[6]~output_o\ : std_logic;
SIGNAL \pso[7]~output_o\ : std_logic;
SIGNAL \pso[8]~output_o\ : std_logic;
SIGNAL \pso[9]~output_o\ : std_logic;
SIGNAL \pso[10]~output_o\ : std_logic;
SIGNAL \pso[11]~output_o\ : std_logic;
SIGNAL \pso[12]~output_o\ : std_logic;
SIGNAL \pso[13]~output_o\ : std_logic;
SIGNAL \pso[14]~output_o\ : std_logic;
SIGNAL \immediato_out[0]~output_o\ : std_logic;
SIGNAL \immediato_out[1]~output_o\ : std_logic;
SIGNAL \immediato_out[2]~output_o\ : std_logic;
SIGNAL \immediato_out[3]~output_o\ : std_logic;
SIGNAL \immediato_out[4]~output_o\ : std_logic;
SIGNAL \immediato_out[5]~output_o\ : std_logic;
SIGNAL \immediato_out[6]~output_o\ : std_logic;
SIGNAL \immediato_out[7]~output_o\ : std_logic;
SIGNAL \inst_out[0]~output_o\ : std_logic;
SIGNAL \inst_out[1]~output_o\ : std_logic;
SIGNAL \inst_out[2]~output_o\ : std_logic;
SIGNAL \inst_out[3]~output_o\ : std_logic;
SIGNAL \inst_out[4]~output_o\ : std_logic;
SIGNAL \data_f_out[0]~output_o\ : std_logic;
SIGNAL \data_f_out[1]~output_o\ : std_logic;
SIGNAL \data_f_out[2]~output_o\ : std_logic;
SIGNAL \data_f_out[3]~output_o\ : std_logic;
SIGNAL \data_f_out[4]~output_o\ : std_logic;
SIGNAL \data_f_out[5]~output_o\ : std_logic;
SIGNAL \data_f_out[6]~output_o\ : std_logic;
SIGNAL \data_f_out[7]~output_o\ : std_logic;
SIGNAL \data_f_out[8]~output_o\ : std_logic;
SIGNAL \data_f_out[9]~output_o\ : std_logic;
SIGNAL \data_f_out[10]~output_o\ : std_logic;
SIGNAL \data_f_out[11]~output_o\ : std_logic;
SIGNAL \data_f_out[12]~output_o\ : std_logic;
SIGNAL \data_f_out[13]~output_o\ : std_logic;
SIGNAL \data_f_out[14]~output_o\ : std_logic;
SIGNAL \data_f_out[15]~output_o\ : std_logic;
SIGNAL \out_acc[0]~output_o\ : std_logic;
SIGNAL \out_acc[1]~output_o\ : std_logic;
SIGNAL \out_acc[2]~output_o\ : std_logic;
SIGNAL \out_acc[3]~output_o\ : std_logic;
SIGNAL \out_acc[4]~output_o\ : std_logic;
SIGNAL \out_acc[5]~output_o\ : std_logic;
SIGNAL \out_acc[6]~output_o\ : std_logic;
SIGNAL \out_acc[7]~output_o\ : std_logic;
SIGNAL \data_out_out[0]~output_o\ : std_logic;
SIGNAL \data_out_out[1]~output_o\ : std_logic;
SIGNAL \data_out_out[2]~output_o\ : std_logic;
SIGNAL \data_out_out[3]~output_o\ : std_logic;
SIGNAL \data_out_out[4]~output_o\ : std_logic;
SIGNAL \data_out_out[5]~output_o\ : std_logic;
SIGNAL \data_out_out[6]~output_o\ : std_logic;
SIGNAL \data_out_out[7]~output_o\ : std_logic;
SIGNAL \hab_chave_low~output_o\ : std_logic;
SIGNAL \return_add_out[0]~output_o\ : std_logic;
SIGNAL \return_add_out[1]~output_o\ : std_logic;
SIGNAL \return_add_out[2]~output_o\ : std_logic;
SIGNAL \return_add_out[3]~output_o\ : std_logic;
SIGNAL \return_add_out[4]~output_o\ : std_logic;
SIGNAL \return_add_out[5]~output_o\ : std_logic;
SIGNAL \return_add_out[6]~output_o\ : std_logic;
SIGNAL \return_add_out[7]~output_o\ : std_logic;
SIGNAL \hab_but_next_out~output_o\ : std_logic;
SIGNAL \ula_op_out[0]~output_o\ : std_logic;
SIGNAL \ula_op_out[1]~output_o\ : std_logic;
SIGNAL \ula_op_out[2]~output_o\ : std_logic;
SIGNAL \ula_op_out[3]~output_o\ : std_logic;
SIGNAL \ula_out[0]~output_o\ : std_logic;
SIGNAL \ula_out[1]~output_o\ : std_logic;
SIGNAL \ula_out[2]~output_o\ : std_logic;
SIGNAL \ula_out[3]~output_o\ : std_logic;
SIGNAL \ula_out[4]~output_o\ : std_logic;
SIGNAL \ula_out[5]~output_o\ : std_logic;
SIGNAL \ula_out[6]~output_o\ : std_logic;
SIGNAL \ula_out[7]~output_o\ : std_logic;
SIGNAL \a_ula[0]~output_o\ : std_logic;
SIGNAL \a_ula[1]~output_o\ : std_logic;
SIGNAL \a_ula[2]~output_o\ : std_logic;
SIGNAL \a_ula[3]~output_o\ : std_logic;
SIGNAL \a_ula[4]~output_o\ : std_logic;
SIGNAL \a_ula[5]~output_o\ : std_logic;
SIGNAL \a_ula[6]~output_o\ : std_logic;
SIGNAL \a_ula[7]~output_o\ : std_logic;
SIGNAL \b_ula[0]~output_o\ : std_logic;
SIGNAL \b_ula[1]~output_o\ : std_logic;
SIGNAL \b_ula[2]~output_o\ : std_logic;
SIGNAL \b_ula[3]~output_o\ : std_logic;
SIGNAL \b_ula[4]~output_o\ : std_logic;
SIGNAL \b_ula[5]~output_o\ : std_logic;
SIGNAL \b_ula[6]~output_o\ : std_logic;
SIGNAL \b_ula[7]~output_o\ : std_logic;
SIGNAL \entrada_accumulador[0]~output_o\ : std_logic;
SIGNAL \entrada_accumulador[1]~output_o\ : std_logic;
SIGNAL \entrada_accumulador[2]~output_o\ : std_logic;
SIGNAL \entrada_accumulador[3]~output_o\ : std_logic;
SIGNAL \entrada_accumulador[4]~output_o\ : std_logic;
SIGNAL \entrada_accumulador[5]~output_o\ : std_logic;
SIGNAL \entrada_accumulador[6]~output_o\ : std_logic;
SIGNAL \entrada_accumulador[7]~output_o\ : std_logic;
SIGNAL \menor_flag_out~output_o\ : std_logic;
SIGNAL \igual_flag_out~output_o\ : std_logic;
SIGNAL \pc_out[0]~output_o\ : std_logic;
SIGNAL \pc_out[1]~output_o\ : std_logic;
SIGNAL \pc_out[2]~output_o\ : std_logic;
SIGNAL \pc_out[3]~output_o\ : std_logic;
SIGNAL \pc_out[4]~output_o\ : std_logic;
SIGNAL \pc_out[5]~output_o\ : std_logic;
SIGNAL \pc_out[6]~output_o\ : std_logic;
SIGNAL \pc_out[7]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \PERIFERICOS|ED|saidaQ~q\ : std_logic;
SIGNAL \PERIFERICOS|ED|saida~combout\ : std_logic;
SIGNAL \processa|processa|INC|saida[0]~0_combout\ : std_logic;
SIGNAL \processa|processa|INC|saida[0]~1\ : std_logic;
SIGNAL \processa|processa|INC|saida[1]~2_combout\ : std_logic;
SIGNAL \processa|processa|INC|saida[1]~3\ : std_logic;
SIGNAL \processa|processa|INC|saida[2]~4_combout\ : std_logic;
SIGNAL \processa|processa|INC|saida[2]~5\ : std_logic;
SIGNAL \processa|processa|INC|saida[3]~6_combout\ : std_logic;
SIGNAL \processa|processa|INC|saida[3]~7\ : std_logic;
SIGNAL \processa|processa|INC|saida[4]~8_combout\ : std_logic;
SIGNAL \processa|processa|INC|saida[4]~9\ : std_logic;
SIGNAL \processa|processa|INC|saida[5]~10_combout\ : std_logic;
SIGNAL \processa|processa|INC|saida[5]~11\ : std_logic;
SIGNAL \processa|processa|INC|saida[6]~12_combout\ : std_logic;
SIGNAL \processa|processa|INC|saida[6]~13\ : std_logic;
SIGNAL \processa|processa|INC|saida[7]~14_combout\ : std_logic;
SIGNAL \processa|processa|PC|output\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_SW <= SW;
ww_KEY <= KEY;
pso <= ww_pso;
immediato_out <= ww_immediato_out;
ww_CLOCK_50 <= CLOCK_50;
inst_out <= ww_inst_out;
data_f_out <= ww_data_f_out;
out_acc <= ww_out_acc;
data_out_out <= ww_data_out_out;
hab_chave_low <= ww_hab_chave_low;
return_add_out <= ww_return_add_out;
hab_but_next_out <= ww_hab_but_next_out;
ula_op_out <= ww_ula_op_out;
ula_out <= ww_ula_out;
a_ula <= ww_a_ula;
b_ula <= ww_b_ula;
entrada_accumulador <= ww_entrada_accumulador;
menor_flag_out <= ww_menor_flag_out;
igual_flag_out <= ww_igual_flag_out;
pc_out <= ww_pc_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\pso[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pso[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\pso[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pso[1]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\pso[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pso[2]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\pso[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pso[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\pso[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pso[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\pso[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pso[5]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\pso[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pso[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\pso[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \pso[7]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\pso[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pso[8]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\pso[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pso[9]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\pso[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pso[10]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\pso[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pso[11]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\pso[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pso[12]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\pso[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pso[13]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\pso[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pso[14]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\immediato_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \immediato_out[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\immediato_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \immediato_out[1]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\immediato_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \immediato_out[2]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\immediato_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \immediato_out[3]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\immediato_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \immediato_out[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\immediato_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \immediato_out[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\immediato_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \immediato_out[6]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\immediato_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \immediato_out[7]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\inst_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst_out[0]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\inst_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst_out[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\inst_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst_out[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\inst_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst_out[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\inst_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \inst_out[4]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\data_f_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[0]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\data_f_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[1]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\data_f_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[2]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\data_f_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[3]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\data_f_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[4]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\data_f_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\data_f_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[6]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\data_f_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[7]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\data_f_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\data_f_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[9]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\data_f_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[10]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\data_f_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[11]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\data_f_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[12]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\data_f_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[13]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\data_f_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[14]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\data_f_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_f_out[15]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\out_acc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_acc[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\out_acc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_acc[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\out_acc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_acc[2]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\out_acc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_acc[3]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\out_acc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_acc[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\out_acc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_acc[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\out_acc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_acc[6]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\out_acc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \out_acc[7]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\data_out_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_out[0]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\data_out_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_out[1]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\data_out_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_out[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\data_out_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_out[3]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\data_out_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_out[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\data_out_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_out[5]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\data_out_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_out[6]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\data_out_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out_out[7]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\hab_chave_low~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hab_chave_low~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\return_add_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \return_add_out[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\return_add_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \return_add_out[1]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\return_add_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \return_add_out[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\return_add_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \return_add_out[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\return_add_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \return_add_out[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\return_add_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \return_add_out[5]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\return_add_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \return_add_out[6]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\return_add_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \return_add_out[7]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\hab_but_next_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PERIFERICOS|ED|saida~combout\,
	devoe => ww_devoe,
	o => \hab_but_next_out~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\ula_op_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_op_out[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\ula_op_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_op_out[1]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\ula_op_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_op_out[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\ula_op_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_op_out[3]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\ula_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[0]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\ula_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\ula_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[2]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\ula_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[3]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\ula_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[4]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\ula_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ula_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[6]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\ula_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_out[7]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\a_ula[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a_ula[0]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\a_ula[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a_ula[1]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\a_ula[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a_ula[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\a_ula[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a_ula[3]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\a_ula[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a_ula[4]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\a_ula[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a_ula[5]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\a_ula[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a_ula[6]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\a_ula[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \a_ula[7]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\b_ula[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_ula[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\b_ula[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_ula[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\b_ula[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_ula[2]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\b_ula[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_ula[3]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\b_ula[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_ula[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\b_ula[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_ula[5]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\b_ula[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_ula[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\b_ula[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \b_ula[7]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\entrada_accumulador[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entrada_accumulador[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\entrada_accumulador[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entrada_accumulador[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\entrada_accumulador[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entrada_accumulador[2]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\entrada_accumulador[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entrada_accumulador[3]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\entrada_accumulador[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entrada_accumulador[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\entrada_accumulador[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entrada_accumulador[5]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\entrada_accumulador[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entrada_accumulador[6]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\entrada_accumulador[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \entrada_accumulador[7]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\menor_flag_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \menor_flag_out~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\igual_flag_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \igual_flag_out~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\pc_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|INC|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => \pc_out[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\pc_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|INC|saida[1]~2_combout\,
	devoe => ww_devoe,
	o => \pc_out[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\pc_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|INC|saida[2]~4_combout\,
	devoe => ww_devoe,
	o => \pc_out[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\pc_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|INC|saida[3]~6_combout\,
	devoe => ww_devoe,
	o => \pc_out[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\pc_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|INC|saida[4]~8_combout\,
	devoe => ww_devoe,
	o => \pc_out[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\pc_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|INC|saida[5]~10_combout\,
	devoe => ww_devoe,
	o => \pc_out[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\pc_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|INC|saida[6]~12_combout\,
	devoe => ww_devoe,
	o => \pc_out[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\pc_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|INC|saida[7]~14_combout\,
	devoe => ww_devoe,
	o => \pc_out[7]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: FF_X114_Y40_N9
\PERIFERICOS|ED|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PERIFERICOS|ED|saidaQ~q\);

-- Location: LCCOMB_X114_Y40_N8
\PERIFERICOS|ED|saida\ : cycloneive_lcell_comb
-- Equation(s):
-- \PERIFERICOS|ED|saida~combout\ = (\KEY[0]~input_o\ & !\PERIFERICOS|ED|saidaQ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \PERIFERICOS|ED|saidaQ~q\,
	combout => \PERIFERICOS|ED|saida~combout\);

-- Location: FF_X6_Y1_N5
\processa|processa|PC|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \processa|processa|INC|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(0));

-- Location: LCCOMB_X6_Y1_N4
\processa|processa|INC|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|INC|saida[0]~0_combout\ = \processa|processa|PC|output\(0) $ (VCC)
-- \processa|processa|INC|saida[0]~1\ = CARRY(\processa|processa|PC|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processa|processa|PC|output\(0),
	datad => VCC,
	combout => \processa|processa|INC|saida[0]~0_combout\,
	cout => \processa|processa|INC|saida[0]~1\);

-- Location: FF_X6_Y1_N7
\processa|processa|PC|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \processa|processa|INC|saida[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(1));

-- Location: LCCOMB_X6_Y1_N6
\processa|processa|INC|saida[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|INC|saida[1]~2_combout\ = (\processa|processa|PC|output\(1) & (!\processa|processa|INC|saida[0]~1\)) # (!\processa|processa|PC|output\(1) & ((\processa|processa|INC|saida[0]~1\) # (GND)))
-- \processa|processa|INC|saida[1]~3\ = CARRY((!\processa|processa|INC|saida[0]~1\) # (!\processa|processa|PC|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processa|processa|PC|output\(1),
	datad => VCC,
	cin => \processa|processa|INC|saida[0]~1\,
	combout => \processa|processa|INC|saida[1]~2_combout\,
	cout => \processa|processa|INC|saida[1]~3\);

-- Location: FF_X6_Y1_N9
\processa|processa|PC|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \processa|processa|INC|saida[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(2));

-- Location: LCCOMB_X6_Y1_N8
\processa|processa|INC|saida[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|INC|saida[2]~4_combout\ = (\processa|processa|PC|output\(2) & (\processa|processa|INC|saida[1]~3\ $ (GND))) # (!\processa|processa|PC|output\(2) & (!\processa|processa|INC|saida[1]~3\ & VCC))
-- \processa|processa|INC|saida[2]~5\ = CARRY((\processa|processa|PC|output\(2) & !\processa|processa|INC|saida[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processa|processa|PC|output\(2),
	datad => VCC,
	cin => \processa|processa|INC|saida[1]~3\,
	combout => \processa|processa|INC|saida[2]~4_combout\,
	cout => \processa|processa|INC|saida[2]~5\);

-- Location: FF_X6_Y1_N11
\processa|processa|PC|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \processa|processa|INC|saida[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(3));

-- Location: LCCOMB_X6_Y1_N10
\processa|processa|INC|saida[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|INC|saida[3]~6_combout\ = (\processa|processa|PC|output\(3) & (!\processa|processa|INC|saida[2]~5\)) # (!\processa|processa|PC|output\(3) & ((\processa|processa|INC|saida[2]~5\) # (GND)))
-- \processa|processa|INC|saida[3]~7\ = CARRY((!\processa|processa|INC|saida[2]~5\) # (!\processa|processa|PC|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processa|processa|PC|output\(3),
	datad => VCC,
	cin => \processa|processa|INC|saida[2]~5\,
	combout => \processa|processa|INC|saida[3]~6_combout\,
	cout => \processa|processa|INC|saida[3]~7\);

-- Location: FF_X6_Y1_N13
\processa|processa|PC|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \processa|processa|INC|saida[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(4));

-- Location: LCCOMB_X6_Y1_N12
\processa|processa|INC|saida[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|INC|saida[4]~8_combout\ = (\processa|processa|PC|output\(4) & (\processa|processa|INC|saida[3]~7\ $ (GND))) # (!\processa|processa|PC|output\(4) & (!\processa|processa|INC|saida[3]~7\ & VCC))
-- \processa|processa|INC|saida[4]~9\ = CARRY((\processa|processa|PC|output\(4) & !\processa|processa|INC|saida[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processa|processa|PC|output\(4),
	datad => VCC,
	cin => \processa|processa|INC|saida[3]~7\,
	combout => \processa|processa|INC|saida[4]~8_combout\,
	cout => \processa|processa|INC|saida[4]~9\);

-- Location: FF_X6_Y1_N15
\processa|processa|PC|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \processa|processa|INC|saida[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(5));

-- Location: LCCOMB_X6_Y1_N14
\processa|processa|INC|saida[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|INC|saida[5]~10_combout\ = (\processa|processa|PC|output\(5) & (!\processa|processa|INC|saida[4]~9\)) # (!\processa|processa|PC|output\(5) & ((\processa|processa|INC|saida[4]~9\) # (GND)))
-- \processa|processa|INC|saida[5]~11\ = CARRY((!\processa|processa|INC|saida[4]~9\) # (!\processa|processa|PC|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processa|processa|PC|output\(5),
	datad => VCC,
	cin => \processa|processa|INC|saida[4]~9\,
	combout => \processa|processa|INC|saida[5]~10_combout\,
	cout => \processa|processa|INC|saida[5]~11\);

-- Location: FF_X6_Y1_N17
\processa|processa|PC|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \processa|processa|INC|saida[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(6));

-- Location: LCCOMB_X6_Y1_N16
\processa|processa|INC|saida[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|INC|saida[6]~12_combout\ = (\processa|processa|PC|output\(6) & (\processa|processa|INC|saida[5]~11\ $ (GND))) # (!\processa|processa|PC|output\(6) & (!\processa|processa|INC|saida[5]~11\ & VCC))
-- \processa|processa|INC|saida[6]~13\ = CARRY((\processa|processa|PC|output\(6) & !\processa|processa|INC|saida[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processa|processa|PC|output\(6),
	datad => VCC,
	cin => \processa|processa|INC|saida[5]~11\,
	combout => \processa|processa|INC|saida[6]~12_combout\,
	cout => \processa|processa|INC|saida[6]~13\);

-- Location: FF_X6_Y1_N19
\processa|processa|PC|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \processa|processa|INC|saida[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(7));

-- Location: LCCOMB_X6_Y1_N18
\processa|processa|INC|saida[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|INC|saida[7]~14_combout\ = \processa|processa|INC|saida[6]~13\ $ (\processa|processa|PC|output\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \processa|processa|PC|output\(7),
	cin => \processa|processa|INC|saida[6]~13\,
	combout => \processa|processa|INC|saida[7]~14_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_pso(0) <= \pso[0]~output_o\;

ww_pso(1) <= \pso[1]~output_o\;

ww_pso(2) <= \pso[2]~output_o\;

ww_pso(3) <= \pso[3]~output_o\;

ww_pso(4) <= \pso[4]~output_o\;

ww_pso(5) <= \pso[5]~output_o\;

ww_pso(6) <= \pso[6]~output_o\;

ww_pso(7) <= \pso[7]~output_o\;

ww_pso(8) <= \pso[8]~output_o\;

ww_pso(9) <= \pso[9]~output_o\;

ww_pso(10) <= \pso[10]~output_o\;

ww_pso(11) <= \pso[11]~output_o\;

ww_pso(12) <= \pso[12]~output_o\;

ww_pso(13) <= \pso[13]~output_o\;

ww_pso(14) <= \pso[14]~output_o\;

ww_immediato_out(0) <= \immediato_out[0]~output_o\;

ww_immediato_out(1) <= \immediato_out[1]~output_o\;

ww_immediato_out(2) <= \immediato_out[2]~output_o\;

ww_immediato_out(3) <= \immediato_out[3]~output_o\;

ww_immediato_out(4) <= \immediato_out[4]~output_o\;

ww_immediato_out(5) <= \immediato_out[5]~output_o\;

ww_immediato_out(6) <= \immediato_out[6]~output_o\;

ww_immediato_out(7) <= \immediato_out[7]~output_o\;

ww_inst_out(0) <= \inst_out[0]~output_o\;

ww_inst_out(1) <= \inst_out[1]~output_o\;

ww_inst_out(2) <= \inst_out[2]~output_o\;

ww_inst_out(3) <= \inst_out[3]~output_o\;

ww_inst_out(4) <= \inst_out[4]~output_o\;

ww_data_f_out(0) <= \data_f_out[0]~output_o\;

ww_data_f_out(1) <= \data_f_out[1]~output_o\;

ww_data_f_out(2) <= \data_f_out[2]~output_o\;

ww_data_f_out(3) <= \data_f_out[3]~output_o\;

ww_data_f_out(4) <= \data_f_out[4]~output_o\;

ww_data_f_out(5) <= \data_f_out[5]~output_o\;

ww_data_f_out(6) <= \data_f_out[6]~output_o\;

ww_data_f_out(7) <= \data_f_out[7]~output_o\;

ww_data_f_out(8) <= \data_f_out[8]~output_o\;

ww_data_f_out(9) <= \data_f_out[9]~output_o\;

ww_data_f_out(10) <= \data_f_out[10]~output_o\;

ww_data_f_out(11) <= \data_f_out[11]~output_o\;

ww_data_f_out(12) <= \data_f_out[12]~output_o\;

ww_data_f_out(13) <= \data_f_out[13]~output_o\;

ww_data_f_out(14) <= \data_f_out[14]~output_o\;

ww_data_f_out(15) <= \data_f_out[15]~output_o\;

ww_out_acc(0) <= \out_acc[0]~output_o\;

ww_out_acc(1) <= \out_acc[1]~output_o\;

ww_out_acc(2) <= \out_acc[2]~output_o\;

ww_out_acc(3) <= \out_acc[3]~output_o\;

ww_out_acc(4) <= \out_acc[4]~output_o\;

ww_out_acc(5) <= \out_acc[5]~output_o\;

ww_out_acc(6) <= \out_acc[6]~output_o\;

ww_out_acc(7) <= \out_acc[7]~output_o\;

ww_data_out_out(0) <= \data_out_out[0]~output_o\;

ww_data_out_out(1) <= \data_out_out[1]~output_o\;

ww_data_out_out(2) <= \data_out_out[2]~output_o\;

ww_data_out_out(3) <= \data_out_out[3]~output_o\;

ww_data_out_out(4) <= \data_out_out[4]~output_o\;

ww_data_out_out(5) <= \data_out_out[5]~output_o\;

ww_data_out_out(6) <= \data_out_out[6]~output_o\;

ww_data_out_out(7) <= \data_out_out[7]~output_o\;

ww_hab_chave_low <= \hab_chave_low~output_o\;

ww_return_add_out(0) <= \return_add_out[0]~output_o\;

ww_return_add_out(1) <= \return_add_out[1]~output_o\;

ww_return_add_out(2) <= \return_add_out[2]~output_o\;

ww_return_add_out(3) <= \return_add_out[3]~output_o\;

ww_return_add_out(4) <= \return_add_out[4]~output_o\;

ww_return_add_out(5) <= \return_add_out[5]~output_o\;

ww_return_add_out(6) <= \return_add_out[6]~output_o\;

ww_return_add_out(7) <= \return_add_out[7]~output_o\;

ww_hab_but_next_out <= \hab_but_next_out~output_o\;

ww_ula_op_out(0) <= \ula_op_out[0]~output_o\;

ww_ula_op_out(1) <= \ula_op_out[1]~output_o\;

ww_ula_op_out(2) <= \ula_op_out[2]~output_o\;

ww_ula_op_out(3) <= \ula_op_out[3]~output_o\;

ww_ula_out(0) <= \ula_out[0]~output_o\;

ww_ula_out(1) <= \ula_out[1]~output_o\;

ww_ula_out(2) <= \ula_out[2]~output_o\;

ww_ula_out(3) <= \ula_out[3]~output_o\;

ww_ula_out(4) <= \ula_out[4]~output_o\;

ww_ula_out(5) <= \ula_out[5]~output_o\;

ww_ula_out(6) <= \ula_out[6]~output_o\;

ww_ula_out(7) <= \ula_out[7]~output_o\;

ww_a_ula(0) <= \a_ula[0]~output_o\;

ww_a_ula(1) <= \a_ula[1]~output_o\;

ww_a_ula(2) <= \a_ula[2]~output_o\;

ww_a_ula(3) <= \a_ula[3]~output_o\;

ww_a_ula(4) <= \a_ula[4]~output_o\;

ww_a_ula(5) <= \a_ula[5]~output_o\;

ww_a_ula(6) <= \a_ula[6]~output_o\;

ww_a_ula(7) <= \a_ula[7]~output_o\;

ww_b_ula(0) <= \b_ula[0]~output_o\;

ww_b_ula(1) <= \b_ula[1]~output_o\;

ww_b_ula(2) <= \b_ula[2]~output_o\;

ww_b_ula(3) <= \b_ula[3]~output_o\;

ww_b_ula(4) <= \b_ula[4]~output_o\;

ww_b_ula(5) <= \b_ula[5]~output_o\;

ww_b_ula(6) <= \b_ula[6]~output_o\;

ww_b_ula(7) <= \b_ula[7]~output_o\;

ww_entrada_accumulador(0) <= \entrada_accumulador[0]~output_o\;

ww_entrada_accumulador(1) <= \entrada_accumulador[1]~output_o\;

ww_entrada_accumulador(2) <= \entrada_accumulador[2]~output_o\;

ww_entrada_accumulador(3) <= \entrada_accumulador[3]~output_o\;

ww_entrada_accumulador(4) <= \entrada_accumulador[4]~output_o\;

ww_entrada_accumulador(5) <= \entrada_accumulador[5]~output_o\;

ww_entrada_accumulador(6) <= \entrada_accumulador[6]~output_o\;

ww_entrada_accumulador(7) <= \entrada_accumulador[7]~output_o\;

ww_menor_flag_out <= \menor_flag_out~output_o\;

ww_igual_flag_out <= \igual_flag_out~output_o\;

ww_pc_out(0) <= \pc_out[0]~output_o\;

ww_pc_out(1) <= \pc_out[1]~output_o\;

ww_pc_out(2) <= \pc_out[2]~output_o\;

ww_pc_out(3) <= \pc_out[3]~output_o\;

ww_pc_out(4) <= \pc_out[4]~output_o\;

ww_pc_out(5) <= \pc_out[5]~output_o\;

ww_pc_out(6) <= \pc_out[6]~output_o\;

ww_pc_out(7) <= \pc_out[7]~output_o\;
END structure;


