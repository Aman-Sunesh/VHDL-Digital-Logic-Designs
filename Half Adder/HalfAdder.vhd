----------------------------------------------------------------------------------
-- Company: NYU Abu Dhabi
-- Engineer: Aman Sunesh, Demarce Williams
-- 
-- Create Date:    12:35:14 08/02/2025 
-- Design Name:    Half Adder Implementation
-- Module Name:    HalfAdder - Behavioral 
-- Project Name:   Advanced Digital Logic Task 2 - Half Adder
-- Target Devices: FPGA 
-- Tool versions:  Xilinx
-- Description: 
-- This VHDL module implements a Half Adder using behavioral modeling.
-- A Half Adder performs the addition of two single-bit binary numbers (A and B) 
-- and produces a sum output (Sum) and a carry-out (Carry).
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


-- Entity declaration for the Half Adder
entity HalfAdder is
    Port ( 
        A : in  STD_LOGIC;  
        B : in  STD_LOGIC;  
        S : out  STD_LOGIC;  
        C_OUT : out  STD_LOGIC);
end HalfAdder;

-- Architecture defining the behavior of the Half Adder
architecture Behavioral of HalfAdder is
begin
    -- Sum is the result of XOR operation on A and B
    S <= A xor B;  

    -- Carry is the result of AND operation on A and B
    C_OUT <= A and B;  
	 
end Behavioral;
