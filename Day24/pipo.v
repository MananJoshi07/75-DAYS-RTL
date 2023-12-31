`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2023 09:47:52 PM
// Design Name: 
// Module Name: pipo
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

`define DATA_WIDTH 4
module pipo(input clk, rst,
            input [`DATA_WIDTH-1:0] d,
            output reg [`DATA_WIDTH-1:0] q_out);

always@(posedge clk)
begin
    if(rst)
    q_out <= 4'b0000;
    else
    q_out<= d;
end               
endmodule
