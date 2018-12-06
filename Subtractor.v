module Subtractor (out, in1, in2);

    input [32:0] in1;
    input [32:0] in2;

    output reg [32:0] out;

    always @(in1 or in2)
    begin
        out = in1 - in2;
    end
endmodule