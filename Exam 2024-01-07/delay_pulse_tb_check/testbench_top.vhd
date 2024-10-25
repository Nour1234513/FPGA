--=================================================================
--
-- Testbench Top
--
-- Testbench template for the Testbench Exam Question
--
--    2022-07-024  Kent Abrahamsson
--                   First revision.
--
----=================================================================
library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;

library work;

library std;
   use std.textio.all;

entity testbench_top is

end entity testbench_top;

architecture bhv of testbench_top is

   -- Clock and reset generation
   signal clk                          : std_logic := '0';
   signal reset_n                      : std_logic := '0';
   signal kill_clock                   : std_logic := '0';

   -- Signals for DUT
      -- Control Interface
      signal delay_cycles         : std_logic_vector(9 downto 0);
      signal do_pulse             : std_logic;
      signal busy                 : std_logic;
      -- Output
      signal pulse_out            : std_logic;

   procedure pr_write(v_input_str : in string) is
      variable v_line : line;
   begin
      write(v_line,v_input_str);
      writeline(OUTPUT, v_line);
   end procedure pr_write;

begin -- architecture

   p_clk_gen : process
   begin
      clk         <= '0';
      wait for 100 ns;
      clk         <= '1';
      wait for 5 ns;
      clk         <= '0';
      wait for 30 ns;
      clk         <= '1';
      wait for 20 ns;
      clk         <= '0';
      wait for 5 ns;
      clk         <= '1';
      wait for 5 ns;
      while ( kill_clock = '0' ) loop
         clk         <= not clk;
         wait for 5 ns;
      end loop;
      -- wait forever;
      wait;
   end process p_clk_gen;

   p_reset_gen : process
      variable v_reset_cnt    : integer := 50;
   begin
      -- Set reset active
      reset_n     <= '0';
      while v_reset_cnt > 0 loop
         v_reset_cnt    := v_reset_cnt - 1;
         wait until clk = '1';
      end loop;
      wait until clk = '1';
      -- Set reset inactive
      reset_n     <= '1';
      wait; -- wait forever
   end process p_reset_gen;


   p_test_main : process
      variable v_init_wait_ns    : integer := 200;
      variable v_delay_value     : integer := 0;
      variable v_delay_cnt       : integer := 0;
   begin
      -- Set startup values
      kill_clock              <= '0';
      delay_cycles            <= (others => '0');
      do_pulse                <= '0';
      pr_write("Simulation starts");
      -- wait until reset is released
      wait until reset_n = '1';
      pr_write("Reset is released, waiting another " & integer'image(v_init_wait_ns) & " ns...");
      -- Wait for another us
      wait for v_init_wait_ns * 1 ns;
      pr_write("Starting DUT tests.");
      wait until clk = '1';
      v_delay_value     := 0;
      --===========================================================================
      -- Test DUT here (suggestion) or by using other test method
      --===========================================================================
      delay_cycles = std_logic_vector(to_unsigned(v_delay_value,10));

      for loop_cnt in 0 to 2**delay_cycles'length - 1 loop
         wait until clk = '1';
         pr_write("Test delay of " & integer'image(v_delay_value) & " cycles...")

         wait until clk = '1';
      end loop;

      wait for 1 us;
      pr_write("Simulation ends...");

      -- Kill clock and wait forever.
      kill_clock           <= '1';
      wait;
   end process p_test_main;

   -- Instantiate DUT
   i_delay_pulse : entity work.delay_pulse
   port map(
      -- Clocks and reset
      clk                  => clk,
      reset_n              => reset_n,

      -- Control Interface
      delay_cycles         => delay_cycles,
      do_pulse             => do_pulse,
      busy                 => busy,

      -- Output
      pulse_out            => pulse_out);

end architecture bhv;