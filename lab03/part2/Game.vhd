library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Game is
	port(	Rb, Reset, Clock: in std_logic;
			Sum: in std_logic_vector(3 downto 0);
			Win, Lose, TryAgain, Roll: out std_logic);
end Game;

architecture Behavioral of Game is
type state is (idle, startPRN, stopPRN, gameWin, gameLose, gameAgain);
signal currentState: state;
signal pointReg: std_logic_vector(3 downto 0):="0000";
signal secondAttempt: std_logic;
begin
	process(Rb, Reset, Clock, Sum, currentState)
	begin
		if (Reset = '1') then
			Win <= '0';
			Lose <= '0';
			TryAgain <= '0';
			Roll <= '0';
			pointReg <= "0000";
			secondAttempt <= '0';
			currentState <= idle;
		elsif (Clock = '1' and Clock'event) then
			case currentState is
				when idle =>
					Win <= '0';
					Lose <= '0';
					TryAgain <= '0';
					Roll <= '0';
					if (Rb = '1') then 
						currentState <= startPRN;
					else
						currentState <= idle;
					end if;
				when startPRN =>
					Win <= '0';
					Lose <= '0';
					TryAgain <= '0';
					Roll <= '1';
					if (Rb = '0') then
						currentState <= stopPRN;
					else
						currentState <= startPRN;
					end if;
				when stopPRN =>
					Win <= '0';
					Lose <= '0';
					TryAgain <= '0';
					Roll <= '0';
					if (secondAttempt = '0') then
						if (Sum = 6 or Sum = 12) then
							currentState <= gameWin;
						elsif (Sum = 8 or Sum = 5 or Sum = 13) then
							currentState <= gameLose;
						else
							currentState <= gameAgain;
						end if;
					else
						if (Sum = pointReg) then
							currentState <= gameWin;
						else 
							currentState <= gameLose;
						end if;
					end if;
				when gameWin =>
					Win <= '1';
					Lose <= '0';
					TryAgain <= '0';
					Roll <= '0';
					pointReg <= "0000";
					secondAttempt <= '0';
					currentState <= idle;
				when gameLose =>
					Win <= '0';
					Lose <= '1';
					TryAgain <= '0';
					Roll <= '0';
					pointReg <= "0000";
					secondAttempt <= '0';
					currentState <= idle;
				when gameAgain =>
					Win <= '0';
					Lose <= '0';
					TryAgain <= '1';
					Roll <= '0';
					pointReg <= Sum;
					secondAttempt <= '1';
					currentState <= idle;
			end case;
		end if;
	end process;
end Behavioral;

