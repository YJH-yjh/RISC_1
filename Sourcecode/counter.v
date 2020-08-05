`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/08/05 14:55:18
// Design Name: 
// Module Name: counter
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


module counter(pc_addr, clock, rst, en);
input clock, rst, en;
output reg [7:0] pc_addr;

always @(posedge clock or negedge rst) begin
	if(!rst) begin
		pc_addr <= 8'd0;
	end
	else begin
		if(en) pc_addr <= pc_addr+1;
		else pc_addr <= pc_addr;
	end
end

endmodule
