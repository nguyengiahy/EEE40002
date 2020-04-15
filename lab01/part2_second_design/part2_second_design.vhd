--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:24:52 04/15/2020
-- Design Name:   
-- Module Name:   D:/Code/Integrated circuit design/lab01/part2_second_design/part2_second_design.vhd
-- Project Name:  part2_second_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: main
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
 
ENTITY part2_second_design IS
END part2_second_design;
 
ARCHITECTURE behavior OF part2_second_design IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         cin : IN  std_logic;
         M : IN  std_logic;
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         sel : IN  std_logic_vector(1 downto 0);
         cout : OUT  std_logic;
         z : OUT  std_logic;
         F : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal cin : std_logic := '0';
   signal M : std_logic := '0';
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal cout : std_logic;
   signal z : std_logic;
   signal F : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          cin => cin,
          M => M,
          A => A,
          B => B,
          sel => sel,
          cout => cout,
          z => z,
          F => F
        );


   -- Stimulus process
   stim_proc: process
   begin		
		M <= '0'; sel <= "00"; A <= "1010"; B <= "0101";
		wait for 100ns;
		M <= '0'; sel <= "01"; A <= "1010"; B <= "0101";
		wait for 100ns;
		M <= '0'; sel <= "10"; A <= "1010"; B <= "0101";
		wait for 100ns;
		M <= '0'; sel <= "11"; A <= "1010"; B <= "0101";
		wait for 100ns;
		
		M <= '1'; sel <= "01"; cin <= '0'; A <= "1010"; B <= "0101";
		wait for 100ns;
		M <= '1'; sel <= "01"; cin <= '1'; A <= "1010"; B <= "0101";
		wait for 100ns;
		M <= '1'; sel <= "10"; cin <= '0'; A <= "1010"; B <= "0101";
		wait for 100ns;
		M <= '1'; sel <= "10"; cin <= '1'; A <= "1010"; B <= "0101";
		wait for 100ns;
		M <= '1'; sel <= "11"; cin <= '0'; A <= "1010"; B <= "0101";
		wait for 100ns;
		M <= '1'; sel <= "11"; cin <= '1'; A <= "1010"; B <= "0101";
		wait for 100ns;

      wait;
   end process;

END;
