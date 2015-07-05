----------------------------------------------------------------------------------
-- Engineer: 
-- Create Date:    17:30:18 12/19/2014 
-- Module Name:    mux - Behavioral 
-- Description: Binary Mux
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;


entity mux3to1 is
port (
	inputA : in std_logic_vector (31 downto 0);
	inputB : in std_logic_vector (31 downto 0);
	inputC : in std_logic_vector (31 downto 0);
	sel : in std_logic_vector (1 downto 0);
	output : out std_logic_vector (31 downto 0)
);
end mux3to1;

architecture Behavioral of mux3to1 is

begin
  process(sel, inputA, inputB) begin
   	if sel="00" then
			output <= inputA;
		elsif sel="01" then
			output <=  inputB;
		elsif sel="10" then
			output <=  inputC;
		else 
			output  <=  inputC;
	end if;
  end process;

end Behavioral;

