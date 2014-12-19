--------------------------------------------------------------------------------
-- Engineer:
-- Create Date:   17:43:27 12/19/2014
-- Module Name:   C:/Users/aisha/CPU1/mux_tb.vhd
-- Project Name:  CPU1
-- Description:   
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux_tb IS
END mux_tb;
 
ARCHITECTURE behavior OF mux_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux
    PORT(
         inputA : IN  std_logic_vector(31 downto 0);
         inputB : IN  std_logic_vector(6 downto 0);
         sel : IN  std_logic;
         output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inputA : std_logic_vector(31 downto 0) := (others => '0');
   signal inputB : std_logic_vector(6 downto 0) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(31 downto 0); 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux PORT MAP (
          inputA => inputA,
          inputB => inputB,
          sel => sel,
          output => output
        );

   
   -- Stimulus process
 A: process
   begin		
		inputA <= x"ffffffff";
      wait for 5 ns;	 
    end process;
B: process
   begin		
      inputB  <= "1110101";
      wait for 10 ns;	
   end process;
S: process
   begin		
		sel <= '0';
		wait for 15 ns;	
		sel <= '1';
      wait for 20 ns;	
   end process;
END;
