----------------------------------------------------------------------------------
-- Engineer: 
-- Create Date:    17:30:18 12/19/2014 
-- Module Name:    mux - Behavioral 
-- Description: Binary Mux
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;


entity mux is
port (
	inputA : in std_logic_vector (31 downto 0);
	inputB : in std_logic_vector (31 downto 0);
	sel : in std_logic;
	output : out std_logic_vector (31 downto 0)
);
end mux;

architecture Behavioral of mux is

begin
  process(sel, inputA, inputB) begin
   	if sel='1' then
		output <= inputA;
	else
		output <=  inputB;
	end if;
  end process;

end Behavioral;

