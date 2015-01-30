--------------------------------------------------------------------------------
-- Engineer:
-- Create Date:   15:13:10 12/19/2014
-- Module Name:   C:/Users/aisha/CPU1/controller_tb.vhd
-- Project Name:  CPU1
-- Description:   
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY controller_tb IS
END controller_tb;
 
ARCHITECTURE behavior OF controller_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control_unit
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         crl_pc : OUT  std_logic;
         en_pc : OUT  std_logic;
         en_irm : OUT  std_logic;
         en_id : OUT  std_logic;
         opcode : IN  std_logic_vector(2 downto 0);
         dinB_mux : OUT  std_logic;
         bneq_alu : IN  std_logic;
         blt_alu : IN  std_logic;
         en_mar : OUT  std_logic;
         en_mdr : OUT  std_logic;
         r_w_mem : OUT  std_logic;
         en_mem : OUT  std_logic;
         en_reg : OUT  std_logic;
         r_w_reg : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '1';
   signal opcode : std_logic_vector(2 downto 0) := (others => '0');
   signal bneq_alu : std_logic := '0';
   signal blt_alu : std_logic := '0';

 	--Outputs
   signal crl_pc : std_logic;
   signal en_pc : std_logic;
   signal en_irm : std_logic;
   signal en_id : std_logic;
   signal dinB_mux : std_logic;
   signal en_mar : std_logic;
   signal en_mdr : std_logic;
   signal r_w_mem : std_logic;
   signal en_mem : std_logic;
   signal en_reg : std_logic;
   signal r_w_reg : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_unit PORT MAP (
          clk => clk,
          reset => reset,
          crl_pc => crl_pc,
          en_pc => en_pc,
          en_irm => en_irm,
          en_id => en_id,
          opcode => opcode,
          dinB_mux => dinB_mux,
          bneq_alu => bneq_alu,
          blt_alu => blt_alu,
          en_mar => en_mar,
          en_mdr => en_mdr,
          r_w_mem => r_w_mem,
          en_mem => en_mem,
          en_reg => en_reg,
          r_w_reg => r_w_reg
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
		opcode <= "110";
  wait for clk_period;
  
      wait;
   end process;

END;
