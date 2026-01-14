library ieee;
use IEEE.std_logic_1164.all;

entity encoder is
    port(I: in std_logic_vector(3 downto 0);   -- 4 tane giriş
         D: out std_logic_vector(1 downto 0));  -- 2 tane çıkış
end encoder;

architecture behavioral of encoder is
begin
    process(I)
    begin
        if(I(3)='1') then
            D<="11";
        elsif(I(2)='1') then
            D<="10";
        elsif(I(1)='1') then
            D<="01";
        elsif(I(0)='1') then
            D<="00";
        else
            D<="00";
        end if;
    end process;
end behavioral;
