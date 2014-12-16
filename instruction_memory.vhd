----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:37:40 12/12/2014 
-- Design Name: 
-- Module Name:    instruction_memory - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- for <conv_integer>
use IEEE.std_logic_arith.all; 

entity instruction_memory is
port (
	 clk,  en: IN STD_LOGIC;
	 addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
end instruction_memory;
 
	

architecture Behavioral of instruction_memory is

	type reg_array is array (0 to 15) of std_logic_vector(15 downto 0);
	signal reg_file : reg_array;
	
begin
	
	reg_file(0) <= x"0481"; -- initialize
	reg_file(1) <= x"34D0"; -- initialize
	reg_file(2) <= x"38CC"; -- initialize
	reg_file(3) <= x"2884"; -- initialize
	reg_file(4) <= x"4C80"; -- initialize
	reg_file(5) <= x"5100"; -- initialize
	reg_file(6) <= x"8E09"; -- initialize
	reg_file(7) <= x"6D00"; -- initialize
	reg_file(8) <= x"7080"; -- initialize
	reg_file(9) <= x"2904"; -- initialize
	reg_file(10) <= x"AA84"; -- initialize
	reg_file(11) <= x"2484"; -- initialize
	reg_file(12) <= x"A704"; -- initialize
	reg_file(13) <= x"C000"; -- initialize
	reg_file(14) <= x"0000"; -- initialize
	reg_file(15) <= x"0000"; -- initialize


	dout <= reg_file(conv_integer(Unsigned(addr)))
	when  en = '1'  else -- when read enabled
	"ZZZZZZZZZZZZZZZZ";

end Behavioral;



