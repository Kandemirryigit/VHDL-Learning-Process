library ieee;
use IEEE.std_logic_1164.all;

entity mim is
    port(A,B: in std_logic_vector(3 downto 0);   -- 4 bit giriş A ve B
         e: in std_logic;   -- enable girişi
         Q: out std_logic_vector(1 downto 0));   -- 2 bit çıkış
end mim;

architecture behavioral of mim is
    signal output_of_and_gate: std_logic_vector(3 downto 0);

begin
    output_of_and_gate<= A and B;
   
    process(output_of_and_gate,e)
    begin
            if(e='0') then
                Q<="00"
            else
                if(output_of_and_gate(3)='1') then
                    Q<="11";
                elsif(output_of_and_gate(2)='1') then
                    Q<="10";
                elsif(output_of_and_gate(1)='1') then
                    Q<="01";
                elsif(output_of_and_gate(0)='1') then
                    Q<="00";
                else
                    Q<="00";
                end if;
            end if;
        end process;
end behavioral;

