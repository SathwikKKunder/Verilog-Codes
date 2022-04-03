`include "jkff.v"

module testb_dff;

  wire q,qbar;
  reg clk,j,k;
  reg clr,enable;
  
  jkff ff1 (q,qbar,clk,clr,enable,j,k);

  initial begin
    clr=1'b0;
    enable = 1'b1;
    clk = 1'b0;
  end
    
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
       $monitor($time,"ns clk=%b,clr=%b,en=%b,j=%b,k=%b,q=%b,qbar=%b",clk,clr,enable,j,k,q,qbar);
       $dumpfile("tb_jkff.vcd");
       $dumpvars;
       #50 $finish;
   end
endmodule