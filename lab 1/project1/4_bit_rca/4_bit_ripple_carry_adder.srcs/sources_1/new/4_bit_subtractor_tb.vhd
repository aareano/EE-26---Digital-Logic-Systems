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

Entity four_bit_subtractor_tb Is
end four_bit_subtractor_tb;

Architecture behavior of four_bit_subtractor_tb Is
	Component four_bit_subtractor
    port (
            a, b : in STD_LOGIC_VECTOR(3 downto 0);
            diff : out STD_LOGIC_VECTOR(3 downto 0);
            borrow: out STD_LOGIC
    );	End Component;
	
	
	Signal a_sim, b_sim, diff_sim : STD_LOGIC_VECTOR(3 downto 0) := X"0";
	Signal borrow_sim : STD_LOGIC := '0';
	Signal inputs_ab : STD_LOGIC_VECTOR(7 downto 0) := X"00";

begin
    -- Instantiate the Unit Under Test (UUT)
	uut: four_bit_subtractor PORT MAP (
			a => a_sim,
			b => b_sim,
			diff => diff_sim,
			borrow => borrow_sim
		 );
		 
	process
		variable i : integer := 0;
		variable count : integer := 0;
	    

	begin
        for i in 0 to 127 loop
	      count := count + 1;
	               	  
		  wait for 50 ns;
		  a_sim <= inputs_ab(7 downto 4);
		  b_sim <= inputs_ab(3 downto 0);
		  
		  wait for 10 ns;
		  		  
		  -- Increment the switch value counters.
          inputs_ab <= inputs_ab + 1;		      
        end loop;		 
       
	end process;
end behavior;