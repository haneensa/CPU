----------------------------------------------------------------------------------
-- Engineer: 
-- Create Date:    02:04:49 12/18/2014 
-- Module Name:    memory - Behavioral 
-- Description: 
 -- 128B = 128 * 8 = 32 * 32
-- 2^5 = 32
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
 

entity memory is
port (
		clk, r_w, en, reset: in STD_LOGIC;
      addr: in STD_LOGIC_VECTOR(4 downto 0);
      din: in STD_LOGIC_VECTOR(31 downto 0);
		dout: out STD_LOGIC_VECTOR(31 downto 0)
);
end memory;
-- 
architecture Behavioral of memory is

type ram_typ is array(0 to 31) of STD_LOGIC_VECTOR(31 downto 0);
signal ram: ram_typ;
begin
  process(reset, clk) begin
  	if reset = '1' then
  		for i in 0 to 31 loop
  			ram(i) <= x"00000000";
  		end loop;
 	elsif  clk'event and clk = '0'   and r_w = '1' then
  		ram(conv_integer(unsigned(addr))) <= din;
  	end if;
  end process;
  dout <= ram(conv_integer(unsigned(addr)))
  		when reset = '0' and en = '1' and r_w = '0' else
	  "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

end Behavioral;

  