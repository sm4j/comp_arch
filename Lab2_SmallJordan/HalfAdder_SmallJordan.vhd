--Lab 2: Half Adder, built from 2-input NANDs
--Jordan Small, 10/05/2023

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY HalfAdder_SmallJordan IS
	PORT (A, B : IN STD_LOGIC;
	 Cout, Sum : OUT STD_LOGIC);
END HalfAdder_SmallJordan;

--structural specification

ARCHITECTURE structure of HalfAdder_SmallJordan IS
	SIGNAL w1, w2, w3, w4, w5: STD_LOGIC;
BEGIN
w1   <=  A NAND A;  --A'
w2   <=  B NAND B;  --B'
w3   <= w1 NAND B;  --(A'B)'
w4   <= w2 NAND A;  --(AB')'
w5   <=  A NAND B;  --(AB)'
Sum  <= w3 NAND w4; --((A'B)'(AB')')' = A'B+AB' [DeMorgan]
Cout <= w5 NAND w5; --(AB)'' = AB
END structure;