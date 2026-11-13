--library and package
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;


--entity (input&output)
ENTITY RS_Latch IS
	PORT (
		r,s			:IN  std_logic;                    
		q,nq			:OUT std_logic
	);
END RS_Latch;

--architecture
ARCHITECTURE bhv OF RS_Latch IS
BEGIN
	process(s,r)
	begin
		if (s = '1') then
			nq <= '0';
			if (r = '1') then
				q <= '0';
			else
				q <= '1';
			end if;
		elsif (r = '1') then
			q <= '0';
			nq <= '1';
		end if;
	end process;
END ARCHITECTURE bhv;