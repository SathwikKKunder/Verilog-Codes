`include "fadd.v"

module fadd4(in1,in2,cin,sum,cout);
  input[3:0] in1,in2;
  input cin;
  output[3:0] sum;
  output cout;
  wire[2:0] temp_cout;

  fadd af(.in1(in1[0]),.in2(in2[0]),.cin(cin),.sum(sum[0]),.cout(temp_cout[0]));
  fadd a(.in1(in1[1]),.in2(in2[1]),.cin(temp_cout[0]),.sum(sum[1]),.cout(temp_cout[1]));
  fadd b(.in1(in1[2]),.in2(in2[2]),.cin(temp_cout[1]),.sum(sum[2]),.cout(temp_cout[2]));
  fadd c(.in1(in1[3]),.in2(in2[3]),.cin(temp_cout[2]),.sum(sum[3]),.cout(cout));

endmodule