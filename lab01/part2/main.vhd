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
	process (cin, M, A, B, sel)
	begin
		--default value--
		result <= "00000";
		if (M = '0') then
			case sel is
				when "00" =>
					result <= '0' & (A or B);
				when "01" =>
					result <= '0' & (A and B);
				when "10" =>
					result <= '0' & (A xor B);
				when "11" =>
					result <= '0' & (A xnor B);
				when others => null;
				end case;
		else
			case (sel&cin) is
				when "010" =>
					result <= ('0' & A) + B;
				when "011" =>
					result <= ('0' & A) + B + cin;
				when "100" =>
					result <= ('0' & A) + not(B);
				when "101" =>
					result <= ('0' & A) + not(B) + 1;
				when "110"|"111" =>
					result <= ('0' & A) + 1;
				when others => null;	
			end case;
		end if;
	end process;
	F <= result(3 downto 0);
	cout <= result(4);
	z <= 	'1' when (result(3 downto 0) = "0000") else
			'0';
end Behavioral;

