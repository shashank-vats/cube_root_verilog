module Comparator(out, factor, in2);

    input [32:0] factor;
    input [32:0] in2;

    output reg [0:0] out;

    always @(factor or in2)
    begin
        if(factor <= in2)
            out = 1'b1;
        else
            out = 1'b0; 
    end

endmodule