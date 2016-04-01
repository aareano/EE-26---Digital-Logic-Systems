--------------------------------------------
-- Module Name: four_bit_ripple_carry_adder_tb
--------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use STD.textio.all;
use IEEE.std_logic_textio.all;

library UNISIM;
use UNISIM.VComponents.all;

Entity mux_tb Is
end mux_tb;

Architecture behavior of mux_tb Is
Component mux
    port (
           S : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC
    );	
End Component;
	
	
	Signal s_sim : STD_LOGIC := '0';
	Signal d_sim : STD_LOGIC_VECTOR(1 downto 0) := "01";
	Signal o_sim : STD_LOGIC := '0';
	Signal input_s : STD_LOGIC := '0';

begin
    -- Instantiate the Unit Under Test (UUT)
	uut: mux PORT MAP (
			S => s_sim,
			D => d_sim,
			O => o_sim
		 );
		 
	process
		variable i : integer := 0;

	begin
        for i in 0 to 127 loop
	               	  
		  wait for 50 ns;
		  s_sim <= input_s;
		  
		  wait for 10 ns;
		  		  
		  input_s <= not input_s;
        end loop;
       
	end process;
end behavior;