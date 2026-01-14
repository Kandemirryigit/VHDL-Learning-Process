library ieee;
use IEEE.std_logic_1164.all;

entity mim is
    port(g1,g2,g3,g4: in std_logic;
         c1,c2: out std_logic);
end mim;

architecture behavioral of mim is

    component andTwo
        port(a,b: in std_logic;
             c: out std_logic);
    end component;

    component nandThree
        port(a,b,c: in std_logic;
             d: out std_logic);
    end component;

    component nandTwo
        port(a,b: in std_logic;
             c: out std_logic);
    end component;

    signal output_of_u1: std_logic:='0';

    begin

        U1: andTwo port map(
            a=>g1,
            b=>g2,
            c=>output_of_u1);
        
        U2: nandThree port map(
            a=>output_of_u1,
            b=>g3,
            c=>g4,
            d=>c2);

        U3: nandTwo port map(
            a=>g3,
            b=>output_of_u1,
            c=>c1);


end behavioral;
