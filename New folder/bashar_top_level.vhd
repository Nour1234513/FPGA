library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;
	
entity bashar_top_level is

port (
		
	packet_data : in std_logic_vector(7 downto 0);
	packet_sop : in std_logic;
	packet_eop : in std_logic;
	
	packet_data_1 : out std_logic_vector(7 downto 0);
	packet_sop_1 : out std_logic;
	packet_eop_1 : out std_logic;
	
	packet_data_2 : out std_logic_vector(7 downto 0);
	packet_sop_2 : out std_logic;
	packet_eop_2 : out std_logic;
	
	clk : in std_logic;
	reset : in std_logic
	
);
	
end entity bashar_top_level;

architecture rtl of bashar_top_level is
		
		signal read_direction : std_logic_vector(7 downto 0);
		signal start_sending : std_logic;
		
begin

	p_main : process (clk, reset)
	begin 
		if rising_edge (clk) then
		
			packet_sop_1 <= '0';
			packet_sop_2 <= '0';
			
			if packet_sop = '1' then 
				read_direction 		<= packet_data;
				start_sending <= '1';
			end if ;
			
			if read_direction(0) = '1' and read_direction(1) = '0' then 
			---------------------------------------------	
				packet_data_1 <= packet_data;
				packet_eop_1 <= packet_eop;
				if start_sending = '1' then 
					packet_sop_1 <= '1' ;
					start_sending <= '0';
				end if;
			 
			elsif read_direction(1) = '1' and read_direction(0) = '0' then 
			-------------------------------------------
				packet_data_2 <= packet_data;
				packet_eop_2 <= packet_eop;
				if start_sending = '1' then 
						packet_sop_2 <= '1';
						start_sending <= '0';
				end if;
			end if ;
		end if;
		if reset = '1' then 
			read_direction <= (others => '0');
			start_sending <= '0';
		end if;
	end process p_main;
end architecture rtl;













