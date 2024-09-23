--16-Bit Register, Behavioral Model
--Jordan Small, Nov. 6, 2023

LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;

ENTITY SixteenBitRegister_SmallJordan IS
	PORT (
		   Clock, Load : IN    STD_LOGIC;
					 D : IN    STD_LOGIC_VECTOR(15 downto 0);
			         Q : INOUT STD_LOGIC_VECTOR(15 downto 0)
		 );
END SixteenBitRegister_SmallJordan;
		 
ARCHITECTURE behavior OF SixteenBitRegister_SmallJordan IS
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