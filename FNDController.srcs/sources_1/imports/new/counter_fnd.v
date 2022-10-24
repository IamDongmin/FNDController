`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/11 15:34:00
// Design Name: 
// Module Name: counter_fnd
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


module counter_fnd(
    input                i_clk,
    input                i_reset,

    output  reg  [1:0]   o_counter
    );

    always @(posedge i_clk or posedge i_reset) begin
        if(i_reset) begin
            o_counter <= 0;
        end
        else begin
            if(o_counter == 3) begin
                o_counter <= 0;
            end
            else begin
                o_counter <= o_counter + 1;
            end
        end
    end
endmodule

//