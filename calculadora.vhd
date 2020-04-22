library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity calculadora is
   generic(
		datawidth : natural := 8
	);

	port
	(
	
--	LCD_RS, LCD_EN, LCD_ON	: OUT	STD_LOGIC; 
--		 LCD_RW						: BUFFER STD_LOGIC;
--		 LCD_DATA				: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
		 
		 
	HEX0, HEX1, HEX2, HEX3 : OUT STD_LOGIC_VECTOR(6 downto 0);
	SW: IN STD_LOGIC_VECTOR(17 downto 0);
	KEY: IN STD_LOGIC_VECTOR(3 downto 0);
	pso: out std_logic_vector(14 downto 0);
	immediato_out : out std_logic_vector(7 downto 0);
	CLOCK_50: in std_logic;
	inst_out: out std_logic_vector(4 downto 0);
	data_f_out: out std_logic_vector(16 - 1 downto 0);
	out_acc: out std_logic_vector(datawidth - 1 downto 0);
	data_out_out: out std_logic_vector(datawidth - 1 downto 0);
	hab_chave_low: out std_logic;
	return_add_out: out std_logic_vector(datawidth - 1 downto 0);
	hab_but_next_out: out std_logic;
	
	ula_op_out: out std_logic_vector(3 downto 0);
	
	ula_out: out std_logic_vector(dataWidth - 1 downto 0);
	
	a_ula: out std_logic_vector(dataWidth - 1 downto 0);
   b_ula: out std_logic_vector(dataWidth - 1 downto 0);
	
	entrada_accumulador: out std_logic_vector(dataWidth - 1 downto 0);
	menor_flag_out: out std_logic;
	
	igual_flag_out: out std_logic;
	

	pc_out: out std_logic_vector(dataWidth - 1 downto 0)
	

	);
end entity;

architecture comportamento of calculadora is
signal ram_out, data_out, data_out_proc: std_logic_vector(7 downto 0);
signal dhx_0, dhx_1, dhx_2, dhx_3: std_logic_vector(7 downto 0);
signal habilita: std_logic_vector(8 downto 0);

signal ps: std_logic_vector(14 downto 0);

alias hab_ram: std_logic is habilita(0);
	alias hab_chaves_low_0_7: std_logic is habilita(1);
	alias hab_chaves_high_8_15: std_logic is habilita(2);
	alias hab_chaves_modo_15_17: std_logic is habilita(3);
	alias hab_but_next: std_logic is habilita(4);
	alias hab_dis1: std_logic is habilita(5);
	alias hab_dis2: std_logic is habilita(6);
	alias hab_dis3: std_logic is habilita(7);
	alias hab_dis4: std_logic is habilita(8);
	
	signal re, we, ram_read_enable, ram_write_enable: std_logic;
	
	signal imediato_out: std_logic_vector(7 downto 0);
	
	
	
	
begin


	hab_chave_low <= hab_chaves_low_0_7;
	immediato_out <= imediato_out;
	pso <= ps;
	out_acc <= data_out_proc;

	data_out_out <= data_out;

processa : entity work.fluxo_d
    port map(
        clock => CLOCK_50,
        data_In => data_out,
        pcReset => '0',
		  ula_out => ula_out,
		  pontosDeControle_out => ps,
		  data_out => data_out_proc,
		  ram_read_enable => ram_read_enable,
		  ram_write_enable => ram_write_enable,
		  imediato_out => imediato_out,
		  inst_out => inst_out,
		  pc_out => pc_out,
		  entrada_accumulador => entrada_accumulador,
		  igual_flag_out => igual_flag_out,
		  menor_flag_out => menor_flag_out,
		  data_f_out => data_f_out,
		  a_ula => a_ula,
		  ula_op_out => ula_op_out,
		  return_add_out => return_add_out,
		  b_ula => b_ula
		  
    );
	 
	 
	 
	 PERIFERICOS: entity work.fluxo_dados
	 	port map
	(
		HEX0=> HEX0, HEX1=>HEX1, HEX2=>HEX2, HEX3=>HEX3,
		SW=> SW,
		KEY=>KEY,
		imediato_out=> imediato_out,
		ram_read_enable => ram_read_enable,
		ram_write_enable => ram_write_enable,
		habilita_out => habilita,
		--we => we,
		data_out_proc => data_out_proc,
		data_out => data_out,
		CLOCK_50 => CLOCK_50,
		hab_but_next_out => hab_but_next_out
		--re => re
	);
			
						
	  
end architecture;
