library ieee;
use IEEE.std_logic_1164.all;

entity decoder is
    port(I: in std_logic_vector(2 downto 0);     -- 3 tane giriş
         D: out std_logic_vector(7 downto 0));  -- 8 tane çıkış
end decoder;

architecture behavioral of decoder is
begin
    process(I)
    begin
        case I is
            when "000" => D <= "00000001";  -- 0.Giriş aktif
            when "001" => D <= "00000010";  -- 1.Giriş aktif
            when "010" => D <= "00000100";  -- 2.Giriş aktif
            when "011" => D <= "00001000";  -- 3.Giriş aktif
            when "100" => D <= "00010000";  -- 4.Giriş aktif
            when "101" => D <= "00100000";  -- 5.Giriş aktif
            when "110" => D <= "01000000";  -- 6.Giriş aktif
            when "111" => D <= "10000000";  -- 7.Giriş aktif
            when others => D <= "00000000";  -- hata durumu
        end case;
    end process;
end behavioral;






