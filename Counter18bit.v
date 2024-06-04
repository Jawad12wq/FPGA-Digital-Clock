module Counter18bit(
    input CLK,
	 input RST,
	 output reg[17:0] count
	);
	
	 always @(negedge CLK) begin
		if(count == 18'b111111111111111111 | RST)
			count <= 18'd0;
		else		
			count <= count + 18'b1;    
	 end

endmodule
