`include "2to1Mux_buff.v"

module bufif_tb;
  
  reg in0,in1,sel;
  wire out;

  mux_using_bufif mux (.in0(in0),.in1(in1),.sel(sel),.out(out));
  
  
  initial begin
    #10 in0=1'b0; in1=1'b1; sel=1'b0;
    
    #10 in0=1'b1; in1=1'b1; sel=1'b0;
    
    #10 in0=1'b1; in1=1'b1; sel=1'b1;
    
    #10 in0=1'b1; in1=1'b0; sel=1'b1;
    
  end
  
  initial 
    $monitor($time,"ns in0=%b; in1=%b; sel=%b, out=%b",in0,in1,sel,out);
  
endmodule