module Tests_tb;

	logic [3: 0] d;
	logic [1: 0] b, y;
	
	Tests testing (d, b, y);
	
	initial begin
		b = 2'b00; 
		d = 4'b1000; #10;
		assert (y === 2'b01) else $error ("failed 0+1");
		d = 4'b1100; #10;
		assert (y === 2'b10) else $error ("failed 0+2");
		d = 4'b1110; #10;
		assert (y === 2'b11) else $error ("failed 0+3");
		d = 4'b1111; #10;
		assert (y === 2'b00) else $error ("failed 0+4");
		b = 2'b01;  
		d = 4'b1000; #10;
		assert (y === 2'b10) else $error ("failed 1+1");
		d = 4'b1100; #10;
		assert (y === 2'b11) else $error ("failed 1+2");
		d = 4'b1110; #10;
		assert (y === 2'b00) else $error ("failed 1+3");
		d = 4'b1111; #10;
		assert (y === 2'b01) else $error ("failed 1+4");
		b = 2'b10; 
		d = 4'b1000; #10;
		assert (y === 2'b11) else $error ("failed 2+1");
		d = 4'b1100; #10;
		assert (y === 2'b00) else $error ("failed 2+2");
		d = 4'b1110; #10;
		assert (y === 2'b01) else $error ("failed 2+3");
		d = 4'b1111; #10;
		assert (y === 2'b10) else $error ("failed 2+4");
		b = 2'b11; 
		d = 4'b1000; #10;
		assert (y === 2'b00) else $error ("failed 3+1");
		d = 4'b1100; #10;
		assert (y === 2'b01) else $error ("failed 3+2");
		d = 4'b1110; #10;
		assert (y === 2'b10) else $error ("failed 3+3");
		d = 4'b1111; #10;
		assert (y === 2'b11) else $error ("failed 3+4");
	end
endmodule
