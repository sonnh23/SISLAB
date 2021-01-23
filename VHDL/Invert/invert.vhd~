library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity invert is
  port(
  input: in std_logic_vector(63 downto 0);
  output: out std_logic_vector(63 downto 0)
);
end invert;
architecture model of invert is
  type input_array is array (integer range <>) of unsigned(7 downto 0);
  signal tmp_out : input_array(0 to 7);
  signal tmp_in  : input_array(0 to 7);
begin
  tmp_in(0) <= unsigned(input(63 downto 56));
  tmp_in(1) <= unsigned(input(55 downto 48));
  tmp_in(2) <= unsigned(input(47 downto 40));
  tmp_in(3) <= unsigned(input(39 downto 32));
  tmp_in(4) <= unsigned(input(31 downto 24));
  tmp_in(5) <= unsigned(input(23 downto 16));
  tmp_in(6) <= unsigned(input(15 downto 8));
  tmp_in(7) <= unsigned(input(7 downto 0));
  
  tmp_out(0) <= to_unsigned(255, 8) - unsigned(input(63 downto 56));
  tmp_out(1) <= to_unsigned(255, 8) - unsigned(input(55 downto 48));
  tmp_out(2) <= to_unsigned(255, 8) - unsigned(input(47 downto 40));
  tmp_out(3) <= to_unsigned(255, 8) - unsigned(input(39 downto 32));
  tmp_out(4) <= to_unsigned(255, 8) - unsigned(input(31 downto 24));
  tmp_out(5) <= to_unsigned(255, 8) - unsigned(input(23 downto 16));
  tmp_out(6) <= to_unsigned(255, 8) - unsigned(input(15 downto 8));
  tmp_out(7) <= to_unsigned(255, 8) - unsigned(input(7 downto 0));

  output(63 downto 56) <= std_logic_vector(tmp_out(0));
  output(55 downto 48) <= std_logic_vector(tmp_out(1));
  output(47 downto 40) <= std_logic_vector(tmp_out(2));
  output(39 downto 32) <= std_logic_vector(tmp_out(3));
  output(31 downto 24) <= std_logic_vector(tmp_out(4));
  output(23 downto 16) <= std_logic_vector(tmp_out(5));
  output(15 downto 8) <= std_logic_vector(tmp_out(6));
  output(7 downto 0) <= std_logic_vector(tmp_out(7));
end model;
 
 
