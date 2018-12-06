`include "Counter.v"
`include "DataPath.v"
`include "Factor_Generator.v"

module CubeRootCalculator (out, in, clock, clear);

    input [31:0] in;
    input clock, clear;

    output [10:0] out;

    wire [3:0] iter;
    wire [32:0] factor;

    Counter C1(.out(iter), .clock(clock), .clear(clear));
    Factor_Generator F1(.out(factor), .res(out), .clear(clear), .iter(iter));
    DataPath D1(.res(out), .in(in), .factor(factor), .iter(iter), .clear(clear));

endmodule