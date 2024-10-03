module Tests (input logic [3: 0] d, 
				  input logic [1: 0]b, 
				  output logic [1: 0] y);

	logic [1: 0] a;
	
	inDecoder in (d, a);
	
	sumDecoder sum (a, b, y);
	
endmodule
