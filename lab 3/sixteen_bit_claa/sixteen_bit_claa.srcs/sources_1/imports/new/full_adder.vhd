----------------------------------------------------------------------------------
-- entity full_adder 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity full_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c_in : in STD_LOGIC;
           s : out STD_LOGIC;
           p : out STD_LOGIC;
           g : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

begin

    s <= (a xor b) xor c_in;
    p <= a xor b;
    g <= a and b;

end Behavioral;
