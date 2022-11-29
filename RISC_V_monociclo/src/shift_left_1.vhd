library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity shift_left_1 is
	
	port (
		i_DATA 	: in  std_logic_vector (31 downto 0);
		o_DATA	: out std_logic_vector (31 downto 0)
	);
	end shift_left_1;

architecture arch_1 of shift_left_1 is

	begin
	
		o_DATA <= i_DATA(30 downto 0) & '0';
	
end arch_1;