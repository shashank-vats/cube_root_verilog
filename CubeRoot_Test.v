`include "CubeRootCalculator.v"

module CubeRoot_Test;

    reg clk, clear;
    reg [31:0] in;

    wire [10:0] out;

    CubeRootCalculator C1(.out(out), .in(in), .clock(clk), .clear(clear));

    initial
    begin
        clear = 1'b1;
        in = 32'd8120601;
        clk = 1'b1;
        $display("in = %d", in);
        $monitor("clear = %b iter = %d out = %d", clear, C1.iter, out);
        $dumpfile("CubeRoot.vcd");
        $dumpvars(0);
    end 

    initial
    begin
    forever
        #25 clk = ~clk;
    end

    initial
    begin
        #50 clear = 1'b0;
        #700 $finish;
    end

endmodule