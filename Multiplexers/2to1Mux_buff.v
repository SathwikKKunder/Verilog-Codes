module mux_using_bufif (
  
  input in0,in1,sel,
  output out);
  
  bufif0  b0(out,in0,sel);
  bufif1  b1(out,in1,sel);
  
endmodule