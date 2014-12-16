--------------------------------------------------------------------------------
-- Engineer:
-- Create Date:   00:59:39 12/16/2014
-- Module Name:   C:/Users/aisha/CPU1/register_file_tb.vhd
-- Project Name:  CPU1
-- Description:   
-- VHDL Test Bench Created by ISE for module: register_file
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY register_file_tb IS
END register_file_tb;
 
ARCHITECTURE behavior OF register_file_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_file
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         en : IN  std_logic;
         r_w : IN  std_logic;
         addrA : IN  std_logic_vector(2 downto 0);
         addrB : IN  std_logic_vector(2 downto 0);
         doutA : OUT  std_logic_vector(31 downto 0);
         doutB : OUT  std_logic_vector(31 downto 0);
         addr : IN  std_logic_vector(2 downto 0);
         din : IN  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '1';
   signal en : std_logic := '0';
   signal r_w : std_logic := '0';
   signal addrA : std_logic_vector(2 downto 0) := (others => '0');
   signal addrB : std_logic_vector(2 downto 0) := (others => '0');
   signal addr : std_logic_vector(2 downto 0) := (others => '0');
   signal din : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal doutA : std_logic_vector(31 downto 0);
   signal doutB : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_file PORT MAP (
          clk => clk,
          reset => reset,
          en => en,
          r_w => r_w,
          addrA => addrA,
          addrB => addrB,
          doutA => doutA,
          doutB => doutB,
          addr => addr,
          din => din
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
          addr <= "000";
          din <= x"AAAAFFFF";
		 
		wait for clk_period;
          r_w <= '1'; -- write enable
          addr <= "001";
          din <= x"A111111F";
		wait for clk_period;
          addr <= "010";
          din <= x"AA1010FF";
		wait for clk_period;
          addr <= "011";
          din <= x"AAA01FFF";
		wait for clk_period;
          r_w <= '0'; -- read enable
          addrA <= "010";

		wait for clk_period;
          addrB <= "011";
      wait for clk_period;
          addrB <= "000";

		wait for clk_period;
          addrA <= "001";
      
		wait;

   end process;
 
END;
