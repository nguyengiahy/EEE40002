library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
	port ( 	clk, reset	: in std_logic;
				q				: out std_logic_vector(4 downto 0));
end main;

architecture Behavioral of main is
signal q1, q2, q3, q4, q5: std_logic;
begin
	process(clk, reset)
	begin
		if (reset = '1') then
			q1 <= '1';
			q2 <= '0';
			q3 <= '0';
			q4 <= '0';
			q5 <= '0';
		elsif (clk'event and clk = '1') then
			q1 <= q2;
			q2 <= q1 xor q2 xor q3;
			q3 <= q2 xor q4;
			q4 <= q3 xor q4 xor q5;
			q5 <= q4;
		end if;
	end process;
	q <= q1 & q2 & q3 & q4 & q5;
end Behavioral;

