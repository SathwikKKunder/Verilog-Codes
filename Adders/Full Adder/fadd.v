module fadd (in1,in2,cin,sum,cout);
  input in1,in2;
  input cin;
  output sum;
  output cout;
  
  assign {cout, sum} = in1 + in2 + cin;
endmodule
