--------------------------------------------------------------------------------
-- Engineer:
-- Create Date:   22:28:01 12/17/2014
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
         opcode : OUT  std_logic_vector(2 downto 0);
         op1 : OUT  std_logic_vector(2 downto 0);
         op2 : OUT  std_logic_vector(2 downto 0);
         op3 : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '1';
   signal en : std_logic := '0';
   signal dbus : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal opcode : std_logic_vector(2 downto 0);
   signal op1 : std_logic_vector(2 downto 0);
   signal op2 : std_logic_vector(2 downto 0);
   signal op3 : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: instruction_decoder PORT MAP (
          clk => clk,
          reset => reset,
          en => en,
          dbus => dbus,
          opcode => opcode,
          op1 => op1,
          op2 => op2,
          op3 => op3
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
