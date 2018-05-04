`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:50:22 04/11/2018
// Design Name:   Multiplexer
// Module Name:   F:/Verilog/lab_practice/multiplexerstimulus.v
// Project Name:  lab_practice
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multiplexer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiplexerstimulus;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg s0;
	reg s1;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	Multiplexer uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.s0(s0), 
		.s1(s1), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		s0 = 0;
		s1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 0;
		b = 1;
		c = 0;
		d = 1;
		s0 = 1;
		s1 = 1;

        
		// Add stimulus here

	end
      
endmodule

