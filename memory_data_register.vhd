----------------------------------------------------------------------------------
-- Engineer: 
-- Create Date:    13:39:20 12/13/2014 
-- Module Name:    memory_data_register - Behavioral 
-- Description: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity memory_data_register is
port(
	 clk,  en: IN STD_LOGIC;
	 din : IN STD_LOGIC_VECTOR(31 DOWNTO 0); --from 
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	 );
end memory_data_register;

architecture Behavioral of memory_data_register is

begin
	dout <= din
	when  en = '1'  else -- when read enabled
	"ZZZZZZZZZZZZZZZZ";
end Behavioral;

