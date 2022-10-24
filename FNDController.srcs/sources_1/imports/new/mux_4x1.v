`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/11 15:32:32
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
    input [3:0] i_a,
    input [3:0] i_b,
    input [3:0] i_c,
    input [3:0] i_d,
    input [1:0] i_sel,
    output [3:0] o_y
    );
    
    reg [3:0] r_y;
    
    assign o_y = r_y;
    
    always @(*) begin
        r_y = 4'b0000;
        case(i_sel)
            0 : r_y = i_a;
            1 : r_y = i_b;
            2 : r_y = i_c;
            3 : r_y = i_d;
        endcase 
    end
     
endmodule
//