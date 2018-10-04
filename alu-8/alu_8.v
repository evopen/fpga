module alu_8(sigin_a, sigin_b, selector, sigout);
	 input [3:0] sigin_a;
	 input [3:0] sigin_b;
	 input [2:0] selector;
	 output [4:0] sigout;
	 reg [4:0] 	sigout;
	 always @ (posedge selector)
		 case(selector)
			 3'b000: sigout <= sigin_a;
			 3'b001: sigout <= sigin_a + sigin_b;
			 3'b010: sigout <= sigin_a - sigin_b;
			 3'b011: sigout <= sigin_a / sigin_b;
			 3'b100: sigout <= sigin_a % sigin_b;
			 3'b101: sigout <= sigin_a << 1;
			 3'b110: sigout <= sigin_a >> 1;
			 3'b111: sigout <= sigin_a > sigin_b;
		 endcase // case (selector)
endmodule // alu_8

