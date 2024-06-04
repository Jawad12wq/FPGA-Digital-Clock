module Mux4x1(
	input [1:0]S,
	input [7:0]segment1,
	input [7:0]segment2,
	input [7:0]segment3,
	output reg [7:0]O
    );
	 
	always@(*)
		case(S)
			2'b00: O = segment1;
			2'b01: O = segment2;
			2'b10: O = segment3;
			default: O = segment1;
		endcase

endmodule
