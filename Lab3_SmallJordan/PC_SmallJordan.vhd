--Program Counter, Behavioral Model
--Jordan Small, Nov. 6, 2023

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY PC_SmallJordan IS
	PORT (
			Load, Inc, Reset, Clock : IN    STD_LOGIC;
								  D : IN    STD_LOGIC_VECTOR(15 downto 0);
								  Q : INOUT STD_LOGIC_VECTOR(15 downto 0)
		 );
END PC_SmallJordan;

ARCHITECTURE behavior OF PC_SmallJordan IS
BEGIN
	PROCESS(Clock)
		BEGIN
			IF (rising_edge(clock)) THEN
				IF Reset = '1' THEN
					Q <= "0000000000000000";
				ELSIF Load = '1' THEN
					Q <= D;
				ELSIF Inc = '1' THEN
					Q <= (Q + 1);
				END IF;
			END IF;
	END PROCESS;
END behavior;