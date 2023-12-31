`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 12:40:00 PM
// Design Name: 
// Module Name: jhonson_counter
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

module jhonson_counter(
                        input clk,
                        input reset_n,
                        output reg [3:0] count);

always@(posedge clk, negedge reset_n)
begin
    if(!reset_n)
    count<='b0;
    else
    count<={~count[2:0], count[3]};
end                    
endmodule
