----------------------------------------------------------------------------------
-- Company: NYU Abu Dhabi
-- Engineer: Aman Sunesh, Demarce Williams
-- 
-- Create Date:    12:48:43 08/02/2025 
-- Design Name:    4-Bit Binary Adder Testbench
-- Module Name:    FourBitBinaryAdder_TB - Behavioral 
-- Project Name:   Advanced Digital Logic Task 3 - Four Bit Binary Adder
-- Target Device:  FPGA 
-- Tool versions:  Xilinx
-- Description: 
-- VHDL Test Bench created to test the functionality of the 4-bit binary adder (FourBitBinaryAdder).
-- The testbench verifies the output (S_tb) and carry-out (C_OUT_tb) based on different input combinations of A_tb, B_tb, and C_IN_tb.
--
-- Dependencies: 
-- Standard IEEE 1164 logic libraries.
----------------------------------------------------------------------------------

-- Import standard IEEE library for logic operations
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using arithmetic functions
--USE ieee.numeric_std.ALL;

-- Entity declaration for the testbench
ENTITY FourBitBinaryAdder_TB IS
END FourBitBinaryAdder_TB;

-- Architecture defining the behavior of the testbench
ARCHITECTURE behavior OF FourBitBinaryAdder_TB IS 

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT FourBitBinaryAdder
    PORT(
         A : IN  std_logic_vector(3 downto 0);  -- First 4-bit binary input
         B : IN  std_logic_vector(3 downto 0);  -- Second 4-bit binary input
         C_IN : IN  std_logic;                  -- Carry-in input
         S : OUT std_logic_vector(3 downto 0);  -- 4-bit sum output
         C_OUT : OUT std_logic                  -- Carry-out output
    );
    END COMPONENT;

    -- Input signals to test the FourBitBinaryAdder
    signal A_tb : std_logic_vector(3 downto 0) := "0000";  -- Test signal for input A
    signal B_tb : std_logic_vector(3 downto 0) := "0000";  -- Test signal for input B
    signal C_IN_tb : std_logic := '0';                     -- Test signal for carry-in

    -- Output signals to capture the results of the addition
    signal S_tb : std_logic_vector(3 downto 0);  -- Signal to store the sum output
    signal C_OUT_tb : std_logic;                 -- Signal to store the carry-out

BEGIN

    -- Instantiate the Unit Under Test (UUT) and connect it to the test signals
    UUT: FourBitBinaryAdder PORT MAP (
        A => A_tb,
        B => B_tb,
        C_IN => C_IN_tb,
        S => S_tb,
        C_OUT => C_OUT_tb
    );

    -- Stimulus process: apply input combinations and observe the output
    stim_proc: process
    begin		
        -- Hold the initial state for 100 ns
        wait for 100 ns;

        -- Test case 1: A = 0001, B = 0011, C_IN = 0 (expect S = 0100, C_OUT = 0)
        A_tb <= "0001"; B_tb <= "0011"; C_IN_tb <= '0';
        wait for 160 ns;

        -- Test case 2: A = 1010, B = 0101, C_IN = 1 (expect S = 1110, C_OUT = 0)
        A_tb <= "1010"; B_tb <= "0101"; C_IN_tb <= '1';
        wait for 80 ns;

        -- Test case 3: A = 1111, B = 1111, C_IN = 0 (expect S = 1110, C_OUT = 1)
        A_tb <= "1111"; B_tb <= "1111"; C_IN_tb <= '0';
        wait for 40 ns;

        -- Test case 4: A = 0110, B = 0011, C_IN = 1 (expect S = 1000, C_OUT = 0)
        A_tb <= "0110"; B_tb <= "0011"; C_IN_tb <= '1';
        wait for 20 ns;

        --wait;
    end process;

END behavior;
