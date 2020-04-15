library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity main is
	port ( 	cin, M 	: in std_logic;
				A,B 		: in std_logic_vector(3 downto 0);
				sel 		: in std_logic_vector(1 downto 0);
				cout, z 	: out std_logic;
				F 			: out std_logic_vector(3 downto 0));
end main;

architecture Behavioral of main is
signal result : std_logic_vector(4 downto 0);
begin
	result <= 	('0' & (A or B)) 		when (sel&M = "000") else
					('0' & (A and B)) 	when (sel&M = "010") else
					('0' & (A xor B)) 	when (sel&M = "100") else
					('0' & (A xnor B)) 	when (sel&M = "110") else
					
					(('0' & A) + B) 				when (sel&M&cin = "0110") else
					(('0' & A) + B + cin) 		when (sel&M&cin = "0111") else
					(('0' & A) + not(B)) 		when (sel&M&cin = "1010") else
					(('0' & A) + not(B) + 1) 	when (sel&M&cin = "1011") else
					(('0' & A) + 1) 				when (sel&M&cin = "1110") else
					(('0' & A) + 1) 				when (sel&M&cin = "1111") else
					"00000";
	F <= result(3 downto 0);
	cout <= result(4);
	z <= 	'1' when (result(3 downto 0) = "0000") else
			'0';
end Behavioral;

