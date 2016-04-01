---------------------------
-- module: combination_lock
---------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity seven_seg_display is
    Port ( State_code : in STD_LOGIC_VECTOR (7 downto 0);
           Digit : in STD_LOGIC_VECTOR (3 downto 0);
           Clock : in STD_LOGIC;
           Seg : out STD_LOGIC_VECTOR (7 downto 0);
           Sel : out STD_LOGIC_VECTOR (7 downto 0)
         );
end seven_seg_display;

architecture Behavioral of seven_seg_display is
    Signal cnt : STD_LOGIC := '0';
    Signal segment7 : STD_LOGIC_VECTOR (7 downto 0);
begin
    -- Set CNT to toggle every 10ms. The clock rate is 100MHz.
    count: process (Clock)
        variable counter: integer := 1;
    begin
        if Clock'event and Clock = '0' then
            counter := counter + 1;
            if counter = 1000000 then
                cnt <= '1';
            elsif counter = 2000000 then
                cnt <= '0';
                counter := 0;
            end if;
        end if;
        
        case Digit is
            when "0000"=> segment7 <="00000011";  -- '0'
            when "0001"=> segment7 <="10011111";  -- '1'
            when "0010"=> segment7 <="00100101";  -- '2'
            when "0011"=> segment7 <="00001101";  -- '3'
            when "0100"=> segment7 <="10011001";  -- '4' 
            when "0101"=> segment7 <="01001001";  -- '5'
            when "0110"=> segment7 <="01000001";  -- '6'
            when "0111"=> segment7 <="00011111";  -- '7'
            when "1000"=> segment7 <="00000001";  -- '8'
            when "1001"=> segment7 <="00001001";  -- '9'
             --nothing is displayed when a number more than 9 is given as input. 
            when others=> segment7 <="11111111"; 
        end case;
    end process count;
        
        
        
    seg <= segment7 when (cnt = '0') else
        State_code when (cnt = '1') else
        "11111111";
    
    sel <= "11111110" when (cnt = '0') else
        "11111101" when (cnt = '1') else
        "11111111";

end Behavioral;
