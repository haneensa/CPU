----------------------------------------------------------------------------------
-- Engineer: 
-- Create Date:    11:07:31 12/13/2014 
-- Module Name:    top - Behavioral 
-- Project Name: 
-- Description: 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
port (
	clk, reset : IN STD_LOGIC
);
end top;

architecture Behavioral of top is

	COMPONENT RAM
    PORT(
         clka : IN  std_logic;
         wea : IN  std_logic_vector(0 downto 0);
         addra : IN  std_logic_vector(7 downto 0);
         dina : IN  std_logic_vector(31 downto 0);
         douta : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;

    
	COMPONENT program_counter
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         crl : IN  std_logic;
         en_A : IN  std_logic;
         din : IN  std_logic_vector(3 downto 0);
         addr : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;	 
	 
	 COMPONENT instruction_memory
    PORT(
         clk : IN  std_logic;
         en : IN  std_logic;
         addr : IN  std_logic_vector(3 downto 0);
         dout : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 


	COMPONENT instruction_register
    PORT(
         clk : IN  std_logic;
         en : IN  std_logic;
         din : IN  std_logic_vector(15 downto 0);
         dout : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	 
signal abus :std_logic_vector(7 downto 0);
signal dbus :std_logic_vector(31 downto 0);

	 
-- signals for PC	 
signal addr_pc, din_pc :std_logic_vector(3 downto 0);
signal crl_pc, en_pc :std_logic;
-- signals for Instruction Memory	 
signal dout_irm :std_logic_vector(15 downto 0);
signal en_irm :std_logic;
-- signals for Instruction Reg	 
signal dout_ir :std_logic_vector(15 downto 0);
signal en_ir :std_logic;
-- signals for Instruction Reg	 
signal addra :std_logic_vector(7 downto 0);
signal dina, douta :std_logic_vector(31 downto 0);
signal wea :std_logic_vector(0 downto 0);
-- signals for Reg file	 
signal addr_reg :std_logic_vector(7 downto 0);
signal din_reg, dout_reg :std_logic_vector(31 downto 0);
signal en_reg, r_w :std_logic;

begin


	pc: program_counter port map(
		 clk => clk,
	         reset =>   reset,
	         crl=>   crl_pc,
	         en_A =>   en_pc,
	         din =>   din_pc,
	         addr =>   addr_pc
	);
	irm: instruction_memory port map(
		 clk => clk,
	         en  => en_irm,
	         addr  => addr_pc,
	         dout => dout_irm
	);
	ir: instruction_register port map(
		clk => clk,
		en => en_ir,
		din => dout_irm,
		dout => dout_ir
  );
	--ram: RAM port map(clk, wea, addra, dina, douta);
	--file_rg: register_file port map(clk, reset, en_reg, r_w, addr_reg, din_reg, dout_reg);

 
end Behavioral;

