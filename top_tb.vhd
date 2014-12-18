--------------------------------------------------------------------------------
-- Engineer:
-- Create Date:   03:06:13 12/18/2014
-- Module Name:   C:/Users/aisha/CPU1/top_tb.vhd
-- Project Name:  CPU1
-- Description:   
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY top_tb IS
END top_tb;
 
ARCHITECTURE behavior OF top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '1';
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          clk => clk,
          reset => reset
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

	reset <= '0';
 		wait for clk_period;
 		wait for clk_period;
 		wait for clk_period;
 		wait for clk_period;
 		wait for clk_period;
 		wait for clk_period;
 		wait for clk_period;
 		wait for clk_period;

      wait;
   end process;

END;
