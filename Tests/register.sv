module register (input logic clk, rst, en,
					  input logic [1: 0] data,
					  output [1: 0] r);
											 
	always_ff @(negedge clk or posedge rst)
		if (rst) r = 2'b00;
		else
			if (en) r = data;
			
endmodule
