library IEEE;
use IEEE.std_logic_1164.all;

entity fluxo_d is
    
    generic (
        dataWidth : natural := 8;
		  instrucWidth : natural := 16
    );

    port (

		  clock : In std_logic;
        data_In: In std_logic_vector(dataWidth - 1 downto 0);
        pcReset : in std_logic;
		  
		  pontosDeControle_out: out std_logic_vector(14 downto 0);
		  inst_out: out std_logic_vector(4 downto 0);
		  
		  ram_read_enable: out std_logic;
		  
		  ram_write_enable: out std_logic;
		  
		  ula_op_out: out std_logic_vector(3 downto 0);
		  
		  ula_out: out std_logic_vector(dataWidth - 1 downto 0);
		  
		  entrada_accumulador: out std_logic_vector(dataWidth - 1 downto 0);
		  
		  data_f_out: out std_logic_vector(instrucWidth - 1 downto 0);
		  
		  imediato_out: out std_logic_vector(dataWidth - 1 downto 0);
		  data_out: out std_logic_vector(dataWidth - 1 downto 0);
		  igual_flag_out: out std_logic;
		  menor_flag_out: out std_logic;
		  a_ula: out std_logic_vector(dataWidth - 1 downto 0);
		  b_ula: out std_logic_vector(dataWidth - 1 downto 0);
		  pc_out: out std_logic_vector(dataWidth - 1 downto 0);
		  return_add_out: out std_logic_vector(dataWidth - 1 downto 0)
		  
    );
end entity fluxo_d;


architecture rtl of fluxo_d is
signal pontosDeControle: std_logic_vector(14 downto 0);
signal flag_igual_reg, flag_menor_reg: std_logic;
signal inst_i: std_logic_vector(4 downto 0);


begin

	
	inst_out <= inst_i;
	
	 UC : entity work.UC
	 port map (
	     instruc => inst_i,
		  pontosDeControle => pontosDeControle,
		  igual_flag => flag_igual_reg,
		  flag_menor => flag_menor_reg
		  
	 );
	 
	 
	
    processa : entity work.calc_proc
    port map(
        clock => clock,
        data_In => data_In,
        pcReset => '0',
		  ula_out => ula_out,
		  pontosDeControle_out => pontosDeControle_out,
		  data_out => data_out,
		  ram_read_enable => ram_read_enable,
		  ram_write_enable => ram_write_enable,
		  imediato_out => imediato_out,
		  inst_out => inst_i,
		  pc_out => pc_out,
		  entrada_accumulador => entrada_accumulador,
		  igual_flag_out => igual_flag_out,
		  menor_flag_out => menor_flag_out,
		  data_f_out => data_f_out,
		  a_ula => a_ula,
		  ula_op_out => ula_op_out,
		  return_add_out => return_add_out,
		  b_ula => b_ula,
		  flag_igual_reg => flag_igual_reg,
		  flag_menor_reg => flag_menor_reg,
		  pontosDeControle => pontosDeControle
    );
	 
end architecture rtl;