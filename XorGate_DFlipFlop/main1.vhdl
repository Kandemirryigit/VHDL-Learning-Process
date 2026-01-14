library ieee;
use IEEE.std_logic_1164.all;

entity mim is
    port(A,B,CLK: in std_logic;
         Q: out std_logic);
end mim;

architecture behavioral of mim is
    signal output_of_xor_gate: std_logic:='0';
begin
    output_of_xor_gate<= A xor B;

    process(CLK)
    begin
        if(rising_edge(CLK)) then
            Q<=output_of_xor_gate;
        end if;
    end process;
end behavioral;
            
