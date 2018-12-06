module Concatenator(out,clear, i, b);
input [0:0] clear, b;
input [3:0] i;
output reg [10:0] out;


always @ (clear or i or b)
    begin
       if(clear == 1'b1)
           out = 11'd0;
       else
           out[10-i]=b;
    end
endmodule