-- VHDL Test Bench Created by ISE for module: ALU
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY alu_tb IS
END alu_tb;
 
ARCHITECTURE behavior OF alu_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         dinA : IN  std_logic_vector(31 downto 0);
         dinB : IN  std_logic_vector(31 downto 0);
         opcode : IN  std_logic_vector(2 downto 0);
         result : OUT  std_logic_vector(31 downto 0);
	bneq, blt: OUT STD_LOGIC
			
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '1';
   signal dinA : std_logic_vector(31 downto 0) := (others => '0');
   signal dinB : std_logic_vector(31 downto 0) := (others => '0');
   signal opcode : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal result : std_logic_vector(31 downto 0);
	signal bneq, blt:  STD_LOGIC;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          clk => clk,
          reset => reset,
          dinA => dinA,
          dinB => dinB,
          opcode => opcode,
          result => result,
          bneq =>  bneq,
			 blt =>  blt
			 );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		   reset <= '0';
			-- XOR result dinA dinA : result = dinA xor dinB
			dinA  <=  x"ffffffff";
			dinB <=  x"aaaaaaaa";
			opcode  <= "000"; -- xor
		 
		wait for clk_period;
		   -- ADDI result dinA dinA : result = dinA + dinB
       	dinA  <=  x"bbbbbbbb";
			dinB <=  x"cccccccc";
			opcode  <= "001"; -- addi
		
		wait for clk_period;
		-- BNEQ dinA dinB i4 : if (dinA  != dinB ) flag = 
        	dinA  <=  x"ffffffff";
			dinB <=  x"aaaaaaaa";
			opcode  <= "101"; --bneq
			
			wait for clk_period;
		-- BNEQ dinA dinB i4 : if (dinA  != dinB ) flag = 
        	dinA  <=  x"ffffffff";
			dinB <=  x"ffffffff";
			opcode  <= "101"; --bneq
			
	 	wait for clk_period;
		 -- BLT dinA dinB i9 : if (dinA < dinA) flag = 
        	dinA  <=  x"00000000";
			dinB <=  x"aaaaaaaa";
			opcode  <= "100"; --blt
			
			wait for clk_period;
		 -- BLT dinA dinB i9 : if (dinA < dinA) flag = 
        	dinA  <=  x"ffffffff";
			dinB <=  x"00000000";
			opcode  <= "100"; --blt
		wait;
   end process; 
END;
