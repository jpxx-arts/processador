library ieee;
use ieee.std_logic_1164.all;

entity mux is
	Port(
    a, b : in std_logic;
    s    : in std_logic;
    c	   : out std_logic);
end mux;

architecture behav of mux is
begin
	c <= (a and not s) or (b and s);
end behav;
