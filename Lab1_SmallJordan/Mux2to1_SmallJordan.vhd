-- Mux2to1, built from 2-input NAND
-- Jordan Small, 09/24/2023

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Mux2to1_SmallJordan IS
	PORT(X1,X2,S: IN  STD_LOGIC;
		 Y      : OUT STD_LOGIC);
END Mux2to1_SmallJordan;

--structural specification

ARCHITECTURE structure OF Mux2to1_SmallJordan IS
	SIGNAL w1,w2,w3: STD_LOGIC;
BEGIN
	w1 <= S NAND S;
	w2 <= X1 NAND w1;
	w3 <= S NAND X2;
	Y  <= w2 NAND w3;
END structure;