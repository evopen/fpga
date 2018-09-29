module decoder_3_8(insig, outsig);
	 input [2:0] insig;
	 output [7:0] outsig;
	 reg [7:0] 		outsig;
	 always@(insig)
		 case(insig)
			 3'b000: outsig = 8'b00000001;
			 3'b001: outsig = 8'b00000010;
			 3'b010: outsig = 8'b00000100;
			 3'b011: outsig = 8'b00001000;
			 3'b100: outsig = 8'b00010000;
			 3'b101: outsig = 8'b00100000;
			 3'b110: outsig = 8'b01000000;
			 3'b111: outsig = 8'b10000000;
		 endcase // case (insig)
endmodule // decoder_3_8
