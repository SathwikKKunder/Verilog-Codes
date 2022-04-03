`include "jk_ff.v"

module testb_dff;

  wire q,qbar;
  reg clk,j,k;
  
  jk_ff ff1 (q,qbar,clk,j,k);

  initial
    clk = 1'b0;

  always
    #1 clk = ~clk;

  initial begin

    #5 j=1'b0;
       k=1'b1;

    #3 j=1'b0;
       k=1'b0;

    #10 j=1'b1;
        k=1'b0;

    #10 j=1'b1;
        k=1'b1;
  end

  initial begin
       $monitor($time,"ns clk=%b,j=%b,k=%b,q=%b,qbar=%b",clk,j,k,q,qbar);
       $dumpfile("testb_jkff.vcd");
       $dumpvars;
       #50 $finish;
   end
endmodule