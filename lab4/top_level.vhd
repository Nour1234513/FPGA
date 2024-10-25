library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;

entity top_level is
	port(
		clock_50 : in std_logic; -- 50 MHz clock
		sw : in std_logic_vector(9 downto 0);
		key_n : in std_logic_vector(3 downto 0);
		ledr : out std_logic_vector(9 downto 0);
		HEX0 : out std_logic_vector (6 downto 0)
);
end entity top_level;

architecture rtl of top_level is
	type t_segg_state is (
	s_waiting
	,s_1
	,s_2
	,s_3
	,s_4
	,s_5
	,s_6
	,s_cheat
	);
	
	constant delay : integer := 5000000;
-- Internal signal declarations
	signal reset_n : std_logic;
	signal button_n : std_logic;
 	signal clk : std_logic;
	signal s_segg : t_segg_state;
	signal nummber : std_logic_vector(6 downto 0);
	signal loob : integer range 1 to 129;
	signal counter : integer range 0 to delay+1;
	signal cheat_n : std_logic ; 
	signal key_n_r : std_logic;
	signal key_n_r2 : std_logic;
	signal cheat_n_r : std_logic;
	signal cheat_n_r2 : std_logic;
	signal reset_n_r : std_logic;
	signal reset_n_r2 : std_logic;

	
	
	
begin
	
	reset_n 			<= key_n(0);
	clk 				<= clock_50;
	ledr(9 downto 1) <= (others => '0');-- USE ONE OF THESE FOR THE TOGGLE LED
	button_n 		<= key_n(1);
	cheat_n 			<= key_n(2);
	p_main : process(clk, reset_n)
	
	begin
	
		-- fill in tick process functionality here
		if rising_edge(clk) then 
		
			-------------------
			
			key_n_r <= button_n;
			key_n_r2 <= key_n_r;
			
			cheat_n_r <= cheat_n;
			cheat_n_r2 <= cheat_n_r;
			
			reset_n_r <= reset_n;
			reset_n_r2 <= reset_n_r;
			
			-----------------
			
			if  key_n_r2 = '0' then
			
			-----------------------
				counter <= counter + 1;
				if counter = delay then
					counter <= 0 ;
					loob <= loob * 2;
					if loob = 64 then 
						loob <= 1;
					end if;
				end if;
				HEX0 <= not ('0' & std_logic_vector(to_unsigned(loob, (HEX0'length-1))));
				
				------------------------ cool effect

				case s_segg is 
					when s_1 => 
						nummber <= "1001111";
						s_segg <= s_2;
					when s_2 => 
						nummber <= "0100100";
						s_segg <= s_3;
					when s_3 => 
						nummber <= "0110000";
						s_segg <= s_4;
					when s_4 => 
						nummber <= "0011001";
						s_segg <= s_5;
					when s_5 => 
						nummber <= "0010010";
						s_segg <= s_6;
					when s_6 => 
						nummber <= "0000010";
						s_segg <= s_1;
					when s_cheat =>
						nummber <= "0000010";
					when others =>
						nummber <= (others => '1');
						s_segg <= s_1;
				end case;
				
				-------------------------------
			
				if cheat_n_r2 = '0' then
					s_segg <= s_cheat;
				end if;
			
				-------------------
				if s_segg = s_cheat then 
					ledr(0) <= '1';
				else ledr(0) <= '0';
				end if ;
				
				-------------------- s_cheat
			else
				HEX0 <= nummber; -- place out the nummber
				s_segg <= s_waiting;
			end if;
			
			----------------------------------
		end if ; -- rising_edge
		
		-----------------------
		if reset_n = '0' then 
			NUMmber <= ( OTHers => '1');
			s_segg <= s_waiting;
			loob <= 1 ;
		end if ;
		-- reset_n
		
		----------------------
	end process p_main;
end architecture rtl;
