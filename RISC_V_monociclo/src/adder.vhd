library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;


entity adder is
	--generic (
	--	p_WIDTH	: natural	:= 32
	--);
	port (
      --i_DATA_A 	: in  std_logic_vector (p_WIDTH-1 downto 0);
		--i_DATA_B 	: in  std_logic_vector (p_WIDTH-1 downto 0);
		--o_DATA 		: out std_logic_vector (p_WIDTH-1 downto 0)
		i_DATA_A 	: in  std_logic_vector (31 downto 0);
		i_DATA_B 	: in  std_logic_vector (31 downto 0);
		o_DATA 		: out std_logic_vector (31 downto 0)
	);
end adder;

architecture arch_1 of adder is

begin

	o_DATA	<=	i_DATA_A+i_DATA_B;
	
end arch_1;
