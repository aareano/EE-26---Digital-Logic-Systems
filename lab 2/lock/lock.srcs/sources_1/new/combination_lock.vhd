---------------------------
-- module: combination_lock
---------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity combination_lock is
    Port ( digit : in STD_LOGIC_VECTOR (3 downto 0);        -- input digit 
           reset : in STD_LOGIC;
           enter : in STD_LOGIC;
           clock : in STD_LOGIC;
           state_out : out STD_LOGIC_VECTOR (7 downto 0) := "11100011";   -- output, going to 7 seg decoder
           digit_out : out STD_LOGIC_VECTOR (3 downto 0) := "0000"       -- output, going to 7 seg decoder
         );
end combination_lock;

architecture Behavioral of combination_lock is

    Type State_type IS (STATE_RESET, STATE_1, STATE_1_LOCKED, STATE_2, STATE_2_LOCKED, STATE_UNLOCKED, 
                        STATE_PERM_LOCKED);
    
    -- http://vhdlguru.blogspot.com/2010/03/vhdl-code-for-bcd-to-7-segment-display.html
    Signal STATE_RESET_CODE : std_logic_vector(7 downto 0) :=  "11100011";       -- L (last bit is for decimal point)
    Signal STATE_1_CODE : std_logic_vector(7 downto 0) :=  "10011111";           -- 1
    Signal STATE_1_LOCKED_CODE : std_logic_vector(7 downto 0) :=  "10011111";    -- 1
    Signal STATE_2_CODE : std_logic_vector(7 downto 0) :=  "00100101";           -- 2
    Signal STATE_2_LOCKED_CODE : std_logic_vector(7 downto 0) :=  "00100101";    -- 2
    Signal STATE_UNLOCKED_CODE : std_logic_vector(7 downto 0) :=  "10000011";    -- U
    Signal STATE_PERM_LOCKED_CODE : std_logic_vector(7 downto 0) :=  "00110001"; -- P
    
    Signal state : State_type := STATE_RESET;

begin
    
    digit_out <= digit;

    process (clock, reset, enter)
        Variable correct_digit_1 : std_logic_vector(3 downto 0) := "0111";  -- "7"
        Variable correct_digit_2 : std_logic_vector(3 downto 0) := "1000";  -- "8"
        Variable correct_digit_3 : std_logic_vector(3 downto 0) := "1001";  -- "9"
        variable counter: integer := 1;    
    begin
        if clock'event and clock = '1' then
            counter := counter + 1;
            -- handle reset and enter
            if reset = '1' then
                state <= STATE_RESET;
                state_out <= STATE_RESET_CODE;
                
            elsif enter = '1' and counter > 100000000 then
                counter := 0;
                
                case state is
                    when STATE_RESET =>
                        -- move to STATE_1 or STATE_1_LOCKED depending on input
                        if digit = correct_digit_1 then
                            state <= STATE_1;
                            state_out <= STATE_1_CODE;
                        else
                            state <= STATE_1_LOCKED;
                            state_out <= STATE_1_LOCKED_CODE;
                        end if;
                    
                    when STATE_1 =>
                        -- move to STATE_2 or STATE_2_LOCKED depending on input
                        if digit = correct_digit_2 then
                            state <= STATE_2;
                            state_out <= STATE_2_CODE;
                        else
                            state <= STATE_2_LOCKED;
                            state_out <= STATE_2_LOCKED_CODE;
                        end if;
                        
                    when STATE_1_LOCKED =>
                        -- move to STATE_2_LOCKED regardless of input
                        state <= STATE_2_LOCKED;
                        state_out <= STATE_2_LOCKED_CODE;
                        
                    when STATE_2 =>
                        -- move to STATE_UNLOCKED or STATE_PERM_LOCKED depending on input
                        if digit = correct_digit_3 then
                            state <= STATE_UNLOCKED;
                            state_out <= STATE_UNLOCKED_CODE;
                        else
                            state <= STATE_PERM_LOCKED;
                            state_out <= STATE_PERM_LOCKED_CODE;
                        end if;
                    
                    when STATE_2_LOCKED =>
                        -- move to STATE_PERM_LOCKED regardless of input
                        state <= STATE_PERM_LOCKED;
                        state_out <= STATE_PERM_LOCKED_CODE;
                    
                    when STATE_PERM_LOCKED =>
                        -- do not change states based on input
                        state_out <= STATE_PERM_LOCKED_CODE;
                        
                    when STATE_UNLOCKED =>
                        -- do not change states based on input
                        state_out <= STATE_UNLOCKED_CODE;
                    
                end case;
            end if;
        end if;
    end process;
end Behavioral;
