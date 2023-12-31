`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2023 10:46:51 PM
// Design Name: 
// Module Name: bcd_counter
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
module bcd_counter(
                    input clk,
                    input reset_n,
                    output reg [3:0] count);
always@(posedge clk, negedge reset_n)
begin
    if(!reset_n | count>'b1000)
    count<='b0;
    else
    count<= count+'b1;
end                     
endmodule