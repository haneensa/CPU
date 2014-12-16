--------------------------------------------------------------------------------
-- Engineer:
-- Create Date:   20:15:53 12/16/2014
-- Module Name:   C:/Users/aisha/CPU1/instruction_decoder_tb.vhd
-- Project Name:  CPU1
-- Description:   
-- VHDL Test Bench Created by ISE for module: instruction_decoder
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY instruction_decoder_tb IS
END instruction_decoder_tb;
 
ARCHITECTURE behavior OF instruction_decoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT instruction_decoder
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         en : IN  std_logic;
         dbus : IN  std_logic_vector(15 downto 0);
         zor : OUT  std_logic;
         addi : OUT  std_logic;
         load : OUT  std_logic;
         store : OUT  std_logic;
         blt : OUT  std_logic;
         bneq : OUT  std_logic;
         eop : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '1';
   signal en : std_logic := '0';
   signal dbus : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal zor : std_logic;
   signal addi : std_logic;
   signal load : std_logic;
   signal store : std_logic;
   signal blt : std_logic;
   signal bneq : std_logic;
   signal eop : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: instruction_decoder PORT MAP (
          clk => clk,
          reset => reset,
          en => en,
          dbus => dbus,
          zor => zor,
          addi => addi,
          load => load,
          store => store,
          blt => blt,
          bneq => bneq,
          eop => eop
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
          dbus <= x"0481"; --xor
		 
		wait for clk_period;
           dbus <= x"34D0"; --addi
		 
		wait for clk_period;
           dbus <= x"C000"; -- eop
	 
		wait;
   end process;

END;
