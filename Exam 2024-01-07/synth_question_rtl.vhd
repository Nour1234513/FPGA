library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;

entity synth_question is
   port (
      clk               : in std_logic;
      reset_n           : in std_logic;
		
		vector_b 			: in std_logic_vector(3 downto 0);
		vector_a 			: in std_logic_vector(3 downto 0);
		
		in_a 					: in std_logic;
		in_d 					: in std_logic;
		in_e 					: in std_logic;
		in_b 					: in std_logic;
		in_c 					: in std_logic;
		
		logic_out 			: out std_logic;
		d_n 					: out std_logic;
		c_r					: out std_logic;
		a_larger_than_b	: out std_logic
		
);
end entity synth_question;
architecture rtl of synth_question is
	signal a_larger_than_b_int				: std_logic;
	signal in_a_r								: std_logic;
	signal in_a_2r 							: std_logic;
	
begin 
	p_main : process(clk, reset_n)
	begin 
		d_n <= not(in_d and in_e);
		
		if rising_edge(clk) then
		--------------------------
			in_a_r 							<= in_a;
			in_a_2r 							<= in_a_r;
			
			c_r 								<= in_c;
			
		---------------------------
			if vector_b < vector_a then 
				a_larger_than_b_int 		<= '1';
			else 
				a_larger_than_b_int 		<= '0';
			end if ;
			logic_out 						<= (a_larger_than_b_int and in_a_2r and (not in_b) );
			
			a_larger_than_b 				<= a_larger_than_b_int;
		end if;
		if reset_n = '0' then 
			a_larger_than_b 				<= '0';
		end if;
	end process p_main;
end architecture rtl;