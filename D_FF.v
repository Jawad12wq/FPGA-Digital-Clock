`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:23:49 05/22/2024 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF(Q,D,clk,rst
    );
  input D,clk,rst;
  output reg Q;
  always @(posedge clk) begin
  if(rst)
    Q <= 1'b0;
	 else
	 Q<=D;
  end

endmodule