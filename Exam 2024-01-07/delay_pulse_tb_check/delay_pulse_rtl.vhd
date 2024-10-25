library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;

entity delay_pulse is
   port(
      -- Clocks and reset
      clk                  : in  std_logic;
      reset_n              : in  std_logic;

      -- Control Interface
      delay_cycles         : in  std_logic_vector(9 downto 0);
      do_pulse             : in  std_logic;
      busy                 : out std_logic;

      -- Output
      pulse_out            : out std_logic);
end entity delay_pulse;

architecture rtl of delay_pulse is

--===================================================================
-- Type and constant declarations
--===================================================================
   type t_delay_state is ( s_idle,
                           s_delay_and_output);
   constant c_zeroed_delay          : unsigned(delay_cycles'range)   := (others => '0');
   constant c_delay_one_clk         : unsigned(delay_cycles'range)   := to_unsigned(1,delay_cycles'length);
   constant c_delay_two_clk         : unsigned(delay_cycles'range)   := to_unsigned(2,delay_cycles'length);

--===================================================================
-- Functions and procedures
--===================================================================

--===================================================================
-- Signal declarations
--===================================================================

   signal delay_state            : t_delay_state;
   signal delay_cnt              : unsigned(delay_cycles'range);
   signal pulse_out_int          : std_logic;

begin

   pulse_out      <= do_pulse when unsigned(delay_cycles) = c_zeroed_delay else
                     pulse_out_int;

   p_delay_pulse : process(clk, reset_n)
   begin
		if rising_edge(clk) then
         -- Default assignments
         pulse_out_int        <= '0';
         busy                 <= '0';

         case delay_state is
            when s_idle =>
               if do_pulse = '1' and unsigned(delay_cycles) > c_delay_one_clk then
                  busy                 <= do_pulse;
                  delay_state          <= s_delay_and_output;
               end if;
               if unsigned(delay_cycles) = c_delay_one_clk then
                  busy                 <= do_pulse;
                  pulse_out_int        <= do_pulse;
               end if;
               delay_cnt            <= unsigned(delay_cycles);

            when s_delay_and_output =>
               busy                 <= '1';
               if delay_cnt > c_delay_two_clk then
                  delay_cnt            <= delay_cnt - 1;
               else
                  -- Delay counter is less than or equal to 1, output pulse and jump back to idle state
                  pulse_out_int        <= '1';
                  delay_state          <= s_idle;
               end if;
         end case;
      end if;

      if reset_n = '0' then   -- Asyncronous reset
         delay_state          <= s_idle;
      end if;

   end process p_delay_pulse;

end rtl;