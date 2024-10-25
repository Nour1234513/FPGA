library ieee; 
	use ieee.std_logic_1164.all;
	
entity  tenta2020_top_level is 
port (
	in_a 	: in std_logic;
	in_b 	: in std_logic;
	
	clk	: in std_logic;
	reset_n : in std_logic;
	
	input_v2 	: in std_logic_vector (15 downto 0 );
	input_v1 	: in std_logic_vector (15 downto 0 );
	
	input_valid : in std_logic;
	out_q 		: out std_logic;
	input_values_not_equal 	: out std_logic;
	input_values_equal 	: out std_logic

);
end entity tenta2020_top_level ;
architecture rtl of tenta2020_top_level is 
	signal in_b_r : std_logic;
	signal in_b_2r : std_logic;
	--signal out_q : std_logic;
	
	
begin 
	p_main : process(clk , reset_n)
	begin 
		if rising_edge(clk) then 
			-------------------------
			in_b_r <= in_b;
			in_b_2r <= in_b_r;
			-------------------------
			out_q <= in_b_2r and in_a;
			
			if input_valid = '1' then 
				if input_v2 = input_v1 then
					input_values_not_equal <= '0'; 
					input_values_equal <= '1'; 
				else 
					input_values_not_equal <= '1'; 
					input_values_equal <= '0';
				end if;
			else 
					input_values_not_equal <= '0'; 
					input_values_equal <= '0';
			end if;
		end if ;
		if reset_n = '0' then 
			out_q <= '0';
		end if ;
	end process p_main;
end architecture rtl;