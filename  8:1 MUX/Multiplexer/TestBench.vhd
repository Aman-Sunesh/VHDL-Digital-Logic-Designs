----------------------------------------------------------------------------------
-- Company: NYU Abu Dhabi
-- Engineer: Aman Sunesh, Demarce Williams
-- 
-- Create Date:    23:50:12 09/02/2025 
-- Design Name:    Multiplexer Testbench
-- Module Name:    Multiplexer_TB - Behavioral 
-- Project Name:   Advanced Digital Logic Task 5 - Multiplexer
-- Target Device:  FPGA 
-- Tool versions:  Xilinx
-- Description: 
-- VHDL Test Bench created to test the functionality of the 8-to-1 multiplexer (Multiplexer).
-- The testbench verifies the output (F_tb) based on different combinations of the input vector (A_tb)
-- and the select input (S_tb).
--
-- Dependencies: 
-- Standard IEEE 1164 logic libraries.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for the testbench
entity Multiplexer_TB is
end Multiplexer_TB;

-- Architecture defining the behavior of the testbench
architecture Behavioral of Multiplexer_TB is

    -- Component Declaration for the Unit Under Test (UUT)
    component Multiplexer
        port(
            A : in  std_logic_vector(7 downto 0);  -- 8-bit input
            S : in  std_logic_vector(2 downto 0);  -- 3-bit select input
            F : out std_logic                      -- Output signal for the selected input
        );
    end component;

    -- Input signals to test the multiplexer
    signal A_tb : std_logic_vector(7 downto 0) := "00000000";  -- Test input vector
    signal S_tb : std_logic_vector(2 downto 0) := "000";       -- Test select input
    signal F_tb : std_logic;                                   -- Test output signal

begin

    -- Instantiate the Unit Under Test (UUT) and connect it to the test signals
    UUT: Multiplexer port map (
        A => A_tb,
        S => S_tb,
        F => F_tb
    );

    -- Stimulus process: apply input combinations and observe the output
    stim_proc: process
    begin
        -- Hold the initial state for 100 ns
        wait for 100 ns;

        -- Test case 1: A = "00000001", S = "000" (expect F_tb = '1')
        A_tb <= "00000001"; S_tb <= "000";
        wait for 1024 ns;

        -- Test case 2: A = "00000010", S = "001" (expect F_tb = '1')
        A_tb <= "00000010"; S_tb <= "001";
        wait for 512 ns;

        -- Test case 3: A = "00000100", S = "010" (expect F_tb = '1')
        A_tb <= "00000100"; S_tb <= "010";
        wait for 256 ns;

        -- Test case 4: A = "00001000", S = "011" (expect F_tb = '1')
        A_tb <= "00001000"; S_tb <= "011";
        wait for 128 ns;

        -- Test case 5: A = "00010000", S = "100" (expect F_tb = '1')
        A_tb <= "00010000"; S_tb <= "100";
        wait for 64 ns;

        -- Test case 6: A = "00100000", S = "101" (expect F_tb = '1')
        A_tb <= "00100000"; S_tb <= "101";
        wait for 32 ns;

        -- Test case 7: A = "01000000", S = "110" (expect F_tb = '1')
        A_tb <= "01000000"; S_tb <= "110";
        wait for 16 ns;

        -- Test case 8: A = "10000000", S = "111" (expect F_tb = '1')
        A_tb <= "10000000"; S_tb <= "111";
        wait for 8 ns;

        -- Test case 9: A = "00000000", S = "010" (expect F_tb = '0')
        A_tb <= "00000000"; S_tb <= "010";
        wait for 4 ns;

        --wait;
    end process;

end Behavioral;
