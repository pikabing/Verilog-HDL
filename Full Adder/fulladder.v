`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// By Pratik Gupta 
//  
// Module Name:    Full Adder 
//  
// Description: A Full adder using XOR , AND, OR gates
// Input = a,b,C-in
// Output Sum,Carry-out
// Sum = A XOR B XOR C
// Carry = (A AND B) OR (B AND C) OR (A AND C)
//////////////////////////////////////////////////////////////////////////////////
module fulladder(
 input a,
 input b,
 input c,
 output sum,
 output carry
    );
	 
	 xor(sum,a,b,c);
	 and(temp1,a,b);
	 and(temp2,b,c);
	 and(temp3,a,c);
	 or(carry,temp1,temp2,temp3);


endmodule
