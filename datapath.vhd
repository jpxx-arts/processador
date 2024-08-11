library ieee;
use ieee.std_logic_1164.all;

entity datapath is
	Port(
		R_data		: in std_logic_vector(15 downto 0);
		RF_W_data	: in std_logic_vector(7 downto 0);
		RF_W_addr	: in std_logic_vector(3 downto 0);
		RF_W_wr		: in std_logic;
		RF_s			: in std_logic_vector(1 downto 0);
		RF_Rp_addr	: in std_logic_vector(3 downto 0);
		RF_Rp_rd		: in std_logic;
		RF_Rq_addr	: in std_logic_vector(3 downto 0);
		RF_Rq_rd		: in std_logic;
		ALU_s			: in std_logic_vector(1 downto 0);
		W_data		: out std_logic_vector(15 downto 0));
end datapath;

architecture behav of datapath is
begin

end behav;
