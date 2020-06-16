library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Seven_segment is
	port(
		Enable	: in		STD_LOGIC;
		PRN		:	in		STD_LOGIC_VECTOR(3 downto 0);
		Seg_D		:	out	STD_LOGIC_VECTOR(6 downto 0)
	);
end Seven_segment;

architecture Behavioral of Seven_segment is

begin

	process(PRN, Enable)
	begin
		if Enable = '1' then
			case PRN is
						 when "0000" => Seg_D <= "0000001"; -- "0"     
						 when "0001" => Seg_D <= "1001111"; -- "1" 
						 when "0010" => Seg_D <= "0010010"; -- "2" 
						 when "0011" => Seg_D <= "0000110"; -- "3" 
						 when "0100" => Seg_D <= "1001100"; -- "4" 
						 when "0101" => Seg_D <= "0100100"; -- "5" 
						 when "0110" => Seg_D <= "0100000"; -- "6" 
						 when "0111" => Seg_D <= "0001111"; -- "7" 
						 when "1000" => Seg_D <= "0000000"; -- "8"     
						 when "1001" => Seg_D <= "0000100"; -- "9" 
						 when "1010" => Seg_D <= "0000010"; -- a
						 when "1011" => Seg_D <= "1100000"; -- b
						 when "1100" => Seg_D <= "0110001"; -- C
						 when "1101" => Seg_D <= "1000010"; -- d
						 when "1110" => Seg_D <= "0110000"; -- E
						 when "1111" => Seg_D <= "0111000"; -- F
						 when others => Seg_D <= "1111111";
					 end case;
		else
			Seg_D <= "1111111";
		end if;
				
			
	end process;

end Behavioral;
