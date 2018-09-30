module decoder_4_16(insig, outsig);
	 input [3:0] insig;
	 output [15:0] outsig;
	 reg [15:0] 		outsig;
	 always @ (insig)
		 case(insig)
			 4'd0: outsig = 16'b0000000000000001;
			 4'd1: outsig = 16'b0000000000000010;
			 4'd2: outsig = 16'b0000000000000100;
			 4'd3: outsig = 16'b0000000000001000;
			 4'd4: outsig = 16'b0000000000010000;
			 4'd5: outsig = 16'b0000000000100000;
			 4'd6: outsig = 16'b0000000001000000;
			 4'd7: outsig = 16'b0000000010000000;
			 4'd8: outsig = 16'b0000000100000000;
			 4'd9: outsig = 16'b0000001000000000;
			 4'd10: outsig = 16'b0000010000000000;
			 4'd11: outsig = 16'b0000100000000000;
			 4'd12: outsig = 16'b0001000000000000;
			 4'd13: outsig = 16'b0010000000000000;
			 4'd14: outsig = 16'b0100000000000000;
			 4'd15: outsig = 16'b1000000000000000;
		 endcase // case (insig)
endmodule // decoder_4_16
