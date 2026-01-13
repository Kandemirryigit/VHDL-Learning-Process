library ieee;
use IEEE.std_logic_1164.all;

entity T_FF is
    port(T,CLK: in std_logic;
         Q: out std_logic);
end T_FF;

architecture behavioral of T_FF is
    signal temp: std_logic:='0';
begin
    process(CLK)
    begin
        if(rising_edge(CLK)) then
            if(T='0') then
                temp<=temp;
            else
                temp<= not temp;
            end if;
        end if;
    end process;

    Q<=temp;

end behavioral;

