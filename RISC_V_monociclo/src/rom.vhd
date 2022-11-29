library ieee;
use ieee.std_logic_1164.all;

entity rom is
	generic(
		p_ADDR_WIDTH : integer := 11;
		p_DATA_WIDTH : integer := 16
	);
	port(
		i_ADDR : in  std_logic_vector(10 downto 0);
--		i_ADDR : in  std_logic_vector(p_ADDR_WIDTH-1 downto 0);
		o_DATA : out std_logic_vector(p_DATA_WIDTH-1 downto 0)
	);
end rom;

architecture arch_1 of rom is
begin
	with i_ADDR select			
--		o_DATA <= "0001100000000000" when "00000000000",	--1800H / LDI		0
--							"0000100000000000" when "00000000001",	--0800H / STO 	0
--							"0011100000000010" when "00000000010",	--3802H / SUBI	2
--							"0110000000001000" when "00000000011",	--6008H / BLT		8
--							"0001000000000000" when "00000000100",	--1000H / LD		0
--							"0010100000000001" when "00000000101",	--2801H / ADDI	1
--							"0000100000000000" when "00000000110",	--0800H / STO		0
--							"0111000000000010" when "00000000111",	--7002H / JMP		2
--							"0000000000000000" when others; 				--0000H / HLT

		o_DATA <= "0001100000101010" when "00000000000",	-- LDI	42
							"0000100000000000" when "00000000001",	-- STO	0
							"0001100000001000" when "00000000010",	-- LDI	8
							"0000100000000001" when "00000000011",	-- STO	1
							"0001000000000000" when "00000000100",	-- LD		0
							"0011000000000001" when "00000000101",	-- SUB	1
							"0100000000010000" when "00000000110",	-- BEQ	16
							"0101100000001100" when "00000000111",	-- BGE	12
							--"0110100000001100" when "00000000111",	-- BLE	12
							"0001000000000001" when "00000001000",	-- LD		1
							"0011000000000000" when "00000001001",	-- SUB	0
							"0000100000000001" when "00000001010",	-- STO	1
							"0111000000000100" when "00000001011",	-- JMP	4		
							"0001000000000000" when "00000001100",	-- LD 	0
							"0011000000000001" when "00000001101",	-- SUB	1
							"0000100000000000" when "00000001110",	-- STO	0
							"0111000000000100" when "00000001111",	-- JMP	4
							"0000000000000000" when others; 				-- HLT

end arch_1;