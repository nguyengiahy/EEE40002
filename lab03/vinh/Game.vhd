----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

-- Uncomment the folloWing library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the folloWing library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Game is
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
end Game;

architecture Behavioral of Game is

signal point_store: std_logic_vector(3 downto 0):="0000";
type state_type is (idle,again, ButtonPressed, ButtonReleased, PlayerWin, PlayerLose);
signal current_state:state_type;
signal second_attempt: STD_LOGIC;


begin
	-- PROCESS
	Process(current_state, Rb, Sum, Reset, Clock)
	Begin
		if (Reset = '1') then -- if reset is pressed
			-- reset everything
			point_store <= (others => '0');
			second_attempt <= '0';
			Win <= '0';
			Lose <= '0';
			TryAgain <= '0';
			Roll <= '0';
			
			current_state <= idle; -- set initial state
			
		elsif (clock'event and clock = '1') then
			case current_state is 
				when idle =>
					-- outputs when in idle
					Win <= '0';
					Lose <= '0';
					TryAgain <= '0';
					Roll <= '0';
					
					if (Rb = '1') then -- if roll button is pressed
						current_state <= ButtonPressed;
					else
						current_state <= idle;
					end if;
					
				when ButtonPressed =>
					-- outputs when button is pressed
					Win <= '0';
					Lose <= '0';
					TryAgain <= '0';
					Roll <= '1';
					
					if (Rb = '0') then -- when roll button is released
						current_state <= ButtonReleased;
					else
						current_state <= ButtonPressed;
					end if;
					
				when ButtonReleased =>
					-- outputs when button is released
					Win <= '0';
					Lose <= '0';
					TryAgain <= '0';
					Roll <= '0';
					
					if (second_attempt = '0') then -- if player is in his second attempt
						
						-- if Sum is 6 or 12, player Wins
						if ((Sum = 6) or (Sum = 12)) then
							current_state <= PlayerWin;
						-- if Sum is 5, 8 or 13 player Loses
						elsif ((Sum = 5) or (Sum = 8) or (Sum = 13)) then
							current_state <= PlayerLose;
						-- if others, play second attempt
						else
							current_state <= again;
						end if;
					
					else -- on player's second attempt
					
						-- if Sum equal point_store value, Wins
						if (Sum = point_store) then
							current_state <= PlayerWin;
						else 
							current_state <= PlayerLose;
						end if;
					end if;
					
				when PlayerWin =>
					-- outputs when player Wins
					Win <= '1';
					Lose <= '0';
					TryAgain <= '0';
					Roll <= '0';
					
					-- reset point_store, second_attempt and state
					point_store <= (others => '0');
					second_attempt <= '0';
					current_state <= idle;
					
				when PlayerLose =>
					-- outputs when player Loses
					Win <= '0';
					Lose <= '1';
					TryAgain <= '0';
					Roll <= '0';
					
					-- reset point_store, second_attempt and state
					point_store <= (others => '0');
					second_attempt <= '0';
					current_state <= idle;
					
				when again =>
					-- output when player tries again
					Win <= '0';
					Lose <= '0';
					TryAgain <= '1';
					Roll <= '0';
					
					-- assign current Sum to point_store
					point_store <= Sum;
					-- player gets a second attempt
					second_attempt <= '1';
					
					current_state <= idle;
			end case;
		end if;
	End Process;

end Behavioral;
