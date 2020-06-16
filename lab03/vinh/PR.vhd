----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:44:29 06/05/2020 
-- Design Name: 
-- Module Name:    PR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PR is
port(
		clk		:	in 	STD_LOGIC;
		start		:	in		STD_LOGIC;
		reset		:	in		STD_LOGIC;
		Q			:	out	STD_LOGIC_VECTOR(7 downto 0)
	);

end PR;

architecture Behavioral of PR is
signal xq: std_logic_vector(7 downto 0);
begin
process(clk, reset, start)
		begin
		
			if reset = '1' then
				xq <= "11000110"; --11000110
			elsif (clk='1' and clk'event) then
				if start = '1' then
					xq(0) <= xq(1);
					xq(1) <= xq(2);
					xq(2) <= xq(3);
					xq(3) <= xq(4);
					xq(4) <= xq(5);
					xq(5) <= xq(6);
					xq(6) <= xq(7);
					xq(7) <= xq(0) xor xq(2) xor xq(3) xor xq(4);
				else
					xq <= xq;
				end if;
			end if;
		end process;
		Q <= xq;


end Behavioral;

