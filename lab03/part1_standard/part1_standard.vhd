library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity part1_standard is
	port( start, clk, reset	: in std_logic;
			LFSR					: out std_logic_vector(7 downto 0)
		 );
end part1_standard;

architecture Behavioral of part1_standard is
signal shadow : std_logic_vector(7 downto 0);
begin
	process (clk, start, reset)
	begin
		if (reset = '1') then
			shadow <= "01010011";
		elsif (clk = '1' and clk'event) then
			if (start = '1') then
				shadow(0) <= shadow(1);
				shadow(1) <= shadow(2);
				shadow(2) <= shadow(3);
				shadow(3) <= shadow(4);
				shadow(4) <= shadow(5);
				shadow(5) <= shadow(6);
				shadow(6) <= shadow(7);
				shadow(7) <= shadow(0) xor shadow(2) xor shadow(3) xor shadow(4);
			else
				shadow <= shadow;
			end if;
		end if;
	end process;
	LFSR <= shadow;
end Behavioral;

