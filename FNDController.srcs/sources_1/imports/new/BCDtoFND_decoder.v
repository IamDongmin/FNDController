module BCDtoFND (
    input [3:0] i_fnd_data,
    output [7:0] o_fnd_font
    );
    
    reg [7:0] r_fnd_font;

    assign o_fnd_font = r_fnd_font;
    
    always @(i_fnd_data) begin
        r_fnd_font = 8'hff;
        
        case (i_fnd_data)          //   dp g f e d c b a
            0 : r_fnd_font = 8'hc0;    //8'b1100_0000
            1 : r_fnd_font = 8'hf9;    //8'b1111_1001
            2 : r_fnd_font = 8'ha4;    //8'b1010_0100
            3 : r_fnd_font = 8'hb0;    //8'b1010_0000
            4 : r_fnd_font = 8'h99;    //8'b1001_1001
            5 : r_fnd_font = 8'h92;    //8'b1001_0010
            6 : r_fnd_font = 8'h82;    //8'b1000_0010
            7 : r_fnd_font = 8'hf8;    //8'b1111_1000
            8 : r_fnd_font = 8'h80;    //8'b1000_0000
            9 : r_fnd_font = 8'h90;    //8'b1001_0000
            10 : r_fnd_font = 8'h88;   //8'b1000_1000
            11 : r_fnd_font = 8'h83;   //8'b1000_0011
            12 : r_fnd_font = 8'hc6;   //8'b1100_0110
            13 : r_fnd_font = 8'ha1;   //8'b1010_0001
            14 : r_fnd_font = 8'h86;   //8'b1000_0110
            15 : r_fnd_font = 8'h8e;   //8'b1000_1110
        endcase        
    end   
endmodule
//