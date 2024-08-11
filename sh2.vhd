library ieee;
use ieee.std_logic_1164.all;

entity shifter_2 is
	Port(
    x, y      : in std_logic;
    A, B	    : in std_logic_vector(3 downto 0);
    A_shifted	: out std_logic_vector(3 downto 0));
end shifter_2;

architecture behav of shifter_2 is
  signal sh : std_logic;

	component mux is
		Port(
      a, b : in std_logic;
      s    : in std_logic;
      c	   : out std_logic);
  end component;

begin
  sh <= x and y;

	m0 : mux port map(a=>A(0), b=> '0', s=>(sh and B(0)), c=>A_shifted(0));
	m1 : mux port map(a=>A(1), b=> '0', s=>(sh and B(1)), c=>A_shifted(1));
	m2 : mux port map(a=>A(2), b=>A(0), s=>(sh and B(2)), c=>A_shifted(2));
	m3 : mux port map(a=>A(3), b=>A(1), s=>(sh and B(3)), c=>A_shifted(3));
	
end behav;
