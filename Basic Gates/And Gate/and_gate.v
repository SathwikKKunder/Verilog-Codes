module and_gate(in1,in2,out);

  input in1,in2;
  output out;

  assign #(1,1) out = (in1 && in2);

endmodule
