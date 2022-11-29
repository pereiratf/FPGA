library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity reg_file is
	port 
	(
			i_CLK					: in 	std_logic;
			i_RST         : in  std_logic;
	
			i_RD_ADDR_A : in std_logic_vector (4 DOWNTO 0);
			i_RD_ADDR_B : in std_logic_vector (4 DOWNTO 0);
			i_WR_ADDR   : in std_logic_vector (4 DOWNTO 0);
			i_DATA      : in std_logic_vector (31 DOWNTO 0);
			i_WR				: in std_logic;
			
			o_DATA_A    : out std_logic_vector (31 DOWNTO 0);
			o_DATA_B    : out std_logic_vector (31 DOWNTO 0)
	);

end reg_file;

architecture arch_1 of reg_file is
	type register_file is array (0 to 31) of std_logic_vector (31 downto 0);
	
	signal  register_array: register_file;	
begin
	
	process (i_CLK, i_RST)
	begin
		if(i_RST = '1')then
			for i in 0 to 31 loop
				 register_array(i) <= CONV_STD_LOGIC_VECTOR(0,32);				
			end loop;	
		elsif (i_CLK'event and i_CLK = '1') then
			if (i_WR = '1') then
				 register_array(CONV_INTEGER(i_WR_ADDR(4 downto 0))) <= i_data;				
			end if;
		end if;
	end process;
	
	o_DATA_A <=  register_array(CONV_INTEGER(i_RD_ADDR_A(4 downto 0)));
 	o_DATA_B <=  register_array(CONV_INTEGER(i_RD_ADDR_B(4 downto 0)));			 
	
end arch_1;
