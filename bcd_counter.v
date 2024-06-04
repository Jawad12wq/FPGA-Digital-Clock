module bcd_counter(
	input CLK,
	input CLR,
	output reg [3:0]Q
	);
	
	always@(negedge CLK) begin
	
	if(Q == 4'd9 | CLR)
		Q = 4'd0;
	else
		Q = Q + 4'b1; 
	end
	
endmodule
