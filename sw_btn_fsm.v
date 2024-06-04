`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:47:18 05/06/2024 
// Design Name: 
// Module Name:    sw_btn_fsm 
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
module lock_fsm(
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
						state <= s1;
					else if(btn1)
						state <= s0;
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
						state <= s0;
					else
						state <= s2;
				end
				
				s3: begin
					if(btn0)
						state <= s1;
					else if(btn1)
						state <= s4;
					else
						state <= s3;
				end
				
				s4: begin
					if(btn0)
						state <= s3;
					else if(btn1)
						state <= s5;
					else
						state <= s4;
				end
				
				s5: begin
					if(btn0)
						state <= s1;
					else if(btn1)
						state <= s0;
					else
						state <= s5;
				end				
			/*
				s1:state <= (btn0) ? s1 : s1;	
				s1:state <= (btn1) ? s2 : s1;	
				
				s2:state <= (btn0) ? s3 : s2;	
				s2:state <= (btn1) ? s0 : s2;

				s3:state <= (btn0) ? s1 : s3;	
				s3:state <= (btn1) ? s4 : s3;	
				
				s4:state <= (btn0) ? s3 : s4;	
				s4:state <= (btn1) ? s5 : s4;	
				
				s5:state <= (btn0) ? s1 : s5;	
				s5:state <= (btn1) ? s0 : s5;
				*/
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
/*			s2:led = 0;
			s2: bcd = 4'b0010;
			
			s3:led = 0;
			s3: bcd = 4'b0011;
			
			s4:led = 0;
			s4: bcd = 4'b0100;

			s5:led = 1;			
			s5: bcd = 4'b0101;
*/
		endcase
		
endmodule
