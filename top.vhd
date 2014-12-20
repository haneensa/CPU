----------------------------------------------------------------------------------
-- Engineer: Haneen Mohammed
-- Create Date:    11:07:31 12/13/2014 
-- Module Name:    top - Behavioral 
-- Project Name: 32 bits unpiplined CPU
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity top is
port (
	clk, reset : IN STD_LOGIC
);
end top;

architecture Behavioral of top is

 COMPONENT mux
    PORT(
         inputA : IN  std_logic_vector(31 downto 0);
         inputB : IN  std_logic_vector(31 downto 0);
         sel : IN  std_logic;
         output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
	
 COMPONENT mux3b
    PORT(
         inputA : IN  std_logic_vector(2 downto 0);
         inputB : IN  std_logic_vector(2 downto 0);
         sel : IN  std_logic;
         output : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
		
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
         en : IN  std_logic; --from control
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
         bneq, blt: OUT  std_logic  --to control		
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
	 
	 COMPONENT memory_address_register
    PORT(
         clk : IN  std_logic;
			reset : IN  std_logic;
         en : IN  std_logic; --from control
			r_w : IN  std_logic; --from control        
			din : IN  std_logic_vector(4 downto 0);
         dout : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT reg32bits
    PORT(
         clk : IN  std_logic;
			reset : IN  std_logic;
         en : IN  std_logic;  --from control
			r_w : IN  std_logic; --from control
         din : IN  std_logic_vector(31 downto 0);
         dout : OUT  std_logic_vector(31 downto 0)
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
    
 COMPONENT control_unit
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         crl_pc : OUT  std_logic; -- to PC
         en_pc : OUT  std_logic;  -- to PC
         en_irm : OUT  std_logic; -- to Instruction Memory
         en_id : OUT  std_logic; -- to Instruction Decoder
         opcode : IN  std_logic_vector(2 downto 0); -- from ALU
         alu_mux : OUT  std_logic; -- t
			r_w_z : OUT  std_logic;
			en_z : OUT  std_logic;
			r_w_y : OUT  std_logic;
			en_y : OUT  std_logic;
			reg_mux: OUT  std_logic;
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
			sel_mux_addr1  : OUT std_logic; 
         sel_mux_addr  : OUT std_logic
        );
    END COMPONENT;
 
-- signals for PC	 
signal addr_pc :std_logic_vector(3 downto 0);
signal en_pc :std_logic;
signal crl_pc :std_logic;

 -- signals for Instruction Memory	 
signal dout_irm :std_logic_vector(15 downto 0);
signal en_irm :std_logic; 
 -- signals for Instruction decoder	 
 signal en_id :std_logic; 
 signal opcode_ird, op1_ird, op2_ird  :std_logic_vector(2 downto 0);
signal op3_ird :std_logic_vector(6 downto 0);
  -- signals for alu 
signal bneq_alu, blt_alu  :std_logic;
 
 -- signals for mem	 
signal dout_mem :std_logic_vector(31 downto 0);
signal r_w_mem, en_mem :std_logic:='0'; 
 
-- MAR
signal en_mar : std_logic;
signal dout_mar : std_logic_vector(4 downto 0);
signal r_w_mar :std_logic; 

-- MDR
signal en_mdr : std_logic;
signal dout_mdr : std_logic_vector(31 downto 0);
signal r_w_mdr :std_logic; 

-- signals for Reg file	 
 signal  dout_reg :std_logic_vector(31 downto 0);
signal en_reg, r_w_reg :std_logic; 

signal sel_mux_alu :std_logic; 
signal sel_mux_reg :std_logic;

signal output_mux_alu : std_logic_vector(31 downto 0);
signal output_mux_reg : std_logic_vector(31 downto 0);
signal alu_out : std_logic_vector(31 downto 0);
signal result : std_logic_vector(31 downto 0);

-- z register
signal r_w_z :std_logic; 
signal en_z :std_logic; 
signal dout_z : std_logic_vector(31 downto 0);

-- y register
signal r_w_y :std_logic; 
signal en_y :std_logic; 
signal dout_y : std_logic_vector(31 downto 0);


signal sel_mux_addr1  :std_logic; 
signal sel_mux_addr  :std_logic; 
signal output_mux_addr1 : std_logic_vector(2 downto 0);
signal output_mux_addr  : std_logic_vector(2 downto 0);

  			   
begin 
 ctl: control_unit PORT MAP (
          clk => clk,
          reset => reset,
          crl_pc => crl_pc, --to pc
          en_pc => en_pc, -- to pc
          en_irm => en_irm, -- to instruction mem
          en_id => en_id, -- to instruction mem
          opcode => opcode_ird, -- from decoder
          alu_mux => sel_mux_alu, -- to mux
			 r_w_z => r_w_z,
			 en_z => en_z, 
			 r_w_y => r_w_y,
			 en_y => en_y,  
			 reg_mux => sel_mux_reg,
          bneq_alu => bneq_alu, -- from alu
          blt_alu => blt_alu, -- from alu
          en_mar => en_mar,-- to mar
			 r_w_mar => r_w_mar,
          en_mdr => en_mdr, -- to mar
			 r_w_mdr => r_w_mdr,
          r_w_mem => r_w_mem, -- to mem
          en_mem => en_mem, -- to mem
          en_reg => en_reg, -- to reg
          r_w_reg => r_w_reg, -- to reg
        	sel_mux_addr1  => sel_mux_addr1,
         sel_mux_addr  => sel_mux_addr
		  );
	pc: program_counter port map(
		 clk => clk,
	    reset =>   reset,
	    crl=>   crl_pc, -- from control unit
	    en  =>   en_pc,  -- from control unit
	    newAddr =>   op3_ird(3 downto 0), -- if the instruction specified an address to jumb to
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
	y: reg32bits PORT MAP (
          clk => clk,
			 reset => reset,
          en => en_y,-- from control unit
			 r_w => r_w_y,-- from control unit
          din => dout_reg, -- from register
          dout => dout_y -- to memory
        );
	mux_alu: mux PORT MAP (
          inputA => dout_y,
          inputB => "0000000000000000000000000" & op3_ird,
          sel => sel_mux_alu,
          output => output_mux_alu
        );
 
  alu2: ALU PORT MAP (
          clk => clk,
          reset => reset,
          dinA => dout_reg, -- always from Register 
          dinB => output_mux_alu, -- either Register or Immediate value 
          opcode => opcode_ird, -- should it be only from Ucontroller?
          result => alu_out, -- always to a register | (result_alu)
          bneq => bneq_alu, -- to control
			 blt=> blt_alu -- to control
			 );
	 
	mux_reg: mux PORT MAP (
          inputA => dout_mem,
          inputB => dout_z,
          sel => sel_mux_reg,
          output => output_mux_reg
        );
		  
	z: reg32bits PORT MAP (
          clk => clk,
			 reset => reset,
          en => en_z,-- from control unit
			 r_w => r_w_z,-- from control unit
          din => alu_out, -- from register
          dout => dout_z -- to memory
        );
	mux_reg_addr: mux3b PORT MAP (
          inputA => op1_ird, -- sel = 1 when alu1  to write to it, and when jump0
          inputB => op2_ird, -- sel = 0 when decode
          sel => sel_mux_addr1,
          output => output_mux_addr1
        ); 
	mux_reg_addr2: mux3b PORT MAP (
          inputA => output_mux_addr1, --sel = 1 when decode, alu1 
          inputB => op3_ird(2 downto 0), --sel = 0 when alu0 
          sel => sel_mux_addr,
          output => output_mux_addr
        );		  
	registers: register_file PORT MAP (
          clk => clk,
          reset => reset,
          en => en_reg,-- from control unit
          r_w => r_w_reg,-- from control unit
          dout => dout_reg , -- to memory or alu
          addr => output_mux_addr, -- from the instruction
          din => output_mux_reg  -- either from mem or result of ALU
        );
		  --reslut alu
		  -- XOR R5 R1 R2 : R5 = R1 xor R2
		  -- ADDI R5 R1 0x50 : R5 = R1 + 0x50
		  --from mem
		  -- LOAD R3 (R1) : R3 = DataMem[R1]
	ram: memory PORT MAP (
          clk => clk,
          r_w => r_w_mem,-- from control unit
          en => en_mem,-- from control unit
          reset => reset,
          addr => dout_mar, -- mar
          din => dout_mdr, -- from mdr
			 dout => dout_mem
        );	  		  
	-- used for load and store
	-- LOAD R3 (R1) : R3 = DataMem[R1]
   mar: memory_address_register PORT MAP (
          clk => clk,
			 reset => reset,
			 en => en_mar, -- from control unit
			 r_w => r_w_mar,-- from control unit          
          din => "00" & op2_ird,  -- from instruction
          dout => dout_mar
        );
	-- used for store	  
	-- STORE R3 (R1) : DataMem[R1] = R3
	mdr: reg32bits PORT MAP (
          clk => clk,
			 reset => reset,
          en => en_mdr,-- from control unit
			 r_w => r_w_mdr,-- from control unit
          din => dout_reg, -- from register
          dout => dout_mdr -- to memory
        );
	
   
end Behavioral;

