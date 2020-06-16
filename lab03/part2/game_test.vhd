LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY game_test IS
END game_test;
 
ARCHITECTURE behavior OF game_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Game
    PORT(
         Rb : IN  std_logic;
         Reset : IN  std_logic;
         Clock : IN  std_logic;
         Sum : IN  std_logic_vector(3 downto 0);
         Win : OUT  std_logic;
         Lose : OUT  std_logic;
         TryAgain : OUT  std_logic;
         Roll : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Rb : std_logic := '0';
   signal Reset : std_logic := '0';
   signal Clock : std_logic := '0';
   signal Sum : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Win : std_logic;
   signal Lose : std_logic;
   signal TryAgain : std_logic;
   signal Roll : std_logic;

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Game PORT MAP (
          Rb => Rb,
          Reset => Reset,
          Clock => Clock,
          Sum => Sum,
          Win => Win,
          Lose => Lose,
          TryAgain => TryAgain,
          Roll => Roll
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		Reset <= '1';
		wait for 50ns;
		
		Reset <= '0';
		Rb <= '1';
		wait for 50ns;
		
		Rb <= '0';
		Sum <= "0110";  --6
		wait for 50ns;
		
		Rb <= '1';
		wait for 50ns;
		
		Rb <= '0';
		Sum <= "1000";  --8
		wait for 50ns;
		
		Rb <= '1';
		wait for 50ns;
		
		Rb <= '0';
		Sum <= "1001";  --9
		wait for 50ns;
		
		Rb <= '1';
		wait for 50ns;
		
		Rb <= '0';
		Sum <= "1001";  --9
		wait for 50ns;
		
   end process;

END;
