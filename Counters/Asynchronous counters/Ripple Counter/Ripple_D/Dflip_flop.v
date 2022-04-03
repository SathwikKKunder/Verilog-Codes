module dff(q,qbar,clk,clr,d);

output reg q;
output reg qbar;
input clk;
input d;
input clr;

initial begin
  //qbar =1'b0;
end

always @(posedge clk,clr) begin
 
         if(clr) begin
           q=1'b0;
           qbar = ~q;
         end
         
         else begin
            q = d;
            qbar = ~q;
         end

end

endmodule
