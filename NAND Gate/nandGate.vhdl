LIBRARY ieee;
use ieee.std_logic_1164.all;

ENTITY nand_gate is
port(x,y: in bit;  -- In AND gate I used std_logic but this logic is simple I can also use bit
		 z: out bit);  -- It doesn't matter for this logic 
end nand_gate;


ARCHITECTURE behavioral of nand_gate is
begin 
		z<= x NAND y;
end behavioral;