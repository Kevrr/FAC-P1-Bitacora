module comparator (input [1: 0] a,
						 output equal);
												
	assign equal = (a[0] & a[1]);
	
endmodule
