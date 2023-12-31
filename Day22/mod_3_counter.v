`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2023 12:15:11 PM
// Design Name: 
// Module Name: mod_3_counter
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


module mod_3_counter#(parameter WIDTH = 3)(
                                            input clk,
                                            input reset,
                                            output reg [WIDTH-1:0] count);

always @(posedge clk)
begin
    if (reset) begin
        count <= 0;
    end else begin
        count <= count + 1'b1;
        if (count == WIDTH-1) 
        begin
            count <= 0;
        end
    end
end
endmodule
