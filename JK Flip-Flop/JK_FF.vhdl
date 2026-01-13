library ieee;
use IEEE.std_logic_1164.all;

entity JK_FF is
    port(J,K,CLK: in std_logic;
         Q: out std_logic);
end JK_FF;

architecture behavioral of JK_FF is
    signal temp: std_logic:='0';    -- Cıkış verisini saklayabilmek icin olusturdum
begin
    process(CLK)
    begin
        if(rising_edge(CLK)) then
            if(J='0' and K='0') then
                temp<=temp;    -- Değişiklik yok
            elsif(J='0' and K='1') then
                temp<='0';    -- Reset
            elsif(J='1' and K='0') then
                temp<='1';    -- Set
            elsif(J='1' and K='1') then
                temp<= not temp;   -- Q'
            end if;
        end if;
    end process;

    Q<=temp;

end behavioral;


