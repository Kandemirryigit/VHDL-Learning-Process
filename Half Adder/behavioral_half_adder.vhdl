LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY half_adder is
    port(x,y: in std_logic;
         s,c: out std_logic);
end half_adder;


ARCHITECTURE Behavioral of half_adder is
    begin
        process(x,y)  -- this trigger when x or y changes

        begin;

            if(x=y) then s<='0';
            else s<=1
            end if;

            if(x='1') and (y='1') then c<='1';
            else c<='0';
            end if;

        end process;
    end behavioral;

    
-- If you know the table you can write this if,else blocks 
