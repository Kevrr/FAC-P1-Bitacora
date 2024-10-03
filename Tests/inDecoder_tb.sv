module inDecoder_tb;
	
	logic [3: 0] d;
	logic [1: 0] x;
	
	inDecoder in (d, x);
	
	initial begin
		d = 4'b1000; #10;
		assert (x == 2'b01) else $error("failed 1");
		d = 4'b1100; #10;
		assert (x == 2'b10) else $error("failed 2");
		d = 4'b1110; #10;
		assert (x == 2'b11) else $error("failed 3");
		d = 4'b1111; #10;
		assert (x == 2'b00) else $error("failed 4");
	end
endmodule