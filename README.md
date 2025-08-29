# VHDL Digital Logic Designs

A collection of fundamental digital logic circuits implemented in **VHDL** and tested on FPGA hardware.  
Each design includes the VHDL source code, testbenches for simulation, and supporting documentation/screenshots where applicable.

---

## Project Contents

- **4-Input NAND Gate**
  - VHDL implementation of a 4-input NAND gate.
  - Includes testbench and FPGA board verification.

- **Half Adder**
  - Sum and Carry generation from two inputs.
  - Implemented in VHDL with testbench and simulation waveforms.

- **4-Bit Binary Adder**
  - Ripple-carry full adder with carry-out.
  - Verified using testbench and FPGA implementation.

- **Minterms Logic Function**
  - Circuit implementing the Boolean function:  
    \( F(A,B,C,D) = Σ(1,3,9,11) \)
  - Demonstrated using concurrent assignment and case-when constructs.

- **8:1 Multiplexer**
  - Implemented in multiple styles: Case, With-Select, When-Else.
  - Includes simulation results and FPGA demonstration.

- **Report.pdf**
  - Summary of designs, simulation outputs, and board implementation screenshots.

---

## Tools & Environment

- **Language:** VHDL  
- **FPGA Board:** Xilinx Basys2 (compatible with other Xilinx boards)  
- **Software:** Xilinx ISE Design Suite  

---

## How to Run

1. Clone this repository:  
   ```bash
   git clone https://github.com/Aman-Sunesh/VHDL-Digital-Logic-Designs.git
   cd VHDL-Digital-Logic-Designs
   ```

2. Open the desired project folder (e.g., `4-Bit Binary Adder`) in Xilinx ISE.

3. Add the `.vhd` files and the testbench to a new project.

4. Run simulation to verify functionality.

5. Synthesize and generate the bitstream.

6. Program the FPGA board to observe the results.

---

## Demonstration

Each design is verified through:  
- Simulation waveforms (ISim).  
- FPGA implementation with labeled inputs/outputs.  
- Screenshots included in `Report.pdf`.

---

## License

This repository is shared under the **MIT License**.  
Feel free to explore and adapt these designs for personal learning or projects.

---

## Contact

Developed by **Aman Sunesh**  
- [LinkedIn](https://www.linkedin.com/in/aman-sunesh/)  
- Email: as18181@nyu.edu  

---
