library	ieee;
	use ieee.std_logic_1164.all;
	
entity key_ctrl is 
port (
	clk 					: in std_logic;
	key_n 				: in std_logic_vector(3 downto 0);
	key_on 				: out std_logic;
	key_off 				: out std_logic;
	key_up 				: out std_logic;
	key_down 			: out std_logic
);
end entity key_ctrl;

architecture rtl of key_ctrl is 
	constant counter_ms 		: natural := 50000;
	signal cnt_enabled_t 	: boolean := false;
	signal key_n_r 			: std_logic_vector(key_n'range);
	signal key_n_r2			: std_logic_vector(key_n'range);
	signal counter 			: natural range 0 to counter_ms +1 ;
	--signal cnt_enabled		: std_logic;
	-------------------------------
	impure function	find_low_input(
		inputs : std_logic_vector(key_n'range)
	) return boolean is
	begin 
		if inputs = "1111" then 
			return false;
		else return true;
		end if;
	end function find_low_input;
	
	-------------------------- trying to implement function
begin 
	p_doubleR : process(clk)
	begin 
		if rising_edge(clk) then 
			key_n_r <= key_n;
			key_n_r2 <= key_n_r;
		end if;
	end process p_doubleR;	
	
	p_main : process (clk)
	begin
	----------------------
	
	----------------------- set defualt värde till 0	
		if rising_edge(clk) then 
			--------------------------------
				key_off 		<= '0';
				key_on 		<= '0';
				key_up 		<= '0';
				key_down 	<= '0';
			--------------------------------
			if find_low_input(key_n_r2)  then
				counter <= counter +1 ;
				if not cnt_enabled_t  then 
					key_off 		<= (not key_n_r2(0));
					key_on 		<= (not key_n_r2(1));
					key_up 		<= (not key_n_r2(2));
					key_down 	<= (not key_n_r2(3));
					counter <= 0;
					cnt_enabled_t <= true;
				end if;
				if counter = counter_ms then
					key_off 		<= (not key_n_r2(0));
					key_on 		<= (not key_n_r2(1));
					key_up 		<= (not key_n_r2(2));
					key_down 	<= (not key_n_r2(3));
					counter <= 0 ;
				end if;
				else cnt_enabled_t <= false;
					
			end if;
			---------------------------- check for signal
			
		end if;
		
	end process p_main;
end architecture rtl;