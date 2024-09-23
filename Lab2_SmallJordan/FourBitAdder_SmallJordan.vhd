--4bit Adder, built using four Full Adders
--Jordan Small, 10/13/2023

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.adders_SmallJordan.all;

ENTITY FourBitAdder_SmallJordan IS
	PORT (A3,A2,A1,A0 : IN STD_LOGIC;
		  B3,B2,B1,B0 : IN STD_LOGIC;
		  Cin		  : IN STD_LOGIC;
		  
		  Cout		  : OUT STD_LOGIC;
		  S3,S2,S1,S0 : OUT STD_LOGIC);
END FourBitAdder_SmallJordan;

--structural architecture

ARCHITECTURE structure of FourBitAdder_SmallJordan IS
	SIGNAL   c0,c1,c2 : STD_LOGIC;
	
BEGIN
fa0: FullAdder_SmallJordan PORT MAP (A0,B0,Cin,c0,s0);
fa1: FullAdder_SmallJordan PORT MAP (A1,B1,c0,c1,s1);
fa2: FullAdder_SmallJordan PORT MAP (A2,B2,c1,c2,s2);
fa3: FullAdder_SmallJordan PORT MAP (A3,B3,c2,Cout,s3);
END structure;