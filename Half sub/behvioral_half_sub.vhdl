LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY half_sub is
    port(x,y: in std_logic;
        diff,borrow: out std_logic);
end half_sub;


ARCHITECTURE behavioral of half_sub is
    begin
        process(x,y)
        begin   
            if(a/=b) then diff<='1';  -- If a is not equal to b
            else diff<='0';
            end if

            if (a='0') and (b='1') then borrow<='1';
            else borrow<='0';
            end if;

        end process;
    end behavioral;

-- If you know the table you can create the conditional statments