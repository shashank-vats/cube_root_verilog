module MUX2 (out, in, sel);

    input [32:0] in;
    input [0:0] sel;

    output reg [32:0] out;

    always @(in or sel)
    begin
        if(sel == 1'b1)
            out = in;
        else
            out = 33'd0;
    end
endmodule