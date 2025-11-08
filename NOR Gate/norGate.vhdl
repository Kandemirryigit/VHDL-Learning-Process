LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY nor_gate is
    port(x,y: in std_logic;
         z: out std_logic);
end nor_gate;


ARCHITECTURE behavioral of nor_gate is
    begin 
        z<= x NOR y;
    end behavioral;



