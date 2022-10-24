module decoder_2x4 (
    input       [1:0]   i_digit,
    output [3:0]   o_digit
);
    
    reg [3:0]   r_digit;
    assign o_digit = r_digit;

    always @(*) begin
        
        case (i_digit)
            2'b00 : r_digit = 4'b1110; 
            2'b01 : r_digit = 4'b1101;
            2'b10 : r_digit = 4'b1011;
            2'b11 : r_digit = 4'b0111;
            default : r_digit = 4'b0000;
        endcase
    end
endmodule
//