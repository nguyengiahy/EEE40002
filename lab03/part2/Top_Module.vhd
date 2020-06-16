library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top_Module is
	port( Rb, clk, reset: in std_logic;
			win, lose, again: out std_logic;
			LED1, LED2: out std_logic_vector(6 downto 0));
end Top_Module;

architecture Behavioral of Top_Module is

signal roll_btn: std_logic;
signal PRN: std_logic_vector(7 downto 0);
signal sum: std_logic_vector(3 downto 0);

-- LFSR for random number generator
component PRNG is
	port( clk, reset, start: in std_logic;
			LFSR: out std_logic_vector(7 downto 0));
end component;
-- Seven segments displayer
component Seven_Segment is
	port( PRN: in std_logic_vector(3 downto 0);
			display_en: in std_logic;
			Seg_Out: out std_logic_vector(6 downto 0));
end component;
-- Adder
component Adder is
	port ( PRN1, PRN2: in std_logic_vector(3 downto 0);
			 Sum: out std_logic_vector(3 downto 0));
end component;
-- Game module
component Game is
	port(	Rb, Reset, Clock: in std_logic;
			Sum: in std_logic_vector(3 downto 0);
			Win, Lose, TryAgain, Roll: out std_logic);
end component;

begin
	I1: Adder port map(PRN(3 downto 0), PRN(7 downto 4), sum);
	I2: Game port map(Rb, reset, clk, sum, win, lose, again, roll_btn);
	I3: PRNG port map(clk, reset, roll_btn, PRN);
	I4: Seven_Segment port map(PRN(3 downto 0), roll_btn, LED1);
	I5: Seven_Segment port map(PRN(7 downto 4), roll_btn, LED2);
end Behavioral;

