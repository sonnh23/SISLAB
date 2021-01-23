library IEEE;
use IEEE.STD_LOGIC_1164.all;
  ENTITY and_gate IS
    PORT(
	clk: IN STD_LOGIC; 
	a: IN STD_LOGIC;
          b: IN STD_LOGIC;
          c: OUT STD_LOGIC;
	  d: OUT STD_LOGIC
        );
  END and_gate;
  ARCHITECTURE model OF and_gate IS

  BEGIN
	
	PROCESS(clk)
	BEGIN
		IF rising_edge(clk) THEN 
			c <= a and b;
		END IF;
	END PROCESS;
    d <=a and b;
END model;
