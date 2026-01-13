library ieee;
use IEEE.std_logic_1164.all;

entity D_FF is
    port(D,CLK: in std_logic;
         Q: out std_logic);
end D_FF;

architecture behavioral of D_FF is
begin
    process(CLK)
    begin
        if(rising_edge(CLK)) then
            Q<=D;
        end if;
    end process;
end behavioral;

