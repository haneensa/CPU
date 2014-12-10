--------------------------------------------------------------------------------
-- Engineer:
-- Create Date:   20:55:11 12/10/2014
-- Module Name:   C:/Users/aisha/CPU1/ram_tb.vhd
-- Project Name:  CPU1
-- VHDL Test Bench Created by ISE for module: RAM
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY ram_tb IS
END ram_tb;
 
ARCHITECTURE behavior OF ram_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         clka : IN  std_logic;
         wea : IN  std_logic_vector(0 downto 0);
         addra : IN  std_logic_vector(7 downto 0);
         dina : IN  std_logic_vector(31 downto 0);
         douta : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clka : std_logic := '0';
   signal wea : std_logic_vector(0 downto 0) := (others => '0');
   signal addra : std_logic_vector(7 downto 0) := (others => '0');
   signal dina : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal douta : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clka_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          clka => clka,
          wea => wea,
          addra => addra,
          dina => dina,
          douta => douta
        );

   -- Clock process definitions
   clka_process :process
   begin
		clka <= '0';
		wait for clka_period/2;
		clka <= '1';
		wait for clka_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		report "Hello World";
		
      -- insert stimulus here 
 
         addra <= "10000000";
         dina <= "10101010000000000000000000000000";	
		wait for clka_period;
			wea <= "1"; -- write enable
			addra <= "10000000";
         dina <= "10101010000000000000000000000000";	
		
		wait for clka_period;
			addra <= "11111111";
         dina <= "11111010000000000000000000000000";	

      wait;
   end process;

END;
