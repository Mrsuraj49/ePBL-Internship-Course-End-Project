/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Fri Apr 10 07:32:02 2026
/////////////////////////////////////////////////////////////


module full_adder ( A, B, C_in, Clock, SUM, C_out );
  input [3:0] A;
  input [3:0] B;
  output [3:0] SUM;
  input C_in, Clock;
  output C_out;
  wire   n86, n87, n88, n89, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153;
  wire   [3:0] regA;
  wire   [3:0] regB;

  DFFX1_HVT \regA_reg[3]  ( .D(A[3]), .CLK(Clock), .Q(regA[3]), .QN(n122) );
  DFFX1_HVT \regA_reg[2]  ( .D(A[2]), .CLK(Clock), .Q(regA[2]), .QN(n125) );
  DFFX1_HVT \regA_reg[1]  ( .D(A[1]), .CLK(Clock), .Q(regA[1]), .QN(n110) );
  DFFX1_HVT \regB_reg[3]  ( .D(B[3]), .CLK(Clock), .Q(regB[3]), .QN(n121) );
  DFFX1_HVT \regB_reg[2]  ( .D(B[2]), .CLK(Clock), .Q(regB[2]), .QN(n119) );
  DFFX1_HVT \regB_reg[1]  ( .D(B[1]), .CLK(Clock), .Q(regB[1]), .QN(n109) );
  DFFX1_HVT \regB_reg[0]  ( .D(B[0]), .CLK(Clock), .Q(regB[0]), .QN(n123) );
  DFFX1_HVT c_in_reg_reg ( .D(C_in), .CLK(Clock), .Q(n86), .QN(n124) );
  DFFX1_HVT \SUM_reg[3]  ( .D(n87), .CLK(Clock), .Q(SUM[3]) );
  DFFX1_HVT \SUM_reg[2]  ( .D(n88), .CLK(Clock), .Q(SUM[2]) );
  DFFX1_HVT \SUM_reg[1]  ( .D(n89), .CLK(Clock), .Q(SUM[1]) );
  DFFX1_HVT \SUM_reg[0]  ( .D(n108), .CLK(Clock), .Q(SUM[0]) );
  DFFX1_HVT \regA_reg[0]  ( .D(A[0]), .CLK(Clock), .Q(n130), .QN(n97) );
  DFFX1_HVT C_out_reg ( .D(n116), .CLK(Clock), .QN(n101) );
  NBUFFX4_HVT U44 ( .A(n143), .Y(n91) );
  OR2X1_HVT U45 ( .A1(regA[1]), .A2(regB[1]), .Y(n143) );
  IBUFFX4_HVT U46 ( .A(n125), .Y(n104) );
  NAND3X1_HVT U47 ( .A1(n141), .A2(n91), .A3(n99), .Y(n146) );
  IBUFFX4_HVT U48 ( .A(n94), .Y(n108) );
  IBUFFX4_HVT U49 ( .A(n131), .Y(n87) );
  NBUFFX4_HVT U50 ( .A(n124), .Y(n92) );
  INVX1_HVT U51 ( .A(n114), .Y(n152) );
  INVX1_HVT U52 ( .A(n130), .Y(n95) );
  IBUFFX4_HVT U53 ( .A(n110), .Y(n93) );
  XOR3X2_HVT U54 ( .A1(n95), .A2(n115), .A3(regB[0]), .Y(n94) );
  OR2X2_HVT U55 ( .A1(regB[2]), .A2(n104), .Y(n140) );
  AND2X1_HVT U56 ( .A1(n139), .A2(n128), .Y(n96) );
  INVX1_HVT U57 ( .A(n97), .Y(n98) );
  NBUFFX4_HVT U58 ( .A(n144), .Y(n99) );
  NBUFFX4_HVT U59 ( .A(n106), .Y(n100) );
  IBUFFX4_HVT U60 ( .A(n129), .Y(n149) );
  INVX4_HVT U61 ( .A(n101), .Y(C_out) );
  NAND2X0_HVT U62 ( .A1(n96), .A2(n149), .Y(n144) );
  AND2X1_HVT U63 ( .A1(n128), .A2(n149), .Y(n103) );
  AND2X1_HVT U64 ( .A1(n103), .A2(n147), .Y(n120) );
  INVX1_HVT U65 ( .A(n150), .Y(n147) );
  INVX0_HVT U66 ( .A(n136), .Y(n132) );
  AOI21X1_HVT U67 ( .A1(n140), .A2(n91), .A3(n107), .Y(n105) );
  XOR2X1_HVT U68 ( .A1(n119), .A2(regA[2]), .Y(n142) );
  IBUFFX2_HVT U69 ( .A(regB[3]), .Y(n112) );
  MUX21X1_HVT U70 ( .A1(n137), .A2(n138), .S0(n100), .Y(n89) );
  NAND2X0_HVT U71 ( .A1(n139), .A2(n149), .Y(n106) );
  AND2X1_HVT U72 ( .A1(regA[2]), .A2(regB[2]), .Y(n107) );
  INVX0_HVT U73 ( .A(regA[3]), .Y(n113) );
  XOR2X1_HVT U74 ( .A1(n109), .A2(n110), .Y(n137) );
  AO21X1_HVT U75 ( .A1(n112), .A2(n113), .A3(n105), .Y(n111) );
  INVX1_HVT U76 ( .A(n118), .Y(n141) );
  XOR2X2_HVT U77 ( .A1(regA[3]), .A2(regB[3]), .Y(n114) );
  IBUFFX4_HVT U78 ( .A(n92), .Y(n115) );
  OAI22X1_HVT U79 ( .A1(n111), .A2(n120), .A3(n121), .A4(n122), .Y(n116) );
  OR2X1_HVT U80 ( .A1(n117), .A2(n107), .Y(n150) );
  IBUFFX32_HVT U81 ( .A(n139), .Y(n117) );
  OA21X1_HVT U82 ( .A1(n125), .A2(n119), .A3(n140), .Y(n118) );
  OR2X1_HVT U83 ( .A1(n123), .A2(n92), .Y(n139) );
  AO21X1_HVT U84 ( .A1(n140), .A2(n91), .A3(n107), .Y(n126) );
  AO21X1_HVT U85 ( .A1(n140), .A2(n91), .A3(n107), .Y(n127) );
  NBUFFX4_HVT U86 ( .A(n148), .Y(n128) );
  OA21X1_HVT U87 ( .A1(n86), .A2(regB[0]), .A3(n98), .Y(n129) );
  AO221X1_HVT U88 ( .A1(n133), .A2(n132), .A3(n134), .A4(n114), .A5(n135), .Y(
        n131) );
  AND2X1_HVT U89 ( .A1(n147), .A2(n152), .Y(n133) );
  AND2X1_HVT U90 ( .A1(n151), .A2(n126), .Y(n134) );
  NOR2X0_HVT U91 ( .A1(n127), .A2(n114), .Y(n135) );
  NBUFFX4_HVT U92 ( .A(n153), .Y(n136) );
  NAND2X0_HVT U93 ( .A1(regB[1]), .A2(n93), .Y(n148) );
  NAND2X0_HVT U94 ( .A1(n91), .A2(n128), .Y(n138) );
  AO21X1_HVT U95 ( .A1(n99), .A2(n91), .A3(n142), .Y(n145) );
  NAND2X0_HVT U96 ( .A1(n146), .A2(n145), .Y(n88) );
  NAND2X0_HVT U97 ( .A1(n149), .A2(n128), .Y(n153) );
  OR2X1_HVT U98 ( .A1(n150), .A2(n136), .Y(n151) );
endmodule

