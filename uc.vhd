library IEEE;
use IEEE.std_logic_1164.all;

entity uc is

	generic (
        dataWidth : natural := 8;
		  instrucWidth : natural := 16
    );

		port (
		igual_flag : in std_logic;
		flag_menor : in std_logic;

        instruc : In std_logic_vector(4 downto 0);

			pontosDeControle: out std_logic_vector(14 downto 0)

    );

end entity uc;


architecture rtl of uc is





		constant beq_inst: std_logic_vector(4 downto 0) := "00001";   -- OK
		constant jmp_inst: std_logic_vector(4 downto 0) := "00010";   -- OK
		constant bgt_inst: std_logic_vector(4 downto 0) := "00011";   -- OK
		constant load_inst: std_logic_vector(4 downto 0) := "00100";  -- OK
		constant store_inst: std_logic_vector(4 downto 0) := "00101"; -- OK
		constant xor_inst: std_logic_vector(4 downto 0) := "00110";   -- OK
		constant not_inst: std_logic_vector(4 downto 0) := "00111";   -- OK
		constant or_inst: std_logic_vector(4 downto 0) := "01000";    -- OK
		constant and_inst: std_logic_vector(4 downto 0) := "01001";   -- OK
		constant sub_inst: std_logic_vector(4 downto 0) := "01010";   -- OK
		constant add_inst: std_logic_vector(4 downto 0) := "01011";   -- OK
		constant cmp_inst: std_logic_vector(4 downto 0) := "01100";   -- OK
		constant loadc_inst: std_logic_vector(4 downto 0) := "01101"; -- OK
		constant jal: std_logic_vector(4 downto 0) := "01110";        -- OK
		constant req: std_logic_vector(4 downto 0) := "01111";        -- OK
		constant addi_inst: std_logic_vector(4 downto 0) := "10000";  -- OK
		constant shftl_inst: std_logic_vector(4 downto 0) := "10001"; -- OK
		constant loadi_inst: std_logic_vector(4 downto 0) := "10010"; -- OK
		constant cmm_inst: std_logic_vector(4 downto 0) := "10011"; -- OK

		
		
	 signal jump_mux : std_logic ;--is pontosDeControle(0);
	 signal jump_beq : std_logic;-- is pontosDeControle(1);
	 
	 signal sel_mux_ula : std_logic;-- is pontosDeControle(2);
	 signal enable_acumulador : std_logic;-- is pontosDeControle(3);
	 
	 signal acumulador_mux : std_logic_vector(1 downto 0);-- is pontosDeControle(4);
	 
	 signal jump_bgt : std_logic; -- is-- pontosDeControle(5);
	 signal ram_write : std_logic; -- is-- pontosDeControle(5);
	 signal ram_read : std_logic; -- is-- pontosDeControle(5);
	 
	 signal enable_jal : std_logic; -- is-- pontosDeControle(5);
	 signal enable_req : std_logic; -- is-- pontosDeControle(5);
	 
	 
	 
	 signal ula_op : std_logic_vector(3 downto 0);-- is pontosDeControle(8 downto 6);
	 
	 --acresentar o read enable eo write enable
	 
 
begin

	jump_beq <= '1' when instruc = beq_inst and igual_flag = '1' else '0'; 
	
	jump_mux <= '1' when instruc = jmp_inst else '0';
	
	jump_bgt <= '1' when instruc = bgt_inst and flag_menor = '1' else '0';
	
	
	
	sel_mux_ula <= '1' when instruc = cmp_inst or instruc = addi_inst  else '0'; --no cmp ele tem que pegar do imadiato ou um ADDI por exemplo se precisar, vai ser usada para um loadi
	
	enable_acumulador <= '0' when instruc = store_inst or instruc = jmp_inst or instruc = beq_inst or instruc = bgt_inst or instruc = cmp_inst or instruc = req or instruc = jal or instruc = cmm_inst else '1'; --ta dando enable na hora errada, acho qeu so foi um erro na rom
	
	
	acumulador_mux <= "00" when instruc = store_inst or instruc = jmp_inst or instruc = beq_inst or instruc = load_inst or instruc = req or instruc = jal else
							"10" when instruc = loadc_inst else
							"11" when instruc = loadi_inst else
							"01";
	
	
	ula_op <= "0110" when instruc = xor_inst else
				"0101" when instruc = not_inst else
				"0100" when instruc = or_inst else
				"0011" when instruc = and_inst else
				"0010" when instruc = sub_inst else
				"0001" when instruc = add_inst or instruc = addi_inst else
				"0111" when instruc = cmp_inst or instruc = cmm_inst else
				"1000" when instruc = shftl_inst else
				"0000";
				
	ram_write <= '1' when instruc=store_inst else '0';
	ram_read	<= '0' when instruc=store_inst or instruc=jmp_inst or instruc=beq_inst or instruc = cmp_inst or instruc = bgt_inst or instruc = req or instruc = jal else '1';
	
	
	enable_jal <= '1' when instruc = jal else '0';
	
	enable_req <= '1' when instruc = req else '0';
	
	
				
				
				
		pontosDeControle <= enable_req & enable_jal & ula_op & ram_write & ram_read & jump_bgt & acumulador_mux & enable_acumulador & sel_mux_ula & jump_beq & jump_mux;
	
	 --|INST     | ENABLE RETURN | ENABLE JUMP AND LINK | ULA OP (4 bits) | RAM WE | RAM RE | BRANCH GREATER | ACUM MUX(2bit) | ENABLE ACUMULADOR | SEL MUX / ULA | BEQ | JMP |
	 --| REQ     |     1         |    0                 |  0000           |   0    |    0   |     0          |   00           |      0            |     0         |  0  |  0  |
	 --| JAL     |     0         |    1                 |  0000           |   0    |    0   |     0          |   00           |      0            |     0         |  0  |  0  |
	 --| LOAD    |     0         |    0                 |  0000           |   0    |    0   |     0          |   10           |      1            |     0         |  0  |  0  |
	 --| CMP     |     0         |    0                 |  0111           |   0    |    0   |     0          |   01           |      0            |     1         |  0  |  0  |
	 --| ADD     |     0         |    0                 |  0001           |   1    |    0   |     0          |   01           |      1            |     0         |  0  |  0  |
	 --| SUB     |     0         |    0                 |  0010           |   1    |    0   |     0          |   01           |      1            |     0         |  0  |  0  |
	 --| AND     |     0         |    0                 |  0011           |   1    |    0   |     0          |   01           |      1            |     0         |  0  |  0  |
	 --| OR      |     0         |    0                 |  0100           |   1    |    0   |     0          |   01           |      1            |     0         |  0  |  0  |
	 --| XOR     |     0         |    0                 |  0110           |   1    |    0   |     0          |   01           |      1            |     0         |  0  |  0  |
	 --| NOT     |     0         |    0                 |  0101           |   1    |    0   |     0          |   01           |      1            |     0         |  0  |  0  |
	 --| STORE   |     0         |    0                 |  0000           |   0    |    1   |     0          |   00           |      0            |     0         |  0  |  0  |
	 --| LOAD    |     0         |    0                 |  0000           |   1    |    0   |     0          |   00           |      1            |     0         |  0  |  0  |
	 --| BGT     |     0         |    0                 |  0000           |   0    |    0   |     1          |   00           |      0            |     0         |  0  |  0  |
	 --| JMP     |     0         |    0                 |  0000           |   0    |    0   |     0          |   00           |      0            |     0         |  1  |  0  |
	 --| BEQ     |     0         |    0                 |  0000           |   0    |    0   |     0          |   00           |      0            |     0         |  0  |  1  |
	 --| ADDI    |     0         |    0                 |  0001           |   1    |    0   |     0          |   01           |      1            |     1         |  0  |  0  |
	 --| LOADC   |     0         |    0                 |  0000           |   0    |    0   |     0          |   10           |      1            |     0         |  0  |  0  |  
	 --| LOADI   |     0         |    0                 |  0000           |   0    |    0   |     0          |   11           |      1            |     0         |  0  |  0  |
	 --| CMM     |     0         |    0                 |  0111           |   0    |    0   |     0          |   01           |      0            |     0         |  0  |  0  |
	 
end architecture rtl;