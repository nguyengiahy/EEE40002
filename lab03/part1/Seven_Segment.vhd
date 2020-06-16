library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Seven_Segment is
	port( PRN: in std_logic_vector(3 downto 0);
			display_en: in std_logic;
			Seg_Out: out std_logic_vector(6 downto 0)
			);
end Seven_Segment;

architecture Behavioral of Seven_Segment is
begin
	process (PRN, display_en)
	begin
		if (display_en = '1') then
			case PRN is
				when "0000" => Seg_Out <= "0000001";	--"0"
				when "0001" => Seg_Out <= "1001111";	--"1"
				when "0010" => Seg_Out <= "0010010";	--"2"
				when "0011" => Seg_Out <= "0000110";	--"3"
				when "0100" => Seg_Out <= "1001100";	--"4"
				when "0101" => Seg_Out <= "0100100";	--"5"
				when "0110" => Seg_Out <= "0100000";	--"6"
				when "0111" => Seg_Out <= "0001111";	--"7"
				when "1000" => Seg_Out <= "0000000";	--"8"
				when "1001" => Seg_Out <= "0000100";	--"9"
				when "1010" => Seg_Out <= "0000010";	--"a"
				when "1011" => Seg_Out <= "1100000";	--"b"
				when "1100" => Seg_Out <= "0110001";	--"c"
				when "1101" => Seg_Out <= "1000010";	--"d"
				when "1110" => Seg_Out <= "0110000";	--"e"
				when "1111" => Seg_Out <= "0111000";	--"f"
				when others => Seg_Out <= "1111111";
			end case;
		else
			Seg_Out <= "1111111";
		end if;
	end process;
end Behavioral;

