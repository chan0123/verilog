module counter(out, clk, reset);

  parameter WIDTH = 8;

  output [WIDTH-1 : 0] out;
  input 	       clk, reset;

  reg [WIDTH-1 : 0]   out;
  wire 	       clk, reset;
  logic [63:0] data [100];

  always @(posedge clk)
    out <= out + 1;

  always @reset
    if (reset)
      assign out = 0;
    else
      deassign out;

endmodule // counter
