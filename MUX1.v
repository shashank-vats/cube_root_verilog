module MUX1(out , sel, in);

  output [2:0] out;
  input [3:0] sel;
  input [31:0] in;
  reg out;
  
  always @ (in or sel)
    begin
        case(sel)
          0 : out = {1'b0,in[31:30]};
          1 : out = in[29:27];
          2 : out = in[26:24];
          3 : out = in[23:21];
          4 : out = in[20:18];
          5 : out = in[17:15];
          6 : out = in[14:12];
          7 : out = in[11:9];
          8 : out = in[8:6];
          9 : out = in[5:3];
          10 : out = in[2:0];
          default : out = 0;
        endcase
    end
        
endmodule
