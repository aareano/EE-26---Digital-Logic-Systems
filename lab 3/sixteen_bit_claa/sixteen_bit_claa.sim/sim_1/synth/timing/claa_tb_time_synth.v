// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
// Date        : Fri Apr 01 14:40:14 2016
// Host        : PC-J4SW9Z1 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/ajayak02.HLGN/Downloads/EE-26---Digital-Logic-Systems-master/EE-26---Digital-Logic-Systems-master/sixteen_bit_claa/sixteen_bit_claa.sim/sim_1/synth/timing/claa_tb_time_synth.v
// Design      : sixteen_bit_claa
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module sixteen_bit_claa
   (A,
    B,
    C_in,
    S,
    PG,
    GG);
  input [15:0]A;
  input [15:0]B;
  input C_in;
  output [15:0]S;
  output PG;
  output GG;

  wire [15:0]A;
  wire [15:0]A_IBUF;
  wire [15:0]B;
  wire [15:0]B_IBUF;
  wire C_in;
  wire C_in_IBUF;
  wire GG;
  wire GG_OBUF;
  wire PG;
  wire PG_OBUF;
  wire [15:0]S;
  wire [15:0]S_OBUF;
  wire \claa0/c_in ;
  wire \claa1/c_in ;
  wire \claa2/four_bit_cla/c_out4 ;
  wire \claa3/c_in ;
  wire \four_bit_cla/c_out4 ;
  wire [2:0]gg_int;
  wire n_0_GG_OBUF_inst_i_2;
  wire n_0_GG_OBUF_inst_i_3;
  wire n_0_GG_OBUF_inst_i_5;
  wire n_0_GG_OBUF_inst_i_7;
  wire n_0_PG_OBUF_inst_i_5;
  wire n_0_PG_OBUF_inst_i_6;
  wire n_0_PG_OBUF_inst_i_7;
  wire \n_0_S_OBUF[11]_inst_i_2 ;
  wire \n_0_S_OBUF[13]_inst_i_2 ;
  wire \n_0_S_OBUF[2]_inst_i_2 ;
  wire \n_0_S_OBUF[8]_inst_i_10 ;
  wire \n_0_S_OBUF[8]_inst_i_11 ;
  wire \n_0_S_OBUF[8]_inst_i_5 ;
  wire \n_0_S_OBUF[8]_inst_i_6 ;
  wire \n_0_S_OBUF[8]_inst_i_7 ;
  wire \n_0_S_OBUF[8]_inst_i_8 ;
  wire \n_0_S_OBUF[8]_inst_i_9 ;
  wire [3:0]pg_int;

initial begin
 $sdf_annotate("claa_tb_time_synth.sdf",,,,"tool_control");
end
IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
IBUF \A_IBUF[10]_inst 
       (.I(A[10]),
        .O(A_IBUF[10]));
IBUF \A_IBUF[11]_inst 
       (.I(A[11]),
        .O(A_IBUF[11]));
IBUF \A_IBUF[12]_inst 
       (.I(A[12]),
        .O(A_IBUF[12]));
IBUF \A_IBUF[13]_inst 
       (.I(A[13]),
        .O(A_IBUF[13]));
IBUF \A_IBUF[14]_inst 
       (.I(A[14]),
        .O(A_IBUF[14]));
IBUF \A_IBUF[15]_inst 
       (.I(A[15]),
        .O(A_IBUF[15]));
IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
IBUF \A_IBUF[8]_inst 
       (.I(A[8]),
        .O(A_IBUF[8]));
IBUF \A_IBUF[9]_inst 
       (.I(A[9]),
        .O(A_IBUF[9]));
IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
IBUF \B_IBUF[10]_inst 
       (.I(B[10]),
        .O(B_IBUF[10]));
IBUF \B_IBUF[11]_inst 
       (.I(B[11]),
        .O(B_IBUF[11]));
IBUF \B_IBUF[12]_inst 
       (.I(B[12]),
        .O(B_IBUF[12]));
IBUF \B_IBUF[13]_inst 
       (.I(B[13]),
        .O(B_IBUF[13]));
IBUF \B_IBUF[14]_inst 
       (.I(B[14]),
        .O(B_IBUF[14]));
IBUF \B_IBUF[15]_inst 
       (.I(B[15]),
        .O(B_IBUF[15]));
IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
IBUF \B_IBUF[8]_inst 
       (.I(B[8]),
        .O(B_IBUF[8]));
IBUF \B_IBUF[9]_inst 
       (.I(B[9]),
        .O(B_IBUF[9]));
IBUF C_in_IBUF_inst
       (.I(C_in),
        .O(C_in_IBUF));
OBUF GG_OBUF_inst
       (.I(GG_OBUF),
        .O(GG));
LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F0F0)) 
     GG_OBUF_inst_i_1
       (.I0(pg_int[2]),
        .I1(n_0_GG_OBUF_inst_i_2),
        .I2(n_0_GG_OBUF_inst_i_3),
        .I3(gg_int[2]),
        .I4(pg_int[3]),
        .I5(n_0_GG_OBUF_inst_i_5),
        .O(GG_OBUF));
LUT3 #(
    .INIT(8'hF8)) 
     GG_OBUF_inst_i_2
       (.I0(pg_int[1]),
        .I1(gg_int[0]),
        .I2(gg_int[1]),
        .O(n_0_GG_OBUF_inst_i_2));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'hF880)) 
     GG_OBUF_inst_i_3
       (.I0(A_IBUF[14]),
        .I1(B_IBUF[14]),
        .I2(B_IBUF[15]),
        .I3(A_IBUF[15]),
        .O(n_0_GG_OBUF_inst_i_3));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'hFCE8E8C0)) 
     GG_OBUF_inst_i_4
       (.I0(n_0_GG_OBUF_inst_i_7),
        .I1(B_IBUF[11]),
        .I2(A_IBUF[11]),
        .I3(B_IBUF[10]),
        .I4(A_IBUF[10]),
        .O(gg_int[2]));
LUT6 #(
    .INIT(64'h8880800080008000)) 
     GG_OBUF_inst_i_5
       (.I0(n_0_PG_OBUF_inst_i_6),
        .I1(n_0_PG_OBUF_inst_i_5),
        .I2(A_IBUF[13]),
        .I3(B_IBUF[13]),
        .I4(B_IBUF[12]),
        .I5(A_IBUF[12]),
        .O(n_0_GG_OBUF_inst_i_5));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT5 #(
    .INIT(32'hFCE8E8C0)) 
     GG_OBUF_inst_i_6
       (.I0(\n_0_S_OBUF[8]_inst_i_7 ),
        .I1(B_IBUF[3]),
        .I2(A_IBUF[3]),
        .I3(B_IBUF[2]),
        .I4(A_IBUF[2]),
        .O(gg_int[0]));
LUT4 #(
    .INIT(16'hF880)) 
     GG_OBUF_inst_i_7
       (.I0(A_IBUF[8]),
        .I1(B_IBUF[8]),
        .I2(B_IBUF[9]),
        .I3(A_IBUF[9]),
        .O(n_0_GG_OBUF_inst_i_7));
OBUF PG_OBUF_inst
       (.I(PG_OBUF),
        .O(PG));
LUT4 #(
    .INIT(16'h8000)) 
     PG_OBUF_inst_i_1
       (.I0(pg_int[0]),
        .I1(pg_int[1]),
        .I2(pg_int[3]),
        .I3(pg_int[2]),
        .O(PG_OBUF));
LUT6 #(
    .INIT(64'h0660000000000000)) 
     PG_OBUF_inst_i_2
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[1]),
        .I4(\n_0_S_OBUF[8]_inst_i_6 ),
        .I5(\n_0_S_OBUF[2]_inst_i_2 ),
        .O(pg_int[0]));
LUT6 #(
    .INIT(64'h0660000000000000)) 
     PG_OBUF_inst_i_3
       (.I0(A_IBUF[12]),
        .I1(B_IBUF[12]),
        .I2(A_IBUF[13]),
        .I3(B_IBUF[13]),
        .I4(n_0_PG_OBUF_inst_i_5),
        .I5(n_0_PG_OBUF_inst_i_6),
        .O(pg_int[3]));
LUT6 #(
    .INIT(64'h0660000000000000)) 
     PG_OBUF_inst_i_4
       (.I0(A_IBUF[8]),
        .I1(B_IBUF[8]),
        .I2(A_IBUF[9]),
        .I3(B_IBUF[9]),
        .I4(\n_0_S_OBUF[11]_inst_i_2 ),
        .I5(n_0_PG_OBUF_inst_i_7),
        .O(pg_int[2]));
LUT2 #(
    .INIT(4'h6)) 
     PG_OBUF_inst_i_5
       (.I0(A_IBUF[15]),
        .I1(B_IBUF[15]),
        .O(n_0_PG_OBUF_inst_i_5));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h6)) 
     PG_OBUF_inst_i_6
       (.I0(A_IBUF[14]),
        .I1(B_IBUF[14]),
        .O(n_0_PG_OBUF_inst_i_6));
LUT2 #(
    .INIT(4'h6)) 
     PG_OBUF_inst_i_7
       (.I0(A_IBUF[10]),
        .I1(B_IBUF[10]),
        .O(n_0_PG_OBUF_inst_i_7));
OBUF \S_OBUF[0]_inst 
       (.I(S_OBUF[0]),
        .O(S[0]));
LUT3 #(
    .INIT(8'h96)) 
     \S_OBUF[0]_inst_i_1 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .I2(C_in_IBUF),
        .O(S_OBUF[0]));
OBUF \S_OBUF[10]_inst 
       (.I(S_OBUF[10]),
        .O(S[10]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h99969666)) 
     \S_OBUF[10]_inst_i_1 
       (.I0(B_IBUF[10]),
        .I1(A_IBUF[10]),
        .I2(B_IBUF[9]),
        .I3(A_IBUF[9]),
        .I4(\claa2/four_bit_cla/c_out4 ),
        .O(S_OBUF[10]));
OBUF \S_OBUF[11]_inst 
       (.I(S_OBUF[11]),
        .O(S[11]));
LUT6 #(
    .INIT(64'h5656566A566A6A6A)) 
     \S_OBUF[11]_inst_i_1 
       (.I0(\n_0_S_OBUF[11]_inst_i_2 ),
        .I1(B_IBUF[10]),
        .I2(A_IBUF[10]),
        .I3(B_IBUF[9]),
        .I4(A_IBUF[9]),
        .I5(\claa2/four_bit_cla/c_out4 ),
        .O(S_OBUF[11]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \S_OBUF[11]_inst_i_2 
       (.I0(A_IBUF[11]),
        .I1(B_IBUF[11]),
        .O(\n_0_S_OBUF[11]_inst_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'hFFF8F800)) 
     \S_OBUF[11]_inst_i_3 
       (.I0(\four_bit_cla/c_out4 ),
        .I1(pg_int[1]),
        .I2(gg_int[1]),
        .I3(A_IBUF[8]),
        .I4(B_IBUF[8]),
        .O(\claa2/four_bit_cla/c_out4 ));
OBUF \S_OBUF[12]_inst 
       (.I(S_OBUF[12]),
        .O(S[12]));
LUT3 #(
    .INIT(8'h96)) 
     \S_OBUF[12]_inst_i_1 
       (.I0(B_IBUF[12]),
        .I1(A_IBUF[12]),
        .I2(\n_0_S_OBUF[13]_inst_i_2 ),
        .O(S_OBUF[12]));
OBUF \S_OBUF[13]_inst 
       (.I(S_OBUF[13]),
        .O(S[13]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'hE81717E8)) 
     \S_OBUF[13]_inst_i_1 
       (.I0(\n_0_S_OBUF[13]_inst_i_2 ),
        .I1(A_IBUF[12]),
        .I2(B_IBUF[12]),
        .I3(B_IBUF[13]),
        .I4(A_IBUF[13]),
        .O(S_OBUF[13]));
LUT5 #(
    .INIT(32'hFFFFF800)) 
     \S_OBUF[13]_inst_i_2 
       (.I0(\four_bit_cla/c_out4 ),
        .I1(pg_int[1]),
        .I2(gg_int[1]),
        .I3(pg_int[2]),
        .I4(gg_int[2]),
        .O(\n_0_S_OBUF[13]_inst_i_2 ));
OBUF \S_OBUF[14]_inst 
       (.I(S_OBUF[14]),
        .O(S[14]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \S_OBUF[14]_inst_i_1 
       (.I0(B_IBUF[14]),
        .I1(A_IBUF[14]),
        .I2(\claa3/c_in ),
        .O(S_OBUF[14]));
OBUF \S_OBUF[15]_inst 
       (.I(S_OBUF[15]),
        .O(S[15]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h99969666)) 
     \S_OBUF[15]_inst_i_1 
       (.I0(B_IBUF[15]),
        .I1(A_IBUF[15]),
        .I2(B_IBUF[14]),
        .I3(A_IBUF[14]),
        .I4(\claa3/c_in ),
        .O(S_OBUF[15]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'hFFE8E800)) 
     \S_OBUF[15]_inst_i_2 
       (.I0(\n_0_S_OBUF[13]_inst_i_2 ),
        .I1(A_IBUF[12]),
        .I2(B_IBUF[12]),
        .I3(A_IBUF[13]),
        .I4(B_IBUF[13]),
        .O(\claa3/c_in ));
OBUF \S_OBUF[1]_inst 
       (.I(S_OBUF[1]),
        .O(S[1]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'h99969666)) 
     \S_OBUF[1]_inst_i_1 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[0]),
        .I3(A_IBUF[0]),
        .I4(C_in_IBUF),
        .O(S_OBUF[1]));
OBUF \S_OBUF[2]_inst 
       (.I(S_OBUF[2]),
        .O(S[2]));
LUT6 #(
    .INIT(64'h5656566A566A6A6A)) 
     \S_OBUF[2]_inst_i_1 
       (.I0(\n_0_S_OBUF[2]_inst_i_2 ),
        .I1(B_IBUF[1]),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[0]),
        .I4(A_IBUF[0]),
        .I5(C_in_IBUF),
        .O(S_OBUF[2]));
LUT2 #(
    .INIT(4'h6)) 
     \S_OBUF[2]_inst_i_2 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .O(\n_0_S_OBUF[2]_inst_i_2 ));
OBUF \S_OBUF[3]_inst 
       (.I(S_OBUF[3]),
        .O(S[3]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'h99969666)) 
     \S_OBUF[3]_inst_i_1 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[3]),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[2]),
        .I4(\claa0/c_in ),
        .O(S_OBUF[3]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'hFFE8E800)) 
     \S_OBUF[3]_inst_i_2 
       (.I0(C_in_IBUF),
        .I1(A_IBUF[0]),
        .I2(B_IBUF[0]),
        .I3(A_IBUF[1]),
        .I4(B_IBUF[1]),
        .O(\claa0/c_in ));
OBUF \S_OBUF[4]_inst 
       (.I(S_OBUF[4]),
        .O(S[4]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \S_OBUF[4]_inst_i_1 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[4]),
        .I2(\four_bit_cla/c_out4 ),
        .O(S_OBUF[4]));
OBUF \S_OBUF[5]_inst 
       (.I(S_OBUF[5]),
        .O(S[5]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'hE81717E8)) 
     \S_OBUF[5]_inst_i_1 
       (.I0(\four_bit_cla/c_out4 ),
        .I1(A_IBUF[4]),
        .I2(B_IBUF[4]),
        .I3(B_IBUF[5]),
        .I4(A_IBUF[5]),
        .O(S_OBUF[5]));
OBUF \S_OBUF[6]_inst 
       (.I(S_OBUF[6]),
        .O(S[6]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \S_OBUF[6]_inst_i_1 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[6]),
        .I2(\claa1/c_in ),
        .O(S_OBUF[6]));
OBUF \S_OBUF[7]_inst 
       (.I(S_OBUF[7]),
        .O(S[7]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h99969666)) 
     \S_OBUF[7]_inst_i_1 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[7]),
        .I2(B_IBUF[6]),
        .I3(A_IBUF[6]),
        .I4(\claa1/c_in ),
        .O(S_OBUF[7]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'hFFE8E800)) 
     \S_OBUF[7]_inst_i_2 
       (.I0(\four_bit_cla/c_out4 ),
        .I1(A_IBUF[4]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[5]),
        .I4(B_IBUF[5]),
        .O(\claa1/c_in ));
OBUF \S_OBUF[8]_inst 
       (.I(S_OBUF[8]),
        .O(S[8]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'hF80707F8)) 
     \S_OBUF[8]_inst_i_1 
       (.I0(\four_bit_cla/c_out4 ),
        .I1(pg_int[1]),
        .I2(gg_int[1]),
        .I3(B_IBUF[8]),
        .I4(A_IBUF[8]),
        .O(S_OBUF[8]));
LUT2 #(
    .INIT(4'h6)) 
     \S_OBUF[8]_inst_i_10 
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .O(\n_0_S_OBUF[8]_inst_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'hF880)) 
     \S_OBUF[8]_inst_i_11 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[4]),
        .I2(B_IBUF[5]),
        .I3(A_IBUF[5]),
        .O(\n_0_S_OBUF[8]_inst_i_11 ));
LUT6 #(
    .INIT(64'hFFFFFFFFF0008000)) 
     \S_OBUF[8]_inst_i_2 
       (.I0(C_in_IBUF),
        .I1(\n_0_S_OBUF[8]_inst_i_5 ),
        .I2(\n_0_S_OBUF[2]_inst_i_2 ),
        .I3(\n_0_S_OBUF[8]_inst_i_6 ),
        .I4(\n_0_S_OBUF[8]_inst_i_7 ),
        .I5(\n_0_S_OBUF[8]_inst_i_8 ),
        .O(\four_bit_cla/c_out4 ));
LUT6 #(
    .INIT(64'h0660000000000000)) 
     \S_OBUF[8]_inst_i_3 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[4]),
        .I2(A_IBUF[5]),
        .I3(B_IBUF[5]),
        .I4(\n_0_S_OBUF[8]_inst_i_9 ),
        .I5(\n_0_S_OBUF[8]_inst_i_10 ),
        .O(pg_int[1]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT5 #(
    .INIT(32'hFCE8E8C0)) 
     \S_OBUF[8]_inst_i_4 
       (.I0(\n_0_S_OBUF[8]_inst_i_11 ),
        .I1(B_IBUF[7]),
        .I2(A_IBUF[7]),
        .I3(B_IBUF[6]),
        .I4(A_IBUF[6]),
        .O(gg_int[1]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'h0660)) 
     \S_OBUF[8]_inst_i_5 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[0]),
        .I3(A_IBUF[0]),
        .O(\n_0_S_OBUF[8]_inst_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \S_OBUF[8]_inst_i_6 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .O(\n_0_S_OBUF[8]_inst_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'hF880)) 
     \S_OBUF[8]_inst_i_7 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[1]),
        .O(\n_0_S_OBUF[8]_inst_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'hF880)) 
     \S_OBUF[8]_inst_i_8 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .I2(B_IBUF[3]),
        .I3(A_IBUF[3]),
        .O(\n_0_S_OBUF[8]_inst_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \S_OBUF[8]_inst_i_9 
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[7]),
        .O(\n_0_S_OBUF[8]_inst_i_9 ));
OBUF \S_OBUF[9]_inst 
       (.I(S_OBUF[9]),
        .O(S[9]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \S_OBUF[9]_inst_i_1 
       (.I0(B_IBUF[9]),
        .I1(A_IBUF[9]),
        .I2(\claa2/four_bit_cla/c_out4 ),
        .O(S_OBUF[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
