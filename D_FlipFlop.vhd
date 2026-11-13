--library and package
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

--entity (input&output)
ENTITY D_FlipFlop IS
	PORT (
		d,clk		:IN  std_logic;                    
		q			:OUT std_logic
	);
END D_FlipFlop;

--architecture
ARCHITECTURE bhv OF D_FlipFlop IS
BEGIN
	process(d,clk)
	begin
		if rising_edge(clk) then
			q <= d;
		end if;
	end process;
END ARCHITECTURE bhv;