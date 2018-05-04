`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// 
// Design Name:   FourBitCounter
//
// Description: Stimulus File For 4-bit Counter
//
// Verilog Test Fixture created by ISE for module: FourBitCounter
// 
////////////////////////////////////////////////////////////////////////////////

module counter41stimulus;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] count;

	// Instantiate the Unit Under Test (UUT)
	counter41 uut (
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
		#10 reset=0;
		#500 reset=1;
		#10 reset=0;
		#500 reset=1;
	end 
		always #10 clk = ~clk;
	initial begin
		$monitor("%d %d %d %d\n", count[3], count[2], count[1], count[0]);
	end
	
endmodule

