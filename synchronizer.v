`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:41:50 05/06/2024 
// Design Name: 
// Module Name:    synchronizer 
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
module synchronizer(
	input clk,
	input btn,
	input rst,
	output synch_btn
    );
	 
	wire Q1;
	
	D_FF df1(Q1, btn, clk, rst);
	D_FF df2(synch_btn, Q1, clk, rst);
	
endmodule
