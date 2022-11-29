
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity reg is
	--generic (
	--   p_DATA_WIDTH	:	natural := 16
	--);
  port ( 
		i_WR    	: in  std_logic;
		i_RST 		: in  std_logic;
		i_CLK 		: in  std_logic;
		i_DATA		: in	std_logic_vector	(31 downto 0);
		o_DATA		: out	std_logic_vector	(31 downto 0)
		--i_DATA		: in	std_logic_vector	(p_DATA_WIDTH-1 downto 0);
		--o_DATA		: out	std_logic_vector	(p_DATA_WIDTH-1 downto 0)
	);
end reg;

architecture arch_1 of reg is

begin
process(i_CLK, i_RST) 
  begin
		if (i_RST='1') then
			o_DATA <= (others => '0');
    elsif (i_CLK'event and i_CLK='1') then
      if (i_WR='1') then
        o_DATA <= i_DATA;
      end if;
    end if;
  end process;

end arch_1;

