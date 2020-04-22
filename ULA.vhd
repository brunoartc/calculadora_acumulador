library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity ULA is
   generic(
		datawidth : natural := 8
	);

	port
	(
		-- Input ports
		A	: in  std_logic_vector(datawidth-1 DOWNTO 0);
		B	: in   std_logic_vector(datawidth-1 DOWNTO 0);
		OPCODE	: in std_logic_vector(3 DOWNTO 0);
		carry_in: in std_logic;
		reset_flags: in std_logic:= '0';
		

		-- Output ports
		A_MENOR_B: out std_logic;
		carry: out std_logic;
		Y	: out std_logic_vector(datawidth-1 DOWNTO 0);
		igual_flag	: out std_logic
	);
end entity;

architecture comportamento of ULA is
signal plus_out, minus_out, com_over, A_OVER, B_OVER ,a_shift: std_logic_vector(datawidth DOWNTO 0);
signal and_out, or_out, xor_out, not_out : std_logic_vector(dataWidth - 1 downto 0);
constant zero : std_logic_vector(dataWidth-1 downto 0) := (others => '0');

constant add_ula: std_logic_vector(3 downto 0) := "0001";
constant sub_ula: std_logic_vector(3 downto 0) := "0010";
constant and_ula: std_logic_vector(3 downto 0) := "0011";
constant or_ula : std_logic_vector(3 downto 0) := "0100";
constant not_ula: std_logic_vector(3 downto 0) := "0101";
constant xor_ula: std_logic_vector(3 downto 0) := "0110";
constant cmp_ula: std_logic_vector(3 downto 0) := "0111";
constant shf_ula: std_logic_vector(3 downto 0) := "1000";


begin
	
	
	and_out <= A AND B;
	or_out <= A OR B;
	xor_out <= A XOR B;
	not_out <= NOT A;
	
	
	minus_out <= std_logic_vector(unsigned(A_OVER) - unsigned(B_OVER));
	plus_out <=  std_logic_vector(unsigned(A_OVER) + unsigned(B_OVER));


	A_OVER <= '0' & A;
	B_OVER <= '0' & B;
	
	a_shift <= A & '0';
			
			
	
	
	
	y <= 	plus_out(datawidth - 1 downto 0) when OPCODE = add_ula else
			minus_out(datawidth - 1 downto 0) when OPCODE = cmp_ula else
			minus_out(datawidth - 1 downto 0) when OPCODE = sub_ula else
			and_out when OPCODE= and_ula else
			or_out  when OPCODE= or_ula else
			xor_out when OPCODE= xor_ula else
			not_out when OPCODE= not_ula else
			a_shift(datawidth - 1 downto 0) when OPCODE = shf_ula else
			(others => '0');
		
	igual_flag <= '1' when(unsigned(minus_out) = unsigned(zero)) else
					  '0';		
					  
	A_MENOR_B <= minus_out(datawidth - 1);  
	
	carry <= plus_out(datawidth) when OPCODE = add_ula else
				minus_out(datawidth) when OPCODE=sub_ula  else
				a_shift(datawidth) when OPCODE = shf_ula else
				--minus_out(datawidth) when OPCODE=cmp_ula else --isso buga por algum motivo
				'0';
					  
						
	  
end architecture;
