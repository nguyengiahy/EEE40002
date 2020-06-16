LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY seven_segment_test IS
END seven_segment_test;
 
ARCHITECTURE behavior OF seven_segment_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seven_segment
    PORT(
         PRN : IN  std_logic_vector(3 downto 0);
         display_en : IN  std_logic;
         Seg_Out : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PRN : std_logic_vector(3 downto 0) := (others => '0');
   signal display_en : std_logic := '0';

 	--Outputs
   signal Seg_Out : std_logic_vector(6 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seven_segment PORT MAP (
          PRN => PRN,
          display_en => display_en,
          Seg_Out => Seg_Out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      display_en <= '0';
		wait for 10ns;
		
		display_en <= '1';
		PRN <= "0010";
		wait for 10ns;
		
		PRN <= "0011";
		wait for 10ns;
		
		PRN <= "1011";
		wait for 10ns;
		
   end process;

END;
