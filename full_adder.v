`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:09 08/18/2015 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
	s,
	cout,
	x,
	y,
	cin
);

output s,cout;
input x,y,cin;

assign s = x^y^cin;
assign cout = (x&y)|(cin&(x^y));

endmodule
