library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity adder_subtractor is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           s : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (3 downto 0);
           c_b : out STD_LOGIC);
end adder_subtractor;

architecture Behavioral of adder_subtractor is
    
    -- MUX
    
    Component mux
        port (
               S : in STD_LOGIC;
               D : in STD_LOGIC_VECTOR (1 downto 0);
               O : out STD_LOGIC
        );	
    End Component;  
    
    -- 4 bit adder
    
    Signal carry : STD_LOGIC;
    Signal sum : STD_LOGIC_VECTOR(3 downto 0);
    
    Component four_bit_ripple_carry_adder
    port (
            a, b : in STD_LOGIC_VECTOR(3 downto 0);
            sum : out STD_LOGIC_VECTOR(3 downto 0);
            carry: out STD_LOGIC
    );	End Component;    
    
    -- 4 bit subtractor
    
        Signal borrow : STD_LOGIC;
        Signal diff : STD_LOGIC_VECTOR(3 downto 0);
    
    Component four_bit_subtractor
    port (
            a, b : in STD_LOGIC_VECTOR(3 downto 0);
            diff : out STD_LOGIC_VECTOR(3 downto 0);
            borrow: out STD_LOGIC
    );	End Component;
       
begin 
    -- Instantiate the Unit Under Test (UUT)
    mux1: mux PORT MAP (
            S => s,
            D(1) => sum(0),
            D(0) => diff(0),
            O => output(0)
    );
    -- Instantiate the Unit Under Test (UUT)
    mux2: mux PORT MAP (
            S => s,
            D(1) => sum(1),
            D(0) => diff(1),
            O => output(1)
    );
    -- Instantiate the Unit Under Test (UUT)
    mux3: mux PORT MAP (
            S => s,
            D(1) => sum(2),
            D(0) => diff(2),
            O => output(2)
    );
    -- Instantiate the Unit Under Test (UUT)
    mux4: mux PORT MAP (
            S => s,
            D(1) => sum(3),
            D(0) => diff(3),
            O => output(3)
    );

    -- Instantiate the Unit Under Test (UUT)
    mux5: mux PORT MAP (
            S => s,
            D(1) => carry,
            D(0) => borrow,
            O => c_b
    );  
    
   -- Instantiate the Unit Under Test (UUT)
   adder: four_bit_ripple_carry_adder PORT MAP (
           a => a,
           b => b,
           sum => sum,
           carry => carry
    );
    
    -- Instantiate the Unit Under Test (UUT)
    subtractor: four_bit_subtractor PORT MAP (
            a => a,
            b => b,
            diff => diff,
            borrow => borrow
     );
    
end Behavioral;
