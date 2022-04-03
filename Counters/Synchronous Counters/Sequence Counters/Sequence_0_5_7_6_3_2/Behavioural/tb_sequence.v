`include "sequence.v"

module tb_sequence;

   wire [2:0] y;
   reg clk,rst;

   sequence seq_count (y,clk,rst);

   initial begin
     clk <= 1'b0;
     rst <= 1'b1;
    #20 rst = 1'b0;
    #150 $finish;
  end


  always 
   #10 clk = ~clk;

  initial begin
   $monitor($time,"ns clk=%b,rst=%b,y=%b",clk,rst,y);
   $dumpfile("tb_sequence.vcd");
   $dumpvars;
  end

endmodule
