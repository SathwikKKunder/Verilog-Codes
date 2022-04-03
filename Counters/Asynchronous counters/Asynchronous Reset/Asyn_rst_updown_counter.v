module Asyn_updown(y,clk,rst,updown);

    output reg [2:0] y;
    input clk;
    input rst,updown;

    initial begin
        y=3'b000;
    end

    always @(posedge clk ,rst) begin
        
        if(rst)
          y=3'b0;

        else
          begin

            if(updown)
              y = y+1;

            else
              y = y-1;
          end
    end

endmodule