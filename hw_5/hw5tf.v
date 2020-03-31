/* 
Michael Patel 
ECE 564 
Hw 05 
 
Simple arbiter test bench 
*/ 
 
module rq_tb; 
  reg reset, clock, R0, R1; 
  wire G0, G1; 
   
  fsm DUT (reset, clock, R0, R1, G0, G1); // instantiation 
   
  always 
  #5 clock <= !clock; // toggle clock signal 
   
  initial begin 
    $monitor("\nR0=%b, R1=%b, G0=%b, G1=%b", R0, R1, G0, G1); 
     
    reset = 1'b0; 
    clock = 1'b0; 
     
    #20 reset = 1'b1;  
    #10 R0 = 1'b0; R1 = 1'b1; // NS: HANDLE_G1 
    #10 R0 = 1'b0; R1 = 1'b1; // NS: HANDLE_G1 
    #10 R0 = 1'b1; R1 = 1'b0; // NS: HANDLE_G0_ONLY 
    #10 R0 = 1'b1; R1 = 1'b1; // NS: HANDLE_G0_FIRST, NS: HANDLE_G1 
    #10 R0 = 1'b1; R1 = 1'b0; // DISCARD 
    #10 reset = 1'b0; // NS: WAIT_ON_REQUEST 
    #10 reset = 1'b1;  
    #10 R0 = 1'b1; R1 = 1'b1; // NS: HANDLE_G0_FIRST, NS: HANDLE_G1 
    #10 R0 = 1'b1; R1 = 1'b1; // DISCARD 
    #10 R0 = 1'b0; R1 = 1'b0; // NS: WAIT_ON_REQUEST 
     
    #10 $finish; 
  end 
 
endmodule 
