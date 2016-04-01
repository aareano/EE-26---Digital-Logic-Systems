--------------------------------------------
-- Module Name: adder_subtractor_tb
--------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use STD.textio.all;
use IEEE.std_logic_textio.all;

library UNISIM;
use UNISIM.VComponents.all;

Entity adder_subtractor_tb Is
end adder_subtractor_tb;

Architecture behavior of adder_subtractor_tb Is
	Component adder_subtractor
    port (
           a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           s : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (3 downto 0);
           c_b : out STD_LOGIC
    );	End Component;
	
	
	Signal output, a, b : STD_LOGIC_VECTOR(3 downto 0) := X"0";
	Signal c_b, s  : STD_LOGIC := '0';
	Signal inputs_ab : STD_LOGIC_VECTOR(7 downto 0) := X"00";

begin
    -- Instantiate the Unit Under Test (UUT)
	uut: adder_subtractor PORT MAP (
			a => a,
			b => b,
			s => s,
			c_b => c_b,
			output => output
		 );
		 
	process
		variable i : integer := 0;

	begin
        for i in 0 to 127 loop
	               	  
		  wait for 50 ns;
		  a <= inputs_ab(7 downto 4);
		  b <= inputs_ab(3 downto 0);
		  		  
		  -- Increment the switch value counters.
		  s <= not s;
          if s = '1' then 
              inputs_ab <= inputs_ab + 1;              
          end if;
        end loop;		 
       
	end process;
end behavior;