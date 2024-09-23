--1-Bit Register, Behavioral Model
--Jordan Small, Nov. 4, 2023

LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY OneBitRegister_SmallJordan IS
	PORT (
		D, Clock, Load : IN    STD_LOGIC;
			         Q : INOUT STD_LOGIC
		 );
END OneBitRegister_SmallJordan;
		 
ARCHITECTURE behavior OF OneBitRegister_SmallJordan IS
BEGIN
	PROCESS (Clock, Load)
		BEGIN
			IF(rising_edge(clock)) THEN
				IF Load = '1' THEN
					Q <= D;
				END IF;
			END IF;
	END PROCESS;
END behavior;
			
					
				
					