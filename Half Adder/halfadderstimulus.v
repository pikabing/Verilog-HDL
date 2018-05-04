`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// 
// By Pratik Gupta
// 
// Module Name:    Half Adder 
//
// Description: A half adder circuit where Sum = A XOR B and 
//  Carry = A AND B
////////////////////////////////////////////////////////////////////////////////

module halfadderstimulus;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	halfadder uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
       a = 0;
       b = 1;
		 
		 #100
		 a = 1;
		 b = 0;
		 
		 #100
		 
		 a = 1;
		 b = 1;
		// Add stimulus here

	end
      
endmodule

