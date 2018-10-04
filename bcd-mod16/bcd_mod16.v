module bcd_mod16(qout, cout, data, load, cin, reset ,clk);
	 output [3:0] qout;
	 output 			cout;
	 input [3:0] 	data;

	 input 				load, cin, reset, clk;
	 reg [3:0] 		qout;
	 always @ (posedge clk)
		 if(reset)
			 qout = 0;
		 else if(load)
			 qout = data;
		 else if(cin)
			 if(qout == 15)
				 qout = 0;
			 else
				 qout = qout + 1;
endmodule // bcd_mod16
