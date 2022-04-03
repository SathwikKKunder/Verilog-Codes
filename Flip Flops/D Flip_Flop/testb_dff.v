`include "Dflip_flop.v"

module testb_dff;

  wire q,qbar;
  reg clk,d;
  
  dff d1 (q,qbar,clk,d);

  initial begin
    clk = 1'b0;
    d=1'b0;
  end

  always
    #1 clk = ~clk;

  initial begin
    #3 d=1'b1;
    #2 d=1'b0;
    #3 d=1'b1;
  end

  initial begin
       $monitor($time,"ns clk=%b,d=%b,q=%b,qbar=%b",clk,d,q,qbar);
       $dumpfile("testb_dff.vcd");
       $dumpvars;
       #15 $finish;
   end
endmodule