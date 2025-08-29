----------------------------------------------------------------------------------
-- Company: NYU Abu Dhabi
-- Engineer: Aman Sunesh, Demarce Williams
-- 
-- Create Date:    23:36:12 09/02/2025 
-- Design Name:    8-to-1 Multiplexer Implementation
-- Module Name:    Multiplexer - Behavioral 
-- Project Name:   Advanced Digital Logic Task 5 - Multiplexer
-- Target Devices: FPGA 
-- Tool versions:  Xilinx
-- Description: 
-- This VHDL module implements an 8-to-1 multiplexer using behavioral modeling.
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
entity Multiplexer is
    Port ( A : in  STD_LOGIC_VECTOR(7 downto 0);   -- 8-bit input vector (A(0) to A(7))
           S : in  STD_LOGIC_VECTOR(2 downto 0);   -- 3-bit select input to choose one of the inputs
           F : out  STD_LOGIC);                    -- Output signal representing the selected input
end Multiplexer;


-- Architecture defining the behavior of the 8-to-1 multiplexer
architecture Behavioral of Multiplexer is
begin
    -- Process block to select the appropriate input based on the value of S
    process(S, A)
    begin
	     -- Use a case statement to route the appropriate input bit to F
        case S is
            when "000" =>  -- Select input A(0) when S = "000"
                F <= A(0);  
            when "001" =>  -- Select input A(1) when S = "001"
                F <= A(1);  
            when "010" =>  -- Select input A(2) when S = "010"
                F <= A(2);  
            when "011" =>  -- Select input A(3) when S = "011"
                F <= A(3); 
            when "100" =>  -- Select input A(4) when S = "100"
                F <= A(4); 
            when "101" =>  -- Select input A(5) when S = "101"
                F <= A(5); 
            when "110" =>  -- Select input A(6) when S = "110"
                F <= A(6); 
            when "111" =>  -- Select input A(7) when S = "111"
                F <= A(7); 
            when others =>  -- Default case: output '0' if S is outside the expected range
                F <= '0'; 
        end case;
    end process;
end Behavioral;