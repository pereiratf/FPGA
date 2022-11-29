library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity alu is
	--generic (
	--	p_DATA_WIDTH	: natural	:= 32
	--);
	port (
		i_OP 			: in  std_logic_vector (2 downto 0);
      --i_DATA_A 	: in  std_logic_vector (p_DATA_WIDTH-1 downto 0);
		--i_DATA_B 	: in  std_logic_vector (p_DATA_WIDTH-1 downto 0);
		--o_DATA 		: out std_logic_vector (p_DATA_WIDTH-1 downto 0);
		i_DATA_A 	: in  std_logic_vector (31 downto 0);
		i_DATA_B 	: in  std_logic_vector (31 downto 0);
		o_DATA 		: out std_logic_vector (31 downto 0);
		o_Z 			: out std_logic
	);
end alu;

architecture arch_1 of alu is
--signal w_DATA : std_logic_vector (p_DATA_WIDTH-1 downto 0);
signal w_DATA : std_logic_vector (31 downto 0);

begin



	process (i_OP, i_DATA_A, i_DATA_B)
	begin
		case i_OP is 
			when "000" =>
				w_DATA	<= i_DATA_A and i_DATA_B;
      when "001" =>
				w_DATA	<= i_DATA_A or i_DATA_B;
      when "010" =>
				w_DATA	<= i_DATA_A + i_DATA_B;
      when "110" =>
				w_DATA	<= i_DATA_A - i_DATA_B;
      when others =>
				w_DATA	<= (others => '0');
		end case;
	end process;
	
	
	o_Z <= '1' when (w_DATA = 0) else '0';
	o_DATA <= w_DATA;

end arch_1;

