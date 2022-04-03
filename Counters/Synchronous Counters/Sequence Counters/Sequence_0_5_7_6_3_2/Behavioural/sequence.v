module sequence(y,clk,rst);

  parameter S1=3'b000,
	    S2=3'b101,
 	    S3=3'b111,
 	    S4=3'b110,
            S5=3'b011,
            S6=3'b010;

  output [2:0] y;
  input clk;
  input rst;

  reg [2:0] cur_state,next_state;

  assign y = cur_state;

  always @ (posedge clk) begin 
      
      if(rst)
        cur_state = S1;
      else
        cur_state = next_state;
  end


  always @(cur_state) begin
    
     case(cur_state)

         S1 : next_state = S2;

         S2 : next_state = S3;
   
         S3 : next_state = S4;

         S4 : next_state = S5;

         S5 : next_state = S6;

         S6 : next_state = S1;
    endcase


  end

endmodule
