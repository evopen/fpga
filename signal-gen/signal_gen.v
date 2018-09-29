module signal_gen(clk, clr, din, dout);
	 input clk, clr;
	 input [7:0] din;
	 output 		 dout;
	 reg 				 dout;
	 reg [2:0] 	 counter;

	 always @ (posedge clk or posedge clr)
			if(clr)
				counter <= 0;
			else
				if(counter == 3'b111)
					counter <= 0;
				else
					counter <= counter +1;

	 always @ (posedge clk or posedge clr)
			if(clr)
				dout <= 0;
			else
				case(counter)
					3'b000: dout=din[7];
					3'b001: dout=din[6];
					3'b010: dout=din[5];
					3'b011: dout=din[4];
					3'b100: dout=din[3];
					3'b101: dout=din[2];
					3'b110: dout=din[1];
					3'b111: dout=din[0];
				endcase // case (counter)
endmodule // signal_gen
