----------------------------------------------------------------------------------
-- Company: NYU Abu Dhabi
-- Engineer: Aman Sunesh, Demarce Williams
-- 
-- Create Date:    12:55:53 10/02/2025
-- Design Name:    Minterms Testbench
-- Module Name:    Minterms_TB - Behavioral
-- Project Name:   Advanced Digital Logic Task 4 - Minterms 
-- Target Device:  FPGA
-- Tool versions:  Xilinx
-- Description:
-- VHDL Test Bench created to test the functionality of the minterm-based function 
-- (Minterms) which uses separate inputs A, B, C, D. The testbench verifies 
-- the output (F_tb) based on different input combinations of A_tb, B_tb, C_tb, and D_tb.
--
-- Dependencies:
-- IEEE.STD_LOGIC_1164
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Testbench entity 
entity Minterms_TB is
end Minterms_TB;

architecture Behavioral of Minterms_TB is

 -- Component declaration for the Unit Under Test (UUT)
 component Minterms is
	  Port (
			A : in  std_logic;  -- MSB (bit 3)
			B : in  std_logic;  -- bit 2
			C : in  std_logic;  -- bit 1
			D : in  std_logic;  -- LSB (bit 0)
			F : out std_logic
	  );
 end component;

 -- Signals to connect to the UUT ports
 signal A_tb : std_logic := '0';  -- Test input for A (bit 3)
 signal B_tb : std_logic := '0';  -- Test input for B (bit 2)
 signal C_tb : std_logic := '0';  -- Test input for C (bit 1)
 signal D_tb : std_logic := '0';  -- Test input for D (bit 0)
 signal F_tb : std_logic;         -- Output from UUT

begin

 -- Instantiate the Unit Under Test (UUT)
 UUT: Minterms
	  port map (
			A => A_tb,
			B => B_tb,
			C => C_tb,
			D => D_tb,
			F => F_tb
	  );

 -- Stimulus Process: apply a series of test vectors to the UUT
 stim_proc: process
 begin
	  -- Wait for an initial time period of 100 ns
	  wait for 100 ns;

	  --------------------------------------------------------------------
	  -- Test Case 1: "0001" 
	  -- A = '0', B = '0', C = '0', D = '1'
	  -- Expected Output: F_tb = '1'
	  --------------------------------------------------------------------
	  A_tb <= '0';
	  B_tb <= '0';
	  C_tb <= '0';
	  D_tb <= '1';
	  wait for 128 ns;

	  --------------------------------------------------------------------
	  -- Test Case 2: "0011"
	  -- A = '0', B = '0', C = '1', D = '1'
	  -- Expected Output: F_tb = '1'
	  --------------------------------------------------------------------
	  A_tb <= '0';
	  B_tb <= '0';
	  C_tb <= '1';
	  D_tb <= '1';
	  wait for 64 ns;

	  --------------------------------------------------------------------
	  -- Test Case 3: "1001"
	  -- A = '1', B = '0', C = '0', D = '1'
	  -- Expected Output: F_tb = '1'
	  --------------------------------------------------------------------
	  A_tb <= '1';
	  B_tb <= '0';
	  C_tb <= '0';
	  D_tb <= '1';
	  wait for 32 ns;

	  --------------------------------------------------------------------
	  -- Test Case 4: "1011"
	  -- A = '1', B = '0', C = '1', D = '1'
	  -- Expected Output: F_tb = '1'
	  --------------------------------------------------------------------
	  A_tb <= '1';
	  B_tb <= '0';
	  C_tb <= '1';
	  D_tb <= '1';
	  wait for 16 ns;

	  --------------------------------------------------------------------
	  -- Test Case 5: "0100"
	  -- A = '0', B = '1', C = '0', D = '0'
	  -- Expected Output: F_tb = '0' (not one of the specified minterms)
	  --------------------------------------------------------------------
	  A_tb <= '0';
	  B_tb <= '1';
	  C_tb <= '0';
	  D_tb <= '0';
	  wait for 8 ns;

	  --------------------------------------------------------------------
	  -- Test Case 6: "1100"
	  -- A = '1', B = '1', C = '0', D = '0'
	  -- Expected Output: F_tb = '0' (not one of the specified minterms)
	  --------------------------------------------------------------------
	  A_tb <= '1';
	  B_tb <= '1';
	  C_tb <= '0';
	  D_tb <= '0';
	  wait for 4 ns;

	  -- wait;
 end process;

end Behavioral;
