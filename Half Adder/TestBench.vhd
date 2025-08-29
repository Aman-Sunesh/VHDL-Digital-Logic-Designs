----------------------------------------------------------------------------------
-- Company: NYU Abu Dhabi
-- Engineer: Aman Sunesh, Demarce Williams
-- 
-- Create Date:    12:36:54 08/02/2025 
-- Design Name:    Half Adder Testbench
-- Module Name:    HalfAdder_TB - Behavioral 
-- Project Name:   Advanced Digital Logic Task 2 - Half Adder
-- Target Devices: FPGA 
-- Tool versions:  Xilinx
-- Description: 
-- VHDL Test Bench created to test the functionality of the Half Adder (HalfAdder).
-- The testbench verifies the sum (S) and carry-out (C_OUT) based on different input 
-- combinations of A and B.
--
-- Dependencies: 
-- Standard IEEE 1164 logic libraries.
--
-- Revision: 
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for the testbench
entity HalfAdder_TB is
end HalfAdder_TB;

architecture Behavioral of HalfAdder_TB is

    -- Component Declaration for the Unit Under Test (UUT)
    component HalfAdder
        port(
            A : in  std_logic;
            B : in  std_logic;
            S : out std_logic;
            C_OUT : out std_logic
        );
    end component;

    -- Signals to provide test inputs and capture the outputs
    signal A_tb : std_logic := '0';  -- Test signal for input A
    signal B_tb : std_logic := '0';  -- Test signal for input B
    signal S_tb : std_logic;         -- Output signal for Sum
    signal C_OUT_tb : std_logic;     -- Output signal for Carry-Out

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT: HalfAdder port map (
        A => A_tb,
        B => B_tb,
        S => S_tb,
        C_OUT => C_OUT_tb
    );

    -- Stimulus process: Apply various input combinations and monitor outputs
    stim_proc: process
    begin
		  -- Hold the initial state for 100 ns
		  wait for 100 ns;
		  
        -- Apply input combination 00 and wait for 160 ns
        A_tb <= '0'; B_tb <= '0';
        wait for 160 ns;

        -- Apply input combination 01 and wait for 80 ns
        A_tb <= '0'; B_tb <= '1';
        wait for 80 ns;

        -- Apply input combination 10 and wait for 40 ns
        A_tb <= '1'; B_tb <= '0';
        wait for 40 ns;

        -- Apply input combination 11 and wait for 20 ns
        A_tb <= '1'; B_tb <= '1';
        wait for 20 ns;

        --wait;
    end process;
end Behavioral;
