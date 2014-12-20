----------------------------------------------------------------------------------
-- Create Date:    17:30:18 12/19/2014 
-- Module Name:    Register file module - Behavioral 
-- Description:   8 X 32 bits
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- for <conv_integer>
use IEEE.std_logic_arith.all; 
 

entity register_file is
port (
		-- r_w = 0 then read enable else write
    clk, reset, en, r_w : IN STD_LOGIC;
	 -- for read operation
	 dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    -- for write 
    addr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	 din : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
);
end register_file;

architecture regArch of register_file is
	type reg_array is array (0 to 7) of std_logic_vector(31 downto 0);
	signal reg_file : reg_array;

begin
	process(clk, reset) begin 
		if reset = '1' then
			for i in 0 to 7 loop
				reg_file(i) <= "00000000000000000000000000000000"; -- initialize
			end loop;
		elsif clk'event and clk = '0'  and r_w = '1' and en='1' then  -- write enabled
			reg_file(conv_integer(Unsigned(addr))) <= din;
		end if;
	end process;
	
	dout <= reg_file(conv_integer(Unsigned(addr)))
	when reset = '0' and en = '1' and r_w = '0' else -- read enabled
	"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
	

end regArch;

