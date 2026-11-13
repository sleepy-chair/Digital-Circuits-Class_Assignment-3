--library and package
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

--entity (input&output)
ENTITY D_Latch IS
	PORT (
		d,en			:IN  std_logic;                    
		q			:OUT std_logic
	);
END D_Latch;

--architecture
ARCHITECTURE bhv OF D_Latch IS
BEGIN
	process(d,en)
	begin
		if (en = '1') then
			q <= d;
		end if;
	end process;
END ARCHITECTURE bhv;