LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY adder_test IS
END adder_test;
 
ARCHITECTURE behavior OF adder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Adder
    PORT(
         PRN1 : IN  std_logic_vector(3 downto 0);
         PRN2 : IN  std_logic_vector(3 downto 0);
         Sum : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PRN1 : std_logic_vector(3 downto 0) := (others => '0');
   signal PRN2 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Adder PORT MAP (
          PRN1 => PRN1,
          PRN2 => PRN2,
          Sum => Sum
        );

   -- Stimulus process
   stim_proc: process
   begin		
      PRN1 <= "0101";
		PRN2 <= "1001";
		wait for 10 ns; 
		
		PRN1 <= "1100";
		PRN2 <= "1010";
		wait for 10 ns; 
		
		PRN1 <= "0001";
		PRN2 <= "1101";
		wait for 10 ns; 
		
   end process;

END;
