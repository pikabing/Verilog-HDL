`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:43 04/13/2018 
// Design Name: 
// Module Name:    ALU 
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
module ALU(input code,input a,input b,output ans2
    );
	 wire [1:0]a; 
	 wire [1:0]b;
	 reg [3:0]ans = 0;
	 wire [3:0]ans2 = 0;
	 always @ (code)
	 begin
	  case(code)
	  1: ans <= a+b;
	  2: ans <= a - b;
	  3: ans <= a*b;
	  4: ans <= a/b;
	  endcase
	  end
	  assign ans2 = ans;
	  
endmodule
