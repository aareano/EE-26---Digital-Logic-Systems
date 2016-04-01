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

Entity four_bit_ripple_carry_adder_tb Is
end four_bit_ripple_carry_adder_tb;

Architecture behavior of four_bit_ripple_carry_adder_tb Is
	Component four_bit_ripple_carry_adder
    port (
            a, b : in STD_LOGIC_VECTOR(3 downto 0);
            sum : out STD_LOGIC_VECTOR(3 downto 0);
            carry: out STD_LOGIC
    );	End Component;
	
	Signal a_sim, b_sim, sum_sim : STD_LOGIC_VECTOR(3 downto 0) := X"0";
	Signal carry_sim : STD_LOGIC := '0';
	Signal inputs_ab : STD_LOGIC_VECTOR(7 downto 0) := X"00";
	Signal sum_exp_out : STD_LOGIC_VECTOR(3 downto 0) := X"0";

	procedure expected_sum (
		a, b : in STD_LOGIC_VECTOR(3 downto 0);
		sum_expected : out STD_LOGIC_VECTOR(3 downto 0);
		carry_expected : out STD_LOGIC
	) is
	
        Variable sum_expected_int, c_expected_int : STD_LOGIC_VECTOR(3 downto 0) := "0000"; 
               
        begin  -- this logic is the same as the architecture because there is only one component in the testbench.
               -- it's a very simple case. In a complex case, there would not be redundacy
            
            -- first full adder
            sum_expected_int(0) := a(0) xor b(0);
            c_expected_int(0) := a(0) and b(0);
            
            -- second full adder
            sum_expected_int(1) := (a(1) xor b(1)) xor c_expected_int(0);
            c_expected_int(1) := (b(1) and c_expected_int(1)) or (a(1) and c_expected_int(1)) or (a(1) and b(1));
            
            -- third full adder
            sum_expected_int(2) := a(2) xor b(2) xor c_expected_int(1);
            c_expected_int(2) := (b(2) and c_expected_int(2)) or (a(2) and c_expected_int(2)) or (a(2) and b(2));
            
            -- fourth full adder
            sum_expected_int(3) := a(3) xor b(3) xor c_expected_int(2);
            c_expected_int(3) := (b(3) and c_expected_int(3)) or (a(3) and c_expected_int(3)) or (a(3) and b(3));
            
            carry_expected := c_expected_int(3);

            sum_expected := sum_expected_int;
	end expected_sum;
	
begin
    -- Instantiate the Unit Under Test (UUT)
	uut: four_bit_ripple_carry_adder PORT MAP (
			a => a_sim,
			b => b_sim,
			sum => sum_sim,
			carry => carry_sim
		 );
		 
	process
		variable s : line;
		variable i : integer := 0;
		variable count : integer := 0;
	    variable sum_out : STD_LOGIC_VECTOR(3 downto 0);
	    variable carry_out : STD_LOGIC := '0';
	    

	begin
        for i in 0 to 127 loop
	      count := count + 1;
	               	  
		  wait for 50 ns;
		  a_sim <= inputs_ab(7 downto 4);
		  b_sim <= inputs_ab(3 downto 0);
		  
		  wait for 10 ns;
		  expected_sum(a_sim, b_sim, sum_out, carry_out);
		  sum_exp_out <= sum_out;

		  -- If the outputs match, then announce it to the simulator console.
          if (sum_sim = sum_out) then
                write (s, string'("Sum output MATCHED at ")); write (s, count ); write (s, string'(". Expected: ")); write (s, sum_out); write (s, string'(" Actual: ")); write (s, sum_sim); 
                writeline (output, s);
          else
              write (s, string'("Sum output mis-matched at ")); write (s, count); write (s, string'(". Expected: ")); write (s, sum_out); write (s, string'(" Actual: ")); write (s, sum_sim); 
              writeline (output, s);
          end if;
		  		  
		  -- Increment the switch value counters.
		  inputs_ab <= inputs_ab + 1;
        end loop;		 
       
	end process;
end behavior;
