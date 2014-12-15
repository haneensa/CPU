----------------------------------------------------------------------------------
-- Engineer: 
-- Create Date:    13:38:42 12/13/2014  
-- Module Name:    memory_address_register - Behavioral 
-- Description: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity memory_address_register is
port(
	 clk,  en: IN STD_LOGIC;
	 din : IN STD_LOGIC_VECTOR(7 DOWNTO 0); --from 
    dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	 );
end memory_address_register;

architecture Behavioral of memory_address_register is

begin
	dout <= din
	when  en = '1'  else -- when read enabled
	"ZZZZZZZZZZZZZZZZ";
end Behavioral;

