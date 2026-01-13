library ieee;
use IEEE.std_logic_1164.all;

entity mux is
    port(I: in std_logic_vector(3 downto 0);   -- 4 tane giriş
         S: in std_logic_vector(1 downto 0);   -- 2 tane seçici
         Q: out std_logic);  -- 1 tane çıkış
end mux;

architecture behavioral of mux is
begin
    process(I,S)    -- Giriş ve secici değişirse işlem yap
    begin
        case S is
            when "00" => Q <=I(0);
            when "01" => Q <=I(1);
            when "10" => Q <=I(2);
            when "11" => Q <=I(3);
            when others => Q <='0';
        end case;
    end process;
end behavioral;
