`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:06:08 02/06/2018
// Design Name:   aDifferentCounter
// Module Name:   E:/VerilogPrograms/Logic-Circuits/diffCountSimulate.v
// Project Name:  Logic-Circuits
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: aDifferentCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module primestimulus;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [2:0] count;

	// Instantiate the Unit Under Test (UUT)
	primecounter uut (
		.clk(clk), 
		.reset(reset), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 1;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		#100 reset=0;
		#100 reset=1;
		#100 reset=0;
	end
      always #10 clk = ~clk;
	
	initial begin
		$monitor("%d %d %d | %d\n", count[2], count[1], count[0], count);
	end
	
endmodule

