library ieee;
use IEEE.std_logic_1164.all;

entity mim is
    port(g1,g2,g3,g4: in std_logic;
         CLK: in std_logic;
         c: out std_logic);
end mim;

architecture behavioral of mim is

    component andCom
        port(a,b: in std_logic;
             c: out std_logic);
    end component;

    component xorCom
        port(a,b: in std_logic;
             c: out std_logic);
    end component;

    component d_FF
        port(a,CLK: in std_logic;
             b: out std_logic);
    end component;

    signal output_of_and_gate: std_logic:='0';
    signal output_of_xor1_gate: std_logic:='0';
    signal output_of_xor2_gate: std_logic:='0';

    begin
        C1: andCom port map(
            a=>g1,
            b=>g2,
            c=>output_of_and_gate);

        C2: xorCom port map(
            a=>g3,
            b=>g4,
            c=>output_of_xor1_gate);

        C4: xorCom port map(
            a=>output_of_and_gate,
            b=>output_of_xor1_gate,
            c=>output_of_xor2_gate);


        C3: d_FF port map(
            CLK=>CLK,
            a=> output_of_xor2_gate,
            b=>c);

end behavioral

        

