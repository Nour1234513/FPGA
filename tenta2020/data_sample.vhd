library ieee;
	use ieee.std_logic_1164.all;

entity data_sample is 
port (
	do_sample 				: in std_logic;
	data 						: in std_logic;
	clk 						: in std_logic;
	reset_n 					: in std_logic;
	
	busy 						: out std_logic;
	sampled_data 			: out std_logic;
	sampled_data_valid 	: out std_logic
);

end entity data_sample;

architecture rtl of data_sample is 
	signal start_counting : boolean ;
	signal counter_done		: boolean;
	signal in_busy : std_logic;
begin 
	p_main : process(clk,reset_n)
	variable counter 		: natural range 0 to 8 ;
	begin 
		
		
		--------------------------
		if rising_edge(clk) then 
			-------------------
			sampled_data_valid <= '0' ;
			
			if do_sample = '1' and start_counting = false then 
				start_counting <= true;
				counter_done <= false;
				busy <= '1';
			end if ;
			---------------------- start count 8 bit
			if start_counting = true then 
				counter := counter +1 ;
				if counter = 7 then 
					start_counting <= false;
					counter_done <= true;

				end if ;
			end if ;
			if counter_done = true then 
				sampled_data_valid <= '1' ;
				sampled_data <= data;
				busy <= '0';
				counter_done <= false;
			end if ;
		end if ;
		-------------------- RISing_edge
		if reset_n = '0' then 
			busy <= '0' ;
			start_counting <= false;
			sampled_data <= '0';
		end if ;
		-------------------- reset_n
	end process p_main;
end architecture rtl;
