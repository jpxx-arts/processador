library ieee;
use ieee.std_logic_1164.all;

entity alext is
	Port(
		x, y 	: in std_logic;
		a, b		: in std_logic;
		ia, ib	: out std_logic);
end alext;

architecture behav of alext is
	
begin

	ia <= a;
	ib <= (not x and y and b) or (x and not y and not b);
	
end behav;
