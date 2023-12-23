// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Dec 23 23:12:29 2023
// Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/MyWorks/Programs/Verilog/vivado/bluex/bluex.gen/sources_1/bd/bluex/ip/bluex_demux_id_0_0/bluex_demux_id_0_0_sim_netlist.v
// Design      : bluex_demux_id_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bluex_demux_id_0_0,demux_id,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "demux_id,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bluex_demux_id_0_0
   (clk,
    rst,
    branch_taken,
    ena_n,
    enable_CPU,
    isc,
    pc_next_inw,
    op,
    rs,
    rt,
    rd,
    shamt,
    rfunct,
    imm,
    addr,
    real_op,
    pc_next);
  (* X_INTERFACE_INFO = "xilinx.com:user:lcd:1.0 user_lcd CLK" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input branch_taken;
  input ena_n;
  input enable_CPU;
  input [31:0]isc;
  input [15:0]pc_next_inw;
  output [5:0]op;
  output [4:0]rs;
  output [4:0]rt;
  output [4:0]rd;
  output [4:0]shamt;
  output [5:0]rfunct;
  output [15:0]imm;
  output [15:0]addr;
  output [5:0]real_op;
  output [15:0]pc_next;

  wire branch_taken;
  wire clk;
  wire ena_n;
  wire enable_CPU;
  wire [15:0]imm;
  wire [31:0]isc;
  wire [5:0]op;
  wire [15:0]pc_next;
  wire [15:0]pc_next_inw;
  wire [5:0]real_op;
  wire [4:0]rs;
  wire rst;
  wire [4:0]rt;

  assign addr[15:0] = imm;
  assign rd[4:0] = imm[15:11];
  assign rfunct[5:0] = imm[5:0];
  assign shamt[4:0] = imm[10:6];
  bluex_demux_id_0_0_demux_id inst
       (.branch_taken(branch_taken),
        .clk(clk),
        .ena_n(ena_n),
        .enable_CPU(enable_CPU),
        .imm(imm),
        .isc(isc),
        .op(op),
        .pc_next(pc_next),
        .pc_next_inw(pc_next_inw),
        .real_op(real_op),
        .rs(rs),
        .rst(rst),
        .rt(rt));
endmodule

(* ORIG_REF_NAME = "demux_id" *) 
module bluex_demux_id_0_0_demux_id
   (op,
    rs,
    rt,
    real_op,
    pc_next,
    imm,
    isc,
    clk,
    pc_next_inw,
    rst,
    branch_taken,
    enable_CPU,
    ena_n);
  output [5:0]op;
  output [4:0]rs;
  output [4:0]rt;
  output [5:0]real_op;
  output [15:0]pc_next;
  output [15:0]imm;
  input [31:0]isc;
  input clk;
  input [15:0]pc_next_inw;
  input rst;
  input branch_taken;
  input enable_CPU;
  input ena_n;

  wire branch_taken;
  wire clk;
  wire ena_n;
  wire enable_CPU;
  wire [15:0]imm;
  wire [31:0]isc;
  wire [5:0]op;
  wire \op[5]_i_1_n_0 ;
  wire [15:0]pc_next;
  wire [15:0]pc_next_inw;
  wire [5:0]real_op;
  wire \real_op[3]_i_2_n_0 ;
  wire \real_op[5]_i_2_n_0 ;
  wire [5:0]real_op_0;
  wire real_rst;
  wire [4:0]rs;
  wire rst;
  wire [4:0]rt;

  LUT2 #(
    .INIT(4'h2)) 
    \op[5]_i_1 
       (.I0(enable_CPU),
        .I1(ena_n),
        .O(\op[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \op[5]_i_2 
       (.I0(rst),
        .I1(branch_taken),
        .O(real_rst));
  FDCE \op_reg[0] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[26]),
        .Q(op[0]));
  FDCE \op_reg[1] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[27]),
        .Q(op[1]));
  FDCE \op_reg[2] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[28]),
        .Q(op[2]));
  FDCE \op_reg[3] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[29]),
        .Q(op[3]));
  FDCE \op_reg[4] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[30]),
        .Q(op[4]));
  FDCE \op_reg[5] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[31]),
        .Q(op[5]));
  FDCE \pc_next_reg[0] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[0]),
        .Q(pc_next[0]));
  FDCE \pc_next_reg[10] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[10]),
        .Q(pc_next[10]));
  FDCE \pc_next_reg[11] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[11]),
        .Q(pc_next[11]));
  FDCE \pc_next_reg[12] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[12]),
        .Q(pc_next[12]));
  FDCE \pc_next_reg[13] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[13]),
        .Q(pc_next[13]));
  FDCE \pc_next_reg[14] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[14]),
        .Q(pc_next[14]));
  FDCE \pc_next_reg[15] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[15]),
        .Q(pc_next[15]));
  FDCE \pc_next_reg[1] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[1]),
        .Q(pc_next[1]));
  FDCE \pc_next_reg[2] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[2]),
        .Q(pc_next[2]));
  FDCE \pc_next_reg[3] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[3]),
        .Q(pc_next[3]));
  FDCE \pc_next_reg[4] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[4]),
        .Q(pc_next[4]));
  FDCE \pc_next_reg[5] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[5]),
        .Q(pc_next[5]));
  FDCE \pc_next_reg[6] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[6]),
        .Q(pc_next[6]));
  FDCE \pc_next_reg[7] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[7]),
        .Q(pc_next[7]));
  FDCE \pc_next_reg[8] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[8]),
        .Q(pc_next[8]));
  FDCE \pc_next_reg[9] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(pc_next_inw[9]),
        .Q(pc_next[9]));
  FDCE \rd_reg[0] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[11]),
        .Q(imm[11]));
  FDCE \rd_reg[1] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[12]),
        .Q(imm[12]));
  FDCE \rd_reg[2] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[13]),
        .Q(imm[13]));
  FDCE \rd_reg[3] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[14]),
        .Q(imm[14]));
  FDCE \rd_reg[4] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[15]),
        .Q(imm[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \real_op[0]_i_1 
       (.I0(\real_op[3]_i_2_n_0 ),
        .I1(isc[27]),
        .I2(isc[0]),
        .I3(isc[29]),
        .I4(isc[28]),
        .I5(isc[26]),
        .O(real_op_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \real_op[1]_i_1 
       (.I0(\real_op[3]_i_2_n_0 ),
        .I1(isc[26]),
        .I2(isc[1]),
        .I3(isc[29]),
        .I4(isc[28]),
        .I5(isc[27]),
        .O(real_op_0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \real_op[2]_i_1 
       (.I0(\real_op[3]_i_2_n_0 ),
        .I1(isc[29]),
        .I2(isc[2]),
        .I3(isc[27]),
        .I4(isc[26]),
        .I5(isc[28]),
        .O(real_op_0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \real_op[3]_i_1 
       (.I0(\real_op[3]_i_2_n_0 ),
        .I1(isc[28]),
        .I2(isc[3]),
        .I3(isc[27]),
        .I4(isc[26]),
        .I5(isc[29]),
        .O(real_op_0[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \real_op[3]_i_2 
       (.I0(isc[30]),
        .I1(isc[31]),
        .O(\real_op[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \real_op[4]_i_1 
       (.I0(\real_op[5]_i_2_n_0 ),
        .I1(isc[31]),
        .I2(isc[4]),
        .I3(isc[27]),
        .I4(isc[26]),
        .I5(isc[30]),
        .O(real_op_0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \real_op[5]_i_1 
       (.I0(\real_op[5]_i_2_n_0 ),
        .I1(isc[30]),
        .I2(isc[5]),
        .I3(isc[27]),
        .I4(isc[26]),
        .I5(isc[31]),
        .O(real_op_0[5]));
  LUT2 #(
    .INIT(4'h1)) 
    \real_op[5]_i_2 
       (.I0(isc[28]),
        .I1(isc[29]),
        .O(\real_op[5]_i_2_n_0 ));
  FDCE \real_op_reg[0] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(real_op_0[0]),
        .Q(real_op[0]));
  FDCE \real_op_reg[1] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(real_op_0[1]),
        .Q(real_op[1]));
  FDCE \real_op_reg[2] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(real_op_0[2]),
        .Q(real_op[2]));
  FDCE \real_op_reg[3] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(real_op_0[3]),
        .Q(real_op[3]));
  FDCE \real_op_reg[4] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(real_op_0[4]),
        .Q(real_op[4]));
  FDCE \real_op_reg[5] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(real_op_0[5]),
        .Q(real_op[5]));
  FDCE \rfunct_reg[0] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[0]),
        .Q(imm[0]));
  FDCE \rfunct_reg[1] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[1]),
        .Q(imm[1]));
  FDCE \rfunct_reg[2] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[2]),
        .Q(imm[2]));
  FDCE \rfunct_reg[3] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[3]),
        .Q(imm[3]));
  FDCE \rfunct_reg[4] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[4]),
        .Q(imm[4]));
  FDCE \rfunct_reg[5] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[5]),
        .Q(imm[5]));
  FDCE \rs_reg[0] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[21]),
        .Q(rs[0]));
  FDCE \rs_reg[1] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[22]),
        .Q(rs[1]));
  FDCE \rs_reg[2] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[23]),
        .Q(rs[2]));
  FDCE \rs_reg[3] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[24]),
        .Q(rs[3]));
  FDCE \rs_reg[4] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[25]),
        .Q(rs[4]));
  FDCE \rt_reg[0] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[16]),
        .Q(rt[0]));
  FDCE \rt_reg[1] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[17]),
        .Q(rt[1]));
  FDCE \rt_reg[2] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[18]),
        .Q(rt[2]));
  FDCE \rt_reg[3] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[19]),
        .Q(rt[3]));
  FDCE \rt_reg[4] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[20]),
        .Q(rt[4]));
  FDCE \shamt_reg[0] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[6]),
        .Q(imm[6]));
  FDCE \shamt_reg[1] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[7]),
        .Q(imm[7]));
  FDCE \shamt_reg[2] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[8]),
        .Q(imm[8]));
  FDCE \shamt_reg[3] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[9]),
        .Q(imm[9]));
  FDCE \shamt_reg[4] 
       (.C(clk),
        .CE(\op[5]_i_1_n_0 ),
        .CLR(real_rst),
        .D(isc[10]),
        .Q(imm[10]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
