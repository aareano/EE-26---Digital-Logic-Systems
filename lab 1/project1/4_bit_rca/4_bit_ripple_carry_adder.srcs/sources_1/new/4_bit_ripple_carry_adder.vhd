--------------------------------------------
-- Module Name: tutorial
--------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

Entity four_bit_ripple_carry_adder Is
port (
		a : in STD_LOGIC_VECTOR(3 downto 0);
		b : in STD_LOGIC_VECTOR(3 downto 0);
		sum : out STD_LOGIC_VECTOR(3 downto 0);
		carry: out STD_LOGIC
	);
end four_bit_ripple_carry_adder;

Architecture behavior of four_bit_ripple_carry_adder Is

Signal c : STD_LOGIC_VECTOR(3 downto 0) := "0000";

begin
        -- first half adder
        sum(0) <= a(0) xor b(0);
        c(0) <= a(0) and b(0);
        
        -- second full adder
        sum(1) <= (a(1) xor b(1)) xor c(0);
        c(1) <= (b(1) and c(1)) or (a(1) and c(1)) or (a(1) and b(1));
        
        -- third full adder
        sum(2) <= a(2) xor b(2) xor c(1);
        c(2) <= (b(2) and c(2)) or (a(2) and c(2)) or (a(2) and b(2));
        
        -- fourth full adder
        sum(3) <= a(3) xor b(3) xor c(2);
        c(3) <= (b(3) and c(3)) or (a(3) and c(3)) or (a(3) and b(3));
        
        carry <= c(3);
end behavior;
		

