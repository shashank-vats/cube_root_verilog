module Factor_Generator (out, res, iter, clear);

    input [10:0] res;
    input [3:0] iter;
    input clear;

    output reg [32:0] out;

    reg [31:0] a;
    reg [31:0] con;

    always @ (iter or clear)
    begin
        if (clear == 1'b1)
        begin
            a = 31'b0;
        end
        else
        begin
            if (iter == 0)
                out = 33'd1;
            else
            begin
                a = res;
                a = a >> (10 - iter);
               // a = a << 1;
                out = 3*a*a + 3*a + 1;
            end
        end
    end

endmodule