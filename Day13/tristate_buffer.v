`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 03:47:04 PM
// Design Name: 
// Module Name: tristate_buffer
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
`define DATA_WIDTH 8
module tristate_buffer(
                        input [`DATA_WIDTH-1:0] data_in,
                        input enable,
                        output reg [`DATA_WIDTH-1:0]y_out);

always@(data_in, enable)
begin
if (enable==1)
     y_out=data_in;
     else
    y_out='bZ;
end
endmodule