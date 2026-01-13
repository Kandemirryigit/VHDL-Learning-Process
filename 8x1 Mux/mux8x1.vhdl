librar ieee;
use IEEE.std_logic_1164.all;

entity mux is
    port(I: in std_logic_vector(7 downto 0);    -- 8 tane giriş
         S: in std_logic_vector(2 downto 0);    -- 3 tane seçici
         Q: out std_logic);  -- 1 tane çıkış
end mux;

architecture behavioral of mux is
begin
    process(I,S)
    begin
        case S is
            when "000" => Q <=I(0);
            when "001" => Q <=I(1);
            when "010" => Q <=I(2);
            when "011" => Q <=I(3);
            when "100" => Q <=I(4);
            when "101" => Q <=I(5);
            when "110" => Q <=I(6);
            when "111" => Q <=I(7);
            when others => Q <='0';
        end case;
    end process;
end behavioral;
        
