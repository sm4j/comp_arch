-- Mux16to1, built from Mux8to1 and Mux2to1
--Jordan Small, 10/1/2023

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Mux16to1_SmallJordan IS
PORT(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,
                         S3,S2,S1,S0 : IN STD_LOGIC;
                                   Y : OUT STD_LOGIC);
END Mux16to1_SmallJordan;

--structural architecture
ARCHITECTURE structure OF Mux16to1_SmallJordan IS
SIGNAL f1,f2: STD_LOGIC;

COMPONENT Mux2to1_SmallJordan IS
PORT(X1,X2,S    : IN  STD_LOGIC;
		   Y    : OUT STD_LOGIC);
END COMPONENT Mux2to1_SmallJordan;

COMPONENT Mux4to1_SmallJordan IS
PORT(I0,I1,I2,I3,s1,s0: IN STD_LOGIC;
     Y                : OUT STD_LOGIC);
END COMPONENT Mux4to1_SmallJordan;

COMPONENT Mux8to1_SmallJordan IS
PORT(A,B,C,D,E,F,G,H,Sc,Sb,Sa: IN STD_LOGIC;
     Y                       : OUT STD_LOGIC);
END COMPONENT Mux8to1_SmallJordan;

BEGIN
muxA: Mux8to1_SmallJordan PORT MAP(A,B,C,D,E,F,G,H,S0,S1,S2,f1);
muxB: Mux8to1_SmallJordan PORT MAP(I,J,K,L,M,N,O,P,S0,S1,S2,f2);	
muxC: Mux2to1_SmallJordan PORT MAP(f1,f2,S3,y);
END structure;
