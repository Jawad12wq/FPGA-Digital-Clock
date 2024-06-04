"# FPGA-Digital-Clock" 
Introduction
This project demonstrates a digital clock implemented in Verilog. The clock displays time on a seven-segment display and uses various modules to perform counting, decoding, and display operations. The design is implemented using Xilinx software and targeted for FPGA deployment.

Project Files
BCD_to_sevenaSeg.v: Module to convert BCD (Binary-Coded Decimal) to seven-segment display format.
Counter18bit.v: 18-bit counter module.
DSDLAB10.pdf: Documentation file with detailed explanations and diagrams.
D_FF.v: D Flip-Flop module.
Decoder2x4.v: 2-to-4 decoder module.
Mux4x1.v: 4-to-1 multiplexer module.
README.md: Project overview and instructions (this file).
Task1.xise: Xilinx ISE project file.
bcd_counter.v: BCD counter module.
btn_module.v: Button module to handle input from buttons.
clock_divider.v: Clock divider module to generate slower clock signals from a high-frequency clock.
level_to_pulse.v: Module to convert a level signal to a pulse.
lock_fsm2.v: FSM (Finite State Machine) module for lock functionality.
sw_btn_fsm.v: FSM module to handle switch and button operations.
synchronizer.v: Synchronizer module to handle asynchronous inputs
Getting Started
Prerequisites
Xilinx ISE Design Suite (or other compatible Xilinx software)
FPGA development board
Usage
Compilation and Synthesis:

Please open the file named Task1.xise in Xilinx ISE.
Run the synthesis and implementation processes to generate the bitstream file.
Programming the FPGA:

Use the Xilinx ISE to load the generated bitstream file onto your FPGA development board.
Running the Digital Clock:

Once programmed, the FPGA should start running the digital clock, displaying the time on the connected seven-segment displays.
