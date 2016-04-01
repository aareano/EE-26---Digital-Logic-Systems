----------------------------------------------------------------------------------
-- entity four_bit_carry_lookahead 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity four_bit_cla is
    Port ( p : in STD_LOGIC_VECTOR (3 downto 0);
           g : in STD_LOGIC_VECTOR (3 downto 0);
           c_in : in STD_LOGIC;
           c_out : out STD_LOGIC_VECTOR (3 downto 0));
end four_bit_cla;

architecture Behavioral of four_bit_cla is

begin

    c_out(0) <= g(0) or (p(0) and c_in);
    c_out(1) <= g(1) or ((g(0) or (p(0) and c_in)) and p(1));
    c_out(2) <= g(2) or ((g(1) or ((g(0) or (p(0) and c_in)) and p(1))) and p(2));
    c_out(3) <= g(3) or ((g(2) or ((g(1) or ((g(0) or (p(0) and c_in)) and p(1))) and p(2))) and p(3));

end Behavioral;
