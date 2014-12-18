----------------------------------------------------------------------------------
-- Engineer: 
-- Create Date:    11:07:31 12/13/2014 
-- Module Name:    top - Behavioral 
-- Project Name: 
-- Description: 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
port (
	clk, reset : IN STD_LOGIC
);
end top;

architecture Behavioral of top is

 COMPONENT program_counter
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         crl : IN  std_logic; --from control
         en : IN  std_logic; --from control
         newAddr : IN  std_logic_vector(3 downto 0); -- from instruction
         addr : OUT  std_logic_vector(3 downto 0) --defualt
        );
    END COMPONENT;
	 
	COMPONENT instruction_memory
    PORT(
         clk : IN  std_logic;
         en : IN  std_logic; --from control
         addr : IN  std_logic_vector(3 downto 0); -- from PC
         dout : OUT  std_logic_vector(15 downto 0) -- to instruction decoder
        );
    END COMPONENT;
	 
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
	 
	 COMPONENT ALU
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         dinA : IN  std_logic_vector(31 downto 0);
         dinB : IN  std_logic_vector(31 downto 0);
         opcode : IN  std_logic_vector(2 downto 0);
         result : OUT  std_logic_vector(31 downto 0);
         flag: OUT  std_logic  --to control		
        );
    END COMPONENT;
	 
	 
    COMPONENT memory
    PORT(
         clk : IN  std_logic;
         r_w : IN  std_logic; --from control
         en : IN  std_logic; --from control
         reset : IN  std_logic; 
         addr : IN  std_logic_vector(4 downto 0); -- abus
         din : in  std_logic_vector(31 downto 0); -- dbus
			dout: out  std_logic_vector(31 downto 0) -- dbus
        );
    END COMPONENT;
	 
	 COMPONENT register_file
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         en : IN  std_logic; --from control
         r_w : IN  std_logic;--from control
         dout : OUT  std_logic_vector(31 downto 0); -- to mem/alu  -- dbus
         addr : IN  std_logic_vector(2 downto 0); -- from instruction  
         din : IN  std_logic_vector(31 downto 0) --from alu/mem   -- dbus
        );
    END COMPONENT;
    
 
-- signals 

signal abus :std_logic_vector(7 downto 0);
signal dbus :std_logic_vector(31 downto 0);
 	 
-- signals for PC	 
signal addr_pc, din_pc :std_logic_vector(3 downto 0);
signal en_pc :std_logic:='1';
signal crl_pc :std_logic:='0';

 -- signals for Instruction Memory	 
signal dout_irm :std_logic_vector(15 downto 0);
signal en_irm :std_logic:='1'; 
 -- signals for Instruction decoder	 
 signal en_id :std_logic:='1'; 
 signal opcode_ird, op1_ird, op2_ird  :std_logic_vector(2 downto 0);
signal op3_ird :std_logic_vector(6 downto 0);
  -- signals for alu 
 signal result_alu  :std_logic_vector(31 downto 0);
signal flag_alu  :std_logic;
  
 -- signals for mem	 
signal addr_mem :std_logic_vector(4 downto 0);
signal din_mem, dout_mem :std_logic_vector(31 downto 0);
signal r_w_mem, en_mem :std_logic:='0'; 
 
-- signals for Reg file	 
signal addr_reg :std_logic_vector(2 downto 0);
signal din_reg, dout_reg :std_logic_vector(31 downto 0);
signal en_reg, r_w :std_logic:='1'; 

begin 
	pc: program_counter port map(
		 clk => clk,
	    reset =>   reset,
	    crl=>   crl_pc, -- from control unit
	    en  =>   en_pc,  -- from control unit
	    newAddr =>   din_pc, -- if the instruction specified an address to jumb to
	    addr =>   addr_pc   -- out to intruction reg
	);
	 
	irm: instruction_memory port map(
		 clk => clk,
	    en  => en_irm,  -- from control unit
	    addr  => addr_pc, -- from PC
	    dout => dout_irm -- to IR
	);
	ird: instruction_decoder PORT MAP (
          clk => clk,
          reset => reset,
          en => en_id,-- from control unit
          dbus => dout_irm,-- from IRM
          opcode => opcode_ird,-- to control unit and alu
          op1 => op1_ird,
          op2 => op2_ird,
          op3 => op3_ird
   );
	
			 
	registers: register_file PORT MAP (
          clk => clk,
          reset => reset,
          en => en_reg,-- from control unit
          r_w => r_w,-- from control unit
          dout => dout_reg ,
          addr => addr_reg,
          din => din_reg
        );
	ram: memory PORT MAP (
          clk => clk,
          r_w => r_w_mem,-- from control unit
          en => en_mem,-- from control unit
          reset => reset,
          addr => addr_mem,
          din => din_mem,
			 dout => dout_mem
        );
		   alu2: ALU PORT MAP (
          clk => clk,
          reset => reset,
          dinA => dout_reg,
          dinB => dout_reg,
          opcode => opcode_ird,
          result => result_alu,
          flag => flag_alu -- to control
			 );
 	--ctl: control_unit port map(clk, wea, addra, dina, douta);

end Behavioral;

