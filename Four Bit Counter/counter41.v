`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Module Name:    FourBitCounter 
//
// Description: 4-Bit Counter Using Verilog-HDL
//
//////////////////////////////////////////////////////////////////////////////////
module counter41(
	 input clk,
	 input reset,
	 output [3:0] count
	 );

reg [3:0] count;

always @ (posedge(clk))
begin
if (reset == 1'b1)
	count <= 4'b0000;
else
	count <= count + 1'b1;
end
endmodule
