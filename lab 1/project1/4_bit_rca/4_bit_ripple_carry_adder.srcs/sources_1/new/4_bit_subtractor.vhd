----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2016 04:43:10 PM
-- Design Name: 
-- Module Name: 4_bit_subtractor - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity four_bit_subtractor is
port ( 
           a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           diff : out STD_LOGIC_VECTOR (3 downto 0);
           borrow : out STD_LOGIC
      );
end four_bit_subtractor;

architecture Behavioral of four_bit_subtractor is

Signal bor : STD_LOGIC_VECTOR(3 downto 0) := "0000";

begin
    diff(0) <= a(0) xor b(0);
    bor(0) <= (not a(0)) and b(0);
    
    diff(1) <= (a(1) xor b(1)) xor bor(0);
    bor(1) <= ((not a(1)) and b(1)) or ((not (a(1) xor b(1))) and bor(0));
    
    diff(2) <= (a(2) xor b(2)) xor bor(1);
    bor(2) <= ((not a(2)) and b(2)) or ((not (a(2) xor b(2))) and bor(1));
    
    diff(3) <= (a(3) xor b(3)) xor bor(2);
    bor(3) <= ((not a(3)) and b(3)) or ((not (a(3) xor b(3))) and bor(2));

    borrow <= bor(3);
end Behavioral;
