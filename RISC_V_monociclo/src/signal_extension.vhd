library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;


entity signal_extension is
	
	generic (
		p_WIDTH_IN	: natural	:= 32;
		p_WIDTH_OUT	: natural	:= 32
	);
	
	port (
    i_DATA 	: in  std_logic_vector (p_WIDTH_IN	-1 downto 0);
		o_DATA	: out std_logic_vector (p_WIDTH_OUT	-1 downto 0)
	);
	end signal_extension;

architecture arch_1 of signal_extension is

	signal w_DATA : std_logic_vector (p_WIDTH_OUT	-1 downto 0);

	begin
	
		w_DATA(p_WIDTH_IN-1 downto 0) <= i_DATA;
		w_DATA(p_WIDTH_OUT-1 downto p_WIDTH_IN) <= (others =>i_DATA(p_WIDTH_IN-1));
		
		o_DATA <= w_DATA;
	
end arch_1;