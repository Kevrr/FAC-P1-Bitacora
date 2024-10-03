module sumDecoder(input logic [1: 0] a, b, 
						output logic [1: 0]y);

	assign y[0] = a[0] ^ b[0];
	assign y[1] = (a[1] ^ b[1]) ^ a[0] & b[0];
	
endmodule
