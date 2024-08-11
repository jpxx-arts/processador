library ieee;
use ieee.std_logic_1164.all;

entity somador4 is
	Port(
    A, B	: in std_logic_vector(3 downto 0);
    Cin		: in std_logic;
    Cout	: out std_logic;
    Z			: out std_logic_vector(3 downto 0));
end somador4;

architecture behav of somador4 is
  signal cout_sig : std_logic_vector(3 downto 0);

	component full_adder is
		Port(
      a, b, cin	: in std_logic;
      cout, z		: out std_logic);
  end component;

  begin

	a0 : full_adder port map(a=>A(0), b=>B(0), Cin=>cin, cout=>cout_sig(0), z=>Z(0));
	a1 : full_adder port map(a=>A(1), b=>B(1), Cin=>cout_sig(0), cout=>cout_sig(1), z=>Z(1));
	a2 : full_adder port map(a=>A(2), b=>B(2), Cin=>cout_sig(1), cout=>cout_sig(2), z=>Z(2));
	a3 : full_adder port map(a=>A(3), b=>B(3), Cin=>cout_sig(2), cout=>cout_sig(3), z=>Z(3));
	
end behav;
