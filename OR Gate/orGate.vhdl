LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY or_gate is
port(x,y: in std_logic;
	 z: out std_logic);
end or_gate;


ARCHITECTURE behavioral of or_gate is
begin 
	z<= x OR y;
end or_gate;