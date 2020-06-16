library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity part1_modular is
	port( clk, start, reset: in std_logic;
			LFSR				  : out std_logic_vector(7 downto 0)
		 );
end part1_modular;

architecture Behavioral of part1_modular is
signal shadow : std_logic_vector(7 downto 0);
begin
	process (clk, reset, start)
	begin
		if (reset = '1') then 
			shadow <= "01010011";
		elsif (clk = '1' and clk'event) then
			if (start = '1') then
				shadow(0) <= shadow(7);
				shadow(1) <= shadow(0);
				shadow(2) <= shadow(1) xor shadow(7);
				shadow(3) <= shadow(2) xor shadow(7);
				shadow(4) <= shadow(3) xor shadow(7);
				shadow(5) <= shadow(4);
				shadow(6) <= shadow(5);
				shadow(7) <= shadow(6);
			else
				shadow <= shadow;
			end if;
		end if;
	end process;
	
	LFSR <= shadow;
	
end Behavioral;

