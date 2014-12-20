
----------------------------------------------------------------------------------
-- Create Date:    13:39:20 12/13/2014 
-- Module Name:    reg32bits - Behavioral 
-- Description: Register of 32 bits wide
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg32bits is
port(
	 clk, reset, en, r_w: IN STD_LOGIC;
	 din : IN STD_LOGIC_VECTOR(31 DOWNTO 0); --from 
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	 );
end reg32bits;

architecture Behavioral of reg32bits is
signal reg_file: std_logic_vector(31 downto 0);
	
begin	
process(clk, reset) begin 
		if reset = '1' then
				reg_file <= "00000000000000000000000000000000"; -- initialize
		elsif clk'event and clk = '0'  and r_w = '1' and en='1' then  -- write enabled
			reg_file  <= din;
		end if;
	end process;
	
	dout <= reg_file
	when reset = '0' and en = '1' and r_w = '0' else -- read enabled
	"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"; 
end Behavioral;