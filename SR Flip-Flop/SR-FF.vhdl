library ieee;
use IEEE.std_logic_1164;

entity SR-FF is
    port(S,R,CLK: in std_logic;    -- S,R ve CLK inputlar
        Q: out std_logic);         -- Q output
end SR-FF;


architecture behavioral of SR-FF is
    signal temp: std_logic:='0';    -- Cıkış değerini tutmak için bir tane değişken tanımladım
begin
    process(S,R)
        if(rising_edge(CLK)) then
            if(S='0' and R='0') then
                temp<=temp;   -- Değişiklik yok
            elsif(S='0' and R='1') then
                temp<='0';    -- Reset
            elsif(S='1' and R='0') then
                temp<='1';   -- Set
            elsif(S='1' and R='1') then
                temp<=Z;    -- Tanımsız
            end if;
        end if;
    end process;

    Q<=temp;

end behavioral;

