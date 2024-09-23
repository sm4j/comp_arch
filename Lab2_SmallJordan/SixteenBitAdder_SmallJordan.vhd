--16bit Adder, built using two 8bit Adders
--Jordan Small, 10/13/2023
--All STD_LOGIC_VECTORs are commented, as the file would
--not compile when using them.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.adders_SmallJordan.all;

ENTITY SixteenBitAdder_SmallJordan IS
--	PORT (A : IN  STD_LOGIC_VECTOR (0 TO 15);
--		  B : IN  STD_LOGIC_VECTOR (0 TO 15);
	PORT
     (A15,A14,A13,A12,A11,A10,A9,A8 : IN STD_LOGIC;
      A7,A6,A5,A4,A3,A2,A1,A0       : IN STD_LOGIC;
      B15,B14,B13,B12,B11,B10,B9,B8 : IN STD_LOGIC;
      B7,B6,B5,B4,B3,B2,B1,B0       : IN STD_LOGIC;
      
		                        Cin : IN  STD_LOGIC;
	                           Cout : OUT STD_LOGIC;
	   
	  S15,S14,S13,S12,S11,S10,S9,S8 : OUT STD_LOGIC;
      S7,S6,S5,S4,S3,S2,S1,S0       : OUT STD_LOGIC);	   
--	      S : OUT STD_LOGIC_VECTOR (0 TO 15));
	      
END SixteenBitAdder_SmallJordan;

--structural architecture
ARCHITECTURE structure OF SixteenBitAdder_SmallJordan IS
	SIGNAL C:     STD_LOGIC;	
	BEGIN	
	eba0: EightBitAdder_SmallJordan PORT MAP (A7,A6,A5,A4,A3,A2,A1,A0, 
											  B7,B6,B5,B4,B3,B2,B1,B0,
									  Cin, C, S7,S6,S5,S4,S3,S2,S1,S0);
									  
    eba1: EightBitAdder_SmallJordan PORT MAP (A15,A14,A13,A12,A11,A10,A9,A8,
                                              B15,B14,B13,B12,B11,B10,B9,B8,
                                     C, Cout, S15,S14,S13,S12,S11,S10,S9,S8);
END structure;
	
	