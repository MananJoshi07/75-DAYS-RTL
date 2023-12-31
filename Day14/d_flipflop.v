`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 04:35:17 PM
// Design Name: 
// Module Name: d_flipflop
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
module d_flipflop(
                  input d,
                  input clk,
                  input reset,
                  output reg q);
  
always @(posedge clk, negedge reset)
begin
   if (!reset)
   q <= 0;
   else
   q <= d;
end
endmodule