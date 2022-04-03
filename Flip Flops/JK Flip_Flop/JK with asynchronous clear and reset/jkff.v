module jkff(q,qbar,clk,clr,enable,j,k);

   output reg q;
   output reg qbar;
   input clk;
   input j,k;
   input clr,enable;

   always @(posedge clk,j,k,clr,enable) begin

       if(enable) begin
         
         if(clr) begin
           q=1'b0;
           qbar=1'b1;
         end

         case ({j,k})
          2'b00 : begin q <=q; qbar <= qbar; end
          2'b01 : begin q <=0; qbar <= 1; end
          2'b10 : begin q <=1; qbar <= 0; end
          2'b11 : begin q <=qbar; qbar <= q; end 

         endcase

       end    
   end
endmodule