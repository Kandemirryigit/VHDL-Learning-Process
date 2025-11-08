LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY half_sub is
    port(x,y: in std_logic;
        diff,borrow: out std_logic);
end half_sub;


ARCHITECTURE behavioral of half_sub is
    begin
        diff<= x xor y;
        borrow<= not(x) and y;
    end behavioral;
    