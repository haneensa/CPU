--------------------------------------------------------------------------------
-- Engineer:
-- Create Date:   13:21:08 12/13/2014
-- Module Name:   C:/Users/aisha/CPU1/program_counter_tb.vhd
-- Project Name:  CPU1
-- Description:   
-- VHDL Test Bench Created by ISE for module: program_counter
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY program_counter_tb IS
END program_counter_tb;
 
ARCHITECTURE behavior OF program_counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT program_counter
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         crl : IN  std_logic;
         en_A : IN  std_logic;
         din : IN  std_logic_vector(3 downto 0);
         addr : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '1';
   signal crl : std_logic := '0';
   signal en_A : std_logic := '0';
   signal din : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal addr : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: program_counter PORT MAP (
          clk => clk,
          reset => reset,
          crl => crl,
          en_A => en_A,
          din => din,
          addr => addr
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
		report "Hello World";
		
      -- insert stimulus here 
			en_A <= '1';
			reset <= '0';
         crl <= '0';	
		wait for clk_period;
		         crl <= '0';	

		wait for clk_period;
		         crl <= '0';	

		wait for clk_period;
		         crl <= '0';	

		wait for clk_period;
         crl <= '1';	
         din <= "1111";	
      wait;
   end process;

END;
