--=================================================================
--
-- Testbench Top
--
-- Testbench for Pattern Gen 3 input Exam Question
--
--    2023-08-01  Kent Abrahamsson
--                   First revision.
--
----=================================================================
library ieee;
   use ieee.std_logic_1164.all;
   use ieee.numeric_std.all;
   use ieee.math_real.all;

library work;

library std;
   use std.textio.all;

entity testbench_top is

end entity testbench_top;

architecture bhv of testbench_top is

   -- Type and constant declarations
   constant c_test_timeout_cycles               : integer   := 200;-- well enough for hold test
   constant c_test_cases                        : integer   := 5;
   constant c_out_a_p_a                         : std_logic_vector(6 downto 0)   := "0101010";
   constant c_out_b_p_a                         : std_logic_vector(6 downto 0)   := "0101000";
   constant c_out_c_p_a                         : std_logic_vector(6 downto 0)   := "0100100";
   constant c_out_d_p_a                         : std_logic_vector(6 downto 0)   := "0101100";

   constant c_out_a_p_b                         : std_logic_vector(6 downto 0)   := "0111110";
   constant c_out_b_p_b                         : std_logic_vector(6 downto 0)   := "0101010";
   constant c_out_c_p_b                         : std_logic_vector(6 downto 0)   := "0101100";
   constant c_out_d_p_b                         : std_logic_vector(6 downto 0)   := "0110110";

   constant c_out_a_p_c                         : std_logic_vector(6 downto 0)   := "0000010";
   constant c_out_b_p_c                         : std_logic_vector(6 downto 0)   := "0100000";
   constant c_out_c_p_c                         : std_logic_vector(6 downto 0)   := "0011000";
   constant c_out_d_p_c                         : std_logic_vector(6 downto 0)   := "0010100";

   constant c_pattern_type_a                    : integer := 0;
   constant c_pattern_type_b                    : integer := 1;
   constant c_pattern_type_c                    : integer := 2;
   constant c_pattern_type_double               : integer := 3;
   constant c_pattern_type_hold                 : integer := 4;

   type t_pattern_req_state is ( s_idle,
                                 s_pattern_req,
                                 s_double_req,
                                 s_hold_high);
   constant c_pattern_req_length_max            : integer := 3;

   -- Clock and reset generation
   signal clk                          : std_logic := '0';
   signal reset_n                      : std_logic := '0';
   signal tb_reset                     : std_logic := '1';
   signal kill_clock                   : std_logic := '0';

   -- Signals for p_pattern_request

   signal pattern_req_length           : integer;
   signal pattern_req_state            : t_pattern_req_state;
   signal busy_r                       : std_logic;
   signal check_busy_timing            : std_logic;
   signal check_busy_timing_r          : std_logic;
   signal busy_timing_error            : std_logic;
   signal busy_timing_error_cnt        : integer   := 0;

   -- Signals for main test process
   signal test_case                    : integer;
   signal test_errors                  : integer;
   signal req_pattern_type             : integer;
   signal req_pattern                  : std_logic;
   signal hold_req_cnt                 : integer;

   -- signals for receive timeout process
   signal test_timeout_en              : std_logic;
   signal test_timeout_count           : integer range (0 to c_test_timeout_cycles);
   signal test_timeout                 : std_logic;
   signal test_timeout_silent          : std_logic;

   -- Signals for DUT
   signal pattern_a                    : std_logic;
   signal pattern_b                    : std_logic;
   signal pattern_c                    : std_logic;
   signal busy                         : std_logic;
   signal out_a                        : std_logic;
   signal out_b                        : std_logic;
   signal out_c                        : std_logic;
   signal out_d                        : std_logic;

   -- Signals for pattern check process
   signal out_a_shreg                  : std_logic_vector(6 downto 0)   := (others => '0');
   signal out_b_shreg                  : std_logic_vector(6 downto 0)   := (others => '0');
   signal out_c_shreg                  : std_logic_vector(6 downto 0)   := (others => '0');
   signal out_d_shreg                  : std_logic_vector(6 downto 0)   := (others => '0');
   signal out_shreg_comb               : std_logic_vector(6 downto 0)   := (others => '0');
   signal pattern_a_ok                 : std_logic;
   signal pattern_b_ok                 : std_logic;
   signal pattern_c_ok                 : std_logic;
   signal unknown_pattern              : std_logic;

   procedure pr_write(v_input_str : in string) is
      variable v_line : line;
   begin
      write(v_line,v_input_str);
      writeline(OUTPUT, v_line);
   end function pr_write;

begin -- architecture

   p_clk_gen : process
   begin
      clk          <= '0';
      wait for 100 ns;
      clk          <= '1';
      wait for 5 ns;
      clk          <= '0';
      wait for 30 ns;
      clk          <= '1';
      wait for 20 ns;
      clk          <= '0';
      wait for 5 ns;
      clk          <= '1';
      wait for 5 ns;
      while ( kill_clock = '0' ) loop
         clk          <= not clk;
         wait for 5 ns;
      end loop;
      -- wait forever;
      wait;
   end process p_clk_gen;

   p_reset_gen : process
      variable v_reset_cnt    : integer := 50;
   begin
      -- Set reset active
      reset_n           <= '0';
      tb_reset          <= '1';
      while v_reset_cnt > 0 loop
         v_reset_cnt    := v_reset_cnt - 1;
         wait until clk = '1';
      end loop;
      wait until clk = '1';
      -- Set reset inactive
      reset_n           <= '1';
      wait for 100 ns;
      wait until clk = '1';
      tb_reset          <= '0';
      wait; -- wait forever
   end process p_reset_gen;

   p_pattern_request : process(clk)
      variable v_seed1  : integer   := 995;
      variable v_seed2  : integer   := 4999;
      impure function fn_rand_int(
         min_val  : integer;
         max_val  : integer) return integer is
            variable v_real : real;
      begin
         uniform(v_seed1,v_seed2,v_real);
         return integer(round(v_real * real(max_val - min_val + 1) + real(min_val) - 0.5));
      end function fn_rand_int;
      variable v_random_int : integer;

   begin
      if rising_edge(clk)

         busy_r               <= busy;
         check_busy_timing    <= '0';
         check_busy_timing_r  <= check_busy_timing;
         if check_busy_timing = '1' and check_busy_timing_r = '0' then
            if busy /= '1' or busy_r /= '0' then
               pr_write(" > ERROR !!! busy timing detected to be not as specified.");
               busy_timing_error    <= '1';
               busy_timing_error_cnt   <= busy_timing_error_cnt + 1;
            end if;
         end if;


         case pattern_req_state is
            when s_idle =>
            pattern_a            <= '0';
            pattern_b            <= '0';
            pattern_c            <= '0';
            pattern_req_length   <= fn_rand_int(0,c_pattern_req_length_max);

               if req_pattern = '1' and busy = '0' then
                  busy_timing_error    <= '0';
                  if req_pattern_type = c_pattern_type_a then
                     pattern_a            <= '1';
                     pattern_req_state    <= s_pattern_req;
                  elsif req_pattern_type = c_pattern_type_b then
                     pattern_b            <= '1';
                     pattern_req_state    <= s_pattern_req;
                  elsif req_pattern_type = c_pattern_type_c then
                     pattern_c            <= '1';
                     pattern_req_state    <= s_pattern_req;
                  elsif req_pattern_type = c_pattern_type_double then
                     pattern_a            <= '1';
                     pattern_c            <= '1';
                     pattern_req_state    <= s_double_req;
                  elsif req_pattern_type = c_pattern_type_hold then
                     pattern_b            <= '1';
                     v_random_int         := fn_rand_int(4,10);
                     pr_write(" Holding pattern_b input high to generate " & integer'image(v_random_int) & " sets of b patterns...");
                     pattern_req_length   <= v_random_int;
                     pattern_req_state    <= s_hold_high;
                  end if;
               end if;

            when s_pattern_req =>

               check_busy_timing    <= '1';
               if pattern_req_length > 0 then
                  pattern_req_length   <= pattern_req_length - 1;
               else
                  pattern_a            <= '0';
                  pattern_b            <= '0';
                  pattern_c            <= '0';
                  pattern_req_state    <= s_idle;
               end if;

            when s_double_req =>

               if pattern_req_length > 0 then
                  pattern_req_length   <= pattern_req_length - 1;
               else
                  pattern_a            <= '0';
                  pattern_b            <= '0';
                  pattern_c            <= '0';
                  pattern_req_state    <= s_idle;
               end if;

            when s_hold_high =>
               if busy = '1' and busy_r = '0' then
                  -- busy rises
                  pattern_req_length   <= pattern_req_length - 1;
               elsif pattern_req_length = 0 then
                  pattern_a            <= '0';
                  pattern_b            <= '0';
                  pattern_c            <= '0';
                  pattern_req_state    <= s_idle;
               end if;

         end case;

         if tb_reset = '1' then
            busy_timing_error    <= '0';
         end if;
      end if;
   end process;

   p_pattern_check :process(clk)
   begin
      if rising_edge(clk) then
         pattern_a_ok      <= '0';
         pattern_b_ok      <= '0';
         pattern_c_ok      <= '0';
         unknown_pattern   <= '0';
         if out_a = '0' or out_a = '1' then
            out_a_shreg       <= out_a_shreg(out_a_shreg'high-1 downto 0) & out_a;
         end if;
         if out_b = '0' or out_b = '1' then
            out_b_shreg       <= out_b_shreg(out_b_shreg'high-1 downto 0) & out_b;
         end if;
         if out_c = '0' or out_c = '1' then
            out_c_shreg       <= out_c_shreg(out_c_shreg'high-1 downto 0) & out_c;
         end if;
         if out_d = '0' or out_d = '1' then
            out_d_shreg       <= out_d_shreg(out_d_shreg'high-1 downto 0) & out_d;
         end if;
         if out_shreg_comb(6 downto 5) = "01" then
            if out_a_shreg = c_out_a_p_a and out_b_shreg = c_out_b_p_a and out_c_shreg = c_out_c_p_a and out_d_shreg = c_out_d_p_a then
               pr_write(" > Pattern a was detected...");
               out_a_shreg(6 downto 1) <= (others => '0');
               out_b_shreg(6 downto 1) <= (others => '0');
               out_c_shreg(6 downto 1) <= (others => '0');
               out_d_shreg(6 downto 1) <= (others => '0');
               pattern_a_ok            <= '1';
            elsif out_a_shreg = c_out_a_p_b and out_b_shreg = c_out_b_p_b and out_c_shreg = c_out_c_p_b and out_d_shreg = c_out_d_p_b then
               pr_write(" > Pattern b was detected...");
               out_a_shreg(6 downto 1) <= (others => '0');
               out_b_shreg(6 downto 1) <= (others => '0');
               out_c_shreg(6 downto 1) <= (others => '0');
               out_d_shreg(6 downto 1) <= (others => '0');
               pattern_b_ok            <= '1';
            elsif out_a_shreg = c_out_a_p_c and out_b_shreg = c_out_b_p_c and out_c_shreg = c_out_c_p_c and out_d_shreg = c_out_d_p_c then
               pr_write(" > Pattern c was detected...");
               out_a_shreg(6 downto 1) <= (others => '0');
               out_b_shreg(6 downto 1) <= (others => '0');
               out_c_shreg(6 downto 1) <= (others => '0');
               out_d_shreg(6 downto 1) <= (others => '0');
               pattern_c_ok            <= '1';
            else
               pr_write(" > ERROR! Unknown pattern was detected!");
               unknown_pattern         <= '1';
            end if;
         end if;
      end if;
   end process p_pattern_check;

   out_shreg_comb <= out_a_shreg or out_b_shreg or out_c_shreg or out_d_shreg;

   -- Main test process
   p_main_test : process
      variable v_init_wait_ns    ; integer := 200;
   begin
      -- Set startup values
      kill_clock              <= '0';
      test_timeout_en         <= '0';
      test_timeout_silent     <= '0';
      test_case               <= 1;
      test_errors             <= 0;
      req_pattern             <= '0';
      req_pattern_type        <= c_pattern_type_a;
      pr_write("Simulation starts");
      wait for 1 ns;
      -- wait until reset is released
      wait until tb_reset = '0';
      pr_write("Testbench Reset is released!");
      pr_write("Starting DUT tests.");
      pr_write(" ");

      --===========================================================================
      -- Test DUT here (suggestion) or by using other test method
      --===========================================================================

      while test_case <= c_test_cases loop

         case test_case is
            when 1 =>
               -- Request pattern a
               pr_write("Test case no: " & integer'image(test_case));
               pr_write(" > Request pattern a ");
               req_pattern_type        <= c_pattern_type_a;
               req_pattern             <= '1';
               wait until pattern_req_state /= s_idle;
               req_pattern             <= '0';

               -- Enable timeout counter
               test_timeout_en         <= '1';
               wait until  test_timeout = '1' or
                           pattern_a_ok = '1' or
                           pattern_b_ok = '1' or
                           pattern_c_ok = '1' or
                           unknown_pattern = '1';
               if pattern_a_ok = '1' then
                  pr_write(" > Pattern a was received as expected!!!");
               else
                  pr_write("   ERROR: Pattern a was not received as expected!!!");
                  test_errors             <= test_errors + 1;
               end if;
               wait for 1 ps;
               if busy_timing_error = '1' then
                  pr_write("   ERROR: busy signal timing appears NOK! Check waveform!");
                  test_errors             <= test_errors + 1;
               end if;

               when 2 =>
               -- request pattern b
               pr_write("Test case no: " & integer'image(test_case));
               pr_write(" > Request pattern b");

               req_pattern_type        <= c_pattern_type_b;
               req_pattern             <= '1';
               wait until pattern_req_state /= s_idle;
               req_pattern             <= '0';

               -- Enable timeout counter
               test_timeout_en         <= '1';
               wait until  test_timeout = '1' or
                           pattern_a_ok = '1' or
                           pattern_b_ok = '1' or
                           pattern_c_ok = '1' or
                           unknown_pattern = '1';
               if pattern_b_ok = '1' then
                  pr_write(" > Pattern b was received as expected!!!");
               else
                  pr_write("   ERROR: Pattern b was not received as expected!!!");
                  test_errors             <= test_errors + 1;
               end if;
               wait for 1 ps;
               if busy_timing_error = '1' then
                  pr_write("   ERROR: busy signal timing appears NOK! Check waveform!");
                  test_errors             <= test_errors + 1;
               end if;

            when 3 =>
               -- request pattern b
               pr_write("Test case no: " & integer'image(test_case));
               pr_write(" > Request pattern c");

               req_pattern_type        <= c_pattern_type_c;
               req_pattern             <= '1';
               wait until pattern_req_state /= s_idle;
               req_pattern             <= '0';

               -- Enable timeout counter
               test_timeout_en         <= '1';
               wait until  test_timeout = '1' or
                           pattern_a_ok = '1' or
                           pattern_b_ok = '1' or
                           pattern_c_ok = '1' or
                           unknown_pattern = '1';
               if pattern_c_ok = '1' then
                  pr_write(" > Pattern c was received as expected!!!");
               else
                  pr_write("   ERROR: Pattern c was not received as expected!!!");
                  test_errors             <= test_errors + 1;
               end if;
               wait for 1 ps;
               if busy_timing_error = '1' then
                  pr_write("   ERROR: busy signal timing appears NOK! Check waveform!");
                  test_errors             <= test_errors + 1;
               end if;

            when 4 =>
               -- Test double request
               pr_write("Test case no: " & integer'image(test_case));
               pr_write(" > Test double requests ");

               req_pattern_type        <= c_pattern_type_double;
               req_pattern             <= '1';
               wait until pattern_req_state /= s_idle;
               req_pattern             <= '0';

               -- Data send is started, enable timeout counter
               test_timeout_en         <= '1';
               wait until  test_timeout = '1' or
                           pattern_a_ok = '1' or
                           pattern_b_ok = '1' or
                           pattern_c_ok = '1' or
                           unknown_pattern = '1';
               if test_timeout = '1' then
                  pr_write(" > Test timed out as expected !!!");
               else
                  pr_write("   ERROR: Got unexpected data!");
                  test_errors             <= test_errors + 1;
               end if;

            when 5 =>
               -- Test hold
               test_timeout_silent     <= '1';  -- silent timeout
               pr_write("Test case no: " & integer'image(test_case));
               pr_write(" > Test pattern request hold ");

               req_pattern_type        <= c_pattern_type_hold;
               req_pattern             <= '1';
               wait until pattern_req_state /= s_idle;
               -- store the number of pattern requests that shall be made
               hold_req_cnt            <= pattern_req_length;
               req_pattern             <= '0';

               -- Data send is started, enable timeout counter
               test_timeout_en         <= '1';

               while test_timeout = '0' loop
                  -- wait for clock signal
                  wait until clk = '1';
                  if pattern_b_ok = '1' then
                     hold_req_cnt      <= hold_req_cnt - 1;
                  end if;
                  if pattern_a_ok = '1' or pattern_c_ok = '1' or unknown_pattern = '1' then
                     pr_write("   ERROR: Got unexpected data!");
                     test_errors             <= test_errors + 1;
                  end if;
               end loop;

               pr_write(" > Test finished!!!");
               if hold_req_cnt /= 0 then
                  pr_write("   ERROR: Got more/less pattern b than requested!");
                  test_errors             <= test_errors + 1;
               end if;

            when others =>
               pr_write("   TESTBENCH ERROR: Unknown test case!");
               test_errors             <= test_errors + 1;

         end case;

         pr_write(" ");
         test_timeout_en         <= '0';
         wait for 100 ns;
         test_case               <= test_case + 1;
         wait for 100 ns;
         wait until clk = '1';

      end loop;

      wait for 1 us;
      pr_write("Simulation ends... with " & integer'image(test_errors) & " errors.");

      -- Kill clock and wait forever.
      kill_clock           <= '1';
      wait;
   end process p_main_test;

   -- Instantiate DUT
   i_dut_pattern_gen_3_input : entity work.pattern_gen_3_input
   port map(
      clk                     => clk,
      reset_n                 => reset_n,
      -- Control interface
      pattern_a               => pattern_a,
      pattern_b               => pattern_b,
      pattern_c               => pattern_c,
      busy                    => busy,

      -- Output signals
      out_a                   => out_a,
      out_b                   => out_b,
      out_c                   => out_c,
      out_d                   => out_d);

   p_test_timeout : process(clk)
   begin
      if rising_edge(clk) then
         test_timeout               <= '0';
         if test_timeout_en = "1" then
            -- decrement timeout counter if timeout is enabled
            if test_timeout_count > 0 then
               test_timeout_count         <= test_timeout_count - 1;
            else
               -- zero reached set timeout
               test_timeout               <= '1';
               if test_timeout = '0' then
                  if test_timeout_silent = '0' then
                     pr_write(" > Test timeout !");
                  end if;
               end if;
            end if;
         else
            test_timeout_count         <= c_test_timeout_cycles;
         end if;
      end if;
   end process p_test_timeout;

end architecture bhv;