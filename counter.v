module counter #( 
  parameter WIDTH = 8
)
(
  input                clk,
  input              reset,
  output [WIDTH-1 : 0] out
);

  logic [63:0] data [100];
  logic [WIDTH-1 : 0] count;

  always @(posedge clk)
    count <= count + 1;

  always @reset
    if (reset)
      assign count = 0;
    else
      deassign count;

  assign out = count;

endmodule // counter
