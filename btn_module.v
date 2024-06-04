`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:44 05/13/2024 
// Design Name: 
// Module Name:    btn_module 
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
module btn_module(
	input btn,
	input CLK,
	input RST,
	output pulse
    );
	wire synch_btn;
	synchronizer s1(CLK, btn, RST, synch_btn);
	level_to_pulse lp1(synch_btn, CLK, RST, pulse);
	
endmodule
