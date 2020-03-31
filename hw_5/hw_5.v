// Verilog file for the fsm for the pattern matching engine

module fsm (clock, reset, R0, R1, G0, G1);  

input clock;		// clock
input reset;		// resets the fsm
input R0, R1;		// Input Data

output reg G0, G1;	// Output Data

reg current_state, next_state;


parameter
   s0 = 0,
   s1 = 1,
   s2 = 2,
   s3 = 3;

always @(posedge clock or negedge reset)
   begin
   if (!reset)
      current_state = s0;
   else
      begin
      current_state = next_state;
      end
   end


always @(current_state or R0 or R1)
    begin
    case (current_state)
      s0:
	begin
          G0 <= 0;
          G1 <= 0;
		case({R1,R0})
		    2'b00: next_state <= s0;
		    2'b01: next_state <= s3;
		    2'b10: next_state <= s1;
		    2'b11: next_state <= s2;
		  endcase		
        end

      s1:
	begin
          G0 <= 0;
          G1 <= 1;
		case({R1,R0})
		    2'b00: next_state <= s0;
		    2'b01: next_state <= s3;
		    2'b10: next_state <= s1;
		    2'b11: next_state <= s2;
		  endcase		
        end

      s2:
	begin
          G0 <= 1;
          G1 <= 0;
	  next_state <= s1;		
        end

      s3:
	begin
          G0 <= 1;
          G1 <= 0;
		case({R1,R0})
		    2'b00: next_state <= s0;
		    2'b01: next_state <= s3;
		    2'b10: next_state <= s1;
		    2'b11: next_state <= s2;
		  endcase		
        end

    endcase
    end


endmodule

