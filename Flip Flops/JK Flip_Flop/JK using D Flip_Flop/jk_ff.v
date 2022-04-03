`include "Dflip_flop.v"

module jk_ff(q,qbar,clk,j,k);

   output q;
   output qbar;
   input clk;
   input j,k;
   wire [3:0] w;

   /*initial begin
       q=1'b0;
       qbar = 1'b1;
   end */

   not g1 (w[0],k);
   
   and g2 (w[1],q,w[0]);
   and g3 (w[2],qbar,j);

   or g4 (w[3],w[2],w[1]);

   dff dff1(q,qbar,clk,w[3]);

endmodule