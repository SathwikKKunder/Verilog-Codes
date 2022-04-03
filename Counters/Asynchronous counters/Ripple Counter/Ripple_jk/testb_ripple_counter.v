`include "ripple_counter.v"

module testb_ripple_counter;

    wire [2:0] q;
    reg clk;
    reg clr,enable;

   ripple_counter count1 (.q(q),.clr(clr),.enable(enable),.clk(clk));

    initial begin
        clk = 1'b0;
        clr =1'b1;
        enable=1'b1;
       #5 clr =1'b0;
        #50 $finish;
    end

    always
       #1 clk = ~clk;

    initial begin
       $monitor($time,"ns clk=%b,clr=%b,enable=%b,q=%b",clk,clr,enable,q);
       $dumpfile("testb_ripple_counter.vcd");
       $dumpvars;
    end

endmodule