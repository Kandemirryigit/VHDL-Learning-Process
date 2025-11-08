LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY half_addder is
    port(x,y: in std_logic;   
         s,c: out std_logic);  -- s means SUM , c means CARRY
end half_adder

ARCHITECTURE structural of half_adder is
    begin
        s<= x OR y;
        c<= x and y;
        end structural;