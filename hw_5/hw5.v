 
module fsm(
input reset, clock,
input R0, R1, //input
output reg G0, G1 // output
);
reg[1:0] current_state;
reg[1:0] next_state; 
 
// state names 
  localparam WAIT_ON_REQUEST = 2'b00; 
  localparam HANDLE_G1 = 2'b01; 
  localparam HANDLE_G0_ONLY = 2'b10; 
  localparam HANDLE_G0_FIRST = 2'b11; 
   
  // Flip-flop 
  always @ (posedge clock) 
    begin 
      current_state <= (!reset) ? WAIT_ON_REQUEST : next_state; // on reset, start in WAIT_ON_REQUEST state 
    end 
     
  // Combinational logic 
  always @ * 
    case(current_state) 
      WAIT_ON_REQUEST : begin // State 0 
        G0 <= 0; 
        G1 <= 0; 
        casex({R0, R1}) 
          2'b00 : next_state <= WAIT_ON_REQUEST; 
          2'b01 : next_state <= HANDLE_G1; 
          2'b10 : next_state <= HANDLE_G0_ONLY; 
          2'b11 : next_state <= HANDLE_G0_FIRST; 
        endcase 
      end 
       
      HANDLE_G1 : begin // State 1 
        G0 <= 0; 
        G1 <= 1; 
        case({R0, R1}) 
          2'b00 : next_state <= WAIT_ON_REQUEST; 
          2'b01 : next_state <= HANDLE_G1; 
          2'b10 : next_state <= HANDLE_G0_ONLY; 
          2'b11 : next_state <= HANDLE_G0_FIRST; 
        endcase 
      end 
       
      HANDLE_G0_ONLY : begin // State 2 
        G0 <= 1; 
        G1 <= 0; 
        case({R0, R1}) 
          2'b00 : next_state <= WAIT_ON_REQUEST; 
          2'b01 : next_state <= HANDLE_G1; 
          2'b10 : next_state <= HANDLE_G0_ONLY; 
          2'b11 : next_state <= HANDLE_G0_FIRST; 
        endcase 
      end 
       
      HANDLE_G0_FIRST : begin // State 3 
        G0 <= 1; 
        G1 <= 0; 
        next_state <= HANDLE_G1; // goes to this state always 
      end 
    endcase 
endmodule 
 

