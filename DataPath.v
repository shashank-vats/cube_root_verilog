`include "MUX1.v"
`include "Accumulator.v"
`include "Comparator.v"
`include "Subtractor.v"
`include "MUX2.v"
`include "Concatenator.v"

module DataPath(res, in, factor, iter, clear);

    input [31:0] in;
    input [32:0] factor;
    input [3:0] iter;
    input [0:0] clear;

    output [10:0] res;

    wire [2:0] mux1_out;
    wire [32:0] acc_out;
    wire comp_out;
    wire [32:0] mux2_out;
    wire [32:0] sub_out;

    MUX1 M1 (.out(mux1_out), .sel(iter), .in(in));
    Accumulator A1 (.out(acc_out), .in1(mux1_out), .in2(sub_out), .clear(clear), .iter(iter));
    Comparator C1 (.out(comp_out), .factor(factor), .in2(acc_out));
    MUX2 M2 (.out(mux2_out), .in(factor), .sel(comp_out));
    Subtractor S1 (.out(sub_out), .in1(acc_out), .in2(mux2_out));
    Concatenator Cnct1 (.out(res), .clear(clear), .i(iter), .b(comp_out));

endmodule