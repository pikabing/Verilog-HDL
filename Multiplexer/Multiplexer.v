`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// By Pratik Gupta
//
// Module Name:  4 to 1 Multiplexer
//
// Description : Multiplexer is a device that has multiple inputs and a single line output. The select lines determine which input is connected to the output, and also to increase the amount of data that can be 
// sent over a network within certain time. It is also called a data selector.
// I have made a 4 to 1 multiplexer here. We have 2 select variables and 4 inputs.
//
//////////////////////////////////////////////////////////////////////////////////
module Multiplexer( 
    input a,
	 input b,
	 input c,
	 input d,
	 input s0,
	 input s1,
	 output q
    );
	 
	 and(temp1,a,s0,s1);
	 and(temp2,b,~s0,s1);
	 and(temp3,c,s0,~s1);
	 and(temp4,d,~s0,~s1);
	 or(q,temp1,temp2,temp3,temp4);


endmodule
