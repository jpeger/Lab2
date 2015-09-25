`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:05:48 08/17/2015 
// Design Name: 
// Module Name:    lab2 
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
module lab2(
	clk,
	D_ssd,
	d,
	ftsd_ctl,
	a,
	b
);



output [14:0]D_ssd;
output [3:0]d;
output [3:0]ftsd_ctl;
input clk;
input [3:0]a,b;

reg [3:0]bcd,ftsd_ctl;
wire [3:0]msb,lsb;
wire [15:0]scan_ctl;

assign d=a;
assign msb = (a+b>4'd9) ? 4'd1 : 4'd0;
assign lsb = (a+b>4'd9) ? (a+b-4'd10) : (a+b);
/*
full_adder F0(
	.s(),
	.cout(),
	.x(),
	.y(),
	.cin()
);
*/
accumulator A0(
	.clk(clk),
	.cnt(scan_ctl)
);

bcd2ftseg B0(
	.bcd(bcd),
	.ftseg(D_ssd)
);

always@(*)
	case(scan_ctl[15:14])
		2'b00: begin
			ftsd_ctl = 4'b1110;
			bcd = a;
		end
		2'b01: begin
			ftsd_ctl = 4'b1101;
			bcd = b;
		end	
		2'b10: begin
			ftsd_ctl = 4'b1011;
			bcd = lsb;
			//bcd = 4'd0;
		end
		2'b11: begin
			ftsd_ctl = 4'b0111;
			bcd = msb;
			//bcd = 4'd0;
		end
		default: begin
			ftsd_ctl = 4'b1111;
			bcd = 4'd0;
		end
	endcase


	

endmodule
