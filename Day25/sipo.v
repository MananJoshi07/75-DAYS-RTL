`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2023 10:14:03 PM
// Design Name: 
// Module Name: sipo
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


module sipo(input clk,din,rst,
            output reg [3:0] dout);

reg [3:0] tmp;

always @(posedge clk )
begin
    if (rst)
    dout = 4'b0000;
    else
    tmp = dout >>1 ;
    dout = {din,tmp[2:0]};
end
endmodule