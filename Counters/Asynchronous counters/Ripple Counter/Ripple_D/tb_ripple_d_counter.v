`include "ripple_counter_dff.v"

module testb_ripple_d_counter;

    wire [2:0] q;
    reg clk,clr;

   ripple_counter_dff count1 (.q(q),.clk(clk),.clr(clr));

    initial begin
        clk = 1'b0;
        clr =1'b1;
       #5 clr =1'b0;
        #50 $finish;
    end

    always
       #1 clk = ~clk;

    always @(posedge clk ) begin
    //$display($time,"ns clr=%b,q=%b",clr,q);
  end

    initial begin
       $monitor($time,"ns clk=%b,clr=%b,q[0]=%b,q[1]=%b,q=%b",clk,clr,q[0],q[1],q);
       $dumpfile("testb_ripple_counter.vcd");
       $dumpvars;
    end

endmodule