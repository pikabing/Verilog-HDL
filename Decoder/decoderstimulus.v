`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// By Pratik Gupta
//
// Module Name:   2 to 4 decoder
//
// Description : A decoder is a circuit which has n inputs and 2n outputs, and 
// outputs 1 on the wire corresponding to the binary number represented by the inputs.
// This decoder takes 2 inputs and gives 4 outputs.
//
// 
////////////////////////////////////////////////////////////////////////////////

module decoderstimulus;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire d1;
	wire d2;
	wire d3;
	wire d4;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.a(a), 
		.b(b), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 1;
		b = 1;
		
		#100
		a = 0;
		b = 1;
        
		// Add stimulus here

	end
      
endmodule

