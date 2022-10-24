`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/17 09:53:06
// Design Name: 
// Module Name: FNDController
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


module FNDController(
    input i_clk,
    input i_reset,
    input [13:0]    i_value,

    output [3:0]    o_fndSelect,
    output [7:0]    o_fndFont
    );

    wire w_clk;

    clock_divider U0(
        .i_clk(i_clk),
        .i_reset(i_reset),
        .o_clk(w_clk)
    );

    wire [1:0]  w_counter;

    counter_fnd U1(
        .i_clk(w_clk),
        .i_reset(i_reset),
        .o_counter(w_counter)
    );

    decoder_2x4 U2(
        .i_digit(w_counter),
        .o_digit(o_fndSelect)
    );

    wire [3:0]  w_1000, w_100, w_10, w_1;

    digit_divider U3(
        .i_value(i_value),
        .o_1000(w_1000), 
        .o_100(w_100), 
        .o_10(w_10), 
        .o_1(w_1)
    );

    wire [3:0]  w_digit;

    mux_4x1 U4(
        .i_a(w_1),
        .i_b(w_10),
        .i_c(w_100),
        .i_d(w_1000),
        .i_sel(w_counter),
        .o_y(w_digit)
    );

    BCDtoFND U5(
        .i_fnd_data(w_digit),
        .o_fnd_font(o_fndFont)
    );

endmodule
