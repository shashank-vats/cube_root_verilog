module Counter (out, clock, clear);

    input clock, clear;

    output reg [3:0] out;

    always @ (negedge(clock) or posedge(clear))
    begin
        if(clear == 1'b1)
            out = 4'd0;
        else if (out != 4'd10)
            out = out + 1;
    end

endmodule