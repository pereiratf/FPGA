library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity shift_left_2 is
	
	generic (
		p_WIDTH	: natural	:= 32
	);
	
	port (
    i_DATA 	: in  std_logic_vector (p_WIDTH	-1 downto 0);
		o_DATA	: out std_logic_vector (p_WIDTH	-1 downto 0)
	);
	end shift_left_2;

architecture arch_1 of shift_left_2 is

	begin
	
		o_DATA <= i_DATA(p_WIDTH-3 downto 0) & "00";
	
end arch_1;