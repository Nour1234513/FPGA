library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
entity withandOrNot is 
port(
	sw : in std_logic_vector(7 downto 0);
	ledr0 : out std_logic
);
end entity withandOrNot;
architecture rtl of withandOrNot is
begin
ledr0 <= 
	(sw(0) and not sw(1) and not sw(2) and not sw(3) and not sw(4) and not sw(5) and not sw(6) and not sw(7)) 
	or (sw(0) and sw(1) and not sw(2) and not sw(3) and not sw(4) and not sw(5) and not sw(6) and not sw(7)) 
	or (sw(0) and sw(1) and sw(2) and not sw(3) and not sw(4) and not sw(5) and not sw(6) and not sw(7))
	or (not sw(0) and sw(1) and sw(2) and sw(3) and not sw(4) and not sw(5) and not sw(6) and not sw(7))
	or (not sw(0) and not sw(1) and sw(2) and sw(3) and sw(4) and not sw(5) and not sw(6) and not sw(7))
	or (not sw(0) and not sw(1) and not sw(2) and sw(3) and sw(4) and sw(5) and not sw(6) and not sw(7))
	or (not sw(0) and not sw(1) and not sw(2) and not sw(3) and sw(4) and sw(5) and sw(6) and not sw(7))
	or	(not sw(0) and not sw(1) and not sw(2) and not sw(3) and not sw(4) and sw(5) and sw(6) and sw(7));
end architecture rtl;