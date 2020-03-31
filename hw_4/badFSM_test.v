// Test module for fsm

 module test_fsm;
 
 reg reset, clock, start, done_flag;
 reg [8:0] match_address;
 wire [8:0] location, outcell;	

initial
   begin
 
/* Comments to include for Unix   */
     $shm_open("waves.shm");  // save shm data base to mem.sav
     $shm_probe ("AS");    // save all signals in the hierarchy, A = save all top level signals

/* Comments to include for Windows 
$vw_dumpfile("test.vwf");
$vw_dumpvars();
*/
      clock = 0;
      reset = 1;
      done_flag = 0;
      start = 0;
      match_address  = 9'd0;

      #1 reset = 0;
      
      #9 reset = 1;
      
     #40 start = 1;
     #10 start = 0;
        match_address = 9'd1;

     #10 match_address = 9'd2;
     #10 match_address = 9'd3;
     #10 match_address = 9'd4;
     #10 match_address = 9'd5;
     #10 match_address = 9'd6;
     #10 match_address = 9'd7;
     #10 match_address = 9'd8;
     #10 match_address = 9'd9;

       
     #10 match_address = 9'd511;
         done_flag = 1;

     #40 reset = 0;
     #10 reset = 1;
      
     #40 $finish;
     
/* Comment to include for Unix */    
    $shm_close();  

   end

always  #5 clock = ~clock;

fsm u1 (clock, reset, start, done_flag, match_address, inc_flag, location, outcell);

endmodule
