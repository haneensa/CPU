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
COMPONENT instruction_memory
    PORT(
         clk : IN  std_logic;
         en : IN  std_logic;
         addr : IN  std_logic_vector(3 downto 0);
         dout : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
COMPONENT RAM
    PORT(
         clka : IN  std_logic;
         wea : IN  std_logic_vector(0 downto 0);
         addra : IN  std_logic_vector(7 downto 0);
         dina : IN  std_logic_vector(31 downto 0);
         douta : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
	 
COMPONENT register_file
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         en : IN  std_logic;
         r_w : IN  std_logic;
         addr : IN  std_logic_vector(2 downto 0);
         din : IN  std_logic_vector(31 downto 0);
         dout : OUT  std_logic_vector(31 downto 0)
        );
END COMPONENT;
    
COMPONENT program_counter
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         crl : IN  std_logic;
         en_A : IN  std_logic;
         din : IN  std_logic_vector(15 downto 0);
         addr : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;	 
begin


end Behavioral;

