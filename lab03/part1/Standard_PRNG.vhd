library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Standard_PRNG is
	port( start, clk, reset	: in std_logic;
			LED_on				: out std_logic;
			LFSR					: out std_logic_vector(7 downto 0)
		 );
end Standard_PRNG;

architecture Behavioral of Standard_PRNG is
-- Shadow signal for LFSR output
signal shadow : std_logic_vector(7 downto 0);
begin
	process (clk, start, reset)
	begin
		if (reset = '1') then
			shadow <= "01010011";	-- a random number
			LED_on <= '0';				-- seven segments are turned off
		elsif (clk = '1' and clk'event) then
			if (start = '1') then	-- if start button is pressed
				shadow(0) <= shadow(1);
				shadow(1) <= shadow(2);
				shadow(2) <= shadow(3);
				shadow(3) <= shadow(4);
				shadow(4) <= shadow(5);
				shadow(5) <= shadow(6);
				shadow(6) <= shadow(7);
				shadow(7) <= shadow(0) xor shadow(2) xor shadow(3) xor shadow(4);
			else
				shadow <= shadow;	-- holds on the last value
				LED_on <= '1';		-- seven segments are turned on
			end if;
		end if;
	end process;
	LFSR <= shadow;
end Behavioral;
