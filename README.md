# Computer Architecture Labs

This repository contains individual projects from my Computer Architecture class, completed in Fall 2023. Note that there is no version control, as these are standalone labs demonstrating various digital circuit designs and VHDL implementations.

## Lab 1: Digital Circuit Design

In this lab, I designed and implemented various digital circuits using VHDL in Altera Quartus. The key components include:

1. **Circuit Designs**: Designed nine circuits, including symbols, truth tables, and simplified Sum of Products expressions, along with NOT-AND-OR and all-NAND equivalent circuits.
   
2. **NAND Circuit Implementations**:
   - **NAND3**: A 3-input NAND circuit using all-NAND gates.
   - **NAND4**: A 4-input NAND circuit using all-NAND gates.
   
3. **Multiplexer Designs**:
   - **Mux2to1**: A 2-to-1 multiplexer/encoder implemented with all-NAND gates.
   - **Mux4to1**: A 4-to-1 multiplexer created using two 2-to-1 multiplexers.
   - **Mux8to1**: An 8-to-1 multiplexer built using two 4-to-1 and one 2-to-1 multiplexer.
   - **Mux16to1**: A 16-to-1 multiplexer constructed using two 8-to-1 and one 2-to-1 multiplexer.

Each design includes VHDL code, successful compilation, and timing diagrams.

## Lab 2: Adder Circuits

This lab focused on designing adder circuits and demonstrating their functionality through various sections:

1. **Half Adder**: Developed with its diagram, truth table, and canonical forms. The design includes a NOT-AND-OR equivalent diagram and VHDL code with timing diagrams.

2. **Full Adder**: Designed using only NAND gates.

3. **4-bit Adder**: Implemented using four full adders with examples of binary addition in different bases.

4. **8-bit Adder**: Constructed using two 4-bit adders.

5. **16-bit Adder**: Designed using two 8-bit adders.

Each section includes diagrams, truth tables, VHDL code, and timing diagrams to validate the designs.

## Lab 3: Flip-Flop and Sequential Component Design

In this lab, I explored various flip-flops and designed sequential components using VHDL in Altera Quartus:

1. **Flip-Flop Designs**:
   - Hand-drawn diagrams for D Flip-Flop, T Flip-Flop, S-R Flip-Flop, and J-K Flip-Flop, including truth tables and excitation tables.
   
2. **Sequential Components**:
   - **Data Flip-Flop (DFF)**: VHDL code, successful compilation, and timing diagram.
   - **1-Bit Register**: VHDL code, successful compilation, and timing diagram.
   - **16-Bit Register**: VHDL code, successful compilation, and timing diagram.
   - **Program Counter Register**: VHDL code, successful compilation, and timing diagram.
   - **8 Register RAM**: VHDL code, successful compilation, and timing diagram.

## Lab 4: Machine Code and Assembly Language

This lab utilized emu8086 to explore the fundamentals of machine code and assembly language. Key tasks included:

- Comparing instructions in the Editor window with the assembled code in the Emulator window.
- Identifying changes made by the Emulator for variables (e.g., FIRST, LAST, RESULT).
- Analyzing values of variables in different windows after single-stepping through code.
- Calculating the effective address of RESULT in hexadecimal based on offsets.

Each task required practical engagement with assembly language instructions and an understanding of the underlying machine code.
