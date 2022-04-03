module Bidirect_shift(q,clk,shift,load,in);

   output reg [3:0] q;
   input [3:0] in;
   input clk;
   input shift,load;

   always @(posedge clk,shift,load,in) begin
       
       if (load)
         q=in;

       else begin
         
         if(shift) 
           q = q << 1;         

         else 
           q = q >> 1;
           
       end
       
   end

   endmodule