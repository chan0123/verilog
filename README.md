# verilog

compile using the following command:
iverilog -o my_design -g2005-sv counter_tb.v counter.v

add the following in testbench for waveform dumping
  initial
  begin
    $dumpfile("test.vcd");
    $dumpvars(0,test);
    $monitor("At time %t, value = %h (%0d)",
              $time, value, value);
  end

run the design
vvp my_design

use gtkwave to open test.vcd for waveform

