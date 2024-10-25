library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;

library work;

entity pattern_gen_top is
   port(
      clk                     : in  std_logic;
      reset_n                 : in  std_logic;   -- active low reset
      -- Continue below...
      fpga_rx                 : in  std_logic;

      -- Output signals
      out_a                   : out std_logic;
      out_b                   : out std_logic;
      out_c                   : out std_logic);
end entity pattern_gen_top;

architecture str of pattern_gen_top is

    -- SYNTAX HELP:
   -- convert from integer to 4 bit std_logic_vector:
   -- signal example_integer        : integer range 0 to 15;
   -- signal example_4_bit_vector   : std_logic_vector(3 downto 0);
   -- ...
   -- example_4_bit_vector    <= std_logic_vector(to_unsigned(example_integer,example_4_bit_vector'length));

   -- Convert to integer from 4 bit vector:
   -- example_integer         <= to_integer(unsigned(example_4_bit_vector));

begin

   i_serial_uart : entity work.serial_uart
      generic map(
         g_reset_active_state    => ,
         g_serial_speed_bps      => ,
         g_clk_period_ns         => ,
         g_parity                => )  -- 0 = no, 1 = odd, 2 = even
      port map(
         clk                     => ,
         reset                   => ,
         rx                      => ,
         tx                      => ,

         received_data           => ,  -- Received data
         received_data_valid     => ,  -- Set high one clock cycle when byte is received.
         received_error          => ,  -- Stop bit was not high
         received_parity_error   => ,  -- Parity error detected

         transmit_ready          => ,
         transmit_data_valid     => ,
         transmit_data           => ); -- Byte to transmit


end architecture;