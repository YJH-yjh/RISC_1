`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/08/05 14:57:13
// Design Name: 
// Module Name: reg_32
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module reg_32(in, data, write, read, addr, clk);
input write, read, clk;
input [7:0] in;
input [7:0] addr; 


output [7:0] data;

reg [7:0] R[31:0]; 
wire [4:0] r_addr;

assign r_addr = addr[4:0];
assign data = (read)? R[r_addr]:8'hzz;	

always @(posedge clk) begin				
	if(write)	R[r_addr] <= in; 
end

endmodule

