--------------------------------------------------------------------------------
-- Engineer:
-- Create Date:   23:55:04 12/18/2014
-- Module Name:   C:/Users/aisha/CPU1/mdr_tb.vhd
-- Project Name:  CPU1
-- Description:   
-- VHDL Test Bench Created by ISE for module: memory_data_register
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY mdr_tb IS
END mdr_tb;
 
ARCHITECTURE behavior OF mdr_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT memory_data_register
    PORT(
         clk : IN  std_logic;
         en : IN  std_logic;
         din : IN  std_logic_vector(31 downto 0);
         dout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal en : std_logic := '0';
   signal din : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: memory_data_register PORT MAP (
          clk => clk,
          en => en,
          din => din,
          dout => dout
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

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
