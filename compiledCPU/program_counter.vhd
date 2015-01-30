----------------------------------------------------------------------------------
-- Create Date:    12:59:15 12/13/2014 
-- Module Name:    program_counter - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity program_counter is
port (
	clk, reset: in STD_LOGIC;
	crl : in STD_LOGIC; -- crl = 1 => increment PC by one else => jump to the address 
	en: in STD_LOGIC; -- enable the PC
	newAddr: in STD_LOGIC_VECTOR(3 downto 0);
	addr: out STD_LOGIC_VECTOR(3 downto 0)
);
end program_counter;

architecture Behavioral of program_counter is

signal pcReg: STD_LOGIC_VECTOR(3 downto 0);
begin
	process(clk) begin
		if clk'event and clk = '1' then
			if reset = '1' then 
				pcReg <= "0000";
			elsif crl = '1' then -- ctl value from uController 
				pcReg <= newAddr;
			elsif crl = '0' and  en = '1'then 
				pcReg <= pcReg + "0001";
			end if;
		end if;
	end process;
	addr <= pcReg when en = '1' else "ZZZZ";
end Behavioral;