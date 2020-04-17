----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.04.2020 18:34:19
-- Design Name: 
-- Module Name: Debouncer - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Debouncer is
    Generic( 
            delay   : natural :=42);
    Port(
            clk     : in std_logic;
            keyIn   : in std_logic;
            keyOut  : out std_logic);
end Debouncer;

architecture Behavioral of Debouncer is
signal keyDebounce : STD_LOGIC := '0';
signal debcnt : integer range 0 to delay := 0;
begin
    process(clk)
    begin
        if(clk='1' and clk'EVENT) then
            if (keyIn=keyDebounce) then
                debcnt <= 0;
            else                   
                debcnt <= debcnt+1;
            end if;

            if (debcnt=delay) then 
                keyDebounce <= keyIn; 
            end if;
        end if;
    end process;
    keyout <= keyDebounce;
end Behavioral;
