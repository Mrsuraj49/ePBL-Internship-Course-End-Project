/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Tue Apr 21 06:18:55 2026
/////////////////////////////////////////////////////////////


module full_adder ( A, B, C_in, Clock, SUM, C_out );
  input [3:0] A;
  input [3:0] B;
  output [3:0] SUM;
  input C_in, Clock;
  output C_out;
  wire   c_out_temp, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [3:0] regA;
  wire   [3:0] regB;
  wire   [3:0] sum_temp;

  DFFX1_HVT \regA_reg[3]  ( .D(A[3]), .CLK(Clock), .Q(regA[3]) );
  DFFX1_HVT \regA_reg[2]  ( .D(A[2]), .CLK(Clock), .Q(regA[2]) );
  DFFX1_HVT \regA_reg[1]  ( .D(A[1]), .CLK(Clock), .Q(regA[1]) );
  DFFX1_HVT \regB_reg[3]  ( .D(B[3]), .CLK(Clock), .Q(regB[3]) );
  DFFX1_HVT \regB_reg[2]  ( .D(B[2]), .CLK(Clock), .Q(regB[2]) );
  DFFX1_HVT \regB_reg[1]  ( .D(B[1]), .CLK(Clock), .Q(regB[1]) );
  DFFX1_HVT \regB_reg[0]  ( .D(B[0]), .CLK(Clock), .Q(regB[0]) );
  DFFX1_HVT c_in_reg_reg ( .D(C_in), .CLK(Clock), .Q(n2), .QN(n11) );
  DFFX1_HVT \SUM_reg[3]  ( .D(sum_temp[3]), .CLK(Clock), .Q(SUM[3]) );
  DFFX1_HVT \SUM_reg[2]  ( .D(sum_temp[2]), .CLK(Clock), .Q(SUM[2]) );
  DFFX1_HVT \SUM_reg[1]  ( .D(sum_temp[1]), .CLK(Clock), .Q(SUM[1]) );
  DFFX1_HVT \SUM_reg[0]  ( .D(n3), .CLK(Clock), .Q(SUM[0]) );
  DFFX1_HVT C_out_reg ( .D(c_out_temp), .CLK(Clock), .Q(C_out) );
  DFFX1_HVT \regA_reg[0]  ( .D(A[0]), .CLK(Clock), .Q(regA[0]) );
  XOR3X1_HVT U4 ( .A1(regB[0]), .A2(regA[0]), .A3(n11), .Y(sum_temp[0]) );
  INVX0_HVT U5 ( .A(sum_temp[0]), .Y(n3) );
  XOR3X1_HVT U6 ( .A1(regA[3]), .A2(regB[3]), .A3(n4), .Y(sum_temp[3]) );
  XOR3X1_HVT U7 ( .A1(regA[2]), .A2(regB[2]), .A3(n5), .Y(sum_temp[2]) );
  XOR3X1_HVT U8 ( .A1(regB[1]), .A2(regA[1]), .A3(n6), .Y(sum_temp[1]) );
  AO22X1_HVT U9 ( .A1(regA[3]), .A2(n4), .A3(regB[3]), .A4(n7), .Y(c_out_temp)
         );
  OR2X1_HVT U10 ( .A1(n4), .A2(regA[3]), .Y(n7) );
  AO22X1_HVT U11 ( .A1(regA[2]), .A2(n5), .A3(regB[2]), .A4(n8), .Y(n4) );
  OR2X1_HVT U12 ( .A1(n5), .A2(regA[2]), .Y(n8) );
  AO22X1_HVT U13 ( .A1(regA[1]), .A2(n6), .A3(regB[1]), .A4(n9), .Y(n5) );
  OR2X1_HVT U14 ( .A1(n6), .A2(regA[1]), .Y(n9) );
  AO22X1_HVT U15 ( .A1(regA[0]), .A2(n2), .A3(regB[0]), .A4(n10), .Y(n6) );
  OR2X1_HVT U16 ( .A1(n2), .A2(regA[0]), .Y(n10) );
endmodule

