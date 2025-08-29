----------------------------------------------------------------------------------
-- Company: NYU Abu Dhabi
-- Engineer: Aman Sunesh, Demarce Williams
-- 
-- Create Date:    12:20:54 08/02/2025 
-- Design Name:    4-Input NAND Gate Implementation
-- Module Name:    NAND - Behavioral 
-- Project Name:   Advanced Digital Logic Task 1 - NAND Gate
-- Target Devices: FPGA 
-- Tool versions:  Xilinx
-- Description: 
-- This module implements a 4-input NAND gate using VHDL behavioral modeling.
-- The output (O) is the logical negation of the AND operation of four inputs (A, B, C, D).
-- This design can be tested on simulation tools and further synthesized on FPGA devices.
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

-- Entity declaration for 4-input NAND gate
entity NAND4 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           O : out  STD_LOGIC);
end NAND4;

-- Architecture defining the behavior of the 4-input NAND gate
architecture Behavioral of NAND4 is

begin
	-- The output O is the negation of the AND operation on inputs A, B, C, and D
	O <= not(A and B and C and D);
	
end Behavioral;

