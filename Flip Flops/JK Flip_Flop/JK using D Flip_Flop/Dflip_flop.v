module dff(q,qbar,clk,d);

output reg q;
output reg qbar;
input clk;
input d;

always @(posedge clk ) begin
    q = d;
    qbar = ~d;
end

endmodule