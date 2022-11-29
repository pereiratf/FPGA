library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux2 is
	--generic (
	--	p_WIDTH	: natural	:=	32
	--);
	port (
	 --i_DATA_A	: in	std_logic_vector	(p_WIDTH-1 downto 0);
    --i_DATA_B	: in	std_logic_vector	(p_WIDTH-1 downto 0);
	 i_DATA_A	: in	std_logic_vector	(31 downto 0);
    i_DATA_B	: in	std_logic_vector	(31 downto 0);
    i_SEL			: in	std_logic;
    --o_DATA		: out	std_logic_vector	(p_WIDTH-1 downto 0)
	 o_DATA		: out	std_logic_vector	(31 downto 0)
	);
end mux2;

architecture arch_1 of mux2 is

begin
	process (i_SEL, i_DATA_A, i_DATA_B)
	begin
		if i_SEL = '0' then
			o_DATA <= i_DATA_A;
		else
			o_DATA <= i_DATA_B;
		end if;
	end process;
end arch_1;

