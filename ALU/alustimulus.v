`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:27:29 04/13/2018
// Design Name:   ALU
// Module Name:   F:/Verilog/lab_practice/ALUstimulus.v
// Project Name:  lab_practice
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUstimulus;

	// Inputs
	reg code;
	reg ans;
	reg a;
	reg b;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.code(code), 
		.ans2(ans2), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		code = 1;
		a = 1;
		b = 0;
 
		// Wait 100 ns for global reset to finish
		#100;
		code = 2;
		a = 2;
		b = 1;
		
		#100;
		code = 0;
		
        
		end
      
endmodule

