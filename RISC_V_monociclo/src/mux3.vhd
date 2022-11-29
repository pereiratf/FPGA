library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux3 is
	generic (
		p_WIDTH	: natural	:=	32
	);
	port (
		i_DATA_A	: in	std_logic_vector	(p_WIDTH-1 downto 0);
    i_DATA_B	: in	std_logic_vector	(p_WIDTH-1 downto 0);
    i_DATA_C	: in	std_logic_vector	(p_WIDTH-1 downto 0);
    i_SEL			: in	std_logic_vector	(				 1 downto 0);
    o_DATA		: out	std_logic_vector	(p_WIDTH-1 downto 0)
	);
end mux3;

architecture arch_1 of mux3 is

begin
	process (i_SEL, i_DATA_A, i_DATA_B, i_DATA_C)
	begin
		case i_SEL is 
			when "00" =>
				o_DATA <= i_DATA_A;
      when "01" =>
				o_DATA <= i_DATA_B;
      when "10" =>
				o_DATA <= i_DATA_C;
      when others =>
				o_DATA <= (others => '0');
		end case;
	end process;
end arch_1;
