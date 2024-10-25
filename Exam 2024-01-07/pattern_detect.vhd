library ieee;
	use ieee.std_logic_1164.all;
	
entity pattern_detect is 
port (
	clk 					: in std_logic;
	reset_n 				: in std_logic;
	pattern_input		: in std_logic;
	pattern_detected 	: out std_logic
	);
end entity pattern_detect;

architecture rtl of pattern_detect is 
	constant pattern_count : natural := 8;
	signal pattern_counter : natural range 0 to 8;
	constant pattern : std_logic_vector (0 to 7) := "00010101";
	signal send_pulse_detect: boolean;
	
begin 
	p_main : process(clk,reset_n)
	begin 
		if reset_n = '0' then 
			pattern_counter <= 0;
			send_pulse_detect <= false;
			pattern_detected <= '0';
		elsif rising_edge(clk) then
			pattern_detected <= '0' ;
			if pattern_input = pattern(pattern_counter) then 
				pattern_counter <= pattern_counter +1;
			elsif pattern_input = '0' and pattern_counter = 3 then 
				----- wait
			else 
				pattern_counter <= 0;
			end if;
			if pattern_counter = pattern_count-1 then 
					send_pulse_detect <= true;
					pattern_counter <= 0;
			end if;
			if send_pulse_detect then 
				pattern_detected <= '1';
				send_pulse_detect <= false;
			end if;
		end if;
	end process p_main;
end architecture rtl;