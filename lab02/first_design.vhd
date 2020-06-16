library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity first_design is
	port(
        clk, reset, WR, RD, CS: 	in std_logic;
        ADDRIN: 						in std_logic_vector(15 downto 0);
        ready, RAS, CAS, RE:  	out std_logic;      
        ADDROUT:						out std_logic_vector(7 downto 0)
        );
end first_design;

architecture Behavioral of first_design is
type state is (idle, input, loadRow, loadColumn, rasEnable, casEnable);		-- states of finite state machine
signal mode: std_logic_vector(1 downto 0);											-- combine RD&WR to detect if the system has to be terminated
signal currentState, nextState: state;
begin
	
	process(clk, reset, CS, WR, RD, currentState, ADDRIN)
	begin	
		RE <= 'X';												-- default values for RE 
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
		
		-- finite state machine transitions
		if (currentState = idle) then			-- starting operation
			ready <= '0';
			CAS <= '0';
			RAS <= '0';
			ADDROUT <=(others => '0');
			nextState <= input;
		elsif	(currentState = input) then	-- produce handshake signal to communicate with host (being busy) 
			ready <= '1';
			CAS <= '0';
			RAS <= '0';
			RE <= RD;
			ADDROUT <= (others => '0');
			nextState <= loadRow;
		elsif	(currentState = loadRow) then	-- loaded ADDROUT with first 8 bits
			ready <= '1';
			CAS <= '0';
			RAS <= '0';
			RE <= RD;
			ADDROUT <= ADDRIN(15 downto 8);
			nextState <= rasEnable;
		elsif	(currentState = rasEnable) then	-- set RAS to high
			ready <= '1';
			CAS <= '0';
			RAS <= '1';
			RE <= RD;
			ADDROUT <= ADDRIN(15 downto 8);
			nextState <= loadColumn;
		elsif	(currentState = loadColumn) then	-- set RAS to low, loaded ADDROUT with last 8 bits
			ready <= '1';
			CAS <= '0';
			RAS <= '0';
			RE <= RD;
			ADDROUT <= ADDRIN(7 downto 0);
			nextState <= casEnable;
		elsif	(currentState = casEnable) then	--set CAS to high, back to idle
			ready <= '1';
			CAS <= '1';
			RAS <= '0';
			RE <= RD;
			ADDROUT <= ADDRIN(7 downto 0);	
			nextState <= idle;
		end if;
		
	end process;
end Behavioral;

