`include "fadd4.v"

module newfadd4_test;

  reg[3:0] in1,in2;
  reg cin;
  wire cout;
  wire [3:0]sum; 
  reg[3:0] expected;
  integer i,j,k;
 
  fadd4 test_bench(in1,in2,cin,sum,cout);
  //fadd4 test_bench(.in1(in1),.in2(in2),.cin(cin),.sum(sum),.cout(cout));
 
  initial 
    begin
      
     for(k=0; k<2; k=k+1)
      begin
       cin =k;
       
       for(i=0; i<16; i=i+1)
        begin
         in1 = i;
      
         for(j=0; j<16; j=j+1)
           begin
            in2 = j;
            
            #5
            expected = in1+in2+cin;
            if(sum[3:0] == expected[3:0]) //&& cout == expected[4])
              begin
              $display("Test successfull");
              //$display($time," ns monitor in1= %b,in2= %b,cin= %b,sum = %b,cout= %b,expected=%d",in1,in2,cin,sum,cout,expected);
              end
            else
              begin
              $display("Test Fail");
              //$display($time,"ns Test Faill in1= %b,in2= %b,cin= %b,sum = %b,cout= %b, expected=%d",in1,in2,cin,sum,cout,expected);
              
              end
           end
        end
      end
        
  end

  initial
    $monitor($time," ns monitor in1= %b,in2= %b,cin= %b,sum = %b,cout= %b,expected=%d",in1,in2,cin,sum,cout,expected);

initial 
   begin
     $dumpfile("test_fadd.vcd");
     $dumpvars;
     #500 $finish;
   end

endmodule