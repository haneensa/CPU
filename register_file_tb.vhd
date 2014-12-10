-- Module Name:   C:/Users/aisha/CPU1/register_file_tb.vhd
-- Project Name:  CPU1
-- VHDL Test Bench Created by ISE for module: register_file
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.std_logic_arith.all; 

-- #1 Entity, has no ports  
ENTITY register_file_tb IS
END register_file_tb;
 
-- #2 Architecture: Declares, insttantiates, and wires together
-- the driver model under the model under test
ARCHITECTURE behavior OF register_file_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         en : IN  std_logic;
         r_w : IN  std_logic;
         addr : IN  std_logic_vector(2 downto 0);
         din : IN  std_logic_vector(31 downto 0);
         dout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    
	-- Internal signal declarations
   --Inputs
   signal clk : std_logic := '0'; -- initialize signals
   signal reset : std_logic := '1';
   signal en : std_logic := '0';
   signal r_w : std_logic := '0';
   signal addr : std_logic_vector(2 downto 0) := (others => '0');
   signal din : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_file PORT MAP (
          clk => clk,
          reset => reset,
          en => en,
          r_w => r_w,
          addr => addr,
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
		report "Hello World";
		
      -- insert stimulus here 
      reset <= '0';
      en <= '1';
      r_w <= '0';
		addr <= "100";
		din <= "10101010000000000000000000000000";	
		 
		wait for clk_period;
		r_w <= '1';
		addr <= "100";
		
		wait for clk_period;
		r_w <= '0';
		addr <= "111";
		din <= "11111010000000000000000000000000";	
		
      wait;
   end process;

END;
