library ieee;
use ieee.std_logic_1164.all;

entity alu is
	Port(
		x, y, z : in std_logic;
		A, B 		: in std_logic_vector(3 downto 0);
		S			  : out std_logic_vector(3 downto 0));
end alu;

architecture behav of alu is

	signal IA, IB	   : std_logic_vector(3 downto 0);
	signal Cin, Cout : std_logic;
	
	component barrel_shifter is
		port(
      x, y      : in std_logic;
      A, B	    : in std_logic_vector(3 downto 0);
      A_shifted	: out std_logic_vector(3 downto 0));
	end component;

	component alext is
		Port(
			x, y 	 : in std_logic;
			a, b	 : in std_logic;
			ia, ib : out std_logic);
		end component;
	
	component somador4 is
		port(
			A, B	: in std_logic_vector(3 downto 0);
			Cin		: in std_logic;
			Cout	: out std_logic;
			Z		  : out std_logic_vector(3 downto 0));
	end component;
	
begin

  bs : barrel_shifter port map(x=>x, y=>y, A=>A, B=>B, A_shifted=>A);

	-- extensão AL
	u0 : alext port map(x=>x, y=>y, a=>A(0), b=>B(0), ia=>IA(0), ib=>IB(0));
	u1 : alext port map(x=>x, y=>y, a=>A(1), b=>B(1), ia=>IA(1), ib=>IB(1));
	u2 : alext port map(x=>x, y=>y, a=>A(2), b=>B(2), ia=>IA(2), ib=>IB(2));
	u3 : alext port map(x=>x, y=>y, a=>A(3), b=>B(3), ia=>IA(3), ib=>IB(3));
	
	cin <= x and not y;
	
	-- Somador de 6 bits
	
	s0 : somador4 port map(A=>IA, B=>IB, Cin=>Cin, Cout=>Cout, Z=>S);
	
end behav;
