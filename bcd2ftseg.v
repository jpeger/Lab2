`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:16:14 08/18/2015 
// Design Name: 
// Module Name:    bcd2ftseg 
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
module bcd2ftseg(
	bcd,
	ftseg
);
	 
input [3:0]bcd;
output reg [14:0]ftseg;

always@(*)
	case(bcd)
		4'd0: begin
			ftseg = 15'b0000_0011_1111_111;
		end
		4'd1: begin
			ftseg = 15'b1111_1111_1011_011;
		end
		4'd2: begin
			ftseg = 15'b0010_0100_1111_111;
		end
		4'd3: begin
			ftseg = 15'b0000_1100_1111_111;
		end
		4'd4: begin
			ftseg = 15'b1001_1000_1111_111;
		end
		4'd5: begin
			ftseg = 15'b0100_1000_1111_111;
		end
		4'd6: begin
			ftseg = 15'b0100_0000_1111_111;
		end
		4'd7: begin
			ftseg = 15'b0001_1111_1111_111;
		end
		4'd8: begin
			ftseg = 15'b0000_0000_1111_111;
		end
		4'd9: begin
			ftseg = 15'b0000_1000_1111_111;
		end
		default: begin
			ftseg = 15'b0111_0000_1111_111;
		end
	endcase
	
endmodule
