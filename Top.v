module Top( CLK, RST, RST_BTN, BTN0, BTN1, LED, SEVENSEG);
	
	input CLK, RST, BTN0, BTN1, RST_BTN;
	
	output LED;
	output [7:0]SEVENSEG;
	
	wire SLOW_CLOCK;
	//wire synch_btn0, synch_btn1, synch_rst;
	
	wire pulse0, pulse1, RST_Pulse;
	
	wire [3:0]bcd;
	
	clock_divider divider(CLK, SLOW_CLOCK);
	lock_fsm2 my_fsm( pulse0, pulse1, SLOW_CLOCK, RST_Pulse, LED, bcd);

	btn_module b0(BTN0, SLOW_CLOCK, RST,  pulse0);
	btn_module b1(BTN1, SLOW_CLOCK, RST,  pulse1);
	btn_module b2(RST_BTN, SLOW_CLOCK, RST,  RST_Pulse);

	BCD_to_SevenSeg(bcd, SEVENSEG);
	
endmodule
