---------------------------
-- module: combination_lock
---------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity combo_lock_tb is
end combo_lock_tb;

architecture Behavioral of combo_lock_tb is

	Component lock
    Port ( digit : in STD_LOGIC_VECTOR (3 downto 0);
           reset : in STD_LOGIC;
           enter : in STD_LOGIC;
           clock : in STD_LOGIC;
           sel : out STD_LOGIC_VECTOR (7 downto 0);
           seg : out STD_LOGIC_VECTOR (7 downto 0)
    ); End Component;

    Signal digit : STD_LOGIC_VECTOR (3 downto 0) := X"0";
    Signal sel, seg : STD_LOGIC_VECTOR (7 downto 0) := X"00";
    Signal reset, enter, clock : STD_LOGIC := '0';
    
begin

	uut: lock PORT MAP (
	   digit => digit,
	   reset => reset,
	   enter => enter,
	   clock => clock,
	   sel => sel,
	   seg => seg
	);
	
	process -- this process is to control the clock
	begin
	   if (clock = '1') then
	       clock <= '0';
	   else
	       clock <= '1';
	   end if;
	   wait for 50 ns;   
	end process;
	
	process (clock) --  this process is to pipe inputs into the lock, timed by the clock
        variable counter : integer := 0;   
	begin 
        if clock'event and clock = '1' then
            counter := counter + 1;
            if reset = '1' and (counter mod 50 = 0) then
                reset <= '0';
            end if;
            if enter = '1' and (counter mod 50 = 0) then
                enter <= '0';
            end if;
            if counter = 2000000 then
                digit <= X"7";
                enter <= '1';
            elsif counter = 4000000 then
                digit <= X"8";
                enter <= '1';
            elsif counter = 6000000 then
                digit <= X"5";
                enter <= '1';
            elsif counter = 8000000 then
                counter := 0;  -- reset the counter
                reset <= '1';  -- reset the lock
                digit <= X"7"; -- reset the digit
            end if;
        end if;
    end process;
end Behavioral;
