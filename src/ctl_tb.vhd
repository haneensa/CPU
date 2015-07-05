--------------------------------------------------------------------------------
-- VHDL Test Bench Created by ISE for module: control_unit
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ctl_tb IS
END ctl_tb;
 
ARCHITECTURE behavior OF ctl_tb IS 
 
    COMPONENT control_unit
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         crl_pc : OUT  std_logic;
         en_pc : OUT  std_logic;
         en_irm : OUT  std_logic;
         en_id : OUT  std_logic;
         opcode : IN  std_logic_vector(2 downto 0);
         alu_mux : OUT  std_logic;
         r_w_z : OUT  std_logic;
         en_z : OUT  std_logic;
         r_w_y : OUT  std_logic;
         en_y : OUT  std_logic;
         reg_mux : OUT  std_logic;
         bneq_alu : IN  std_logic;
         blt_alu : IN  std_logic;
         en_mar : OUT  std_logic;
         r_w_mar : OUT  std_logic;
         en_mdr : OUT  std_logic;
         r_w_mdr : OUT  std_logic;
         r_w_mem : OUT  std_logic;
         en_mem : OUT  std_logic;
         en_reg : OUT  std_logic;
         r_w_reg : OUT  std_logic;
         sel_mux_addr1 : OUT  std_logic;
         sel_mux_addr : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal opcode : std_logic_vector(2 downto 0) := (others => '0');
   signal bneq_alu : std_logic := '0';
   signal blt_alu : std_logic := '0';

 	--Outputs
   signal crl_pc : std_logic;
   signal en_pc : std_logic;
   signal en_irm : std_logic;
   signal en_id : std_logic;
   signal alu_mux : std_logic;
   signal r_w_z : std_logic;
   signal en_z : std_logic;
   signal r_w_y : std_logic;
   signal en_y : std_logic;
   signal reg_mux : std_logic;
   signal en_mar : std_logic;
   signal r_w_mar : std_logic;
   signal en_mdr : std_logic;
   signal r_w_mdr : std_logic;
   signal r_w_mem : std_logic;
   signal en_mem : std_logic;
   signal en_reg : std_logic;
   signal r_w_reg : std_logic;
   signal sel_mux_addr1 : std_logic;
   signal sel_mux_addr : std_logic;

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
          alu_mux => alu_mux,
          r_w_z => r_w_z,
          en_z => en_z,
          r_w_y => r_w_y,
          en_y => en_y,
          reg_mux => reg_mux,
          bneq_alu => bneq_alu,
          blt_alu => blt_alu,
          en_mar => en_mar,
          r_w_mar => r_w_mar,
          en_mdr => en_mdr,
          r_w_mdr => r_w_mdr,
          r_w_mem => r_w_mem,
          en_mem => en_mem,
          en_reg => en_reg,
          r_w_reg => r_w_reg,
          sel_mux_addr1 => sel_mux_addr1,
          sel_mux_addr => sel_mux_addr
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
      -- hold reset state for 10 ns.
      wait for 10 ns;	
		reset <= '0';
		opcode <= "000"; --xor operation
		bneq_alu <= '0';
      blt_alu <= '0';
		wait for 4*clk_period;
			opcode <= "000"; --xor operation
		bneq_alu <= '0';
      blt_alu <= '0';
		wait for 4*clk_period;
		opcode <= "001"; --addi operation
		bneq_alu <= '0';
      blt_alu <= '0';
		wait for 4*clk_period;
		opcode <= "010"; --load operation
		bneq_alu <= '0';
      blt_alu <= '0';
		wait for 4*clk_period;
		opcode <= "011"; --store operation
		bneq_alu <= '0';
      blt_alu <= '0';
		wait for 4*clk_period;
		opcode <= "100"; --blt operation
		bneq_alu <= '0';
      blt_alu <= '1'; -- true
		wait for 3*clk_period;
		opcode <= "100"; --blt operation
		bneq_alu <= '0';
      blt_alu <= '0'; -- false
		wait for 4*clk_period;
		opcode <= "101"; --bneq operation
		bneq_alu <= '0';
      blt_alu <= '1'; -- true
		wait for 3*clk_period;
		opcode <= "101"; --bneq operation
		bneq_alu <= '0';
      blt_alu <= '0'; -- false
		wait for 4*clk_period;
		wait;

   end process;

END;
