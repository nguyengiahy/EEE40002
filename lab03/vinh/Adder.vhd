library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Adder is
Port(
			PRN_1	:	in 	STD_LOGIC_VECTOR(3 downto 0);
			PRN_2	:	in 	STD_LOGIC_VECTOR(3 downto 0);
			Sum	:	out 	STD_LOGIC_VECTOR(3 downto 0)
		);

end Adder;

architecture Behavioral of Adder is

begin

Process(PRN_1, PRN_2)
	begin
			Sum <= PRN_1 + PRN_2;
	end process;

end Behavioral;

