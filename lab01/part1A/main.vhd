library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
	port ( 	input, clk, reset	: in std_logic;
				x						: out std_logic_vector(4 downto 0));
end main;

architecture Behavioral of main is
signal x0, x1, x2, x3, x4: std_logic;
begin
	process(clk, reset)
	begin
		if (reset = '1') then
			x0 <= '1';
			x1 <= '0';
			x2 <= '0';
			x3 <= '0';
			x4 <= '0';
		elsif (clk'event and clk = '1') then
			x0 <= input xor x4;
			x1 <= x0 xor x4;
			x2 <= x1;
			x3 <= x2 xor x4;
			x4 <= x3;
		end if;
	end process;
	x <= x0 & x1 & x2 & x3 & x4;
end Behavioral;

