`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:14 02/06/2018 
// Design Name: 
// Module Name:    aDifferentCounter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module primecounter(
	input clk,
	input reset,
	output [2:0] count
    );

reg [2:0] count;

always @ (posedge(clk))

begin
if(reset == 1'b1)
	count <= 3'b000;
else if (count == 3'b111)
	count <= 3'b000;
else if (count == 3'b010)
	count <= count + 1;
else
	count <= count + 2;
end

endmodule
