library ieee;
use ieee.std_logic_1164.all;

entity barrel_shifter is
	Port(
    x, y        : in std_logic;
    A, B	      : in std_logic_vector(3 downto 0);
    A_shifted	  : out std_logic_vector(3 downto 0));
end barrel_shifter;

architecture behav of barrel_shifter is

	component shifter_1 is
		Port(
      x, y      : in std_logic;
      A, B	    : in std_logic_vector(3 downto 0);
      A_shifted	: out std_logic_vector(3 downto 0));
  end component;

	component shifter_2 is
		Port(
      x, y      : in std_logic;
      A, B	    : in std_logic_vector(3 downto 0);
      A_shifted	: out std_logic_vector(3 downto 0));
  end component;

	component shifter_4 is
		Port(
      x, y      : in std_logic;
      A, B	    : in std_logic_vector(3 downto 0);
      A_shifted	: out std_logic_vector(3 downto 0));
  end component;

	component shifter_8 is
		Port(
      x, y      : in std_logic;
      A, B	    : in std_logic_vector(3 downto 0);
      A_shifted	: out std_logic_vector(3 downto 0));
  end component;

begin
  s0 : shifter_1 port map(x=>x, y=>y, A=>A, B=>B);
  s1 : shifter_2 port map(x=>x, y=>y, A=>A, B=>B);
  s2 : shifter_4 port map(x=>x, y=>y, A=>A, B=>B);
  s3 : shifter_8 port map(x=>x, y=>y, A=>A, B=>B);
	
end behav;
