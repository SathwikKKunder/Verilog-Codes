`include "Alu_using_case.v"

module test_alu;
  
  reg [3:0] a,b;
  reg [2:0] sel;
  wire [4:0] out;
  
  ALU a1(.a(a),.b(b),.sel(sel),.out(out));
  
  initial begin
        a =4'd5; b=4'd7; sel=3'd0;
    #10 a =4'd7; b=4'd5; sel=3'd1;
    #10 a =4'd7; b=4'd5; sel=3'd2;
    #10 a =4'd7; b=4'd5; sel=3'd3;
    #10 a =4'd7; b=4'd5; sel=3'd4;
    #10 a =4'd7; b=4'd1; sel=3'd5;
    #10 a =4'd1; b=4'd5; sel=3'd6;
    #10 a =4'd7; b=4'd5; sel=3'd7;
    #10 a =4'd7; b=4'd5; sel=3'd5;
  end
  
   initial 
     $monitor($time,"ns a=%b; b=%b; sel=%d, out=%b",a,b,sel,out);
  
endmodule