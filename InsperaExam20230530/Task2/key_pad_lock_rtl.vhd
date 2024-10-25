library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;

entity key_pad_lock is
	generic(
      g_code_digit_0          : integer range 0 to 9  := 1,
      g_code_digit_1          : integer range 0 to 9  := 2,
      g_code_digit_2          : integer range 0 to 9  := 3,
      g_code_digit_3          : integer range 0 to 9  := 4);
   port(
      clk_100                 : in  std_logic;
      reset                   : in  std_logic;   -- active high reset
      -- Continue below...
      );
end entity key_pad_lock;

architecture rtl of key_pad_lock is

    -- SYNTAX HELP:
   -- convert from integer to 4 bit std_logic_vector:
   -- signal example_integer        : integer range 0 to 15;
   -- signal example_4_bit_vector   : std_logic_vector(3 downto 0);
   -- ...
   -- example_4_bit_vector    <= std_logic_vector(to_unsigned(example_integer,example_4_bit_vector'length));

   -- Convert to integer from 4 bit vector:
   -- example_integer         <= to_integer(unsigned(example_4_bit_vector));
