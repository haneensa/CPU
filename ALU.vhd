----------------------------------------------------------------------------------
-- Engineer: 
-- Create Date:    13:34:01 12/13/2014 
-- Module Name:    ALU - Behavioral 
-- Description: ALU has two inputs data and one output data 
-- one flag test output to test data equality 
-- it decide if we should jumb to a certain instruction or not
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
	flag: OUT STD_LOGIC
); 
end ALU;

architecture Behavioral of ALU is


begin
-- case if opcode == somehting then do something
   process (opcode)   is
	begin
		case  opcode  is
			when "000" =>
				result <= dinA xor dinB;
			when "001" =>
				result <= dinA + dinB;
			when "100" => --blt
			   if  (dinA > dinB) then -- is A > B?
				flag <= '1';
				end if;
			when "101" => --bneq
				if ((dinA - dinB) = 0) then   -- is A==B?   
				flag <= '0';
				end if;
			when others =>
				null;
		end case;
  end process;
  
end Behavioral;

