`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// By Pratik Gupta
//
// Module Name:   2 to 4 decoder
//
// Description : A decoder is a circuit which has n inputs and 2n outputs, and 
// outputs 1 on the wire corresponding to the binary number represented by the inputs.
// This decoder takes 2 inputs and gives 4 outputs.
//
//
//////////////////////////////////////////////////////////////////////////////////
module decoder(
   input a ,
   input b,
	output d1,
	output d2,
	output d3,
	output d4
	);
	
	and(d1,a,b);
	and(d2,~a,b);
	and(d3,a,~b);
	and(d4,~a,~b);


endmodule
