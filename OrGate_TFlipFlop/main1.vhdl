library ieee;
use IEEE.std_logic_1164.all;

entity mim is
    port(A,B,CLK: in std_logic;
         Q: out std_logic);
end mim;

architecture behavioral of mim is
    signal output_of_or_gate: std_logic:='0';
    signal temp: std_logic:='0';
begin
    output_of_or_gate<= a or B;

    process(CLK)
    begin
        if(rising_edge(CLK)) then
            if(output_of_or_gate='0') then
                temp<= output_of_or_gate;
            elsif(output_of_or_gate='1') then
                temp<= not temp;
            end if;
    end process;

    Q<=temp;
end behavioral;
