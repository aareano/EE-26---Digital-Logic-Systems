library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity mux is
Port ( 
           S : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (1 downto 0);
           O : out STD_LOGIC
     );
end mux;

architecture Behavioral of mux is

begin
    O <= (D(0) and (not S)) or (D(1) and S);
end Behavioral;