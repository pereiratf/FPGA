library ieee;
use ieee.std_logic_1164.all;

entity inst_mem is
	--generic(
	--	p_ADDR_WIDTH : integer := 32;
	--	p_DATA_WIDTH : integer := 32
	--);
	port(
		--i_ADDR : in  std_logic_vector(p_ADDR_WIDTH-1 downto 0);
		--o_DATA : out std_logic_vector(p_DATA_WIDTH-1 downto 0)
		i_ADDR : in  std_logic_vector(31 downto 0);
		o_DATA : out std_logic_vector(31 downto 0)
		
	);
end inst_mem;

architecture arch_1 of inst_mem is
begin
	with i_ADDR select			
		o_DATA <= 	X"20130001" when X"00000000",
								X"20140001" when X"00000004",
								X"12740001" when X"00000008",
								X"02328020" when X"0000000C",
								X"02138022" when X"00000010",
								X"08000004" when X"00000014",
--								X"01098022" when X"00000018",
--								X"20140001" when X"0000001C",
--								X"02324020" when X"00000020",
--								X"02744820" when X"00000024",
--								X"01098022" when X"00000028",
--								X"20140001" when X"0000002C",
--								X"02324020" when X"00000030",
--								X"02744820" when X"00000034",
--								X"01098022" when X"00000038",
--								X"20140001" when X"0000003C",
--								X"02324020" when X"00000040",
--								X"02744820" when X"00000044",
--								X"01098022" when X"00000048",
--								X"20140001" when X"0000004C",
--								X"02324020" when X"00000050",
--								X"02744820" when X"00000054",
--								X"01098022" when X"00000058",
								X"00000000" when others;
end arch_1;