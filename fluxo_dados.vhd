library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity fluxo_dados is
   generic(
		datawidth : natural := 8
	);

	port
	(
	HEX0, HEX1, HEX2, HEX3 : OUT STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
	SW: IN STD_LOGIC_VECTOR(17 downto 0);
	KEY: IN STD_LOGIC_VECTOR(3 downto 0);
	 imediato_out  : in std_logic_vector(datawidth-1 downto 0);
	 ram_read_enable:	 in std_logic;
	 ram_write_enable:	 in std_logic;
    habilita_out :  out std_logic_vector(8 downto 0);
	 hab_but_next_out : out std_logic;

	 data_out_proc: in std_logic_vector(datawidth-1 downto 0);
	 data_out: out std_logic_vector(datawidth-1 downto 0);
	 CLOCK_50 : in std_logic


	);
end entity;

architecture comportamento of fluxo_dados is

signal dhx_0, dhx_1, dhx_2, dhx_3: std_logic_vector(7 downto 0);
signal habilita: std_logic_vector(8 downto 0);
signal ram_out: std_logic_vector(7 downto 0);
signal ps: std_logic_vector(13 downto 0);

alias hab_ram: std_logic is habilita(0);
	alias hab_chaves_low_0_7: std_logic is habilita(1);
	alias hab_chaves_high_8_15: std_logic is habilita(2);
	alias hab_chaves_modo_15_17: std_logic is habilita(3);
	alias hab_but_next: std_logic is habilita(4);
	alias hab_dis1: std_logic is habilita(5);
	alias hab_dis2: std_logic is habilita(6);
	alias hab_dis3: std_logic is habilita(7);
	alias hab_dis4: std_logic is habilita(8);
		signal key_0 : std_logic;
		signal  re : std_logic;
		signal 	 we : std_logic;
		TYPE STATE_TYPE IS (HOLD, FUNC_SET, DISPLAY_ON, MODE_SET, WRITE_CHAR1,
	WRITE_CHAR2,WRITE_CHAR3,WRITE_CHAR4,WRITE_CHAR5,WRITE_CHAR6,WRITE_CHAR7,
	WRITE_CHAR8, WRITE_CHAR9, WRITE_CHAR10, RETURN_HOME, TOGGLE_E, RESET1, RESET2, 
	RESET3, DISPLAY_OFF, DISPLAY_CLEAR);
	
	
	
begin

habilita_out <= habilita;
hab_but_next_out <= key_0;
	 
	 
	 DECOOD : entity work.decodificador
  port map (
	 endereco  => imediato_out,
	 read_en =>	 ram_read_enable,
	 write_en => ram_write_enable,
    habilita => habilita,
	 we => we,
	 re => re
  );
					
					
					
	 
	 
	 
	 HEX00 : entity work.registradorGenerico
					port map( 
							din => data_out_proc,
							dout => dhx_0, 
							ENABLE => hab_dis1,
							clk => CLOCK_50,
							RST => '0'
					);
	HEX11 : entity work.registradorGenerico
					port map( 
							din => data_out_proc,
							dout => dhx_1, 
							ENABLE => hab_dis2,
							clk => CLOCK_50,
							RST => '0'
					);
					
					
					
					D0 : entity work.conversorHex7seg 
					port map 
						(
						saida7seg => HEX0,
						dadoHex => dhx_0(3 downto 0)
						);
					D1 : entity work.conversorHex7seg 
					port map 
						(
						saida7seg => HEX1,
						dadoHex => dhx_0(7 downto 4)
						);
					
					D2 : entity work.conversorHex7seg 
					port map 
						(
						saida7seg => HEX2,
						dadoHex =>  dhx_1(3 downto 0)
						);	 
					D3 : entity work.conversorHex7seg 
					port map 
						(
						saida7seg => HEX3,
						dadoHex => dhx_1(7 downto 4)
						);	
						
						
						
				RAM : entity work.memoriaRAM	
					port map
    (
        addr     => imediato_out,
        we       => we,
		  re       => re,
		  habilita => hab_ram, 
        clk      => CLOCK_50,
        dado_in  => data_out_proc,
        dado_out => ram_out
    );
					
--	WHEN hab_chaves_modo_15_17 =>
--						LCD_EN <= '1';
--						LCD_RS <= '1';
--						LCD_RW <= '0';
--						DATA_BUS_VALUE <= X"3" & hab_chaves_modo_15_17;
--						state <= TOGGLE_E;
--						next_command <= WRITE_CHAR2;	



ED: entity work.edgeDetector
     port map ( clk   =>  CLOCK_50,
              entrada =>  KEY(0),
              saida  => key_0);			
					
					
					
	data_out <= ram_out;
	
	data_out <= SW(7 downto 0) when hab_chaves_low_0_7 = '1' else (others => 'Z');
	
	data_out <= SW(15 downto 8) when hab_chaves_high_8_15 = '1' else (others => 'Z');

	
	data_out <= "00000" & SW(17 downto 15) when hab_chaves_modo_15_17 = '1' else (others => 'Z');
	
	data_out <= "0000000" & key_0 when hab_but_next = '1' else (others => 'Z');
	

					
						
	  
end architecture;
