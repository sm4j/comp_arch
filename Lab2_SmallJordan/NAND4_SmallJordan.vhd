-- 4-inout NAND, built from 2-input NAND
-- Jordan Small, 09/21/2023

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NAND4_SmallJordan IS
	PORT(A,B,C,D: IN STD_LOGIC;
		 Y      : OUT STD_LOGIC);
END NAND4_SmallJordan;

-- structural specification

ARCHITECTURE structure OF NAND4_SmallJordan IS
	SIGNAL w1,w2,w3,w4: STD_LOGIC;
BEGIN
	w1 <= A NAND B;
	w2 <= C NAND D;
	w3 <= w1 NAND w1;
	w4 <= w2 NAND w2;
	Y  <= w3 NAND w4;
END structure;