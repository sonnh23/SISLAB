-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 2.11.2020 08:44:52 UTC

library ieee;
use ieee.std_logic_1164.all;
use std.env.all;

entity tb_and_gate is
end tb_and_gate;

architecture tb of tb_and_gate is

    component and_gate
        port (
		clk : in std_logic;
		a : in std_logic;
              b : in std_logic;
              c : out std_logic;
	      d : out std_logic);
    end component;

    signal a : std_logic;
    signal b : std_logic;
    signal c : std_logic;
    signal d : std_logic;
    signal clk : std_logic := '0';
begin
	clk <= NOT clk after 30 ns;
    dut : and_gate
    port map (
		clk => clk,
		a => a,
              b => b,
              c => c,
		d => d);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        a <= '0';
        b <= '0';
	wait for 100 ns;
	a <= '1';
	b <= '0';
	wait for 100 ns;
	a <= '1';
	b <= '1';
	wait for 100 ns;
	a <= '0';
	b <= '1';
	wait for 100 ns;
wait for 100 ns;
        -- EDIT Add stimuli here
	finish;
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_and_gate of tb_and_gate is
    for tb
    end for;
end cfg_tb_and_gate;
