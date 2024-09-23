-- Mux8to1, built from Mux2to1 and Mux4to1
--Jordan Small, 09/30/2023

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Mux8to1_SmallJordan IS
PORT(A,B,C,D,E,F,G,H,Sc,Sb,Sa: IN STD_LOGIC;
     Y                       : OUT STD_LOGIC);
END Mux8to1_SmallJordan;

--structural architecture
ARCHITECTURE structure OF Mux8to1_SmallJordan IS
SIGNAL f1,f2: STD_LOGIC;

COMPONENT Mux2to1_SmallJordan IS
PORT(X1,X2,S    : IN  STD_LOGIC;
		   Y    : OUT STD_LOGIC);
END COMPONENT Mux2to1_SmallJordan;

COMPONENT Mux4to1_SmallJordan IS
PORT(I0,I1,I2,I3,s1,s0: IN STD_LOGIC;
     Y                : OUT STD_LOGIC);
END COMPONENT Mux4to1_SmallJordan;

BEGIN
muxA: Mux4to1_SmallJordan PORT MAP(A,B,C,D,Sa,Sb,f1);
muxB: Mux4to1_SmallJordan PORT MAP(E,F,G,H,Sa,Sb,f2);	
muxC: Mux2to1_SmallJordan PORT MAP(f1,f2,Sc,y);
END structure;