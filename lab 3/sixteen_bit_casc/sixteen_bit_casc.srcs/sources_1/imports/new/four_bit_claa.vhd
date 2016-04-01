library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity four_bit_claa is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C_in : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           C_out : out STD_LOGIC);
end four_bit_claa;

architecture Behavioral of four_bit_claa is

    component full_adder
        port ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               c_in : in STD_LOGIC;
               s : out STD_LOGIC;
               p : out STD_LOGIC;
               g : out STD_LOGIC);
    end component;
    
    component four_bit_cla
        port ( p : in STD_LOGIC_VECTOR (3 downto 0);
               g : in STD_LOGIC_VECTOR (3 downto 0);
               c_in : in STD_LOGIC;
               c_out : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

signal p_int, g_int, c_int : STD_LOGIC_VECTOR (3 downto 0);

begin

    full_adder0: full_adder port map (
        a => A(0),
        b => B(0),
        c_in => C_in,
        s => S(0),
        p => p_int(0),
        g => g_int(0));
    
    full_adder1: full_adder port map (
        a => A(1),
        b => B(1),
        c_in => c_int(0),
        s => S(1),
        p => p_int(1),
        g => g_int(1));

    full_adder2: full_adder port map (
        a => A(2),
        b => B(2),
        c_in => c_int(1),
        s => S(2),
        p => p_int(2),
        g => g_int(2));

    full_adder3: full_adder port map (
        a => A(3),
        b => B(3),
        c_in => c_int(2),
        s => S(3),
        p => p_int(3),
        g => g_int(3));
        
    four_bit_cla0: four_bit_cla port map (
        p => p_int,
        g => g_int,
        c_in => C_in,
        c_out => c_int);
        
    C_out <= c_int(3);

end Behavioral;
