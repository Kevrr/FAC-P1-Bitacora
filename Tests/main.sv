module main (input logic clk, rst, en,
				 input logic [3: 0] d,
				 output logic motor_on,
				 output logic [6: 0] res_seg);

	logic [1: 0] a, b, res;
	
	inDecoder in (d, a);
	
	sumDecoder sum (a, b, res);
	
	register res_reg (clk, rst, en, res, b);
	
	comparator cmp (res, motor_on);
	
	sevenseg show (res, res_seg);
	
endmodule
