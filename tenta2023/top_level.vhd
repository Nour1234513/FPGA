library ieee;
	use ieee.std_logic_1164.all; 
	use ieee.numeric_std.all;
	
entity top_level is 
port (

	sw : in std_logic_vector (2 downto 0);
	key_n : in std_logic_vector (1 downto 0);
	clock_50 : in std_logic;
	vector_a : in std_logic_vector (7 downto 0);
	vector_b : in std_logic_vector (7 downto 0);
	data_out : out std_logic_vector (7 downto 0);
	toggel_out : out std_logic

);
end entity top_level; 

architecture rtl of top_level is 

	signal sel_a : std_logic;
	signal sel_b : std_logic;
	signal sel_aandsel_b : std_logic;
	signal sel_aandsel_b2 : std_logic;
	signal sel_c : std_logic;
	signal toggel_in : std_logic;
	signal clk : std_logic;
	signal reset_n : std_logic;
	signal toggel_en_r : std_logic;
	signal toggel_en_r2 : std_logic;
	signal toggel_out_int : std_logic;
	signal sel_comb : std_logic;
	

begin 
	
	sel_a <= sw(0);
	sel_b <= sw(1);
	sel_c <= sw(2);
	sel_aandsel_b <= (sel_a and sel_b);
	reset_n <= key_n(0);
	toggel_in <= key_n(1);
	clk <= clock_50;
	
	p_main : process (clk,reset_n)
	begin 
		if rising_edge(clk) then 
		
			toggel_en_r <= toggel_in;
			toggel_en_r2 <= toggel_en_r;
			if toggel_en_r2 = '0' then 
				toggel_out_int <= '0';
			else toggel_out_int <= not toggel_out_int;
			end if;
			
			toggel_out <= toggel_out_int;
			sel_aandsel_b2 <= sel_aandsel_b;
			if sel_c = '0' then 
				sel_comb <= sel_aandsel_b2;
			else sel_comb <= '0';
			end if;
			
			if sel_comb <= '0' then 
				data_out <= vector_a;
			else data_out <= vector_b;
			end if;
			
		end if;
		if reset_n = '0' then 
			data_out <= (others => '0');
		end if;
	end process p_main;
end architecture rtl;
	
	