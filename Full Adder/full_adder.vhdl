LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY full_adder is
    port(x,y,z: in std_logic;
         s,c: out std_logic);
end full_adder;


ARCHITECTURE behavioral of full_adder is
    begin 
        s<= x XOR y XOR z XOR;
        c<= (y and z) or (x and z) or (x and y);
    end behavioral;