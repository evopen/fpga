module gen_100101(clk, clr, din, dout);
	 input clk, clr;
	 input [5:0] din;
	 output 		 dout;
	 reg 				 dout;
	 reg [2:0] 	 counter;
	 reg 				 flip;

	 always @ (posedge clk or posedge clr)
		 if(clr)
			 begin
					counter <= 0;
					flip = 0;
			 end
		 else
			 if(counter < 5 && counter > 0)
				 if(flip == 0)
					 counter <= counter + 1;
				 else
					 counter <= counter - 1;
			 else if(counter == 5)
					if(flip == 0)
						flip = !flip;
					else
						counter <= counter - 1;
			 else if(counter == 0)
					if(flip == 1)
						flip = !flip;
					else
						counter <= counter + 1;

	 always @ (posedge clk or posedge clr)
		 if(clr)
			 dout <= 0;
		 else
			 case(counter)
				 0: dout=din[5];
				 1: dout=din[4];
				 2: dout=din[3];
				 3: dout=din[2];
				 4: dout=din[1];
				 5: dout=din[0];
			 endcase // case (counter)
endmodule // gen_100101

