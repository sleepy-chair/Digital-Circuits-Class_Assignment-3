--library and package
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

--entity (input&output)
ENTITY JK_FlipFlop IS
	PORT (
		j,k,clk		:IN  std_logic;                    
		q			:OUT std_logic
	);
END JK_FlipFlop;

--architecture
ARCHITECTURE bhv OF JK_FlipFlop IS
	Signal q_internal : std_logic := '0';
BEGIN
	q <= q_internal;
	process(j,k,clk)
	begin
		if rising_edge(clk) then
			if (j='0' and k='1') then
				q_internal <= '0';
			elsif (j='1' and k='0') then
				q_internal <= '1';
			elsif (j='1' and k='1') then
				q_internal <= not q_internal;
			end if;
		end if;
	end process;
END ARCHITECTURE bhv;
