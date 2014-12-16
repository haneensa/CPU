----------------------------------------------------------------------------------
-- Engineer: 
-- Create Date:    18:36:24 12/15/2014 
-- Module Name:    instruction_decoder - Behavioral 
-- Project Name: 
-- Description: take the instruction from the IR and decode the instruction then sends the 
-- relevent data to ALU or control unit or Registers
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity instruction_decoder is
port(
	 clk, reset, en: IN STD_LOGIC;
    dbus : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	 -- control flags from the decoder
	 zor, addi, load, store, blt, bneq, eop: out STD_LOGIC;
	 opcode: out  STD_LOGIC_VECTOR(2 DOWNTO 0)

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
  -- opcode 
  	 opcode <= IR(15 downto 13) ;
	-- operands 
	 opA <= IR(15 downto 13) ;
	 opB<= IR(15 downto 13) ;

  -- opcode flags  
  zor  <= '1' when IR(15 downto 13) = "000" 	else '0';
  addi     <= '1' when IR(15 downto 13) = "001" 	else '0';
  load    <= '1' when IR(15 downto 13) = "010"	else '0';
  store   <= '1' when IR(15 downto 13) = "011" 	else '0';
  blt  <= '1' when IR(15 downto 13) = "100" 	else '0';
  bneq  <= '1' when IR(15 downto 13) = "101" 	else '0';
  eop    <= '1' when IR(15 downto 13) = "110" 	else '0';
  -- deal with the operands
  
	
end Behavioral;


 
  
  