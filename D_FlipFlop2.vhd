--library and package
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

--entity (input&output)
ENTITY D_FlipFlop2 IS
	PORT (
		d,clk,clr,set	:IN  std_logic;                    
		q			:OUT std_logic
	);
END D_FlipFlop2;

--architecture
ARCHITECTURE bhv OF D_FlipFlop2 IS
BEGIN
	process(d,clk,clr,set)
	begin
		if clr = '1' then
			q <= '0';
		elsif set = '1' then
			q <= '1';
		elsif rising_edge(clk) then
			q <= d;
		end if;
	end process;
END ARCHITECTURE bhv;