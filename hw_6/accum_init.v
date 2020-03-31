/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Fri Oct 11 18:59:38 2019
/////////////////////////////////////////////////////////////


module accum ( reset, clock, clear, DataIn1, DataIn2, EvenParity, GreyCode, 
        overflow );
  input [7:0] DataIn1;
  input [7:0] DataIn2;
  output [7:0] EvenParity;
  output [7:0] GreyCode;
  input reset, clock, clear;
  output overflow;
  wire   N4, N5, N17, N18, N19, N20, N21, N22, N23, N24, N25, N35, N36, N37,
         N38, N39, N40, N41, N42, N43, N45, N46, N47, N48, N49, N50, N51, N52,
         N53, N54, N55, N56, N57, N58, N59, N60, N61, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, \add_1_root_add_92_2/CI , \add_1_root_add_92_2/B[0] ,
         n36, n37;
  wire   [8:1] \add_1_root_add_92_2/carry ;
  wire   [8:1] \add_1_root_add_91_2/carry ;

  XOR2_X2 U3 ( .A(n12), .B(n13), .Z(\add_1_root_add_92_2/CI ) );
  XOR2_X2 U4 ( .A(n14), .B(n15), .Z(n13) );
  XOR2_X2 U5 ( .A(DataIn1[5]), .B(DataIn1[4]), .Z(n15) );
  XOR2_X2 U8 ( .A(DataIn1[7]), .B(DataIn1[6]), .Z(n14) );
  XOR2_X2 U9 ( .A(n16), .B(n17), .Z(n12) );
  XOR2_X2 U10 ( .A(DataIn1[3]), .B(DataIn1[2]), .Z(n17) );
  XNOR2_X2 U11 ( .A(DataIn1[0]), .B(DataIn1[1]), .ZN(n16) );
  XOR2_X2 U12 ( .A(n18), .B(n19), .Z(\add_1_root_add_92_2/B[0] ) );
  XOR2_X2 U13 ( .A(n20), .B(n21), .Z(n19) );
  XOR2_X2 U14 ( .A(DataIn2[5]), .B(DataIn2[4]), .Z(n21) );
  XOR2_X2 U15 ( .A(DataIn2[7]), .B(DataIn2[6]), .Z(n20) );
  XOR2_X2 U16 ( .A(n22), .B(n23), .Z(n18) );
  XOR2_X2 U17 ( .A(DataIn2[3]), .B(DataIn2[2]), .Z(n23) );
  XNOR2_X2 U18 ( .A(DataIn2[0]), .B(DataIn2[1]), .ZN(n22) );
  NOR2_X2 U19 ( .A1(n24), .A2(n25), .ZN(N61) );
  NOR3_X2 U20 ( .A1(N25), .A2(overflow), .A3(N43), .ZN(n24) );
  OAI22_X2 U21 ( .A1(n26), .A2(n27), .B1(n28), .B2(n29), .ZN(N5) );
  NAND4_X2 U22 ( .A1(DataIn2[1]), .A2(DataIn2[3]), .A3(DataIn2[5]), .A4(
        DataIn2[7]), .ZN(n29) );
  NAND4_X2 U23 ( .A1(DataIn2[0]), .A2(DataIn2[2]), .A3(DataIn2[4]), .A4(
        DataIn2[6]), .ZN(n27) );
  NAND2_X2 U24 ( .A1(reset), .A2(n37), .ZN(n25) );
  OAI22_X2 U25 ( .A1(n30), .A2(n31), .B1(n32), .B2(n33), .ZN(N4) );
  NAND4_X2 U26 ( .A1(DataIn1[1]), .A2(DataIn1[3]), .A3(DataIn1[5]), .A4(
        DataIn1[7]), .ZN(n33) );
  NAND4_X2 U27 ( .A1(DataIn1[0]), .A2(DataIn1[2]), .A3(DataIn1[4]), .A4(
        DataIn1[6]), .ZN(n31) );
  AND2_X1 U30 ( .A1(N24), .A2(n36), .ZN(N60) );
  AND2_X1 U31 ( .A1(N23), .A2(n36), .ZN(N59) );
  AND2_X1 U32 ( .A1(N22), .A2(n36), .ZN(N58) );
  AND2_X1 U33 ( .A1(N21), .A2(n36), .ZN(N57) );
  AND2_X1 U34 ( .A1(N20), .A2(n36), .ZN(N56) );
  AND2_X1 U35 ( .A1(N19), .A2(n36), .ZN(N55) );
  AND2_X1 U36 ( .A1(N18), .A2(n36), .ZN(N54) );
  AND2_X1 U37 ( .A1(N17), .A2(n36), .ZN(N53) );
  AND2_X1 U38 ( .A1(N42), .A2(n36), .ZN(N52) );
  AND2_X1 U39 ( .A1(N41), .A2(n36), .ZN(N51) );
  AND2_X1 U40 ( .A1(N40), .A2(n36), .ZN(N50) );
  OR4_X1 U41 ( .A1(DataIn2[0]), .A2(DataIn2[2]), .A3(DataIn2[4]), .A4(
        DataIn2[6]), .ZN(n28) );
  OR4_X1 U42 ( .A1(DataIn2[1]), .A2(DataIn2[3]), .A3(DataIn2[5]), .A4(
        DataIn2[7]), .ZN(n26) );
  AND2_X1 U43 ( .A1(N39), .A2(n36), .ZN(N49) );
  AND2_X1 U44 ( .A1(N38), .A2(n36), .ZN(N48) );
  AND2_X1 U45 ( .A1(N37), .A2(n36), .ZN(N47) );
  AND2_X1 U46 ( .A1(N36), .A2(n36), .ZN(N46) );
  AND2_X1 U47 ( .A1(N35), .A2(n36), .ZN(N45) );
  OR4_X1 U48 ( .A1(DataIn1[0]), .A2(DataIn1[2]), .A3(DataIn1[4]), .A4(
        DataIn1[6]), .ZN(n32) );
  OR4_X1 U49 ( .A1(DataIn1[1]), .A2(DataIn1[3]), .A3(DataIn1[5]), .A4(
        DataIn1[7]), .ZN(n30) );
  FA_X1 \add_1_root_add_92_2/U1_0  ( .A(EvenParity[0]), .B(
        \add_1_root_add_92_2/B[0] ), .CI(\add_1_root_add_92_2/CI ), .CO(
        \add_1_root_add_92_2/carry [1]), .S(N35) );
  FA_X1 \add_1_root_add_91_2/U1_0  ( .A(GreyCode[0]), .B(N5), .CI(N4), .CO(
        \add_1_root_add_91_2/carry [1]), .S(N17) );
  DFF_X2 \EvenParity_reg[6]  ( .D(N51), .CK(clock), .Q(EvenParity[6]) );
  DFF_X2 \EvenParity_reg[5]  ( .D(N50), .CK(clock), .Q(EvenParity[5]) );
  DFF_X2 \EvenParity_reg[4]  ( .D(N49), .CK(clock), .Q(EvenParity[4]) );
  DFF_X2 \EvenParity_reg[3]  ( .D(N48), .CK(clock), .Q(EvenParity[3]) );
  DFF_X2 \EvenParity_reg[2]  ( .D(N47), .CK(clock), .Q(EvenParity[2]) );
  DFF_X2 \EvenParity_reg[1]  ( .D(N46), .CK(clock), .Q(EvenParity[1]) );
  DFF_X2 \GreyCode_reg[6]  ( .D(N59), .CK(clock), .Q(GreyCode[6]) );
  DFF_X2 \GreyCode_reg[5]  ( .D(N58), .CK(clock), .Q(GreyCode[5]) );
  DFF_X2 \GreyCode_reg[4]  ( .D(N57), .CK(clock), .Q(GreyCode[4]) );
  DFF_X2 \GreyCode_reg[3]  ( .D(N56), .CK(clock), .Q(GreyCode[3]) );
  DFF_X2 \GreyCode_reg[2]  ( .D(N55), .CK(clock), .Q(GreyCode[2]) );
  DFF_X2 \GreyCode_reg[1]  ( .D(N54), .CK(clock), .Q(GreyCode[1]) );
  DFF_X2 \EvenParity_reg[7]  ( .D(N52), .CK(clock), .Q(EvenParity[7]) );
  DFF_X2 \EvenParity_reg[0]  ( .D(N45), .CK(clock), .Q(EvenParity[0]) );
  DFF_X2 \GreyCode_reg[0]  ( .D(N53), .CK(clock), .Q(GreyCode[0]) );
  DFF_X2 \GreyCode_reg[7]  ( .D(N60), .CK(clock), .Q(GreyCode[7]) );
  DFF_X2 overflow_reg ( .D(N61), .CK(clock), .Q(overflow) );
  AND2_X1 U50 ( .A1(\add_1_root_add_92_2/carry [7]), .A2(EvenParity[7]), .ZN(
        N43) );
  XOR2_X1 U51 ( .A(EvenParity[7]), .B(\add_1_root_add_92_2/carry [7]), .Z(N42)
         );
  AND2_X1 U52 ( .A1(\add_1_root_add_92_2/carry [6]), .A2(EvenParity[6]), .ZN(
        \add_1_root_add_92_2/carry [7]) );
  XOR2_X1 U53 ( .A(EvenParity[6]), .B(\add_1_root_add_92_2/carry [6]), .Z(N41)
         );
  AND2_X1 U54 ( .A1(\add_1_root_add_92_2/carry [5]), .A2(EvenParity[5]), .ZN(
        \add_1_root_add_92_2/carry [6]) );
  XOR2_X1 U55 ( .A(EvenParity[5]), .B(\add_1_root_add_92_2/carry [5]), .Z(N40)
         );
  AND2_X1 U56 ( .A1(\add_1_root_add_92_2/carry [4]), .A2(EvenParity[4]), .ZN(
        \add_1_root_add_92_2/carry [5]) );
  XOR2_X1 U57 ( .A(EvenParity[4]), .B(\add_1_root_add_92_2/carry [4]), .Z(N39)
         );
  AND2_X1 U58 ( .A1(\add_1_root_add_92_2/carry [3]), .A2(EvenParity[3]), .ZN(
        \add_1_root_add_92_2/carry [4]) );
  XOR2_X1 U59 ( .A(EvenParity[3]), .B(\add_1_root_add_92_2/carry [3]), .Z(N38)
         );
  AND2_X1 U60 ( .A1(\add_1_root_add_92_2/carry [2]), .A2(EvenParity[2]), .ZN(
        \add_1_root_add_92_2/carry [3]) );
  XOR2_X1 U61 ( .A(EvenParity[2]), .B(\add_1_root_add_92_2/carry [2]), .Z(N37)
         );
  AND2_X1 U62 ( .A1(\add_1_root_add_92_2/carry [1]), .A2(EvenParity[1]), .ZN(
        \add_1_root_add_92_2/carry [2]) );
  XOR2_X1 U63 ( .A(EvenParity[1]), .B(\add_1_root_add_92_2/carry [1]), .Z(N36)
         );
  AND2_X1 U64 ( .A1(\add_1_root_add_91_2/carry [7]), .A2(GreyCode[7]), .ZN(N25) );
  XOR2_X1 U65 ( .A(GreyCode[7]), .B(\add_1_root_add_91_2/carry [7]), .Z(N24)
         );
  AND2_X1 U66 ( .A1(\add_1_root_add_91_2/carry [6]), .A2(GreyCode[6]), .ZN(
        \add_1_root_add_91_2/carry [7]) );
  XOR2_X1 U67 ( .A(GreyCode[6]), .B(\add_1_root_add_91_2/carry [6]), .Z(N23)
         );
  AND2_X1 U68 ( .A1(\add_1_root_add_91_2/carry [5]), .A2(GreyCode[5]), .ZN(
        \add_1_root_add_91_2/carry [6]) );
  XOR2_X1 U69 ( .A(GreyCode[5]), .B(\add_1_root_add_91_2/carry [5]), .Z(N22)
         );
  AND2_X1 U70 ( .A1(\add_1_root_add_91_2/carry [4]), .A2(GreyCode[4]), .ZN(
        \add_1_root_add_91_2/carry [5]) );
  XOR2_X1 U71 ( .A(GreyCode[4]), .B(\add_1_root_add_91_2/carry [4]), .Z(N21)
         );
  AND2_X1 U72 ( .A1(\add_1_root_add_91_2/carry [3]), .A2(GreyCode[3]), .ZN(
        \add_1_root_add_91_2/carry [4]) );
  XOR2_X1 U73 ( .A(GreyCode[3]), .B(\add_1_root_add_91_2/carry [3]), .Z(N20)
         );
  AND2_X1 U74 ( .A1(\add_1_root_add_91_2/carry [2]), .A2(GreyCode[2]), .ZN(
        \add_1_root_add_91_2/carry [3]) );
  XOR2_X1 U75 ( .A(GreyCode[2]), .B(\add_1_root_add_91_2/carry [2]), .Z(N19)
         );
  AND2_X1 U76 ( .A1(\add_1_root_add_91_2/carry [1]), .A2(GreyCode[1]), .ZN(
        \add_1_root_add_91_2/carry [2]) );
  XOR2_X1 U77 ( .A(GreyCode[1]), .B(\add_1_root_add_91_2/carry [1]), .Z(N18)
         );
  INV_X4 U78 ( .A(n25), .ZN(n36) );
  INV_X4 U79 ( .A(clear), .ZN(n37) );
endmodule

