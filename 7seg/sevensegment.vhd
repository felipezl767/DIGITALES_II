LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sevensegment Is
	PORT (
	sw: IN STD_LOGIC_VECTOR(2 downto 0);
	pb: IN STD_LOGIC;
	hex0: OUT STD_LOGIC_VECTOR(0 to 7));
END sevensegment;

ARCHITECTURE a OF sevensegment IS
	BEGIN
		WITH pb & sw SELECT
		hex0 <= "00000011" WHEN "0000",
		"10011111" WHEN "0001",
		"00100101" WHEN "0010",
		"00001101" WHEN "0011",
		"10011001" WHEN "0100",
		"01001001" WHEN "0101",
		"01000001" WHEN "0110",
		"00011111" WHEN "0111",
		"11111111" WHEN others;
END a;