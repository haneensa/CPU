----------------------------------------------------------------------------------
-- Create Date:    13:34:01 12/13/2014 
-- Module Name:    ALU - Behavioral 
-- Description: 
-- ALU has two inputs data and one output data 
-- one flag test output to test data it decide if 
-- we should jumb to a certain instruction or not
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
			   if  (dinA < dinB) then -- is A < B?
				 	 blt <= '1';
				else 
					 blt <= '0';
				end if;
				result <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
			when "101" => --bneq
				if ((dinA - dinB) = 0) then   -- is A==B?   
				   bneq <= '1';
				else 
					bneq <= '0';
				end if; 
				result <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
			when others =>
				bneq <= 'Z';
					blt <= 'Z';
				result <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end case;
  end process;
end Behavioral;