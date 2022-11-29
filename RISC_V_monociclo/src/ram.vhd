library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ram is
	--generic(
	--	p_ADDR_WIDTH : integer := 4;
	--	p_DATA_WIDTH : integer := 16
	--);
	port(
		i_CLK	 : in  std_logic;
		i_WR	 : in  std_logic;
		i_ADDR : in  std_logic_vector(7 downto 0);
		i_DATA : in  std_logic_vector(31 downto 0);
		o_DATA : out std_logic_vector(31 downto 0)
		--i_ADDR : in  std_logic_vector(p_ADDR_WIDTH-1 downto 0);
		--i_DATA : in  std_logic_vector(p_DATA_WIDTH-1 downto 0);
		--o_DATA : out std_logic_vector(p_DATA_WIDTH-1 downto 0)
	);
end ram;

architecture arch_1 of ram is
	--type ram_type is array(2**p_ADDR_WIDTH-1 downto 0) of std_logic_vector(p_DATA_WIDTH-1 downto 0);
	type ram_type is array(7 downto 0) of std_logic_vector(31 downto 0);
	signal ram_infer : ram_type;

begin

	process (i_CLK)
	begin
		if (i_CLK'event and i_CLK='1') then
			if (i_WR='1') then
				ram_infer(conv_integer(i_ADDR)) <= i_DATA;
			end if;
		end if;
	end process;

	o_DATA <= ram_infer(conv_integer(i_ADDR));

end arch_1;