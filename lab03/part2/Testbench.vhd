LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Testbench IS
END Testbench;
 
ARCHITECTURE behavior OF Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Top_Module
    PORT(
         Rb : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         win : OUT  std_logic;
         lose : OUT  std_logic;
         again : OUT  std_logic;
         LED1 : OUT  std_logic_vector(6 downto 0);
         LED2 : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Rb : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal win : std_logic;
   signal lose : std_logic;
   signal again : std_logic;
   signal LED1 : std_logic_vector(6 downto 0);
   signal LED2 : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top_Module PORT MAP (
          Rb => Rb,
          clk => clk,
          reset => reset,
          win => win,
          lose => lose,
          again => again,
          LED1 => LED1,
          LED2 => LED2
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
		wait for clk_period*10;
		
		reset <= '0';
		Rb <= '1';
		wait for clk_period*10;
		
		Rb <= '0';
		wait for clk_period*10;
		
		Rb <= '1';
		wait for clk_period*10;
		
		Rb <= '0';
		wait for clk_period*10;
		
      
   end process;

END;
