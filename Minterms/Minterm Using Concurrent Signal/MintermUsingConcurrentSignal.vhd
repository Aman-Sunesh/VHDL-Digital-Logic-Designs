----------------------------------------------------------------------------------
-- Company: NYU Abu Dhabi
-- Engineer: Aman Sunesh, Demarce Williams
-- 
-- Create Date:    12:52:53 10/02/2025 
-- Design Name:    Minterm-Based Function Implementation
-- Module Name:    Minterms - Behavioral 
-- Project Name:   Advanced Digital Logic Task 4 - Minterm Using When-Else
-- Target Devices: FPGA 
-- Tool versions:  Xilinx
-- Description: 
-- This VHDL module implements a function based on minterm selection.
-- It uses four individual STD_LOGIC inputs (A, B, C, D).
-- The output F is '1' for the minterms "0001", "0011", "1001", and "1011"
-- (assuming A is the MSB and D is the LSB), and '0' otherwise.
--
-- Dependencies: 
-- Standard IEEE 1164 logic libraries.
--
-- Revision: 
-- Revision 0.01 - File Created
--
-- Additional Comments: 
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Entity declaration for the minterm-based function
entity Minterms is
    Port ( 
        A : in  STD_LOGIC;  -- MSB (bit 3)
        B : in  STD_LOGIC;  -- bit 2
        C : in  STD_LOGIC;  -- bit 1
        D : in  STD_LOGIC;  -- LSB (bit 0)
        F : out STD_LOGIC
    );
end Minterms;

-- Architecture defining the behavior of the minterm-based function
architecture Behavioral of Minterms is
begin

    -- Concurrent conditional signal assignment:
    -- The output F is assigned '1' if the input combination matches any of
    -- the specified minterms, otherwise F is assigned '0'.
    --
    -- Minterm "0001": A = '0', B = '0', C = '0', D = '1'
    -- Minterm "0011": A = '0', B = '0', C = '1', D = '1'
    -- Minterm "1001": A = '1', B = '0', C = '0', D = '1'
    -- Minterm "1011": A = '1', B = '0', C = '1', D = '1'

    F <= '1' when ((A = '0') and (B = '0') and (C = '0') and (D = '1')) else
         '1' when ((A = '0') and (B = '0') and (C = '1') and (D = '1')) else
         '1' when ((A = '1') and (B = '0') and (C = '0') and (D = '1')) else
         '1' when ((A = '1') and (B = '0') and (C = '1') and (D = '1')) else
         '0';

end Behavioral;