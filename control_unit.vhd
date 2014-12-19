----------------------------------------------------------------------------------
-- Engineer: 
-- Create Date:    13:34:43 12/13/2014 
-- Module Name:    control_unit - Behavioral 
-- Description: 

-- XOR R5 R1 R2 : R5 = R1 xor R2
-- ADDI R5 R1 0x50 : R5 = R1 + 0x50
-- LOAD R3 (R1) : R3 = DataMem[R1]
-- STORE R3 (R1) : DataMem[R1] = R3
-- BNEQ R2 R5 i4 : if (R2 != R5) jump to instruction i4
-- BLT R3 R4 i9 : if (R3 < R4) jump to insturtion i9
-- EOP 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit is
port(
	 clk, reset: IN STD_LOGIC;
	 -- pc: program_counter 
	 crl_pc : OUT STD_LOGIC;  -- crl_pc = 1 =>  jump to the address 
	 en_pc: OUT STD_LOGIC; -- enable the PC -> always = 1
	 
 	 -- irm: instruction_memory  
 	 en_irm: OUT STD_LOGIC;   -- set when state == fetch  
	 
	 -- to instruction decoder
	 en_id: OUT STD_LOGIC; -- set when state == decode 
	 
	 -- from instruction decoder
	 opcode: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
	  
	 -- alu2: ALU 
	 dinB_mux: OUT STD_LOGIC;  
	 
	-- this will affect program counter 	 
	-- if set then ctl_pr = 1 and state == jump

    bneq_alu : IN STD_LOGIC; 
	 blt_alu : IN STD_LOGIC; 
	  
	 --  to MAR
	 en_mar: OUT STD_LOGIC; -- enable when load/store
	 
	 -- to MDR
	 en_mdr: OUT STD_LOGIC; -- enable when store
	 
	 -- to MEMORY
	  r_w_mem: OUT STD_LOGIC; -- set when write | clear when read
	  en_mem : OUT STD_LOGIC; -- enable when read | write

	 -- to register files
	 en_reg: OUT STD_LOGIC; 
	 r_w_reg : OUT STD_LOGIC
 );
 
end control_unit;

architecture Behavioral of control_unit is

type state_type is (	reset_state,
			fetch,
			decode,
			load0, load1,
			store0, store1,
			alu0, alu1,
			halt,
			jump0, jump1
			);
			
signal state: state_type;
begin
 

 process(clk) begin
  	if clk'event and clk = '1' then
  		if reset = '1' then state <= reset_state;
    	else
    		case state is
    			when reset_state => state <= fetch;
				when fetch => state <= decode;
				when decode =>
					if  opcode = "000" or opcode = "001" then state <= alu0;
					elsif opcode = "100" or opcode = "101" then state <= jump0;
 					elsif opcode = "010" then state <= load0;
					elsif opcode = "011" then state <= store0;
 					elsif opcode = "110" then state <= halt;
					end if;
				when load0 => 	state <= load1;
				when load1 => 	state <= fetch;
				
				when store0 => 	state <= store1;
				when store1 =>	state <= fetch;
			
				when alu0 => 	state <= alu1;
				when alu1 => 	state <= fetch;
				
			
				when halt => 	state <= halt;
			
				when jump0 =>
					if blt_alu =  '1' or bneq_alu =  '1' then state <= jump1;
					else 
					state <= fetch;
					end if;
				
				when others => 	state <= halt;
				end case;
			end if;
		end if;
  end process;
  
   
  crl_pc   <= '1'	   when state = jump0
        else '0';
  en_pc <= '1'    when state =  fetch
  		   else '0';
			
  en_irm <= '1'    when state =  fetch
  		   else '0';
  en_id <= '1'    when state =  decode
  		   else '0';
-- XOR R5 R1 R2 : R5 = R1 xor R2
-- ADDI R5 R1 0x50 : R5 = R1 + 0x50
-- LOAD R3 (R1) : R3 = DataMem[R1]
-- STORE R3 (R1) : DataMem[R1] = R3
-- BNEQ R2 R5 i4 : if (R2 != R5) jump to instruction i4
-- BLT R3 R4 i9 : if (R3 < R4) jump to insturtion i9

  en_reg <= '1'    when state =  load0 or state = store0 or state = alu0
						 or state =  load1 or state = store1 or state = alu1
  		   else '0';
  r_w_reg <= '1'    when state =  load1 or state = alu1
  		   else '0';		
			
  en_mar <= '1'   when state =   load0 or state =   load1 or
  			state = store0 or state = store1
  		   else '0';
  en_mdr <= '1'   when state =   load0 or state =   load1
  		   else '0';
 			
	 -- to MEMORY
  en_mem  <= '1'   when state =   load1 or  state = store1
  		   else '0';
  r_w_mem <= '1'   when  state = store1
  		   else '0';
end Behavioral;
	
	  
	  
	 