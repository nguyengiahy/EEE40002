library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Adder is
	port ( PRN1, PRN2: in std_logic_vector(3 downto 0);
			 Sum: out std_logic_vector(3 downto 0));
end Adder;

architecture Behavioral of Adder is
begin
	process (PRN1, PRN2)
	begin
		Sum <= PRN1 + PRN2;
	end process;
end Behavioral;

