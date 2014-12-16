--------------------------------------------------------------------------------
-- Engineer:
-- Create Date:   21:06:42 12/16/2014
-- Module Name:   C:/Users/aisha/CPU1/alu_tb.vhd
-- Project Name:  CPU1
-- Description:   
-- VHDL Test Bench Created by ISE for module: ALU
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY alu_tb IS
END alu_tb;
 
ARCHITECTURE behavior OF alu_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         dinA : IN  std_logic_vector(31 downto 0);
         dinB : IN  std_logic_vector(31 downto 0);
         opcode : IN  std_logic_vector(2 downto 0);
         result : OUT  std_logic_vector(31 downto 0);
         flag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '1';
   signal dinA : std_logic_vector(31 downto 0) := (others => '0');
   signal dinB : std_logic_vector(31 downto 0) := (others => '0');
   signal opcode : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal result : std_logic_vector(31 downto 0);
   signal flag : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          clk => clk,
          reset => reset,
          dinA => dinA,
          dinB => dinB,
          opcode => opcode,
          result => result,
          flag => flag
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
      wait for 100 ns;	
		   reset <= '0';
			dinA  <=  x"ffffffff";
			dinB <=  x"aaaaaaaa";
			opcode  <= "000";
		 
		wait for clk_period;
       	dinA  <=  x"ffffffff";
			dinB <=  x"aaaaaaaa";
			opcode  <= "001";
		wait for clk_period;
        	dinA  <=  x"ffffffff";
			dinB <=  x"aaaaaaaa";
			opcode  <= "101";
	 	wait for clk_period;
        	dinA  <=  x"ffffffff";
			dinB <=  x"aaaaaaaa";
			opcode  <= "100";
		wait;
   end process;

END;