----------------------------------------------------------------------------------
-- Company: NYU Abu Dhabi
-- Engineer: Aman Sunesh, Demarce Williams
-- 
-- Create Date:    23:50:33 09/02/2025 
-- Design Name:    8-to-1 Multiplexer Using "With-Select"
-- Module Name:    Multiplexer_With_Select - Behavioral 
-- Project Name:   Advanced Digital Logic Task 5 - Multiplexer Using "With-Select"
-- Target Devices: FPGA 
-- Tool versions:  Xilinx
-- Description: 
-- This VHDL module implements an 8-to-1 multiplexer using the "with-select" statement.
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
entity Multiplexer_With_Select is
    Port ( A : in  STD_LOGIC_VECTOR(7 downto 0);   -- 8-bit input vector (A(0) to A(7))
           S : in  STD_LOGIC_VECTOR(2 downto 0);   -- 3-bit select input to choose one of the inputs
           F : out  STD_LOGIC);                    -- Output signal representing the selected input
end Multiplexer_With_Select;


-- Architecture defining the behavior of the 8-to-1 multiplexer using "with-select"
architecture Behavioral of Multiplexer_With_Select is

begin
    -- With-select construct: based on the value of S, route the appropriate input to F
    with S select
        F <= A(0) when "000",  -- Select input A(0) when S = "000"
             A(1) when "001",  -- Select input A(1) when S = "001"
             A(2) when "010",  -- Select input A(2) when S = "010"
             A(3) when "011",  -- Select input A(3) when S = "011"
             A(4) when "100",  -- Select input A(4) when S = "100"
             A(5) when "101",  -- Select input A(5) when S = "101"
             A(6) when "110",  -- Select input A(6) when S = "110"
             A(7) when "111",  -- Select input A(7) when S = "111"
             '0'  when others; -- Default case: output '0' if S is outside the expected range

end Behavioral;

