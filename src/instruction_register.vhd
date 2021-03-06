---------------------------------------------------------------------------------- 
-- Engineer: 
-- Create Date:    13:32:21 12/13/2014 
-- Module Name:    instruction_register - Behavioral 
-- Description: Save the instruction pointed by PC from instruction memory
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- for <conv_integer>
use IEEE.std_logic_arith.all; 


entity instruction_register is
port(
	 clk,  en: IN STD_LOGIC;
    dbus : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	 );
end instruction_register;
 
architecture Behavioral of instruction_register is

signal IR: STD_LOGIC_VECTOR(15 downto 0);
	
begin
	IR <= dbus
	when  en = '1'  else -- when read enabled
	"ZZZZZZZZZZZZZZZZ";
end Behavioral;
 
 
 
 
  



