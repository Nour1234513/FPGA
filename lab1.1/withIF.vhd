library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
entity withIF is 
port(
	sw : in std_logic_vector(7 downto 0);
	LEDR1 : out std_logic);
end entity withIF;
architecture rtl of withIF is
begin
	p_output : process(sw(7 downto 0))
	begin 
		if sw(0) = '1' and sw(1) = '0' and sw(2) = '0' and sw(3) = '0' and sw(4) = '0' and sw(5) = '0' and sw(6) = '0' and sw(7) = '0' then
		LEDR1 <= '1';
		elsif sw(0) = '1' and sw(1) = '1' and sw(2) = '0' and sw(3) = '0' and sw(4) = '0' and sw(5) = '0' and sw(6) = '0' and sw(7) = '0' then
		LEDR1 <= '1';
		elsif sw(0) = '1' and sw(1) = '1' and sw(2) = '1' and sw(3) = '0' and sw(4) = '0' and sw(5) = '0' and sw(6) = '0' and sw(7) = '0' then
		LEDR1 <= '1';
		elsif sw(0) = '0' and sw(1) = '1' and sw(2) = '1' and sw(3) = '1' and sw(4) = '0' and sw(5) = '0' and sw(6) = '0' and sw(7) = '0' then
		LEDR1 <= '1';
		elsif sw(0) = '0' and sw(1) = '0' and sw(2) = '1' and sw(3) = '1' and sw(4) = '1' and sw(5) = '0' and sw(6) = '0' and sw(7) = '0' then
		LEDR1 <= '1';
		elsif sw(0) = '0' and sw(1) = '0' and sw(2) = '0' and sw(3) = '1' and sw(4) = '1' and sw(5) = '1' and sw(6) = '0' and sw(7) = '0' then
		LEDR1 <= '1';
		elsif sw(0) = '0' and sw(1) = '0' and sw(2) = '0' and sw(3) = '0' and sw(4) = '1' and sw(5) = '1' and sw(6) = '1' and sw(7) = '0' then
		LEDR1 <= '1';
		elsif sw(0) = '0' and sw(1) = '0' and sw(2) = '0' and sw(3) = '0' and sw(4) = '0' and sw(5) = '1' and sw(6) = '1' and sw(7) = '1' then
		LEDR1 <= '1';
		else 
		LEDR1 <= '0';
		end if; 
	end process p_output;
end architecture rtl;