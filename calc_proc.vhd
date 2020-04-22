library IEEE;
use IEEE.std_logic_1164.all;

entity calc_proc is
    
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
		  return_add_out: out std_logic_vector(dataWidth - 1 downto 0);
		  pontosDeControle:in  std_logic_vector(14 downto 0);
		  flag_igual_reg: out std_logic;
		  flag_menor_reg: out std_logic
		  
		  
    );
end entity calc_proc;


architecture rtl of calc_proc is
    
    signal PC_ROM : std_logic_vector(dataWidth - 1 downto 0);
    signal ROM_INC : std_logic_vector(dataWidth - 1 downto 0);
    signal INC_MUX, mux_imediato_jal_out, return_add : std_logic_vector(dataWidth - 1 downto 0);
    signal MUX_PC : std_logic_vector(dataWidth - 1 downto 0);
    signal JMPAND_OR : std_logic;
	 signal JMPOR_MUX : std_logic;
	 signal ULA_JMPAND : std_logic;
    signal MUX_ULA : std_logic_vector(dataWidth - 1 downto 0);
    signal ULentradaA_MUX : std_logic_vector(dataWidth - 1 downto 0);
    signal MUX_ACUMULADOR : std_logic_vector(dataWidth - 1 downto 0);
    signal ACUMULADOR_OUT : std_logic_vector(dataWidth - 1 downto 0);
	 signal acc_out, shiftLOW, shiftHIGH : std_logic_vector(dataWidth - 1 downto 0);
	 signal DATA_FLOW : std_logic_vector(instrucWidth - 1 downto 0);
	 signal flag_menor, flag_carry, flag_carry_reg, flag_igual: std_logic;
	 signal enable_flags, enable_carry: std_logic;
	 
	  
	 
	 
	 signal JMPFLAG: std_logic;
	 
	 alias jump_mux : std_logic is pontosDeControle(0);
	 alias jump_beq : std_logic is pontosDeControle(1);
	 alias sel_mux_ula : std_logic is pontosDeControle(2);
	 alias enable_acumulador : std_logic is pontosDeControle(3);
	 alias acumulador_mux : std_logic_vector(1 downto 0) is pontosDeControle(5 downto 4);
	 
	 alias jump_bgt : std_logic is pontosDeControle(6);
	 
	 alias ram_read: std_logic is pontosDeControle(7);
	 
	 alias ram_write: std_logic is pontosDeControle(8);
	 
	 alias ula_op : std_logic_vector is pontosDeControle(12 downto 9);
	 
	 alias enable_jal : std_logic is pontosDeControle(13);
	 
	 alias enable_ret : std_logic is pontosDeControle(14);
	 
	 alias op_code : std_logic_vector(4 downto 0) is DATA_FLOW(4 downto 0);
	 
	 alias immediato : std_logic_vector(7 downto 0) is DATA_FLOW(12 downto 5);
	 
	 alias inst : std_logic_vector (4 downto 0) is DATA_FLOW(4 downto 0);

begin
	inst_out <= inst;
	pc_out <= MUX_PC;
	
	data_f_out <= DATA_FLOW;
	
	ram_read_enable <= ram_read;
	
	ram_write_enable <= ram_write;
	
	entrada_accumulador <= MUX_ACUMULADOR ;
	
	ula_out <= ULentradaA_MUX;
	
	menor_flag_out <= flag_menor_reg;
	
	igual_flag_out <= flag_igual_reg;
	
	enable_flags <= '1' when ula_op = "0111" else '0';
	
	enable_carry <= '1' when ula_op = "0001" or ula_op = "0010" or ula_op = "1000" else '0';
	
	
	
	
	
	ula_op_out <= ula_op;
	
	return_add_out <= return_add;
	

	JMPFLAG <= jump_mux or jump_beq or jump_bgt or enable_jal or enable_ret;
	
	
    ROM : entity work.memoriaROM
    port map (
        Endereco => PC_ROM,
        Dado => DATA_FLOW
    );

    INC : entity work.soma1
    port map (
        entrada => PC_ROM,
        saida => INC_MUX 
    );

    muxjump : entity work.muxGenerico2x1
    port map (
        entradaA_MUX => INC_MUX,
        entradaB_MUX  => mux_imediato_jal_out,
        seletor_MUX => JMPFLAG,
        saida_MUX => MUX_PC
    );
	 
	 
	 mux_imediato_jal: entity work.muxGenerico2x1
    port map (
        entradaA_MUX => immediato,
        entradaB_MUX  => return_add,
        seletor_MUX => enable_ret,
        saida_MUX => mux_imediato_jal_out
    );

    PC : entity work.PC
    port map ( 
        clock => clock,
        input => MUX_PC,
        output => PC_ROM,
        reset => pcReset
    );
    

    muxUla : entity work.muxGenerico2x1
    port map (
        entradaA_MUX => data_In,
        entradaB_MUX => immediato,
        seletor_MUX => sel_mux_ula,
        saida_MUX => MUX_ULA
    );

    muxacumulador : entity work.muxGenerico4x1
    port map (
        entradaA_MUX => data_In ,
        entradaB_MUX => ULentradaA_MUX,
		  entradaC_MUX => "0000000" & flag_carry_reg ,
        entradaD_MUX => immediato,
        seletor_MUX => acumulador_mux,
        saida_MUX => MUX_ACUMULADOR
    );

    Acumulador : entity work.RegistradorGenerico
    port map (
        DIN => MUX_ACUMULADOR,
        DOUT => acc_out,
        ENABLE => enable_acumulador,
        CLK => clock,
		  RST => '0'
    );
	 
	 ULA : entity work.ULA
	 port map (
	     A => MUX_ULA,
		  B => acc_out,
		  Y => ULentradaA_MUX,
		  OPCODE => ula_op,
		  igual_flag => flag_igual,
		  A_MENOR_B => flag_menor,
		  carry => flag_carry,
		  carry_in => flag_carry_reg
	 );
	 
	 
	 a_ula <= MUX_ULA;
	 b_ula <= acc_out;
	 
	 data_Out <= acc_out;
	 
--	 
--	 UC : entity work.UC
--	 port map (
--	     instruc => inst,
--		  pontosDeControle => pontosDeControle,
--		  igual_flag => flag_igual,
--		  flag_menor => flag_menor
--		  
--	 );
	 
	 
	 JAL : entity work.registradorGenerico
    port map (
        DIN => INC_MUX,
        DOUT => return_add,
        ENABLE => enable_jal,
        CLK => clock,
		  RST => '0'
    );
	 
	 
	
	 
	 maior : entity work.registradorGenericoBit
    port map (
        DIN => flag_menor,
        DOUT => flag_menor_reg,
        ENABLE => enable_flags,
        CLK => clock,
		  RST => '0'
    );
	 
	 
	 igual : entity work.registradorGenericoBit
    port map (
        DIN => flag_igual,
        DOUT => flag_igual_reg,
        ENABLE => enable_flags,
        CLK => clock,
		  RST => '0'
    );
	 
	 
	 carry : entity work.registradorGenericoBit
    port map (
        DIN => flag_carry,
        DOUT => flag_carry_reg,
        ENABLE => enable_carry,
        CLK => clock,
		  RST => '0'
    );
	 
	 
--	 muxshiftHIGH : entity work.muxGenerico2x1
--    port map (
--        entradaA_MUX => OUT_HIGH ,
--        entradaB_MUX => data_In,
--        seletor_MUX => enable,
--        saida_MUX => shiftHIGH
--    );
--	 
--	 muxshiftLOW : entity work.muxGenerico2x1
--    port map (
--        entradaA_MUX => OUT_LOW ,
--        entradaB_MUX => data_In,
--        seletor_MUX => acumulador_mux,
--        saida_MUX => shiftLOW
--    );
--	 
--	 shift: entity work.shift
--		port map (
--		 DIN_HIGH => shiftHIGH,
--		 DIN_LOW => shiftLOW,
--       DOUT_HIGH => OUT_HIGH,
--		 DOUT_LOW => OUT_LOW,
--       ENABLE => enable_shift,
--       CLK=> clock,
--		 RST=> '0'
--       );
	 
	 
	 
	 
	 
	 
	 
	 
	imediato_out <= immediato;
	
	pontosDeControle_out <= pontosDeControle;
	 

	 
end architecture rtl;