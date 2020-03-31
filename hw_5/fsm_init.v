/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Thu Oct  3 14:26:08 2019
/////////////////////////////////////////////////////////////


module fsm ( clock, reset, R0, R1, G0, G1 );
  input clock, reset, R0, R1;
  output G0, G1;
  wire   next_state;

  XOR2_X2 U3 ( .A(R1), .B(R0), .Z(next_state) );
  DFFR_X2 current_state_reg ( .D(next_state), .CK(clock), .RN(reset), .Q(G1)
         );
  INV_X4 U4 ( .A(1'b1), .ZN(G0) );
endmodule

