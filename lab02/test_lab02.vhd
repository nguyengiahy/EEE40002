LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_lab02 IS
END test_lab02;
 
ARCHITECTURE behavior OF test_lab02 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT first_design
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         WR : IN  std_logic;
         RD : IN  std_logic;
         CS : IN  std_logic;
         ADDRIN : IN  std_logic_vector(15 downto 0);
         ready : OUT  std_logic;
         RAS : OUT  std_logic;
         CAS : OUT  std_logic;
         RE : OUT  std_logic;
         ADDROUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal WR : std_logic := '0';
   signal RD : std_logic := '0';
   signal CS : std_logic := '0';
   signal ADDRIN : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal ready : std_logic;
   signal RAS : std_logic;
   signal CAS : std_logic;
   signal RE : std_logic;
   signal ADDROUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: first_design PORT MAP (
          clk => clk,
          reset => reset,
          WR => WR,
          RD => RD,
          CS => CS,
          ADDRIN => ADDRIN,
          ready => ready,
          RAS => RAS,
          CAS => CAS,
          RE => RE,
          ADDROUT => ADDROUT
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
      
		  reset <='0';
		  wait for 15ns; 
			  
		  reset <='1';
		  ADDRIN<="1010101010001010";
		  wait for 100ns;
		  
		  CS <= '0';      
		  
		  -- Test case 1--
		  WR <= '0'; RD <= '1';		-- read mode. Nothing happens yet because CS = '0'
		  wait for 100ns; 	
		  
		  CS <= '1';					-- enable the system, RE is expected to be '1' here.
		  wait for 100ns; 			-- ADDROUT is expected to be "10101010" after 1 clock period. 
											-- Then RAS = '1' after 1 clock period. Then RAS = '0' after 1 clock period
											-- Then ADDROUT is "10001010" after 1 clock period
											-- Then CAS = '1' after 1 clock period. Then CAS = '0' after 1 clock period
		  
		  RD <= '0';					-- disable the system because WR and RD are both low. RE is expected to be 'X' here. ADDROUT is "00000000"
		  wait for 100ns;  
		  
		  WR <= '1'; RD <= '1';		-- disable the system because WR and RD are both low. RE is expected to be 'X' here
		  wait for 100ns;  
		  
		  RD <= '0';					-- write mode, RE is expected to be '0' here
		  wait for 100ns; 			-- ADDROUT is expected to be "10101010" after 1 clock period. 
											-- Then RAS = '1' after 1 clock period. Then RAS = '0' after 1 clock period
											-- Then ADDROUT is "10001010" after 1 clock period
											-- Then CAS = '1' after 1 clock period. Then CAS = '0' after 1 clock period
		  
		  CS <= '0';					-- disable the controller, state back to idle, RE becomes X
		  wait for 100ns; 
		  
		  CS<= '1';						-- enable the controller again, the mode is write mode (RE = '0')
		  wait for 100ns; 

   end process;

END;
