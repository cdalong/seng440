--------------------------------------------------------------------------------
-- Company: University of Victoria
-- Engineer: Cameron Long V00748439
--
-- Create Date:   23:40:41 07/29/2014
-- Design Name:   ulaw test bench
-- Module Name:   C:/Users/Cameron/Documents/Xilinx Projects/ulaw-2/ulaw_tb.vhd
-- Project Name:  ulaw-2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ulaw_14_8
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
 
ENTITY ulaw_tb IS
END ulaw_tb;
 
ARCHITECTURE behavior OF ulaw_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ulaw_16_8
    PORT(
         data : IN  std_logic_vector(15 downto 0);
         clock : IN  std_logic;
         dataq : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic_vector(15 downto 0) := (others => '0');
   signal clock : std_logic := '0';

 	--Outputs
   signal dataq : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ulaw_16_8 PORT MAP (
          data => data,
          clock => clock,
          dataq => dataq
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;
		
		
		data <= "1001010100101011";
      -- insert stimulus here 
		
		 wait for clock_period*10;
		 
		 data <= "0000100101011111";
		  wait for clock_period*10;
		  
		  data<= "0010101000101010";
		   wait for clock_period*10;
			
			data<= "0000000000001110";
			
			 wait for clock_period*10;

      wait;
   end process;

END;
