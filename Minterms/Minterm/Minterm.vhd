----------------------------------------------------------------------------------
-- Company: NYU Abu Dhabi
-- Engineer: Aman Sunesh, Demarce Williams
-- 
-- Create Date:    12:52:53 10/02/2025 
-- Design Name:    Minterm-Based Function Implementation
-- Module Name:    Minterms - Behavioral 
-- Project Name:   Advanced Digital Logic Task 4 - Minterm Using Case-When
-- Target Devices: FPGA 
-- Tool versions:  Xilinx
-- Description: 
-- This VHDL module implements a function based on minterm selection.
-- It uses four individual STD_LOGIC inputs (A, B, C, D).
-- The output F is '1' for the minterms "0001", "0011", "1001", and "1011" (assuming
-- A is the MSB and D is the LSB), and '0' otherwise.
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

-- Internal signal to group A,B,C,D into a 4-bit vector
signal Inputs : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Concatenate A,B,C,D to form a 4-bit vector, assuming A is MSB and D is LSB
    Inputs <= A & B & C & D;

    -- Process block to determine the output F based on the 4-bit value of Inputs
    process(Inputs)
    begin
        case Inputs is
            when "0001" =>  -- A=0, B=0, C=0, D=1   Minterm corresponding to binary 1
                F <= '1';
            when "0011" =>  -- A=0, B=0, C=1, D=1   Minterm corresponding to binary 3
                F <= '1';
            when "1001" =>  -- A=1, B=0, C=0, D=1   Minterm corresponding to binary 9
                F <= '1';
            when "1011" =>  -- A=1, B=0, C=1, D=1   Minterm corresponding to binary 11
                F <= '1';
            when others =>
                F <= '0';    -- Default case for inputs not matching the specfied minterms
        end case;
    end process;

end Behavioral;
