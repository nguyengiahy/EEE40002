library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top_Module is
Port(	clk, reset, display_en	: in 	STD_LOGIC;
		standardPRNG, modularPRNG: out STD_LOGIC_VECTOR (6 downto 0)
	);
end Top_Module;

architecture Behavioral of Top_Module is

signal PRN1, PRN2: std_logic_vector(7 downto 0);
signal seg1_en, seg2_en: std_logic;

-- Standard PRNG --
component Standard_PRNG is
	port( start, clk, reset: in std_logic;
			LED_on: out std_logic;
			LFSR: out std_logic_vector(7 downto 0)
		 );
end component;
-- Modular PRNG --
component Modular_PRNG is
	port( start, clk, reset: in std_logic;
			LED_on: out std_logic;
			LFSR: out std_logic_vector(7 downto 0)
		 );
end component;
-- Seven segments display --
component Seven_Segment is
	port( PRN: in std_logic_vector(3 downto 0);
			display_en: in std_logic;
			Seg_Out: out std_logic_vector(6 downto 0)
			);
end component;

begin
	I1: Standard_PRNG port map(display_en, clk, reset, seg1_en, PRN1);
	I2: Modular_PRNG port map(display_en, clk, reset, seg2_en, PRN2);
	I3: Seven_Segment port map(PRN1(3 downto 0), seg1_en, standardPRNG);
	I4: Seven_Segment port map(PRN2(3 downto 0), seg2_en, modularPRNG);
end Behavioral;

