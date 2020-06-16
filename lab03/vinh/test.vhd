--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:46:32 06/05/2020
-- Design Name:   
-- Module Name:   C:/Users/NO GO BE/OneDrive/Desktop/Code/Integrated circuit design/lab03/vinh/test.vhd
-- Project Name:  vinh
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Top_Module
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Top_Module
    PORT(
         Rb : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         Win : OUT  std_logic;
         Lose : OUT  std_logic;
         TryAgain : OUT  std_logic;
         disp1 : OUT  std_logic_vector(6 downto 0);
         disp2 : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Rb : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Win : std_logic;
   signal Lose : std_logic;
   signal TryAgain : std_logic;
   signal disp1 : std_logic_vector(6 downto 0);
   signal disp2 : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top_Module PORT MAP (
          Rb => Rb,
          reset => reset,
          clk => clk,
          Win => Win,
          Lose => Lose,
          TryAgain => TryAgain,
          disp1 => disp1,
          disp2 => disp2
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
		
		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		reset <='0';
		wait for 10 ns;
		Rb <= '1';
		wait for clk_period*10;
		Rb<= '0';
		wait for clk_period*10;
		Rb<= '1';
		wait for clk_period*10;
		Rb<='0';
		wait for clk_period*10;
		Rb <= '1';
		wait for clk_period*10;
		Rb<= '0';
		wait for clk_period*10;
		Rb<= '1';
		wait for clk_period*10;
		Rb<='0';
		wait for clk_period*10;
   end process;


END;
