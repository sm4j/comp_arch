-- Mux4to1, built from Mux2to1
--Jordan Small, 09/28/2023

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Mux4to1_SmallJordan IS
PORT(I0,I1,I2,I3,s1,s0: IN STD_LOGIC;
     Y                : OUT STD_LOGIC);
END Mux4to1_SmallJordan;

--structural architecture
ARCHITECTURE structure OF Mux4to1_SmallJordan IS
SIGNAL f1,f2: STD_LOGIC;

COMPONENT Mux2to1_SmallJordan IS
	PORT(X1,X2,S    : IN  STD_LOGIC;
		 Y          : OUT STD_LOGIC);
END COMPONENT Mux2to1_SmallJordan;

BEGIN
mux0: Mux2to1_SmallJordan PORT MAP(I0,I1,s0,f1); --PORT MAP(x1=>I0, x2=>I1, s=>s0 , f=f1);
mux1: Mux2to1_SmallJordan PORT MAP (I2,I3,s0,f2);
mux2: Mux2to1_SmallJordan PORT MAP (f1,f2,s1,y);
END structure;