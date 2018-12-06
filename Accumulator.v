module Accumulator (out, in1, in2, clear, iter);

    input [2:0] in1;
    input [32:0] in2;
    input [0:0] clear;
    input [3:0] iter;

    output reg [32:0] out;

    always @(iter or clear)
    begin
        //in2 = in2 << 3;
        if(clear == 1'b1)
            out = 33'd0;
        else
            out = in1 + (in2 << 3);
    end
    
endmodule