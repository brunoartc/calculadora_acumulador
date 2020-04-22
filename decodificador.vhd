library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;

entity decodificador is
   generic (
    ADDR_WIDTH: natural := 8
   );
  port (
	 endereco  : in std_logic_vector(ADDR_WIDTH-1 downto 0);
	 read_en:	 in std_logic;
	 write_en:	 in std_logic;
    habilita :  out std_logic_vector(8 downto 0);
	 we : out std_logic;
	 re : out std_logic
  );
end entity;

architecture comportamento of decodificador is


signal hab_perf: std_logic_vector(8 downto 0) ;

	signal enable: std_logic_vector(3 downto 0);
	
	signal chaves_low, chaves_high, chaves_modo, next_but, hex_1_enable, hex_2_enable, hex_3_enable, hex_4_enable: std_logic;

	alias hab_ram: std_logic is habilita(0);
	alias hab_chaves_low_0_7: std_logic is habilita(1);
	alias hab_chaves_high_8_15: std_logic is habilita(2);
	alias hab_chaves_modo_15_17: std_logic is habilita(3);
	alias hab_but_next: std_logic is habilita(4);
	alias hab_dis1: std_logic is habilita(5);
	alias hab_dis2: std_logic is habilita(6);
	alias hab_dis3: std_logic is habilita(7);
	alias hab_dis4: std_logic is habilita(8);


  begin
  
   with endereco(5 downto 4) select
	 enable <=  "0001" when "00",	-- 0   ~ 63 	-- RAM
					   "0010" when "10",	-- 128 ~ 191  	-- IO input
						"0100" when "11",	--	192 ~ 255	-- IO output
						"0000" when others;
						
		chaves_low <= '1' when endereco(2 downto 0) = "000" else '0';   --- 7 downto 0
		

		chaves_high <= '1' when endereco(2 downto 0) = "001" else '0';-- 15 downto 8
		

		chaves_modo <= '1' when endereco(2 downto 0) = "010" else '0';--17 downto 15
		
		next_but <= '1' when endereco(2 downto 0) = "011" else '0'; --17 downto 15
		
		hex_1_enable <= '1' when endereco(2 downto 0) = "100" else '0';--hex 1
		
		hex_2_enable <= '1' when endereco(2 downto 0) = "101" else '0';--hex 2
		
		hex_3_enable <= '1' when endereco(2 downto 0) = "110" else '0'; --hex 3

		hex_4_enable <= '1' when endereco(2 downto 0) = "111" else '0'; --hex 4
		
		
		
	hab_ram <= enable(0);
	hab_chaves_low_0_7 <= enable(1) and chaves_low;
	hab_chaves_high_8_15 <= enable(1) and chaves_high;
	hab_chaves_modo_15_17 <= enable(1) and	chaves_modo;
	hab_but_next <= enable(1) and	next_but;
	hab_dis1 <= enable(2) and hex_1_enable;
	hab_dis2 <= enable(2) and hex_2_enable;
	hab_dis3 <= enable(2) and hex_3_enable;
	hab_dis4 <= enable(2) and hex_4_enable;
	we <= write_en;
	re <= read_en;

	
end architecture;