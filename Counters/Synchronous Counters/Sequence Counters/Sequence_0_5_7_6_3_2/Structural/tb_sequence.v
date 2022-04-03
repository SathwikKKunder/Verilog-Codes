`include "sequence.v"

module tb_sequence;

    wire  [2:0] q;
    reg  [2:0] d;
    reg  clk,rst;

    sequence counter (.q(q),.clk(clk),.rst(rst),.d(d));

    assign q=3'b0;

    initial begin
        clk = 1'b1;
        //q=3'b0;
        rst =1'b1;
        #5 rst =1'b0;;
        #50 $finish;
    end

    always
       #1 clk = ~clk;

    initial begin
       $monitor($time,"ns clk=%b,rst=%b,q=%b,d=%b",clk,rst,q,d);
       $dumpfile("tb_sequene.vcd");
       $dumpvars;
    end

endmodule