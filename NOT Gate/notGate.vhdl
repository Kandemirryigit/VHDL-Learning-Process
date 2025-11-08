LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY not_gate is
    port(x: in std_logic;
         y: out std_logic);
end not_gate;


ARCHITECTURE behavioral of not_gate is
    begin
        y<= not a;
    end behavioral;