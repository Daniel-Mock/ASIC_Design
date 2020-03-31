// Verilog file for the fsm for the pattern matching engine

module fsm (clock, reset, start, done_flag, match_address, inc_flag, location,
outcell);  

input clock;		// 100 Mhz clock
input reset;		// resets the fsm
input start;		// starts the search
input [8:0] match_address;	// address for the pattern match

input done_flag;	// signal from compare module saying it has finished
			// its search

output  inc_flag;	// used to increment the address location
output [8:0] location;	// location output for pattern match
output [8:0] outcell;   // A hash on location

reg  [8:0] location, outcell;
reg current_state, next_state;
reg inc_flag;
reg signal;

parameter
   s0 = 0,
   s1 = 1;

always @(posedge clock or negedge reset)
   begin
   if (!reset)
      current_state = s0;
   else
      begin
      current_state = next_state;
      end
   end

always @(current_state or start or done_flag or match_address)
   begin
   case (current_state)
   s0:
      begin
      if (start)
         begin         
         next_state = s1;
	 end
      else
         begin
	 location = 9'd0;
	 inc_flag = 0;
	 next_state = s0;
	 end
      end

   s1:
      begin 
      location = match_address;
      inc_flag = 1;
      if (done_flag) 
         begin	 
	 next_state = s0;
	 end
      else
         begin         
         next_state = s1;
	 end
      end

   endcase
   end

always@(posedge clock)
  outcell = location ^ (location << 1);


always@(done_flag)
  signal = done_flag & (^location[4:2]);

endmodule

