library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity second_design is
	port(
        clk, reset, WR, RD, CS: 	in std_logic;
        ADDRIN: 						in std_logic_vector(15 downto 0);
        ready, RAS, CAS, RE:  	out std_logic;      
        ADDROUT:						out std_logic_vector(7 downto 0)
        );
end second_design;

architecture Behavioral of second_design is
type state is (idle, input, loadRow, loadColumn, rasEnable, casEnable);		-- states of finite state machine
signal mode: std_logic_vector(1 downto 0);											-- combine RD&WR to detect if the system has to be terminated
signal currentState, nextState: state;
begin
	process(clk, reset, CS, WR, RD)
	begin	
		mode <= RD&WR;											-- if mode = "00" or mode = "11" the system will be stopped
		if (reset = '0') then								-- if reset is pressed
			currentState <= idle;
		elsif (clk'event and clk = '1') then	
			if (CS = '0') then								-- if CS is low
				currentState <= idle;
			elsif (mode = "10" or mode = "01") then	-- if CS is high and mode = "10" or "01"
				currentState <= nextState;					-- advance to next state
			else													-- if mode = "11" or "00", the system is back to idle state
				currentState <= idle;
			end if;
		end if;
	end process;
	
	process (currentState, ADDRIN, RD)
	begin
		case (currentState) is
			when idle =>
				ready <= '0';
				CAS <= '0';
				RAS <= '0';
				RE <= 'X';
				ADDROUT <=(others => '0');
				nextState <= input;
			when input =>
				ready <= '1';
				CAS <= '0';
				RAS <= '0';
				RE <= RD;
				ADDROUT <= (others => '0');
				nextState <= loadRow;
			when loadRow =>
				ready <= '1';
				CAS <= '0';
				RAS <= '0';
				RE <= RD;
				ADDROUT <= ADDRIN(15 downto 8);
				nextState <= rasEnable;
			when rasEnable =>
				ready <= '1';
				CAS <= '0';
				RAS <= '1';
				RE <= RD;
				ADDROUT <= ADDRIN(15 downto 8);
				nextState <= loadColumn;
			when loadColumn =>
				ready <= '1';
				CAS <= '0';
				RAS <= '0';
				RE <= RD;
				ADDROUT <= ADDRIN(7 downto 0);
				nextState <= casEnable;
			when casEnable =>
				ready <= '1';
				CAS <= '1';
				RAS <= '0';
				RE <= RD;
				ADDROUT <= ADDRIN(7 downto 0);	
				nextState <= idle;
		end case;
	end process;

end Behavioral;

