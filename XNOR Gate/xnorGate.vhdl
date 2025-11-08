LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY xnor_gate is
    port(x,y: in std_logic;
         z: out std_logic);
end xnor_gate;


ARCHITECTURE behavioral of xnor_gate is
    begin
        z<= x XNOR y;
end behavioral;
