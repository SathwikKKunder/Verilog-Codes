`include "jkff.v"

module ripple_counter(q,clk,clr,enable);

    output [2:0] q;
    input clk;
    input clr,enable;

    //jk_ff ff0 (.q(q[0]),.clk(clk),.j(1'b1),.k(1'b0));
    jkff ff1 (.q(q[0]),.clr(clr),.enable(enable),.clk(clk),.j(1'b1),.k(1'b1));
    jkff ff2 (.q(q[1]),.clr(clr),.enable(enable),.clk(q[0]),.j(1'b1),.k(1'b1));
    jkff ff3 (.q(q[2]),.clr(clr),.enable(enable),.clk(q[1]),.j(1'b1),.k(1'b1));

endmodule
