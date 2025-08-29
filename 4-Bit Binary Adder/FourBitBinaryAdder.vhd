----------------------------------------------------------------------------------
-- Company: NYU Abu Dhabi
-- Engineer: Aman Sunesh, Demarce Williams
-- 
-- Create Date:    12:43:03 08/02/2025 
-- Design Name:    4-Bit Binary Adder Implementation
-- Module Name:    FourBitBinaryAdder - Behavioral 
-- Project Name:   Advanced Digital Logic Task 3 - Four Bit Binary Adder
-- Target Devices: FPGA 
-- Tool versions:  Xilinx
-- Description: 
-- This VHDL module implements a 4-bit binary adder using behavioral modeling.
-- It adds two 4-bit binary numbers (A and B) and an input carry (C_IN) to produce
-- a 4-bit sum (S) and an output carry (C_OUT).
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Entity declaration for the 4-bit binary adder
entity FourBitBinaryAdder is
    Port (
        A : in  STD_LOGIC_VECTOR(3 downto 0);  -- First 4-bit binary input
        B : in  STD_LOGIC_VECTOR(3 downto 0);  -- Second 4-bit binary input
        C_IN : in  STD_LOGIC;                  -- Carry-in input
        S : out  STD_LOGIC_VECTOR(3 downto 0); -- 4-bit sum output
        C_OUT : out  STD_LOGIC                 -- Carry-out output
    );
end FourBitBinaryAdder;

-- Architecture defining the behavior of the 4-bit binary adder
architecture Behavioral of FourBitBinaryAdder is
begin

    -- Process block to compute the sum and carry
    process(A, B, C_IN)
        variable temp_carry : STD_LOGIC;  -- Variable to store the carry for each bit position
    begin
        -- Initialize the carry with the input carry
        temp_carry := C_IN;

        -- Loop through each bit position (from 0 to 3)
        for i in 0 to 3 loop
            -- Sum for bit i using XOR operation for A(i), B(i), and temp_carry
            S(i) <= A(i) xor B(i) xor temp_carry;

            -- Compute the carry for the next bit position
            -- Carry is generated if both A(i) and B(i) are 1 (A(i) and B(i))
            -- or if temp_carry is 1 and one of A(i) or B(i) is 1 ((A(i) xor B(i)) and temp_carry)
            temp_carry := (A(i) and B(i)) or ((A(i) xor B(i)) and temp_carry);
        end loop;

        -- Assign the final carry-out value
        C_OUT <= temp_carry;
    end process;
    
end Behavioral;





