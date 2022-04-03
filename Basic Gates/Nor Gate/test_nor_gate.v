module test_nor;
  
  reg in1,in2;
  wire out;


  nor_gate n1 (in1,in2,out);

  initial 
   begin
     #1 in1 = 1'b0; in2 =1'b0;
     #1 in1 = 1'b0; in2 =1'b1;
     #1 in1 = 1'b1; in2 =1'b0;
     #1 in1 = 1'b1; in2 =1'b1;
   end


 initial
  $monitor($time,"ns in1=%b,in2=%b,out=%b",in1,in2,out);

 
 initial
   begin
    $dumpfile("nor_test.vcd");
    $dumpvars;
   end

endmodule
