//-----------------------------------------------------
// Design Name : mux_using_assign
// File Name   : mux_using_assign.sv
// Function    : 2:1 Mux using Assign
// Coder       : Deepak Kumar Tala
//-----------------------------------------------------
module  mux_using_assign (
input  wire  din_0      , // Mux first input
input  wire  din_1      , // Mux Second input
input  wire  sel        , // Select input
output wire  mux_out      // Mux output
);
//-------------Code Start-----------------
assign mux_out = (sel) ? din_1 : din_0;

initial 
    begin
      $display("This is a mux design");
      $finish ;
end


endmodule //End Of Module mux

