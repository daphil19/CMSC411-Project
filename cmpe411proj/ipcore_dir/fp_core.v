////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: fp_core.v
// /___/   /\     Timestamp: Sat May 06 15:19:11 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog F:/411/cmpe411proj/ipcore_dir/tmp/_cg/fp_core.ngc F:/411/cmpe411proj/ipcore_dir/tmp/_cg/fp_core.v 
// Device	: 3s100evq100-4
// Input file	: F:/411/cmpe411proj/ipcore_dir/tmp/_cg/fp_core.ngc
// Output file	: F:/411/cmpe411proj/ipcore_dir/tmp/_cg/fp_core.v
// # of Modules	: 1
// Design Name	: fp_core
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module fp_core (
  clk, ce, sclr, rdy, result, operation, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input sclr;
  output rdy;
  output [0 : 0] result;
  input [5 : 0] operation;
  input [31 : 0] a;
  input [31 : 0] b;
  
  // synthesis translate_off
  
  wire sig00000001;
  wire sig00000002;
  wire sig00000003;
  wire sig00000004;
  wire sig00000005;
  wire sig00000006;
  wire sig00000007;
  wire sig00000008;
  wire sig00000009;
  wire \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/MET_REG/delay_0 ;
  wire sig0000000a;
  wire sig0000000b;
  wire sig0000000c;
  wire sig0000000d;
  wire sig0000000e;
  wire sig0000000f;
  wire sig00000010;
  wire sig00000011;
  wire sig00000012;
  wire sig00000013;
  wire sig00000014;
  wire sig00000015;
  wire sig00000016;
  wire sig00000017;
  wire sig00000018;
  wire sig00000019;
  wire sig0000001a;
  wire sig0000001b;
  wire sig0000001c;
  wire sig0000001d;
  wire sig0000001e;
  wire sig0000001f;
  wire sig00000020;
  wire sig00000021;
  wire sig00000022;
  wire sig00000023;
  wire sig00000024;
  wire sig00000025;
  wire sig00000026;
  wire sig00000027;
  wire sig00000028;
  wire sig00000029;
  wire sig0000002a;
  wire sig0000002b;
  wire sig0000002c;
  wire sig0000002d;
  wire sig0000002e;
  wire sig0000002f;
  wire sig00000030;
  wire sig00000031;
  wire sig00000032;
  wire sig00000033;
  wire sig00000034;
  wire sig00000035;
  wire sig00000036;
  wire sig00000037;
  wire sig00000038;
  wire sig00000039;
  wire sig0000003a;
  wire sig0000003b;
  wire sig0000003c;
  wire sig0000003d;
  wire sig0000003e;
  wire sig0000003f;
  wire sig00000040;
  wire sig00000041;
  wire sig00000042;
  wire sig00000043;
  wire sig00000044;
  wire sig00000045;
  wire sig00000046;
  wire sig00000047;
  wire sig00000048;
  wire sig00000049;
  wire sig0000004a;
  wire sig0000004b;
  wire sig0000004c;
  wire sig0000004d;
  wire sig0000004e;
  wire sig0000004f;
  wire sig00000050;
  wire sig00000051;
  wire sig00000052;
  wire sig00000053;
  wire sig00000054;
  wire sig00000055;
  wire sig00000056;
  wire sig00000057;
  wire sig00000058;
  wire sig00000059;
  wire sig0000005a;
  wire sig0000005b;
  wire sig0000005c;
  wire sig0000005d;
  wire sig0000005e;
  wire sig0000005f;
  wire sig00000060;
  wire sig00000061;
  wire sig00000062;
  wire sig00000063;
  wire sig00000064;
  wire sig00000065;
  wire sig00000066;
  wire sig00000067;
  wire sig00000068;
  wire sig00000069;
  wire sig0000006a;
  wire sig0000006b;
  wire sig0000006c;
  wire sig0000006d;
  wire sig0000006e;
  wire sig0000006f;
  wire sig00000070;
  wire sig00000071;
  wire sig00000072;
  wire sig00000073;
  wire sig00000074;
  wire sig00000075;
  wire sig00000076;
  wire sig00000077;
  wire sig00000078;
  wire sig00000079;
  wire sig0000007a;
  wire sig0000007b;
  wire sig0000007c;
  wire sig0000007d;
  wire sig0000007e;
  wire sig0000007f;
  wire sig00000080;
  wire sig00000081;
  wire sig00000082;
  wire sig00000083;
  wire sig00000084;
  wire sig00000085;
  wire sig00000086;
  wire sig00000087;
  wire sig00000088;
  wire sig00000089;
  wire sig0000008a;
  wire sig0000008b;
  wire sig0000008c;
  wire sig0000008d;
  wire sig0000008e;
  wire sig0000008f;
  wire sig00000090;
  wire sig00000091;
  wire sig00000092;
  wire sig00000093;
  wire sig00000094;
  wire sig00000095;
  wire sig00000096;
  wire sig00000097;
  wire sig00000098;
  wire sig00000099;
  wire sig0000009a;
  wire sig0000009b;
  wire sig0000009c;
  wire sig0000009d;
  wire sig0000009e;
  wire sig0000009f;
  wire sig000000a0;
  wire sig000000a1;
  wire sig000000a2;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/RDY ;
  wire sig000000a3;
  wire sig000000a4;
  wire sig000000a5;
  wire sig000000a6;
  wire sig000000a7;
  wire sig000000a8;
  wire sig000000a9;
  wire sig000000aa;
  wire sig000000ab;
  wire sig000000ac;
  wire sig000000ad;
  assign
    rdy = \U0/op_inst/FLT_PT_OP/HND_SHK/RDY ,
    result[0] = \U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/MET_REG/delay_0 ;
  GND   blk00000001 (
    .G(sig00000001)
  );
  VCC   blk00000002 (
    .P(sig00000002)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000003 (
    .C(clk),
    .CE(sig000000a9),
    .D(sig000000a5),
    .S(sclr),
    .Q(sig000000a8)
  );
  FDSE #(
    .INIT ( 1'b1 ))
  blk00000004 (
    .C(clk),
    .CE(sig000000a9),
    .D(sig000000a4),
    .S(sclr),
    .Q(sig000000a7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000005 (
    .C(clk),
    .CE(ce),
    .D(sig000000ac),
    .Q(sig000000a6)
  );
  FDRS #(
    .INIT ( 1'b1 ))
  blk00000006 (
    .C(clk),
    .D(sig000000ad),
    .R(sclr),
    .S(ce),
    .Q(sig000000ac)
  );
  FDRE #(
    .INIT ( 1'b1 ))
  blk00000007 (
    .C(clk),
    .CE(ce),
    .D(sig00000002),
    .R(sclr),
    .Q(sig000000ad)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000008 (
    .C(clk),
    .CE(ce),
    .D(sig000000a3),
    .R(sclr),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY )
  );
  FDSE #(
    .INIT ( 1'b0 ))
  blk00000009 (
    .C(clk),
    .CE(sig000000ab),
    .D(sig00000001),
    .S(sclr),
    .Q(sig000000aa)
  );
  MUXCY   blk0000000a (
    .CI(sig00000056),
    .DI(sig0000009d),
    .S(sig00000077),
    .O(sig00000057)
  );
  MUXCY   blk0000000b (
    .CI(sig00000055),
    .DI(b[30]),
    .S(sig00000076),
    .O(sig00000056)
  );
  MUXCY   blk0000000c (
    .CI(sig00000053),
    .DI(b[29]),
    .S(sig00000074),
    .O(sig00000055)
  );
  MUXCY   blk0000000d (
    .CI(sig00000052),
    .DI(b[28]),
    .S(sig00000073),
    .O(sig00000053)
  );
  MUXCY   blk0000000e (
    .CI(sig00000051),
    .DI(b[27]),
    .S(sig00000072),
    .O(sig00000052)
  );
  MUXCY   blk0000000f (
    .CI(sig00000050),
    .DI(b[26]),
    .S(sig00000071),
    .O(sig00000051)
  );
  MUXCY   blk00000010 (
    .CI(sig0000004f),
    .DI(b[25]),
    .S(sig00000070),
    .O(sig00000050)
  );
  MUXCY   blk00000011 (
    .CI(sig0000004e),
    .DI(b[24]),
    .S(sig0000006f),
    .O(sig0000004f)
  );
  MUXCY   blk00000012 (
    .CI(sig0000004d),
    .DI(b[23]),
    .S(sig0000006e),
    .O(sig0000004e)
  );
  MUXCY   blk00000013 (
    .CI(sig0000004c),
    .DI(b[22]),
    .S(sig0000006d),
    .O(sig0000004d)
  );
  MUXCY   blk00000014 (
    .CI(sig0000004b),
    .DI(b[21]),
    .S(sig0000006c),
    .O(sig0000004c)
  );
  MUXCY   blk00000015 (
    .CI(sig0000004a),
    .DI(b[20]),
    .S(sig0000006b),
    .O(sig0000004b)
  );
  MUXCY   blk00000016 (
    .CI(sig00000048),
    .DI(b[19]),
    .S(sig00000069),
    .O(sig0000004a)
  );
  MUXCY   blk00000017 (
    .CI(sig00000047),
    .DI(b[18]),
    .S(sig00000068),
    .O(sig00000048)
  );
  MUXCY   blk00000018 (
    .CI(sig00000046),
    .DI(b[17]),
    .S(sig00000067),
    .O(sig00000047)
  );
  MUXCY   blk00000019 (
    .CI(sig00000045),
    .DI(b[16]),
    .S(sig00000066),
    .O(sig00000046)
  );
  MUXCY   blk0000001a (
    .CI(sig00000044),
    .DI(b[15]),
    .S(sig00000065),
    .O(sig00000045)
  );
  MUXCY   blk0000001b (
    .CI(sig00000043),
    .DI(b[14]),
    .S(sig00000064),
    .O(sig00000044)
  );
  MUXCY   blk0000001c (
    .CI(sig00000042),
    .DI(b[13]),
    .S(sig00000063),
    .O(sig00000043)
  );
  MUXCY   blk0000001d (
    .CI(sig00000041),
    .DI(b[12]),
    .S(sig00000062),
    .O(sig00000042)
  );
  MUXCY   blk0000001e (
    .CI(sig00000040),
    .DI(b[11]),
    .S(sig00000061),
    .O(sig00000041)
  );
  MUXCY   blk0000001f (
    .CI(sig0000003f),
    .DI(b[10]),
    .S(sig00000060),
    .O(sig00000040)
  );
  MUXCY   blk00000020 (
    .CI(sig0000005e),
    .DI(b[9]),
    .S(sig0000007e),
    .O(sig0000003f)
  );
  MUXCY   blk00000021 (
    .CI(sig0000005d),
    .DI(b[8]),
    .S(sig0000007d),
    .O(sig0000005e)
  );
  MUXCY   blk00000022 (
    .CI(sig0000005c),
    .DI(b[7]),
    .S(sig0000007c),
    .O(sig0000005d)
  );
  MUXCY   blk00000023 (
    .CI(sig0000005b),
    .DI(b[6]),
    .S(sig0000007b),
    .O(sig0000005c)
  );
  MUXCY   blk00000024 (
    .CI(sig0000005a),
    .DI(b[5]),
    .S(sig0000007a),
    .O(sig0000005b)
  );
  MUXCY   blk00000025 (
    .CI(sig00000059),
    .DI(b[4]),
    .S(sig00000079),
    .O(sig0000005a)
  );
  MUXCY   blk00000026 (
    .CI(sig00000058),
    .DI(b[3]),
    .S(sig00000078),
    .O(sig00000059)
  );
  MUXCY   blk00000027 (
    .CI(sig00000054),
    .DI(b[2]),
    .S(sig00000075),
    .O(sig00000058)
  );
  MUXCY   blk00000028 (
    .CI(sig00000049),
    .DI(b[1]),
    .S(sig0000006a),
    .O(sig00000054)
  );
  MUXCY   blk00000029 (
    .CI(sig00000002),
    .DI(b[0]),
    .S(sig0000005f),
    .O(sig00000049)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000002a (
    .C(clk),
    .CE(ce),
    .D(sig00000057),
    .Q(sig0000007f)
  );
  MUXCY   blk0000002b (
    .CI(sig00000015),
    .DI(sig00000001),
    .S(sig00000026),
    .O(sig00000016)
  );
  MUXCY   blk0000002c (
    .CI(sig00000014),
    .DI(sig00000001),
    .S(sig00000025),
    .O(sig00000015)
  );
  MUXCY   blk0000002d (
    .CI(sig00000013),
    .DI(sig00000001),
    .S(sig00000024),
    .O(sig00000014)
  );
  MUXCY   blk0000002e (
    .CI(sig00000012),
    .DI(sig00000001),
    .S(sig00000023),
    .O(sig00000013)
  );
  MUXCY   blk0000002f (
    .CI(sig00000011),
    .DI(sig00000001),
    .S(sig00000022),
    .O(sig00000012)
  );
  MUXCY   blk00000030 (
    .CI(sig00000010),
    .DI(sig00000001),
    .S(sig00000021),
    .O(sig00000011)
  );
  MUXCY   blk00000031 (
    .CI(sig0000001f),
    .DI(sig00000001),
    .S(sig0000002f),
    .O(sig00000010)
  );
  MUXCY   blk00000032 (
    .CI(sig0000001e),
    .DI(sig00000001),
    .S(sig0000002e),
    .O(sig0000001f)
  );
  MUXCY   blk00000033 (
    .CI(sig0000001d),
    .DI(sig00000001),
    .S(sig0000002d),
    .O(sig0000001e)
  );
  MUXCY   blk00000034 (
    .CI(sig0000001c),
    .DI(sig00000001),
    .S(sig0000002c),
    .O(sig0000001d)
  );
  MUXCY   blk00000035 (
    .CI(sig0000001b),
    .DI(sig00000001),
    .S(sig0000002b),
    .O(sig0000001c)
  );
  MUXCY   blk00000036 (
    .CI(sig0000001a),
    .DI(sig00000001),
    .S(sig0000002a),
    .O(sig0000001b)
  );
  MUXCY   blk00000037 (
    .CI(sig00000019),
    .DI(sig00000001),
    .S(sig00000029),
    .O(sig0000001a)
  );
  MUXCY   blk00000038 (
    .CI(sig00000018),
    .DI(sig00000001),
    .S(sig00000028),
    .O(sig00000019)
  );
  MUXCY   blk00000039 (
    .CI(sig00000017),
    .DI(sig00000001),
    .S(sig00000027),
    .O(sig00000018)
  );
  MUXCY   blk0000003a (
    .CI(sig00000002),
    .DI(sig00000001),
    .S(sig00000020),
    .O(sig00000017)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000003b (
    .C(clk),
    .CE(ce),
    .D(sig00000016),
    .Q(sig00000097)
  );
  MUXCY   blk0000003c (
    .CI(sig00000038),
    .DI(sig00000002),
    .S(sig0000003e),
    .O(sig00000098)
  );
  MUXCY   blk0000003d (
    .CI(sig00000037),
    .DI(sig00000002),
    .S(sig0000003d),
    .O(sig00000038)
  );
  MUXCY   blk0000003e (
    .CI(sig00000036),
    .DI(sig00000002),
    .S(sig0000003c),
    .O(sig00000037)
  );
  MUXCY   blk0000003f (
    .CI(sig00000035),
    .DI(sig00000002),
    .S(sig0000003b),
    .O(sig00000036)
  );
  MUXCY   blk00000040 (
    .CI(sig00000034),
    .DI(sig00000002),
    .S(sig0000003a),
    .O(sig00000035)
  );
  MUXCY   blk00000041 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000039),
    .O(sig00000034)
  );
  MUXCY   blk00000042 (
    .CI(sig00000088),
    .DI(sig00000002),
    .S(sig0000008e),
    .O(sig0000009b)
  );
  MUXCY   blk00000043 (
    .CI(sig00000087),
    .DI(sig00000002),
    .S(sig0000008d),
    .O(sig00000088)
  );
  MUXCY   blk00000044 (
    .CI(sig00000086),
    .DI(sig00000002),
    .S(sig0000008c),
    .O(sig00000087)
  );
  MUXCY   blk00000045 (
    .CI(sig00000085),
    .DI(sig00000002),
    .S(sig0000008b),
    .O(sig00000086)
  );
  MUXCY   blk00000046 (
    .CI(sig00000084),
    .DI(sig00000002),
    .S(sig0000008a),
    .O(sig00000085)
  );
  MUXCY   blk00000047 (
    .CI(sig00000001),
    .DI(sig00000002),
    .S(sig00000089),
    .O(sig00000084)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000048 (
    .C(clk),
    .CE(ce),
    .D(sig00000092),
    .Q(sig0000009f)
  );
  MUXCY   blk00000049 (
    .CI(sig00000091),
    .DI(sig00000001),
    .S(sig00000096),
    .O(sig00000092)
  );
  MUXCY   blk0000004a (
    .CI(sig00000090),
    .DI(sig00000001),
    .S(sig00000095),
    .O(sig00000091)
  );
  MUXCY   blk0000004b (
    .CI(sig0000008f),
    .DI(sig00000001),
    .S(sig00000094),
    .O(sig00000090)
  );
  MUXCY   blk0000004c (
    .CI(sig00000002),
    .DI(sig00000001),
    .S(sig00000093),
    .O(sig0000008f)
  );
  MUXCY   blk0000004d (
    .CI(sig00000030),
    .DI(sig00000001),
    .S(sig00000033),
    .O(sig00000031)
  );
  MUXCY   blk0000004e (
    .CI(sig00000098),
    .DI(sig00000001),
    .S(sig00000032),
    .O(sig00000030)
  );
  MUXCY   blk0000004f (
    .CI(sig00000080),
    .DI(sig00000001),
    .S(sig00000083),
    .O(sig00000081)
  );
  MUXCY   blk00000050 (
    .CI(sig0000009b),
    .DI(sig00000001),
    .S(sig00000082),
    .O(sig00000080)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000051 (
    .C(clk),
    .CE(ce),
    .D(sig00000031),
    .Q(sig0000009a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000052 (
    .C(clk),
    .CE(ce),
    .D(sig00000081),
    .Q(sig0000009c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000053 (
    .C(clk),
    .CE(ce),
    .D(sig000000a0),
    .Q(\U0/op_inst/FLT_PT_OP/COMP_OP.SPD.OP/MET_REG/delay_0 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000054 (
    .C(clk),
    .CE(ce),
    .D(sig0000009e),
    .Q(sig00000006)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000055 (
    .C(clk),
    .CE(ce),
    .D(operation[3]),
    .Q(sig00000007)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000056 (
    .C(clk),
    .CE(ce),
    .D(operation[4]),
    .Q(sig00000008)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000057 (
    .C(clk),
    .CE(ce),
    .D(operation[5]),
    .Q(sig00000009)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000058 (
    .I0(a[31]),
    .I1(b[31]),
    .O(sig0000009e)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000059 (
    .I0(b[31]),
    .I1(a[31]),
    .O(sig00000077)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000005a (
    .I0(a[28]),
    .I1(a[27]),
    .I2(a[30]),
    .I3(a[29]),
    .O(sig00000096)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk0000005b (
    .I0(b[28]),
    .I1(b[27]),
    .I2(b[30]),
    .I3(b[29]),
    .O(sig00000083)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk0000005c (
    .I0(a[28]),
    .I1(a[27]),
    .I2(a[30]),
    .I3(a[29]),
    .O(sig00000033)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000005d (
    .I0(a[30]),
    .I1(b[30]),
    .I2(a[31]),
    .I3(b[31]),
    .O(sig00000026)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000005e (
    .I0(b[30]),
    .I1(a[30]),
    .O(sig00000076)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000005f (
    .I0(a[24]),
    .I1(a[23]),
    .I2(a[26]),
    .I3(a[25]),
    .O(sig00000095)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000060 (
    .I0(b[24]),
    .I1(b[23]),
    .I2(b[26]),
    .I3(b[25]),
    .O(sig00000082)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000061 (
    .I0(a[24]),
    .I1(a[23]),
    .I2(a[26]),
    .I3(a[25]),
    .O(sig00000032)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000062 (
    .I0(a[28]),
    .I1(b[28]),
    .I2(a[29]),
    .I3(b[29]),
    .O(sig00000025)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000063 (
    .I0(b[29]),
    .I1(a[29]),
    .O(sig00000074)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  blk00000064 (
    .I0(b[22]),
    .I1(b[21]),
    .I2(b[20]),
    .O(sig0000008e)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  blk00000065 (
    .I0(a[22]),
    .I1(a[21]),
    .I2(a[20]),
    .O(sig0000003e)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000066 (
    .I0(b[28]),
    .I1(b[27]),
    .I2(b[30]),
    .I3(b[29]),
    .O(sig00000094)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000067 (
    .I0(a[26]),
    .I1(b[26]),
    .I2(a[27]),
    .I3(b[27]),
    .O(sig00000024)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk00000068 (
    .I0(sig000000a6),
    .I1(sig000000aa),
    .O(sig000000a3)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000069 (
    .I0(sig000000a8),
    .I1(sig000000a7),
    .O(sig000000a5)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000006a (
    .I0(b[28]),
    .I1(a[28]),
    .O(sig00000073)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000006b (
    .I0(b[24]),
    .I1(b[23]),
    .I2(b[26]),
    .I3(b[25]),
    .O(sig00000093)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000006c (
    .I0(b[17]),
    .I1(b[16]),
    .I2(b[19]),
    .I3(b[18]),
    .O(sig0000008d)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000006d (
    .I0(a[17]),
    .I1(a[16]),
    .I2(a[19]),
    .I3(a[18]),
    .O(sig0000003d)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000006e (
    .I0(a[24]),
    .I1(b[24]),
    .I2(a[25]),
    .I3(b[25]),
    .O(sig00000023)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000006f (
    .I0(b[27]),
    .I1(a[27]),
    .O(sig00000072)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000070 (
    .I0(b[13]),
    .I1(b[12]),
    .I2(b[15]),
    .I3(b[14]),
    .O(sig0000008c)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000071 (
    .I0(a[13]),
    .I1(a[12]),
    .I2(a[15]),
    .I3(a[14]),
    .O(sig0000003c)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000072 (
    .I0(a[22]),
    .I1(b[22]),
    .I2(a[23]),
    .I3(b[23]),
    .O(sig00000022)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000073 (
    .I0(b[26]),
    .I1(a[26]),
    .O(sig00000071)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000074 (
    .I0(b[9]),
    .I1(b[8]),
    .I2(b[11]),
    .I3(b[10]),
    .O(sig0000008b)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000075 (
    .I0(a[9]),
    .I1(a[8]),
    .I2(a[11]),
    .I3(a[10]),
    .O(sig0000003b)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000076 (
    .I0(a[20]),
    .I1(b[20]),
    .I2(a[21]),
    .I3(b[21]),
    .O(sig00000021)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000077 (
    .I0(b[25]),
    .I1(a[25]),
    .O(sig00000070)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000078 (
    .I0(b[5]),
    .I1(b[4]),
    .I2(b[7]),
    .I3(b[6]),
    .O(sig0000008a)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000079 (
    .I0(a[5]),
    .I1(a[4]),
    .I2(a[7]),
    .I3(a[6]),
    .O(sig0000003a)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000007a (
    .I0(a[18]),
    .I1(b[18]),
    .I2(a[19]),
    .I3(b[19]),
    .O(sig0000002f)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk0000007b (
    .I0(ce),
    .I1(sig000000aa),
    .I2(sig000000a8),
    .O(sig000000ab)
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  blk0000007c (
    .I0(ce),
    .I1(sig000000aa),
    .I2(sig000000a8),
    .O(sig000000a9)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000007d (
    .I0(b[24]),
    .I1(a[24]),
    .O(sig0000006f)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000007e (
    .I0(b[1]),
    .I1(b[0]),
    .I2(b[3]),
    .I3(b[2]),
    .O(sig00000089)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000007f (
    .I0(a[1]),
    .I1(a[0]),
    .I2(a[3]),
    .I3(a[2]),
    .O(sig00000039)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000080 (
    .I0(a[16]),
    .I1(b[16]),
    .I2(a[17]),
    .I3(b[17]),
    .O(sig0000002e)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000081 (
    .I0(b[23]),
    .I1(a[23]),
    .O(sig0000006e)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000082 (
    .I0(a[14]),
    .I1(b[14]),
    .I2(a[15]),
    .I3(b[15]),
    .O(sig0000002d)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000083 (
    .I0(b[22]),
    .I1(a[22]),
    .O(sig0000006d)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000084 (
    .I0(a[12]),
    .I1(b[12]),
    .I2(a[13]),
    .I3(b[13]),
    .O(sig0000002c)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000085 (
    .I0(b[21]),
    .I1(a[21]),
    .O(sig0000006c)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000086 (
    .I0(a[10]),
    .I1(b[10]),
    .I2(a[11]),
    .I3(b[11]),
    .O(sig0000002b)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000087 (
    .I0(b[20]),
    .I1(a[20]),
    .O(sig0000006b)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000088 (
    .I0(a[8]),
    .I1(b[8]),
    .I2(a[9]),
    .I3(b[9]),
    .O(sig0000002a)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000089 (
    .I0(b[19]),
    .I1(a[19]),
    .O(sig00000069)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000008a (
    .I0(a[6]),
    .I1(b[6]),
    .I2(a[7]),
    .I3(b[7]),
    .O(sig00000029)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000008b (
    .I0(b[18]),
    .I1(a[18]),
    .O(sig00000068)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000008c (
    .I0(a[4]),
    .I1(b[4]),
    .I2(a[5]),
    .I3(b[5]),
    .O(sig00000028)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000008d (
    .I0(b[17]),
    .I1(a[17]),
    .O(sig00000067)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk0000008e (
    .I0(a[2]),
    .I1(b[2]),
    .I2(a[3]),
    .I3(b[3]),
    .O(sig00000027)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000008f (
    .I0(b[16]),
    .I1(a[16]),
    .O(sig00000066)
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  blk00000090 (
    .I0(a[0]),
    .I1(b[0]),
    .I2(a[1]),
    .I3(b[1]),
    .O(sig00000020)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000091 (
    .I0(b[15]),
    .I1(a[15]),
    .O(sig00000065)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000092 (
    .I0(b[14]),
    .I1(a[14]),
    .O(sig00000064)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000093 (
    .I0(b[13]),
    .I1(a[13]),
    .O(sig00000063)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000094 (
    .I0(b[12]),
    .I1(a[12]),
    .O(sig00000062)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000095 (
    .I0(b[11]),
    .I1(a[11]),
    .O(sig00000061)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000096 (
    .I0(b[10]),
    .I1(a[10]),
    .O(sig00000060)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000097 (
    .I0(b[9]),
    .I1(a[9]),
    .O(sig0000007e)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000098 (
    .I0(b[8]),
    .I1(a[8]),
    .O(sig0000007d)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk00000099 (
    .I0(b[7]),
    .I1(a[7]),
    .O(sig0000007c)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000009a (
    .I0(b[6]),
    .I1(a[6]),
    .O(sig0000007b)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000009b (
    .I0(b[5]),
    .I1(a[5]),
    .O(sig0000007a)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000009c (
    .I0(b[4]),
    .I1(a[4]),
    .O(sig00000079)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000009d (
    .I0(b[3]),
    .I1(a[3]),
    .O(sig00000078)
  );
  LUT4 #(
    .INIT ( 16'hFFF1 ))
  blk0000009e (
    .I0(sig00000097),
    .I1(sig0000009f),
    .I2(sig0000009c),
    .I3(sig0000009a),
    .O(sig000000a1)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk0000009f (
    .I0(b[2]),
    .I1(a[2]),
    .O(sig00000075)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000000a0 (
    .I0(b[1]),
    .I1(a[1]),
    .O(sig0000006a)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  blk000000a1 (
    .I0(b[0]),
    .I1(a[0]),
    .O(sig0000005f)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000000a2 (
    .I0(sig0000009a),
    .I1(sig0000009c),
    .O(sig000000a2)
  );
  LUT4 #(
    .INIT ( 16'h0019 ))
  blk000000a3 (
    .I0(sig00000006),
    .I1(sig0000007f),
    .I2(sig00000097),
    .I3(sig0000009f),
    .O(sig00000099)
  );
  LUT4 #(
    .INIT ( 16'hAE04 ))
  blk000000a4 (
    .I0(sig00000007),
    .I1(sig00000099),
    .I2(sig000000a2),
    .I3(sig000000a1),
    .O(sig0000000d)
  );
  LUT4 #(
    .INIT ( 16'h00F6 ))
  blk000000a5 (
    .I0(sig00000006),
    .I1(sig0000007f),
    .I2(sig00000007),
    .I3(sig00000097),
    .O(sig00000004)
  );
  LUT4 #(
    .INIT ( 16'h0203 ))
  blk000000a6 (
    .I0(sig0000009f),
    .I1(sig0000009c),
    .I2(sig0000009a),
    .I3(sig00000004),
    .O(sig0000000b)
  );
  LUT4 #(
    .INIT ( 16'hFFF9 ))
  blk000000a7 (
    .I0(sig00000006),
    .I1(sig0000007f),
    .I2(sig00000097),
    .I3(sig0000009f),
    .O(sig00000005)
  );
  LUT4 #(
    .INIT ( 16'h3236 ))
  blk000000a8 (
    .I0(sig0000009c),
    .I1(sig00000007),
    .I2(sig0000009a),
    .I3(sig00000005),
    .O(sig0000000f)
  );
  LUT4 #(
    .INIT ( 16'h109F ))
  blk000000a9 (
    .I0(sig0000007f),
    .I1(sig00000006),
    .I2(sig00000007),
    .I3(sig00000097),
    .O(sig00000003)
  );
  LUT4 #(
    .INIT ( 16'h0203 ))
  blk000000aa (
    .I0(sig0000009f),
    .I1(sig0000009c),
    .I2(sig0000009a),
    .I3(sig00000003),
    .O(sig0000000e)
  );
  MUXF5   blk000000ab (
    .I0(sig0000000f),
    .I1(sig0000000e),
    .S(sig00000008),
    .O(sig0000000c)
  );
  MUXF5   blk000000ac (
    .I0(sig0000000d),
    .I1(sig0000000b),
    .S(sig00000008),
    .O(sig0000000a)
  );
  MUXF6   blk000000ad (
    .I0(sig0000000c),
    .I1(sig0000000a),
    .S(sig00000009),
    .O(sig000000a0)
  );
  INV   blk000000ae (
    .I(sig000000a7),
    .O(sig000000a4)
  );
  INV   blk000000af (
    .I(b[31]),
    .O(sig0000009d)
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

// synthesis translate_on
