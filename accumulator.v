`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:09 08/18/2015 
// Design Name: 
// Module Name:    accumulator 
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
module accumulator(
    clk,
	 cnt
);

input clk;
output [15:0]cnt;
reg [15:0]cnt,next_cnt;

always@(posedge clk)
	cnt <= next_cnt;
	
always@(*)
	next_cnt = cnt + 16'd1;


endmodule
