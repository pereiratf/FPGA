library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity quatro is
port(
	o_DATA : out std_logic_vector(31 downto 0)
);

end quatro;

architecture arch_1 of quatro is

begin
	o_DATA <= "00000000000000000000000000000100";

end arch_1;