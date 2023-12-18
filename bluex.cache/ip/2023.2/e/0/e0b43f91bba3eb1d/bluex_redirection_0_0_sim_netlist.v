// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Dec 18 13:20:57 2023
// Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bluex_redirection_0_0_sim_netlist.v
// Design      : bluex_redirection_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bluex_redirection_0_0,redirection,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "redirection,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rs,
    rt,
    reg_write_ex,
    write_reg_addr_ex,
    mem_rd_ex,
    branch_taken_ex,
    reg_write_mem,
    write_reg_addr_mem,
    real_op,
    flush,
    stall,
    rs_forward,
    rt_forward);
  input [4:0]rs;
  input [4:0]rt;
  input reg_write_ex;
  input [4:0]write_reg_addr_ex;
  input mem_rd_ex;
  input branch_taken_ex;
  input reg_write_mem;
  input [4:0]write_reg_addr_mem;
  input [5:0]real_op;
  output flush;
  output stall;
  output [1:0]rs_forward;
  output [1:0]rt_forward;

  wire branch_taken_ex;
  wire flush;
  wire flush_INST_0_i_1_n_0;
  wire flush_INST_0_i_2_n_0;
  wire flush_INST_0_i_3_n_0;
  wire flush_INST_0_i_4_n_0;
  wire [5:0]real_op;
  wire reg_write_ex;
  wire reg_write_mem;
  wire [4:0]rs;
  wire [1:0]rs_forward;
  wire \rs_forward[1]_INST_0_i_1_n_0 ;
  wire \rs_forward[1]_INST_0_i_2_n_0 ;
  wire \rs_forward[1]_INST_0_i_3_n_0 ;
  wire \rs_forward[1]_INST_0_i_4_n_0 ;
  wire [4:0]rt;
  wire [1:0]rt_forward;
  wire \rt_forward[1]_INST_0_i_1_n_0 ;
  wire \rt_forward[1]_INST_0_i_2_n_0 ;
  wire \rt_forward[1]_INST_0_i_3_n_0 ;
  wire \rt_forward[1]_INST_0_i_4_n_0 ;
  wire \rt_forward[1]_INST_0_i_5_n_0 ;
  wire stall;
  wire stall_INST_0_i_1_n_0;
  wire [4:0]write_reg_addr_ex;
  wire [4:0]write_reg_addr_mem;

  LUT3 #(
    .INIT(8'hBA)) 
    flush_INST_0
       (.I0(branch_taken_ex),
        .I1(flush_INST_0_i_1_n_0),
        .I2(flush_INST_0_i_2_n_0),
        .O(flush));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFFEFFE)) 
    flush_INST_0_i_1
       (.I0(flush_INST_0_i_3_n_0),
        .I1(flush_INST_0_i_4_n_0),
        .I2(rs[0]),
        .I3(write_reg_addr_ex[0]),
        .I4(rs[2]),
        .I5(write_reg_addr_ex[2]),
        .O(flush_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    flush_INST_0_i_2
       (.I0(real_op[3]),
        .I1(real_op[0]),
        .I2(real_op[1]),
        .I3(real_op[5]),
        .I4(real_op[2]),
        .I5(real_op[4]),
        .O(flush_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    flush_INST_0_i_3
       (.I0(write_reg_addr_ex[4]),
        .I1(write_reg_addr_ex[3]),
        .I2(write_reg_addr_ex[1]),
        .I3(write_reg_addr_ex[0]),
        .I4(write_reg_addr_ex[2]),
        .O(flush_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    flush_INST_0_i_4
       (.I0(rs[1]),
        .I1(write_reg_addr_ex[1]),
        .I2(write_reg_addr_ex[4]),
        .I3(rs[4]),
        .I4(write_reg_addr_ex[3]),
        .I5(rs[3]),
        .O(flush_INST_0_i_4_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    \rs_forward[0]_INST_0 
       (.I0(reg_write_ex),
        .I1(\rs_forward[1]_INST_0_i_1_n_0 ),
        .I2(flush_INST_0_i_1_n_0),
        .O(rs_forward[0]));
  LUT4 #(
    .INIT(16'h0002)) 
    \rs_forward[1]_INST_0 
       (.I0(flush_INST_0_i_1_n_0),
        .I1(\rs_forward[1]_INST_0_i_1_n_0 ),
        .I2(\rs_forward[1]_INST_0_i_2_n_0 ),
        .I3(\rs_forward[1]_INST_0_i_3_n_0 ),
        .O(rs_forward[1]));
  LUT6 #(
    .INIT(64'h00E0000000000020)) 
    \rs_forward[1]_INST_0_i_1 
       (.I0(real_op[3]),
        .I1(real_op[0]),
        .I2(real_op[1]),
        .I3(real_op[5]),
        .I4(real_op[4]),
        .I5(real_op[2]),
        .O(\rs_forward[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555557)) 
    \rs_forward[1]_INST_0_i_2 
       (.I0(reg_write_mem),
        .I1(write_reg_addr_mem[0]),
        .I2(write_reg_addr_mem[3]),
        .I3(write_reg_addr_mem[2]),
        .I4(write_reg_addr_mem[4]),
        .I5(write_reg_addr_mem[1]),
        .O(\rs_forward[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \rs_forward[1]_INST_0_i_3 
       (.I0(write_reg_addr_mem[1]),
        .I1(rs[1]),
        .I2(write_reg_addr_mem[2]),
        .I3(rs[2]),
        .I4(\rs_forward[1]_INST_0_i_4_n_0 ),
        .O(\rs_forward[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \rs_forward[1]_INST_0_i_4 
       (.I0(rs[3]),
        .I1(write_reg_addr_mem[3]),
        .I2(write_reg_addr_mem[4]),
        .I3(rs[4]),
        .I4(write_reg_addr_mem[0]),
        .I5(rs[0]),
        .O(\rs_forward[1]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \rt_forward[0]_INST_0 
       (.I0(reg_write_ex),
        .I1(\rt_forward[1]_INST_0_i_3_n_0 ),
        .I2(\rt_forward[1]_INST_0_i_1_n_0 ),
        .O(rt_forward[0]));
  LUT3 #(
    .INIT(8'h02)) 
    \rt_forward[1]_INST_0 
       (.I0(\rt_forward[1]_INST_0_i_1_n_0 ),
        .I1(\rt_forward[1]_INST_0_i_2_n_0 ),
        .I2(\rt_forward[1]_INST_0_i_3_n_0 ),
        .O(rt_forward[1]));
  LUT6 #(
    .INIT(64'hBBBBBFAFFEBABFFE)) 
    \rt_forward[1]_INST_0_i_1 
       (.I0(real_op[5]),
        .I1(real_op[1]),
        .I2(real_op[2]),
        .I3(real_op[0]),
        .I4(real_op[3]),
        .I5(real_op[4]),
        .O(\rt_forward[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFFFFFFFFEFFE)) 
    \rt_forward[1]_INST_0_i_2 
       (.I0(\rs_forward[1]_INST_0_i_2_n_0 ),
        .I1(\rt_forward[1]_INST_0_i_4_n_0 ),
        .I2(rt[0]),
        .I3(write_reg_addr_mem[0]),
        .I4(rt[2]),
        .I5(write_reg_addr_mem[2]),
        .O(\rt_forward[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000041000041)) 
    \rt_forward[1]_INST_0_i_3 
       (.I0(flush_INST_0_i_3_n_0),
        .I1(rt[2]),
        .I2(write_reg_addr_ex[2]),
        .I3(rt[1]),
        .I4(write_reg_addr_ex[1]),
        .I5(\rt_forward[1]_INST_0_i_5_n_0 ),
        .O(\rt_forward[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \rt_forward[1]_INST_0_i_4 
       (.I0(rt[1]),
        .I1(write_reg_addr_mem[1]),
        .I2(write_reg_addr_mem[4]),
        .I3(rt[4]),
        .I4(write_reg_addr_mem[3]),
        .I5(rt[3]),
        .O(\rt_forward[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \rt_forward[1]_INST_0_i_5 
       (.I0(rt[4]),
        .I1(write_reg_addr_ex[4]),
        .I2(write_reg_addr_ex[0]),
        .I3(rt[0]),
        .I4(write_reg_addr_ex[3]),
        .I5(rt[3]),
        .O(\rt_forward[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    stall_INST_0
       (.I0(real_op[4]),
        .I1(real_op[2]),
        .I2(real_op[5]),
        .I3(real_op[1]),
        .I4(stall_INST_0_i_1_n_0),
        .I5(flush_INST_0_i_1_n_0),
        .O(stall));
  LUT2 #(
    .INIT(4'h1)) 
    stall_INST_0_i_1
       (.I0(real_op[0]),
        .I1(real_op[3]),
        .O(stall_INST_0_i_1_n_0));
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
