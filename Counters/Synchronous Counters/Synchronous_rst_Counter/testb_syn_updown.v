`include "Syn_rst_updown_counter.v"

module testb_syn_updown;

   wire [2:0] y;
   reg clk;
   reg rst,updown;

   Syn_updown counter1(y,clk,rst,updown);

   initial begin
     clk = 1'b0;
     updown = 1'b0;
     rst = 1'b0;
   end

   always begin
       #1 clk = ~clk;
   end

   initial begin
        #10 rst =1'b1;

        #5 rst =1'b0;

        #5 updown = 1'b1;

        #10 updown = 1'b0;
   end


   initial begin
       $monitor($time,"ns clk=%b,rst=%b,updown=%b,y=%b",clk,rst,updown,y);
       $dumpfile("testb_syn_updown.vcd");
       $dumpvars;
       #50 $finish;
   end

endmodule