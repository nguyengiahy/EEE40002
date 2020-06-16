library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top_Module is
Port(
		Rb			:	in 	STD_LOGIC;
		reset		:	in		STD_LOGIC;
		clk		:	in		STD_LOGIC;
		Win		:	out 	STD_LOGIC;
		Lose		:	out	STD_LOGIC;
		TryAgain	:	out 	STD_LOGIC;
		disp1		:	out	STD_LOGIC_VECTOR(6 downto 0);
		disp2		:	out	STD_LOGIC_VECTOR(6 downto 0)
	);

end Top_Module;

architecture Behavioral of Top_Module is
signal roll	: 	std_logic;
signal prn	: 	std_logic_vector(7 downto 0);
signal sum	:	std_logic_vector(3 downto 0);

--create components
component Adder is
	Port(
		PRN_1	:	in 	STD_LOGIC_VECTOR(3 downto 0);
		PRN_2	:	in 	STD_LOGIC_VECTOR(3 downto 0);
		Sum	:	out 	STD_LOGIC_VECTOR(3 downto 0)
	);
end component;
--create game component
component Game is
	Port(
		Rb			:	in 	STD_LOGIC;
		Reset		:	in 	STD_LOGIC;
		Clock		:	in 	STD_LOGIC;
		Win		:	out	STD_LOGIC;
		Lose		:	out	STD_LOGIC;
		TryAgain	:	out	STD_LOGIC;
		Roll		:	out	STD_LOGIC;
		Sum		:	in		STD_LOGIC_VECTOR(3 downto 0)
	);
end component;
--create PR component
component PR is
	port(
		clk		:	in 	STD_LOGIC;
		start		:	in		STD_LOGIC;
		reset		:	in		STD_LOGIC;
		Q			:	out	STD_LOGIC_VECTOR(7 downto 0)
	);
end component;
--create component Sevent segment
component Seven_segment is
	
	port(
		Enable	: 	in 	STD_LOGIC;
		PRN		:	in		STD_LOGIC_VECTOR(3 downto 0);
		Seg_D		:	out	STD_LOGIC_VECTOR(6 downto 0)
	);

end component;

begin
I1: Adder port map(prn(3 downto 0), prn(7 downto 4), sum);
I2: Game port map(Rb, reset, clk, Win, Lose, TryAgain, roll, sum);

I3: PR port map(clk, roll, reset, prn);
I4: Seven_segment port map(roll, prn(3 downto 0), disp1);
I5: Seven_segment port map(roll, prn(7 downto 4), disp2);

end Behavioral;

