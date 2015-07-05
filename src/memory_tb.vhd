--------------------------------------------------------------------------------
-- Engineer:
-- Create Date:   02:17:18 12/18/2014
-- Module Name:   C:/Users/aisha/CPU1/memory_tb.vhd
-- Project Name:  CPU1
-- Description:   
-- VHDL Test Bench Created by ISE for module: memory
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY memory_tb IS
END memory_tb;
 
ARCHITECTURE behavior OF memory_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT memory
    PORT(
         clk : IN  std_logic;
         r_w : IN  std_logic;
         en : IN  std_logic;
         reset : IN  std_logic;
         addr : IN  std_logic_vector(4 downto 0);
         din : in  std_logic_vector(31 downto 0);
			dout: out  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal r_w : std_logic := '0';
   signal en : std_logic := '0';
   signal reset : std_logic := '1';
   signal addr : std_logic_vector(4 downto 0) := (others => '0');
   signal din : std_logic_vector(31 downto 0);

	--out
   signal dout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: memory PORT MAP (
          clk => clk,
          r_w => r_w,
          en => en,
          reset => reset,
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
		    reset <= '0';
          en <= '1';
          r_w <= '1'; -- write enable
          addr <= "00000";
          din <= x"AAAAFFFF";
		wait for clk_period;
          addr <= "00001";
          din <= x"A111111F";
		wait for clk_period;
          addr <= "00010";
          din <= x"AA1010FF";
		wait for clk_period;
          addr <= "00011";
          din <= x"AAA01FFF";
		wait for clk_period;
          r_w <= '0'; -- read enable
          addr <= "00010";

		wait for clk_period;
          addr <= "00011";
      wait for clk_period;
          addr <= "00000";

		wait for clk_period;
          addr  <= "00011";
      	wait for clk_period;
          addr  <= "00001";
			 	wait for clk_period;
          addr  <= "00001";
		wait;
   end process;

END;
