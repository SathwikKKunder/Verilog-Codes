`include "Dflip_flop.v"

module testb_dff;

  wire q,qbar;
  reg clk,d;
  reg clr;
  
  dff d1 (.q(q),.qbar(qbar),.clk(clk),.clr(clr),.d(d));

  initial begin
    clk = 1'b0;
    clr =1'b1;
    d=1'b0;
    #5 clr =1'b0;
    #50 $finish;
  end

  always
    #1 clk = ~clk;

  initial begin
    #3 d=1'b1;
    #2 d=1'b0;
    #3 d=1'b1;
  end

  always @(posedge clk ) begin
    //$display($time,"ns clr=%b,d=%b,q=%b,qbar=%b",clr,d,q,qbar);
  end

  initial begin
       $monitor($time,"ns clk=%b,clr=%b,d=%b,q=%b,qbar=%b",clk,clr,d,q,qbar);
       $dumpfile("testb_dff.vcd");
       $dumpvars;
       #15 $finish;
   end
endmodule