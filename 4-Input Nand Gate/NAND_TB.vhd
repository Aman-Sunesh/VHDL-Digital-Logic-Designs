----------------------------------------------------------------------------------
-- Company: NYU Abu Dhabi
-- Engineer: Aman Sunesh, Demarce Williams
-- 
-- Create Date:    12:22:43 08/02/2025 
-- Design Name:    NAND4 Testbench
-- Module Name:    D:/NAND4/NAND_TB.vhd
-- Project Name:   Advanced Digital Logic Task 1 - NAND
-- Target Device:  FPGA
-- Tool versions:  Xilinx
-- Description: 
-- VHDL Test Bench created to test the functionality of the 4-input NAND gate (NAND4).
-- The testbench verifies the output (O) based on different input combinations of A, B, C, and D.
--
-- Dependencies: 
-- Standard IEEE 1164 logic libraries.
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
-- Entity declaration for the testbench
ENTITY NAND_TB IS
END NAND_TB;
 
 -- Architecture defining the behaviour of the testbench
ARCHITECTURE behavior OF NAND_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT NAND4
    PORT(
         A : IN  std_logic;  -- First input
         B : IN  std_logic;  -- Second input
         C : IN  std_logic;  -- Third input
         D : IN  std_logic;  -- Fourth input
         O : OUT std_logic   -- Output of the NAND gate
        );
    END COMPONENT;
    
    -- Input signals to test the NAND4 gate
    signal A_tb : std_logic := '0';  -- Test signal for input A
    signal B_tb : std_logic := '0';  -- Test signal for input B
    signal C_tb : std_logic := '0';  -- Test signal for input C
    signal D_tb : std_logic := '0';  -- Test signal for input D

    -- Output signals to test the NAND4 gate
    signal O_tb : std_logic;  -- Test output signal

BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
    uut: NAND4 PORT MAP (
          A => A_tb,
          B => B_tb,
          C => C_tb,
          D => D_tb,
          O => O_tb
        );

    -- Stimulus process: Generates input combinations and monitors the output
    stim_proc: process
    begin		
      -- Hold the initial state for 100 ns
      wait for 100 ns;	

      -- Toggle input signals with different intervals
      A_tb <= not A_tb;  -- Toggle A_tb after 160 ns
      wait for 160 ns;
		
      B_tb <= not B_tb;  -- Toggle B_tb after 80 ns
      wait for 80 ns;
		
      C_tb <= not C_tb;  -- Toggle C_tb after 40 ns
      wait for 40 ns;
		
      D_tb <= not D_tb;  -- Toggle D_tb after 20 ns
      wait for 20 ns;

      -- wait;
   end process;

END behavior;
