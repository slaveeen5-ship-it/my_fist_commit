////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: count_test.v
// /___/   /\     Timestamp: Fri Dec 19 16:30:37 2025
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/vvs/work_ise_14_7/test/ipcore_dir/tmp/_cg/count_test.ngc /home/vvs/work_ise_14_7/test/ipcore_dir/tmp/_cg/count_test.v 
// Device	: 6vsx315tff1156-2
// Input file	: /home/vvs/work_ise_14_7/test/ipcore_dir/tmp/_cg/count_test.ngc
// Output file	: /home/vvs/work_ise_14_7/test/ipcore_dir/tmp/_cg/count_test.v
// # of Modules	: 1
// Design Name	: count_test
// Xilinx        : /opt/tools/Xilinx/14.7/ISE_DS/ISE/
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

module count_test (
  clk, q
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  output [7 : 0] q;
  
  // synthesis translate_off
  
  wire \blk00000001/sig00000021 ;
  wire \blk00000001/sig00000020 ;
  wire \blk00000001/sig0000001f ;
  wire \blk00000001/sig0000001e ;
  wire \blk00000001/sig0000001d ;
  wire \blk00000001/sig0000001c ;
  wire \blk00000001/sig0000001b ;
  wire \blk00000001/sig0000001a ;
  wire \blk00000001/sig00000019 ;
  wire \blk00000001/sig00000018 ;
  wire \blk00000001/sig00000017 ;
  wire \blk00000001/sig00000016 ;
  wire \blk00000001/sig00000015 ;
  wire \blk00000001/sig00000014 ;
  wire \blk00000001/sig00000013 ;
  wire \blk00000001/sig00000012 ;
  wire \blk00000001/sig00000011 ;
  wire \blk00000001/sig00000010 ;
  wire \blk00000001/sig0000000f ;
  wire \blk00000001/sig0000000e ;
  wire \blk00000001/sig0000000d ;
  wire \blk00000001/sig0000000c ;
  wire \blk00000001/sig0000000b ;
  wire \blk00000001/sig0000000a ;
  wire [7 : 0] NlwRenamedSig_OI_q;
  assign
    q[7] = NlwRenamedSig_OI_q[7],
    q[6] = NlwRenamedSig_OI_q[6],
    q[5] = NlwRenamedSig_OI_q[5],
    q[4] = NlwRenamedSig_OI_q[4],
    q[3] = NlwRenamedSig_OI_q[3],
    q[2] = NlwRenamedSig_OI_q[2],
    q[1] = NlwRenamedSig_OI_q[1],
    q[0] = NlwRenamedSig_OI_q[0];
  INV   \blk00000001/blk00000021  (
    .I(NlwRenamedSig_OI_q[0]),
    .O(\blk00000001/sig0000001b )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk00000020  (
    .I0(NlwRenamedSig_OI_q[1]),
    .O(\blk00000001/sig00000021 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000001f  (
    .I0(NlwRenamedSig_OI_q[2]),
    .O(\blk00000001/sig00000020 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000001e  (
    .I0(NlwRenamedSig_OI_q[3]),
    .O(\blk00000001/sig0000001f )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000001d  (
    .I0(NlwRenamedSig_OI_q[4]),
    .O(\blk00000001/sig0000001e )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000001c  (
    .I0(NlwRenamedSig_OI_q[5]),
    .O(\blk00000001/sig0000001d )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \blk00000001/blk0000001b  (
    .I0(NlwRenamedSig_OI_q[6]),
    .O(\blk00000001/sig0000001c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001a  (
    .C(clk),
    .D(\blk00000001/sig0000000c ),
    .Q(NlwRenamedSig_OI_q[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000019  (
    .C(clk),
    .D(\blk00000001/sig0000000d ),
    .Q(NlwRenamedSig_OI_q[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000018  (
    .C(clk),
    .D(\blk00000001/sig0000000e ),
    .Q(NlwRenamedSig_OI_q[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000017  (
    .C(clk),
    .D(\blk00000001/sig0000000f ),
    .Q(NlwRenamedSig_OI_q[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000016  (
    .C(clk),
    .D(\blk00000001/sig00000010 ),
    .Q(NlwRenamedSig_OI_q[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000015  (
    .C(clk),
    .D(\blk00000001/sig00000011 ),
    .Q(NlwRenamedSig_OI_q[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000014  (
    .C(clk),
    .D(\blk00000001/sig00000012 ),
    .Q(NlwRenamedSig_OI_q[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000013  (
    .C(clk),
    .D(\blk00000001/sig00000013 ),
    .Q(NlwRenamedSig_OI_q[7])
  );
  MUXCY   \blk00000001/blk00000012  (
    .CI(\blk00000001/sig0000000b ),
    .DI(\blk00000001/sig0000000a ),
    .S(\blk00000001/sig0000001b ),
    .O(\blk00000001/sig0000001a )
  );
  XORCY   \blk00000001/blk00000011  (
    .CI(\blk00000001/sig0000000b ),
    .LI(\blk00000001/sig0000001b ),
    .O(\blk00000001/sig0000000c )
  );
  XORCY   \blk00000001/blk00000010  (
    .CI(\blk00000001/sig00000014 ),
    .LI(NlwRenamedSig_OI_q[7]),
    .O(\blk00000001/sig00000013 )
  );
  MUXCY   \blk00000001/blk0000000f  (
    .CI(\blk00000001/sig0000001a ),
    .DI(\blk00000001/sig0000000b ),
    .S(\blk00000001/sig00000021 ),
    .O(\blk00000001/sig00000019 )
  );
  XORCY   \blk00000001/blk0000000e  (
    .CI(\blk00000001/sig0000001a ),
    .LI(\blk00000001/sig00000021 ),
    .O(\blk00000001/sig0000000d )
  );
  MUXCY   \blk00000001/blk0000000d  (
    .CI(\blk00000001/sig00000019 ),
    .DI(\blk00000001/sig0000000b ),
    .S(\blk00000001/sig00000020 ),
    .O(\blk00000001/sig00000018 )
  );
  XORCY   \blk00000001/blk0000000c  (
    .CI(\blk00000001/sig00000019 ),
    .LI(\blk00000001/sig00000020 ),
    .O(\blk00000001/sig0000000e )
  );
  MUXCY   \blk00000001/blk0000000b  (
    .CI(\blk00000001/sig00000018 ),
    .DI(\blk00000001/sig0000000b ),
    .S(\blk00000001/sig0000001f ),
    .O(\blk00000001/sig00000017 )
  );
  XORCY   \blk00000001/blk0000000a  (
    .CI(\blk00000001/sig00000018 ),
    .LI(\blk00000001/sig0000001f ),
    .O(\blk00000001/sig0000000f )
  );
  MUXCY   \blk00000001/blk00000009  (
    .CI(\blk00000001/sig00000017 ),
    .DI(\blk00000001/sig0000000b ),
    .S(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000016 )
  );
  XORCY   \blk00000001/blk00000008  (
    .CI(\blk00000001/sig00000017 ),
    .LI(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000010 )
  );
  MUXCY   \blk00000001/blk00000007  (
    .CI(\blk00000001/sig00000016 ),
    .DI(\blk00000001/sig0000000b ),
    .S(\blk00000001/sig0000001d ),
    .O(\blk00000001/sig00000015 )
  );
  XORCY   \blk00000001/blk00000006  (
    .CI(\blk00000001/sig00000016 ),
    .LI(\blk00000001/sig0000001d ),
    .O(\blk00000001/sig00000011 )
  );
  MUXCY   \blk00000001/blk00000005  (
    .CI(\blk00000001/sig00000015 ),
    .DI(\blk00000001/sig0000000b ),
    .S(\blk00000001/sig0000001c ),
    .O(\blk00000001/sig00000014 )
  );
  XORCY   \blk00000001/blk00000004  (
    .CI(\blk00000001/sig00000015 ),
    .LI(\blk00000001/sig0000001c ),
    .O(\blk00000001/sig00000012 )
  );
  GND   \blk00000001/blk00000003  (
    .G(\blk00000001/sig0000000b )
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig0000000a )
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
