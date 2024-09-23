--8-Register RAM Positive Edge Triggered
--Jordan Small, Nov. 9, 2023

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY RAM8Reg_SmallJordan IS
PORT (
		D		    : IN  STD_LOGIC_VECTOR(15 downto 0);
		Load, Clock : IN  STD_LOGIC;
		Address		: IN  STD_LOGIC_VECTOR(2 downto 0);
		Q			: OUT STD_LOGIC_VECTOR(15 downto 0)
	  );
END RAM8Reg_SmallJordan;

ARCHITECTURE behavior of RAM8Reg_SmallJordan IS
	TYPE Array8x16 IS ARRAY(7 downto 0) of STD_LOGIC_VECTOR(15 downto 0);
	SIGNAL RAM   : Array8x16;
	SIGNAL index : INTEGER RANGE 0 to 7;
BEGIN
	PROCESS (clock)
	BEGIN
	index <= to_integer(unsigned(address));
	IF (rising_edge(clock)) THEN
		IF (Load = '1') THEN
			RAM(index) <= D;
			Q <= D;
		ELSE
			Q <= RAM(index);
		END IF;
	END IF;
	END PROCESS;
End behavior;