----------------------------------------------------------------------------------
-- Company: NYU Abu Dhabi
-- Engineer: Aman Sunesh, Demarce Williams
-- 
-- Create Date:    12:55:53 10/08/2025
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
-- Standard IEEE 1164 logic libraries.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for the testbench
entity Minterms_TB is
end Minterms_TB;

architecture Behavioral of Minterms_TB is

    
    --  Component Declaration for the Unit Under Test (UUT)
    component Minterms
        port(
            A : in  std_logic;  -- MSB (bit 3)
            B : in  std_logic;  -- bit 2
            C : in  std_logic;  -- bit 1
            D : in  std_logic;  -- LSB (bit 0)
            F : out std_logic
        );
    end component;

    
    -- Signals to drive the UUT inputs/outputs
    signal A_tb : std_logic := '0';  -- Test input for bit 3
    signal B_tb : std_logic := '0';  -- Test input for bit 2
    signal C_tb : std_logic := '0';  -- Test input for bit 1
    signal D_tb : std_logic := '0';  -- Test input for bit 0
    signal F_tb : std_logic;         -- Output signal for the function

begin

    
    --  Instantiate the Unit Under Test (UUT)
    UUT: Minterms
        port map (
            A => A_tb,
            B => B_tb,
            C => C_tb,
            D => D_tb,
            F => F_tb
        );

    --  Stimulus Process: apply different combinations and observe output
    
    stim_proc: process
    begin
        -- Hold reset state for 100 ns
        wait for 100 ns;

        -- Test case 1: "0001" => A=0, B=0, C=0, D=1 => F should be '1'
        A_tb <= '0';  B_tb <= '0';  C_tb <= '0';  D_tb <= '1';
        wait for 100 ns;

        -- Test case 2: "0011" => A=0, B=0, C=1, D=1 => F should be '1'
        A_tb <= '0';  B_tb <= '0';  C_tb <= '1';  D_tb <= '1';
        wait for 100 ns;

        -- Test case 3: "1001" => A=1, B=0, C=0, D=1 => F should be '1'
        A_tb <= '1';  B_tb <= '0';  C_tb <= '0';  D_tb <= '1';
        wait for 100 ns;

        -- Test case 4: "1011" => A=1, B=0, C=1, D=1 => F should be '1'
        A_tb <= '1';  B_tb <= '0';  C_tb <= '1';  D_tb <= '1';
        wait for 100 ns;

        -- Test case 5: "0100" => A=0, B=1, C=0, D=0 => F should be '0'
        A_tb <= '0';  B_tb <= '1';  C_tb <= '0';  D_tb <= '0';
        wait for 100 ns;

        -- Test case 6: "1100" => A=1, B=1, C=0, D=0 => F should be '0'
        A_tb <= '1';  B_tb <= '1';  C_tb <= '0';  D_tb <= '0';
        wait for 100 ns;

        --wait;
    end process;

end Behavioral;
