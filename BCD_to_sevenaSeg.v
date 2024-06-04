`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:57 05/15/2024 
// Design Name: 
// Module Name:    BCD_to_sevenaSeg 
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
module BCD_to_SevenSeg (bcd,SEVENSEG);
 	input [2:0] bcd;
	output reg [10:0] SEVENSEG;


  always @(*) begin
    case(bcd)
      3'b000: SEVENSEG = 7'b1000000; // 0
      3'b001: SEVENSEG= 7'b1111001; // 1
      3'b010: SEVENSEG = 7'b0100100; // 2
      3'b011: SEVENSEG = 7'b0100000; // 3
      3'b100: SEVENSEG = 7'b1011001;// 4
      3'b101: SEVENSEG = 7'b0010010;//5

      default: SEVENSEG = 7'b1000000;  // 0
    endcase
  end

endmodule

