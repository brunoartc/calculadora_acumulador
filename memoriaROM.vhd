
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 16;
          addrWidth: natural := 8
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is







  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
--        tmp(0) := "0000010000000100"; --  LOAD SW_HIGH(3)                         TESTAR ULA E JUMPS
--        tmp(1) := "0000010000101011"; --- ADD SW_LOW(3)
--		  tmp(2) := "0000000000000101"; --- STORE RAM(0)
--		  tmp(3) := "0000011010000101"; --- STORE HEX_0
--		  tmp(4) := "0000010000000100"; --- LOAD SW_HIGH(3)
--		  tmp(5) := "0000000000000100"; --- LOAD RAM(0) [6]
--		  tmp(6) := "0000000011001100"; --- CMP 6 [6] - seta a flag de zero
--		  tmp(7) := "0000000001001100"; --- CMP 2 [6] - seta a flag de menor
--		  tmp(8) := "0000001111001100"; --- CMP 30 [6] - desliga as flags
--		  tmp(9) := "0000000101101110"; --- JAL (11)
--		  tmp(10) := "0000000000000010"; --- JMP[Z]
--		  tmp(11) := "0000000000001111"; --- RET [10]


--        tmp(0) := "0000010000000100"; --  LOAD SW_HIGH(3)                         TESTAR O SHIFT E CARRY E ADDI
--        tmp(1) := "0000010000101011"; --- ADD SW_LOW(3)
--		  tmp(2) := "0000000000000101"; --- STORE RAM(0)
--		  tmp(3) := "0000011010000101"; --- STORE HEX_0
--		  tmp(4) := "0000010000000100"; --- LOAD SW_HIGH(3)
--		  tmp(5) := "0000000000010001"; --- LOAD RAM(0) [6]
--		  tmp(6) := "0000000000000101"; --- STORE RAM(0)
--		  tmp(7) := "0000000000001101"; --- LOADC
--		  tmp(8) := "0000000000110000"; --- ADDI 1 [2]
--		  tmp(9) := "0000000001001100"; --- CMP 2
--		  tmp(10):= "0000000000100001";  -- BEQ 1
--		  tmp(11):= "0000000010100010"; --- JMP[5]




		--tmp(0):= "0000010001100100";  --LOAD II_BUT     testar o botao
		--tmp(1):= "0000000000101100";  -- CMP 1
		--tmp(2):= "0000000000100001";  -- BEQ 1
		
		
--		tmp(0):=   "0000000001110010"; --LOADI 3 teste do loadi
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;