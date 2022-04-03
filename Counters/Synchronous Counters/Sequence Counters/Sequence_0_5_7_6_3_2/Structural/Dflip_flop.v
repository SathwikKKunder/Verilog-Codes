module dff(q,qbar,clk,rst,d);

output reg q;
output reg qbar;
input clk,rst;
input  d;

always @(posedge clk ) begin
    if(rst) begin
      q=1'b0;
      qbar=1'b1;
    end

    else begin
      q = d;
      qbar = ~d;
    end
   
end

endmodule