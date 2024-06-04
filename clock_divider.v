module clock_divider(
    input clk_in,          
    output reg clk_out
);
   reg [27:0] counter = 28'd0;
	parameter divisor = 28'd1000000; 
	
    always @(posedge clk_in) begin
		counter <= counter + 28'd1;
        
		if (counter >= (divisor - 1))  
            counter <= 28'd0;
	
		clk_out <=(counter < divisor/2)?1'b1:1'b0; 
		end	
endmodule    



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


module BCD_to_SevenSeg (bcd,SEVENSEG);
 	input [2:0] bcd;
	output reg [10:0] SEVENSEG;


  always @(*) begin
    case(bcd)
      3'b000: SEVENSEG = 7'b1000000; // 0
        3'b001: SEVENSEG = 7'b1111001; // 1
        3'b010: SEVENSEG = 7'b0100100; // 2
        3'b011: SEVENSEG = 7'b0100000; // 3
        3'b100: SEVENSEG = 7'b1011001; // 4
        3'b101: SEVENSEG = 7'b0010010; // 5
        default: SEVENSEG = 7'b1111111; //Default case, all segments off
    endcase
  end

endmodule
