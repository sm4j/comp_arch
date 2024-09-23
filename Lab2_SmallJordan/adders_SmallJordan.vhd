LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE adders_SmallJordan IS

COMPONENT HalfAdder_SmallJordan IS
	PORT (A, B : IN STD_LOGIC;
	 Cout, Sum : OUT STD_LOGIC);
END COMPONENT HalfAdder_SmallJordan;

COMPONENT FullAdder_SmallJordan IS
	PORT (A, B, Cin: IN  STD_LOGIC;
		  Cout, Sum: OUT STD_LOGIC);
END COMPONENT FullAdder_SmallJordan;

COMPONENT FourBitAdder_SmallJordan IS
	PORT (A3,A2,A1,A0 : IN STD_LOGIC;
		  B3,B2,B1,B0 : IN STD_LOGIC;
		  Cin		  : IN STD_LOGIC;
		  
		  Cout		  : OUT STD_LOGIC;
		  S3,S2,S1,S0 : OUT STD_LOGIC);
END COMPONENT FourBitAdder_SmallJordan;

COMPONENT EightBitAdder_SmallJordan IS
	PORT (A7,A6,A5,A4,A3,A2,A1,A0 : IN STD_LOGIC;
	      B7,B6,B5,B4,B3,B2,B1,B0 : IN STD_LOGIC;
	      Cin                     : IN STD_LOGIC;
	      
	      Cout                    : OUT STD_LOGIC;
	      S7,S6,S5,S4,S3,S2,S1,S0 : OUT STD_LOGIC);
	      
END COMPONENT EightBitAdder_SmallJordan;

END PACKAGE adders_SmallJordan;