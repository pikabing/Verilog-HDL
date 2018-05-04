`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// By Pratik Gupta
// 
// Module Name:    Half Adder 
//
// Description: A half adder circuit where Sum = A XOR B and 
//  Carry = A AND B
//////////////////////////////////////////////////////////////////////////////////
module halfadder(
 input a,
 input b,
 output sum,
 output carry  
 );
 
 xor(sum,a,b);
 and(carry, a,b);


endmodule
