`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:00:11 05/13/2024 
// Design Name: 
// Module Name:    lock_fsm2 
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
module lock_fsm2(
	input btn0,
	input btn1,
	input clk,
	input RST_BTN,
	output reg led,
	output reg [3:0]bcd
 );
	reg [2:0]state;
	
	parameter s0 = 3'b000;
	parameter s1 = 3'b001;
	parameter s2 = 3'b010;
	parameter s3 = 3'b011;
	parameter s4 = 3'b100;
	parameter s5 = 3'b101;	
	
	always@(posedge clk) begin
		if(RST_BTN) 
			state <= s0;
			
		else 
			case(state) 
				s0: begin
					if(btn0)
						state <= s0;
					else if(btn1)
						state <= s1;
					else
						state <= s0;
				end
			
				s1: begin
					if(btn0)
						state <= s1;
					else if(btn1)
						state <= s2;
					else
						state <= s1;
				end
				
				s2: begin
					if(btn0)
						state <= s3;
					else if(btn1)
						state <= s2;
					else
						state <= s2;
				end
				
				s3: begin
					if(btn0)
						state <= s3;
					else if(btn1)
						state <= s4;
					else
						state <= s3;
				end
				
				s4: begin
					if(btn0)
						state <= s4;
					else if(btn1)
						state <= s5;
					else
						state <= s4;
				end
				
				s5: begin
					if(btn0)
						state <= s5;
					else if(btn1)
						state <= s0;
					else
						state <= s5;
				end				
			endcase
		
	end
	
	
	always@(*) 
		case(state) 
			s0: begin
				led <= 0;
				bcd <= 4'b0000;	
			end
			
			s1: begin
				led <= 0;
				bcd <= 4'b0001;
			end
			
			
			s2: begin
				led <= 0;
				bcd <= 4'b0010;
			end
			
			s3: begin
				led <= 0;
				bcd <= 4'b0011;
			end
			
			s4: begin
				led <= 0;
				bcd <= 4'b0100;
			end
			
			s5: begin
				led <= 1;
				bcd <= 4'b0101;
			end
		endcase
		
endmodule
