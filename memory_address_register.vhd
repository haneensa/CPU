----------------------------------------------------------------------------------
-- Create Date:    13:38:42 12/13/2014  
-- Module Name:    memory_address_register - Behavioral 
-- Description: 
-- LOAD R3 (R1) : R3 = DataMem[R1]
-- STORE R3 (R1) : DataMem[R1] = R3
-- so for MAR we will write the address (R1) in it
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity memory_address_register is
port(
	 clk,  en: IN STD_LOGIC;
	 din : IN STD_LOGIC_VECTOR(4 DOWNTO 0); --from 
    dout : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	 );
end memory_address_register;

architecture Behavioral of memory_address_register is

begin
	dout <= din
	when  en = '1'  else -- when read enabled
	"ZZZZZ";
end Behavioral;

