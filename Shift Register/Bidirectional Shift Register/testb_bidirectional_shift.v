`include "Bidirectional_Shift_Register.v"

module testb_bidirectional_shift;

   wire [3:0] q;
   reg [3:0] in;
   reg clk;
   reg shift,load;

   Bidirect_shift shift1 (q,clk,shift,load,in);

   initial begin
     clk = 1'b0;
     shift = 1'b0;
     load = 1'b1;
   end

   always begin
       #1 clk = ~clk;
   end

   initial begin
        in =4'b1010;
       #1 load = 1'b0;
        
       #5 shift = 1'b1;

       #5 load =1'b1;
          in = 4'b0100;
          shift = 1'b0;
          load = 1'b0;
   end


   initial begin
       $monitor($time,"ns clk=%b,load=%b,shift=%b,in=%b,q=%b",clk,load,shift,in,q);
       $dumpfile("testb_bidirectional_shift.vcd");
       $dumpvars;
       #50 $finish;
   end
   endmodule