module clock_divider (
    input       i_clk,
    input       i_reset,

    output      o_clk
);
    //100_000_000/2 - 1 = 1초
    reg r_clk = 0;

    assign o_clk = r_clk;
    reg [31:0]  r_counter = 0;

    always @(posedge i_clk or posedge i_reset) begin
        if(i_reset) begin
            r_clk <= 0;
            r_counter <= 0;
        end
        else begin
            if(r_counter == 50_000 - 1) begin
                r_counter <= 0;
                r_clk = ~r_clk;
            end
            else begin
                r_counter <= r_counter + 1;
            end
        end
    end
endmodule

//