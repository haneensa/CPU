----------------------------------------------------------------------------------
-- Create Date:    18:36:24 12/15/2014 
-- Module Name:    instruction_decoder - Behavioral 
-- Description: 
-- take the instruction from the IR and decode the instruction then sends the 
-- relevent data to ALU or control unit or Registers
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instruction_decoder is
port(
	 clk, reset, en: IN STD_LOGIC;
    dbus : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	 -- control flags from the decoder
	 opcode: out  STD_LOGIC_VECTOR(2 DOWNTO 0); -- to alu
	 op1, op2: out  STD_LOGIC_VECTOR(2 DOWNTO 0); -- to alu
	 op3: out  STD_LOGIC_VECTOR(6 DOWNTO 0) -- to alu when xor and addi 
	 -- to memory when load or store 
	 );
end instruction_decoder;

architecture Behavioral of instruction_decoder is

signal IR: STD_LOGIC_VECTOR(15 downto 0);

begin
	process(clk) begin
  	if clk'event and clk = '0' then
  		if reset = '1' then
  			IR <= x"0000";
  		elsif en = '1' then
  			IR <= dbus;
  		end if;
  	end if;
  end process;
  	 opcode <= IR(15 downto 13) ;
	 op1 <= IR(12 downto 10);
	 op2 <= IR(9 downto 7);
  	 op3 <= IR(6 downto 0);
end Behavioral;