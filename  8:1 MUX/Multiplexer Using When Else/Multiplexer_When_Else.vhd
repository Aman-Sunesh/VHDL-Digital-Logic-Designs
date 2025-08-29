----------------------------------------------------------------------------------
-- Company: NYU Abu Dhabi
-- Engineer: Aman Sunesh, Demarce Williams
-- 
-- Create Date:    00:00:15 09/02/2025 
-- Design Name:    8-to-1 Multiplexer Using "When-Else"
-- Module Name:    Multiplexer_When_Else - Behavioral 
-- Project Name:   Advanced Digital Logic Task 5 - Multiplexer Using "When-Else"
-- Target Devices: FPGA 
-- Tool versions:  Xilinx
-- Description: 
-- This VHDL module implements an 8-to-1 multiplexer using the "when-else" statement.
-- The multiplexer selects one of the 8 input signals (A) based on the 3-bit select input (S)
-- and routes the selected input to the output (F).
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

-- Entity declaration for the 8-to-1 multiplexer
entity Multiplexer_When_Else is
    Port ( A : in  STD_LOGIC_VECTOR(7 downto 0);
           S : in  STD_LOGIC_VECTOR(2 downto 0);
           F : out  STD_LOGIC);
end Multiplexer_When_Else;

-- Architecture defining the behavior of the 8-to-1 multiplexer using "when-else"
architecture Behavioral of Multiplexer_When_Else is

begin

    -- When-else statement: based on the value of S, route the appropriate input to F
    F <= A(0) when S = "000" else  -- Select input A(0) when S = "000"
         A(1) when S = "001" else  -- Select input A(1) when S = "001"
         A(2) when S = "010" else  -- Select input A(2) when S = "010"
         A(3) when S = "011" else  -- Select input A(3) when S = "011"
         A(4) when S = "100" else  -- Select input A(4) when S = "100"
         A(5) when S = "101" else  -- Select input A(5) when S = "101"
         A(6) when S = "110" else  -- Select input A(6) when S = "110"
         A(7) when S = "111" else  -- Select input A(7) when S = "111"
         '0';                      -- Default case: output '0' if S is outside the expected range

end Behavioral;

