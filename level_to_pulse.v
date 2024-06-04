`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:01 05/06/2024 
// Design Name: 
// Module Name:    level_to_pulse 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module level_to_pulse(
	input synch_input,
	input clk,
	input rst,
	output pulse
    );
	 
	 wire Q;
	 
	 D_FF df(Q, synch_input, clk, rst);
	 and a(pulse ,~Q, synch_input);


endmodule
