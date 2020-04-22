library ieee;
use ieee.std_logic_1164.all;

--entity decodificador2x4 is
--  port (
--    seletor  : in std_logic_vector(1 downto 0);
--    habilita : out std_logic_vector(3 downto 0)
--  );
--end entity;
--
--architecture comportamento of decodificador2x4 is
--  begin
--	 with seletor select
--	 habilita <= "0001" when "00",-- 0 63
--				    "0010" when "01",-- 64 127
--					 "0100" when "10",-- 128 191
--					 "1000" when "11",-- 192 255
--					 "0000" when others;
--end architecture;



entity decodificador2x4 is
  port (
    seletor  : in std_logic_vector(7 downto 0);
    habilita : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of decodificador2x4 is
  begin
	 habilita <= "0001" when seletor(7) = '0' and seletor(6) = '0' else
					 "0010" when seletor(7) = '0' and seletor(6) = '1' else
					 "0100" when seletor(7) = '1' and seletor(6) = '0' and seletor(5 downto 0) = "000100" else-- 128 191
					 "1000" when seletor(7) = '1' and seletor(6) = '1' and seletor(5 downto 0) = "001000" else-- 192 255
					 "0000";
end architecture;






