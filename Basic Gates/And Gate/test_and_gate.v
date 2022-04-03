`include "and_gate.v"
module test_and;
  
  reg in1,in2;
  wire out;


  and_gate a1 (in1,in2,out);

  initial 
   begin
     #10 in1 = 1'b0; in2 =1'b0;
     #10 in1 = 1'b0; in2 =1'b1;
     #10 in1 = 1'b1; in2 =1'b0;
     #10 in1 = 1'b1; in2 =1'b1;
     #10 $finish;
   end


 initial
  $monitor($time,"ns in1=%b,in2=%b,out=%b",in1,in2,out);

 
 initial
   begin
    $dumpfile("and_test.vcd");
    $dumpvars;
   end

endmodule
