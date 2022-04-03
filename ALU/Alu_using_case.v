
//8 Function ALU that takes 4bit inputs "a & b" and 3 bit input signal "select" and 5 bit Output out.
module ALU(
  input  [3:0] a,b,
  input  [2:0] sel,
  output reg [4:0] out);
  
  always @(*) begin
    
    case(sel)
      
      3'b000 : out =a;
      3'b001 : out =a+b;
      3'b010 : out =a-b;
      3'b011 : out =a/b;
      3'b100 : out =a%b;
      3'd5 : out =a<<b;
      3'b110 : out =a>>b;
      3'b111 : out =a > b;
    endcase
    
  end
  
endmodule