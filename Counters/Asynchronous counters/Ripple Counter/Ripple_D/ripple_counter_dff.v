`include "Dflip_flop.v"

module ripple_counter_dff(q,clk,clr);

    output [2:0] q,qbar;
    input clk;
    input clr;

    
    dff ff1 (q[0],qbar[0],clk,clr,qbar[2]);
    dff ff2 (q[1],qbar[1],q[0],clr,qbar[0]);
    dff ff3 (q[2],qbar[2],q[1],clr,qbar[1]);
    //dff ff1 (.q(q[0]),.qbar(qbar[0]).clr(clr),.enable(enable),.clk(clk),.d(qbar[0]));
    //dff ff2 (.q(q[1]),.qbar(qbar[1]).clr(clr),.enable(enable),.clk(clk),.d(q[0]));
    //dff ff3 (.q(q[2]),.qbar(qbar[2]).clr(clr),.enable(enable),.clk(clk),.d(q[1]));
endmodule
