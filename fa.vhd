library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	Port(
    a, b, cin	: in std_logic;
    cout, z		: out std_logic);
end full_adder;

architecture behav of full_adder is

begin
  cout <= (a and b) or (a and cin) or (b and cin);
  z <= a xor b xor cin;
end behav;
