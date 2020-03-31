module testfixture;

// Note, this is only a partial test.  In reality, you should test for all transitions;

// You can write your own testbench too. Make sure to reproduce the timing diagram as in the description. Feel free to add other cases as well. 

reg clock, reset, R0, R1;


wire G0, G1;


initial


  begin


   reset = 1;  R0=0; R1=0; clock=0;


    #10 reset = 0;


    #10 reset = 1;


    #10 R0=1; R1=1;


   #10 if (G1 || !G0) $display("Error\N"); else $display("Test 1 OK\N");


         R1=0;


  #10 if (G0 || !G1) $display("Error\N"); else $display("Test 2 OK\N");


         R0=1;


   #10 if (G1 || !G0) $display("Error\N"); else $display("Test 3 OK\N");


   #10 if (G1 || !G0) $display("Error\N"); else $display("Test 4 OK\N");


          R1=1; R0=0;


  #10 if (G0 || !G1) $display("Error\N"); else $display("Test 5 OK\N");


        R0=1; R1=0;


   #10 if (G1 || !G0) $display("Error\N"); else $display("Test 6 OK\N");


  end


 


always #5 clock = ~clock;


 


fsm U0 (.clock(clock), .reset(reset), .R0(R0), .R1(R1), .G0(G0), .G1(G1));


endmodule
