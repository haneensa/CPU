
-- Module Name:   C:/Users/aisha/CPU1/instruction_memory_tb.vhd
-- Project Name:  CPU1
-- VHDL Test Bench Created by ISE for module: instruction_memory
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY instruction_memory_tb IS
END instruction_memory_tb;
 
ARCHITECTURE behavior OF instruction_memory_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT instruction_memory
    PORT(
         clk : IN  std_logic;
         en : IN  std_logic;
         addr : IN  std_logic_vector(3 downto 0);
         dout : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal en : std_logic := '0';
   signal addr : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: instruction_memory PORT MAP (
          clk => clk,
          en => en,
          addr => addr,
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
      en <= '1';
		addr <= "0100";
		 
		wait for clk_period;
		addr <= "0111";
		
		wait for clk_period;
		addr <= "0001";
		
		wait for clk_period;
		en<= '0';
		addr <= "0001";
      
		wait;

   end process;

END;
