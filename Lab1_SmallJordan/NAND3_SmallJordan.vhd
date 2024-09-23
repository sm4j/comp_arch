-- 3-input NAND, built from 2-input NAND
-- Jordan Small, 09/21/2023

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND3_SmallJordan IS
	PORT(A,B,C: IN  STD_LOGIC;
		 Y    : OUT STD_LOGIC);
END NAND3_SmallJordan;

-- structural specification

ARCHITECTURE structure OF NAND3_SmallJordan IS
	SIGNAL w1,w2: STD_LOGIC;
BEGIN
	w1 <= A NAND B;
	w2 <= w1 NAND w1;
	Y <= w2 NAND C;
END structure;