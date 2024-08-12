library ieee;
use ieee.std_logic_1164.all;

entity decode16 is
	port(
		en				   : in std_logic;
		i					   : in std_logic_vector(1 downto 0);
		D					   : out std_logic_vector(3 downto 0));
end decode16;

architecture behav of decode16 is

	signal out_aux : std_logic_vector (3 downto 0);
	signal in_aux	 : std_logic_vector (2 downto 0);

begin

in_aux <= en & i(1) & i(0);

with in_aux select
out_aux <=	"0001" when "100",
				"0010" when "101",
				"0100" when "110",
				"1000" when "111",
				"0000" when others;

D <= out_aux(3 downto 0);

end behav;
