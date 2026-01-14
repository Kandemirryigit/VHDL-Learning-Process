library ieee;
use IEEE.std_logic_1164.all;

entity encoder is
    port(I: in std_logic_vector(7 downto 0);   -- 8 tane giriş
         D: out std_logic_vector(2 downto 0));   -- 3 tane cıkış
end encoder;

architecture behavioral of encoder is
begin
    process(I)
    begin
        if(I(7)='1') then
            D<="111";
        elsif(I(6)='1') then
            D<="110";
        elsif(I(5)='1') then
            D<="101";
        elsif(I(4)='1') then
            D<="100";
        elsif(I(3)='1') then
            D<="011";
        elsif(I(2)='1') then
            D<="010";
        elsif(I(1)='1') then
            D<="001";
        elsif(I(0)='1') then
            D<="000";
        else
            D<="000";
        end if;
    end process;
end behavioral;

        
    
    