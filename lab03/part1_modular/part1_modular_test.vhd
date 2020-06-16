LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY part1_modular_test IS
END part1_modular_test;
 
ARCHITECTURE behavior OF part1_modular_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT part1_modular
    PORT(
         clk : IN  std_logic;
         start : IN  std_logic;
         reset : IN  std_logic;
         LFSR : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal start : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal LFSR : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: part1_modular PORT MAP (
          clk => clk,
          start => start,
          reset => reset,
          LFSR => LFSR
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		reset <= '1';
		start <= '0';
		wait for clk_period;
		
		reset <= '1';
		start <= '1';
		wait for clk_period;
		
		reset <= '0';
		start <= '1';
		wait for clk_period;
		
		reset <= '0';
		start <= '0';
		wait for clk_period;
		
		start <= '1';
		wait;
   end process;

END;
