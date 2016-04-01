---------------------------
-- module: combination_lock
---------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity lock is
    Port ( digit : in STD_LOGIC_VECTOR (3 downto 0);
           reset : in STD_LOGIC;
           enter : in STD_LOGIC;
           clock : in STD_LOGIC;
           sel : out STD_LOGIC_VECTOR (7 downto 0);
           seg : out STD_LOGIC_VECTOR (7 downto 0));
end lock;

architecture Behavioral of lock is

    Component combination_lock
    port (
           digit : in STD_LOGIC_VECTOR (3 downto 0);        -- input digit 
           reset : in STD_LOGIC;
           enter : in STD_LOGIC;
           clock : in STD_LOGIC;
           state_out : out STD_LOGIC_VECTOR (7 downto 0);   -- output, going to 7 seg decoder
           digit_out : out STD_LOGIC_VECTOR (3 downto 0)    -- output, going to 7 seg decoder
    ); End Component;
    
    Component seven_seg_display
    port (
           State_code : in STD_LOGIC_VECTOR (7 downto 0);
           Digit :  in STD_LOGIC_VECTOR (3 downto 0);
           Clock : in STD_LOGIC;
           Seg : out STD_LOGIC_VECTOR (7 downto 0);
           Sel : out STD_LOGIC_VECTOR (7 downto 0)
    ); End Component;

    Signal state_out : STD_LOGIC_VECTOR(7 downto 0);
    Signal digit_out : STD_LOGIC_VECTOR(3 downto 0);

begin    

    comb_lock: combination_lock PORT MAP (
        digit => digit,
        reset => reset,
        enter => enter,
        clock => clock,
        state_out => state_out,
        digit_out => digit_out
    );
     
    seven_seg: seven_seg_display PORT MAP (
        State_code => state_out,
        Digit => digit_out,
        Clock => clock,
        Seg => seg,
        Sel => sel
    );            

end Behavioral;
