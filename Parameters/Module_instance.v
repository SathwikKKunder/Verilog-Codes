//Define a module hello_world 
module hello_world;

    parameter delay1=2 ; //define a module delay1=2
    parameter delay2=3 ;
    parameter delay3=27 ;

    initial //display the module identification number
      $display("Displaying hello_world delay1 = %d\ndelay2 = %d\ndelay3 = %d", delay1,delay2,delay3);

endmodule

//define top-level module
 module top;


    //instantiate two hello_world modules 
    hello_world #(5,6,7)w1();
    hello_world #(.delay2(5),.delay1(6))w2();

endmodule