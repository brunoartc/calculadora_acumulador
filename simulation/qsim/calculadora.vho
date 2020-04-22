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

-- DATE "04/22/2020 16:05:09"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calculadora IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	pso : OUT std_logic_vector(14 DOWNTO 0);
	immediato_out : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	inst_out : OUT std_logic_vector(4 DOWNTO 0);
	data_f_out : OUT std_logic_vector(15 DOWNTO 0);
	out_acc : OUT std_logic_vector(7 DOWNTO 0);
	data_out_out : OUT std_logic_vector(7 DOWNTO 0);
	hab_chave_low : OUT std_logic;
	return_add_out : OUT std_logic_vector(7 DOWNTO 0);
	hab_but_next_out : OUT std_logic;
	ula_op_out : OUT std_logic_vector(3 DOWNTO 0);
	ula_out : OUT std_logic_vector(7 DOWNTO 0);
	a_ula : OUT std_logic_vector(7 DOWNTO 0);
	b_ula : OUT std_logic_vector(7 DOWNTO 0);
	entrada_accumulador : OUT std_logic_vector(7 DOWNTO 0);
	menor_flag_out : OUT std_logic;
	igual_flag_out : OUT std_logic;
	pc_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END calculadora;

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
SIGNAL \CLOCK_50~input_o\ : std_logic;
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
SIGNAL \processa|processa|ROM|memROM~0_combout\ : std_logic;
SIGNAL \processa|processa|ROM|memROM~1_combout\ : std_logic;
SIGNAL \processa|processa|ROM|memROM~2_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \PERIFERICOS|ED|saidaQ~q\ : std_logic;
SIGNAL \PERIFERICOS|ED|saida~combout\ : std_logic;
SIGNAL \processa|processa|Acumulador|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processa|processa|PC|output\ : std_logic_vector(7 DOWNTO 0);

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

\pso[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \pso[5]~output_o\);

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

\immediato_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \immediato_out[0]~output_o\);

\immediato_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \immediato_out[1]~output_o\);

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

\inst_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \inst_out[1]~output_o\);

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

\inst_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \inst_out[4]~output_o\);

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

\data_f_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \data_f_out[1]~output_o\);

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

\data_f_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \data_f_out[4]~output_o\);

\data_f_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \data_f_out[5]~output_o\);

\data_f_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \data_f_out[6]~output_o\);

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

\out_acc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|Acumulador|DOUT\(0),
	devoe => ww_devoe,
	o => \out_acc[0]~output_o\);

\out_acc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|Acumulador|DOUT\(0),
	devoe => ww_devoe,
	o => \out_acc[1]~output_o\);

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

\b_ula[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|Acumulador|DOUT\(0),
	devoe => ww_devoe,
	o => \b_ula[0]~output_o\);

\b_ula[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|Acumulador|DOUT\(0),
	devoe => ww_devoe,
	o => \b_ula[1]~output_o\);

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

\entrada_accumulador[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \entrada_accumulador[0]~output_o\);

\entrada_accumulador[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \processa|processa|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \entrada_accumulador[1]~output_o\);

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

\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\processa|processa|INC|saida[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|INC|saida[0]~0_combout\ = \processa|processa|PC|output\(0) $ (VCC)
-- \processa|processa|INC|saida[0]~1\ = CARRY(\processa|processa|PC|output\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processa|processa|PC|output\(0),
	datad => VCC,
	combout => \processa|processa|INC|saida[0]~0_combout\,
	cout => \processa|processa|INC|saida[0]~1\);

\processa|processa|PC|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processa|processa|INC|saida[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(0));

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

\processa|processa|PC|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processa|processa|INC|saida[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(1));

\processa|processa|INC|saida[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|INC|saida[2]~4_combout\ = (\processa|processa|PC|output\(2) & (\processa|processa|INC|saida[1]~3\ $ (GND))) # (!\processa|processa|PC|output\(2) & (!\processa|processa|INC|saida[1]~3\ & VCC))
-- \processa|processa|INC|saida[2]~5\ = CARRY((\processa|processa|PC|output\(2) & !\processa|processa|INC|saida[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processa|processa|PC|output\(2),
	datad => VCC,
	cin => \processa|processa|INC|saida[1]~3\,
	combout => \processa|processa|INC|saida[2]~4_combout\,
	cout => \processa|processa|INC|saida[2]~5\);

\processa|processa|PC|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processa|processa|INC|saida[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(2));

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

\processa|processa|PC|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processa|processa|INC|saida[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(3));

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

\processa|processa|PC|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processa|processa|INC|saida[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(4));

\processa|processa|INC|saida[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|INC|saida[5]~10_combout\ = (\processa|processa|PC|output\(5) & (!\processa|processa|INC|saida[4]~9\)) # (!\processa|processa|PC|output\(5) & ((\processa|processa|INC|saida[4]~9\) # (GND)))
-- \processa|processa|INC|saida[5]~11\ = CARRY((!\processa|processa|INC|saida[4]~9\) # (!\processa|processa|PC|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processa|processa|PC|output\(5),
	datad => VCC,
	cin => \processa|processa|INC|saida[4]~9\,
	combout => \processa|processa|INC|saida[5]~10_combout\,
	cout => \processa|processa|INC|saida[5]~11\);

\processa|processa|PC|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processa|processa|INC|saida[5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(5));

\processa|processa|INC|saida[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|INC|saida[6]~12_combout\ = (\processa|processa|PC|output\(6) & (\processa|processa|INC|saida[5]~11\ $ (GND))) # (!\processa|processa|PC|output\(6) & (!\processa|processa|INC|saida[5]~11\ & VCC))
-- \processa|processa|INC|saida[6]~13\ = CARRY((\processa|processa|PC|output\(6) & !\processa|processa|INC|saida[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processa|processa|PC|output\(6),
	datad => VCC,
	cin => \processa|processa|INC|saida[5]~11\,
	combout => \processa|processa|INC|saida[6]~12_combout\,
	cout => \processa|processa|INC|saida[6]~13\);

\processa|processa|PC|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processa|processa|INC|saida[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(6));

\processa|processa|INC|saida[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|INC|saida[7]~14_combout\ = \processa|processa|PC|output\(7) $ (\processa|processa|INC|saida[6]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processa|processa|PC|output\(7),
	cin => \processa|processa|INC|saida[6]~13\,
	combout => \processa|processa|INC|saida[7]~14_combout\);

\processa|processa|PC|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processa|processa|INC|saida[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|PC|output\(7));

\processa|processa|ROM|memROM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|ROM|memROM~0_combout\ = (!\processa|processa|PC|output\(7) & (!\processa|processa|PC|output\(6) & (!\processa|processa|PC|output\(5) & !\processa|processa|PC|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processa|processa|PC|output\(7),
	datab => \processa|processa|PC|output\(6),
	datac => \processa|processa|PC|output\(5),
	datad => \processa|processa|PC|output\(4),
	combout => \processa|processa|ROM|memROM~0_combout\);

\processa|processa|ROM|memROM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|ROM|memROM~1_combout\ = (!\processa|processa|PC|output\(3) & (!\processa|processa|PC|output\(2) & (!\processa|processa|PC|output\(1) & !\processa|processa|PC|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processa|processa|PC|output\(3),
	datab => \processa|processa|PC|output\(2),
	datac => \processa|processa|PC|output\(1),
	datad => \processa|processa|PC|output\(0),
	combout => \processa|processa|ROM|memROM~1_combout\);

\processa|processa|ROM|memROM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \processa|processa|ROM|memROM~2_combout\ = (\processa|processa|ROM|memROM~0_combout\ & \processa|processa|ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processa|processa|ROM|memROM~0_combout\,
	datab => \processa|processa|ROM|memROM~1_combout\,
	combout => \processa|processa|ROM|memROM~2_combout\);

\processa|processa|Acumulador|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \processa|processa|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processa|processa|Acumulador|DOUT\(0));

\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\PERIFERICOS|ED|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PERIFERICOS|ED|saidaQ~q\);

\PERIFERICOS|ED|saida\ : cycloneive_lcell_comb
-- Equation(s):
-- \PERIFERICOS|ED|saida~combout\ = (\KEY[0]~input_o\ & !\PERIFERICOS|ED|saidaQ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datad => \PERIFERICOS|ED|saidaQ~q\,
	combout => \PERIFERICOS|ED|saida~combout\);

\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

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


