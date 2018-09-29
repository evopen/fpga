module counter_10(rst, clk, sel, counter, carry);
	 input rst;
	 input clk;
	 input sel;
	 output [3:0] counter;
	 output 			carry;
	 reg [3:0] 		counter;
	 reg 					carry;

	 always@(posedge clk or posedge rst)
		 if(rst)
			 counter <= 4'b0;
		 else
			 case(sel)
				 1:
					 if(counter == 4'd10)
						 counter <= 4'b0;
					 else
						 counter <= counter + 1'b1;
				 0:
					 if(counter == 4'd0)
						 counter <= 4'd10;
					 else
						 counter <= counter - 1'b1;
			 endcase // case (sel)

	 always@(posedge clk or posedge rst)
		 if(rst)
			 carry <= 1'b0;
		 else
			 case(sel)
				 1:
					 if(counter == 4'd10)
						 carry <= 1'b1;
					 else
						 carry <= 1'b0;
				 0:
					 if(counter == 4'b0)
						 carry <= 1'b1;
					 else
						 carry <= 1'b0;
			 endcase // case (sel)
endmodule // counter_10
