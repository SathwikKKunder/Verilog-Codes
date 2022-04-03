`include "Dflip_flop.v"

module sequence(q,clk,rst,d);

    output [2:0] q;
    input [2:0] d;
    input clk,rst;
    wire [2:0]qbar;
    wire q2q0,q1q0,q2q0_bar;
    //reg [2:0]wq;

    assign q = q!=0 : 0 : q;

    not(qbar[0],q[0]);
    not(qbar[1],q[1]);

    and(q2q0,q[2],q[0]);
    and(q1q0,q[1],q[0]);
    and(q2q0_bar,q[2],qbar[0]);

    or(d[2],qbar[1],q2q0);
    or(d[1],q[2],q1q0);
    or(d[0],qbar[1],q2q0_bar);

    dff dff2(q[2],qbar[2],clk,rst,d[2]);
    dff dff1(q[1],qbar[1],clk,rst,d[1]);
    dff dff0(q[0],qbar[0],clk,rst,d[0]);

endmodule