library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity sixteen_bit_casc is
    port ( A : in STD_LOGIC_VECTOR (15 downto 0);
           B : in STD_LOGIC_VECTOR (15 downto 0);
           C_in : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (15 downto 0);
           C_out : out STD_LOGIC);
end sixteen_bit_casc;

architecture Behavioral of sixteen_bit_casc is

    component four_bit_claa
        port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               C_in : in STD_LOGIC;
               S : out STD_LOGIC_VECTOR (3 downto 0);
               C_out : out STD_LOGIC);
    end component;

signal C_int : STD_LOGIC_VECTOR (2 downto 0);

begin
    claa0: four_bit_claa port map (
        A => A(3 downto 0),
        B => B(3 downto 0),
        C_in => C_in,
        S => S(3 downto 0),
        C_out => C_int(0));
        
    claa1: four_bit_claa port map (
        A => A(7 downto 4),
        B => B(7 downto 4),
        C_in => C_int(0),
        S => S(7 downto 4),
        C_out => C_int(1));
        
    claa2: four_bit_claa port map (
        A => A(11 downto 8),
        B => B(11 downto 8),
        C_in => C_int(1),
        S => S(11 downto 8),
        C_out => C_int(2));
        
    claa3: four_bit_claa port map (
        A => A(15 downto 12),
        B => B(15 downto 12),
        C_in => C_int(2),
        S => S(15 downto 12),
        C_out => C_out);
                         
end Behavioral;
