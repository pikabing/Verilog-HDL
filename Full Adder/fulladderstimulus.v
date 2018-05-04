`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// By Pratik Gupta 
//  
// Module Name:    Full Adder 
//  
// Description: A Full adder using XOR , AND, OR gates
// Input = a,b,C-in
// Output Sum,Carry-out
// Sum = A XOR B XOR C
// Carry = (A AND B) OR (B AND C) OR (A AND C)
////////////////////////////////////////////////////////////////////////////////

module fulladderstimulus;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	fulladder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a=0;
		b=1;
		c=0;
		
		
		#100
		a=1;
		b=1;
		c=1;
		
		#100
		a=1;
		b=0;
		c=0;
		
        
		// Add stimulus here

	end
      
endmodule

