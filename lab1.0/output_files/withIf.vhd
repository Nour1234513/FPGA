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
ledr0 <=  if(sw(0)='1') then '1'
	
end architecture rtl;