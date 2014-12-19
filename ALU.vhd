----------------------------------------------------------------------------------
-- Create Date:    13:34:01 12/13/2014 
-- Module Name:    ALU - Behavioral 
-- Description: 
-- ALU has two inputs data and one output data 
-- one flag test output to test data equality 
-- it decide if we should jumb to a certain instruction or not

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
USE IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity ALU is
port (
   clk, reset : IN  std_logic;
	dinA, dinB : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- operand 1 and 2
	opcode: IN STD_LOGIC_VECTOR(2 DOWNTO 0); -- to decide the operation
	result: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	bneq, blt: OUT STD_LOGIC
); 
end ALU;

architecture Behavioral of ALU is


begin
-- case if opcode == somehting then do something
   process (opcode,dinA, dinB )   is
	begin
		case  opcode  is 
			when "000" =>
				result <= dinA xor dinB;
					bneq <= 'Z';
					blt <= 'Z';

			when "001" =>
				result <= dinA + dinB;
					bneq <= 'Z';
					blt <= 'Z';
			when "100" => --blt
			   if  (dinA > dinB) then -- is A > B?
				 blt <= '1';
				end if;
				result <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				 blt <= '0';
			when "101" => --bneq
				if ((dinA - dinB) = 0) then   -- is A==B?   
				bneq <= '1';
				end if; 
				result <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				bneq <= '0';
			when others =>
				bneq <= 'Z';
					blt <= 'Z';
				result <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end case;
  end process;
  
end Behavioral;

