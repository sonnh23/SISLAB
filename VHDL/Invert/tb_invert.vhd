-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 2.11.2020 10:01:59 UTC

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_invert is
end tb_invert;

architecture tb of tb_invert is

    component invert
        port (input  : in std_logic_vector (63 downto 0);
              output : out std_logic_vector (63 downto 0));
    end component;

    signal input  : std_logic_vector (63 downto 0);
    signal output : std_logic_vector (63 downto 0);

begin

    dut : invert
    port map (input  => input,
              output => output);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        input <= std_logic_vector(to_unsigned(0, 64));
 	input(55 downto 48) <= std_logic_vector(to_unsigned(16,8));
  	input(7 downto 0) <= std_logic_vector(to_unsigned(23,8));	
	wait for 100 ns;
	input <= std_logic_vector(to_unsigned(35, 64));
	wait for 100 ns;
        input <= std_logic_vector(to_unsigned(27164978, 64));
	wait for 100 ns;
        input <= std_logic_vector(to_unsigned(27152467, 64));
	wait for 100 ns;
        input <= std_logic_vector(to_unsigned(26178649, 64));
	wait for 100 ns;
        input <= std_logic_vector(to_unsigned(45361728, 64));
	wait for 100 ns;
        input <= std_logic_vector(to_unsigned(83645174, 64));
	wait for 100 ns;

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_invert of tb_invert is
    for tb
    end for;
end cfg_tb_invert;

