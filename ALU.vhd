----------------------------------------------------------------------------------
-- Engineer: 
-- Create Date:    13:34:01 12/13/2014 
-- Module Name:    ALU - Behavioral 
-- Description: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
port (
	dinA, dinB :STD_LOGIC_VECTOR(31 DOWNTO 0);
	opcode:STD_LOGIC_VECTOR(2 DOWNTO 0);
	dout:STD_LOGIC_VECTOR(31 DOWNTO 0);
	flag:STD_LOGIC
);
end ALU;

architecture Behavioral of ALU is


begin
-- case if opcode == somehting then do something

end Behavioral;

