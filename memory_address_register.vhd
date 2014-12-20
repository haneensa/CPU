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
	 clk, reset, en, r_w: IN STD_LOGIC;
	 din : IN STD_LOGIC_VECTOR(4 DOWNTO 0); --from 
    dout : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	 );
end memory_address_register;

architecture Behavioral of memory_address_register is
signal reg_file: std_logic_vector(4 downto 0);

begin
	
process(clk, reset) begin 
		if reset = '1' then
				reg_file <= "00000"; -- initialize
		elsif clk'event and clk = '1'  and r_w = '1' and en='1' then  -- write enabled
			reg_file  <= din;
		end if;
	end process;
	
	dout <= reg_file
	when reset = '0' and en = '1' and r_w = '0' else -- read enabled
	"ZZZZZ";
	 
end Behavioral;

