----------------------------------------------------------------------------------
-- Engineer: 
-- Create Date:    13:34:43 12/13/2014 
-- Module Name:    control_unit - Behavioral 
-- Description: 

-- XOR R5 R1 R2 : R5 = R1 xor R2
-- ADDI R5 R1 0x50 : R5 = R1 + 0x50
-- LOAD R3 (R1) : R3 = DataMem[R1]
-- STORE R3 (R1) : DataMem[R1] = R3
-- BNEQ R2 R5 i4 : if (R2 != R5) jump to instruction i4
-- BLT R3 R4 i9 : if (R3 < R4) jump to insturtion i9
-- EOP 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit is
port(
	 clk, reset: IN STD_LOGIC;
	 -- from instruction decoder
	 opcode: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
	 
	 -- To ALU
	 zor, addi, load, store, blt, bneq, eop: OUT STD_LOGIC ;
	 -- to PC
	 crl_pc : OUT STD_LOGIC;  -- crl_pc = 1 => increment PC by one else => jump to the address 
	 en_pc: OUT STD_LOGIC; -- enable the PC 
	 -- to instruction decoder
	 en_id: OUT STD_LOGIC; -- enable the instruction decoder
	 --  to MAR
	 en_mar: OUT STD_LOGIC; -- enable the instruction decoder
	 -- to MDR
	 en_mdr: OUT STD_LOGIC; -- enable the instruction decoder
	 -- to RAM
	 wea : OUT STD_LOGIC_VECTOR(0 DOWNTO 0); 
	 -- to register files
	 en_rf: OUT STD_LOGIC;
	 r_w_rf : OUT STD_LOGIC;
	 -- to Instruction Memory 
	 en_irm: OUT STD_LOGIC -- enable the PC
);
end control_unit;

architecture Behavioral of control_unit is

begin
 -- opcode flags  
  zor  <= '1' when opcode = "000" 	else '0';
  addi     <= '1' when opcode = "001" 	else '0';
  load    <= '1' when opcode = "010"	else '0';
  store   <= '1' when opcode = "011" 	else '0';
  blt  <= '1' when opcode = "100" 	else '0';
  bneq  <= '1' when opcode = "101" 	else '0';
  eop    <= '1' when opcode = "110" 	else '0';
  -- deal with the operands

end Behavioral;

