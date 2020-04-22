library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift is
    generic (
        larguraDados : natural := 8
    );
    port (DIN : in std_logic_vector(larguraDados-1 downto 0);
       DOUT_HIGH : out std_logic_vector(larguraDados-1 downto 0);
		 DOUT_LOW : out std_logic_vector(larguraDados-1 downto 0);
       ENABLE : in std_logic_vector(1 downto 0);
       CLK,RST : in std_logic
        );
end entity;

architecture comportamento of shift is
signal DIN_HIGH, DIN_LOW: std_logic_vector((larguraDados)-1 downto 0);
signal DOUT: std_logic_vector((2*larguraDados)-1 downto 0);
begin

	
	DOUT <= DIN_HIGH(larguraDados - 2 downto 0 ) & DIN_LOW(larguraDados - 1 downto 0) & '0';
	DOUT_HIGH <= DOUT((2*larguraDados)-1 downto larguraDados);
	DOUT_LOW <= DOUT(larguraDados - 1 downto 0);

    -- In Altera devices, register signals have a set priority.
    -- The HDL design should reflect this priority.
    process(RST, CLK)
    begin
        -- The asynchronous reset signal has the highest priority
        if (RST = '1') then
            DOUT <= (others => '0');    -- Código reconfigurável.
        else
            -- At a clock edge, if asynchronous signals have not taken priority,
            -- respond to the appropriate synchronous signal.
            -- Check for synchronous reset, then synchronous load.
            -- If none of these takes precedence, update the register output
            -- to be the register input.
            if (rising_edge(CLK)) then
                if (ENABLE = "01") then
                        DIN_LOW <= DIN;
					 elsif (ENABLE = "10") then
                        DIN_HIGH <= DIN;
                end if;
            end if;
        end if;
    end process;
end architecture;
