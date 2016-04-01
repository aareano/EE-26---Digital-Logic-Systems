----------------------------------------------------------------------------------
-- sixteen_bit_cascaded_adder_tb
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity casc_tb is
end casc_tb;

architecture Behavioral of casc_tb is

    component sixteen_bit_casc 
       port ( A : in STD_LOGIC_VECTOR (15 downto 0);
              B : in STD_LOGIC_VECTOR (15 downto 0);
              C_in : in STD_LOGIC;
              S : out STD_LOGIC_VECTOR (15 downto 0);
              C_out : out STD_LOGIC);
    end component;

    Signal A_B : STD_LOGIC_VECTOR (31 downto 0) := X"FFFF0000";
    Signal A, B, S : STD_LOGIC_VECTOR (15 downto 0) := X"0000";
    Signal C_in : STD_LOGIC := '1';
    Signal C_out : STD_LOGIC := '0';
    
begin

    uut: sixteen_bit_casc port map (
        A => A,
        B => B,
        C_in => C_in,
        S => S,
        C_out => C_out); 

    process
		variable i : integer := 0;
	begin
        for i in 0 to 1024 loop -- 1024 is an arbitrary number
	               	  
		  wait for 50 ns;
		  A <= A_B (31 downto 16);
		  B <= A_B (15 downto 0);
		  		  
          A_B <= std_logic_vector( unsigned(A_B) + 1 );       
        end loop;
	end process;

end Behavioral;
