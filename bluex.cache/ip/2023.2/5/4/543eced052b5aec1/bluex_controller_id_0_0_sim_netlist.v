// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Dec 18 14:34:03 2023
// Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bluex_controller_id_0_0_sim_netlist.v
// Design      : bluex_controller_id_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bluex_controller_id_0_0,controller_id,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "controller_id,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (real_op,
    reg_write,
    memory_to_reg,
    memory_write,
    branch,
    alu_src,
    addr_flag);
  input [5:0]real_op;
  output reg_write;
  output memory_to_reg;
  output memory_write;
  output branch;
  output alu_src;
  output addr_flag;

  wire addr_flag;
  wire alu_src;
  wire branch;
  wire memory_to_reg;
  wire memory_write;
  wire [5:0]real_op;
  wire reg_write;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller_id inst
       (.addr_flag(addr_flag),
        .alu_src(alu_src),
        .branch(branch),
        .memory_to_reg(memory_to_reg),
        .memory_write(memory_write),
        .real_op(real_op),
        .reg_write(reg_write));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller_id
   (reg_write,
    memory_to_reg,
    memory_write,
    branch,
    alu_src,
    addr_flag,
    real_op);
  output reg_write;
  output memory_to_reg;
  output memory_write;
  output branch;
  output alu_src;
  output addr_flag;
  input [5:0]real_op;

  wire addr_flag;
  wire alu_src;
  wire branch;
  wire memory_to_reg;
  wire memory_write;
  wire [5:0]real_op;
  wire reg_write;

  LUT6 #(
    .INIT(64'hBFFFFFFFFEFEBFFF)) 
    \/i_ 
       (.I0(real_op[5]),
        .I1(real_op[4]),
        .I2(real_op[2]),
        .I3(real_op[0]),
        .I4(real_op[1]),
        .I5(real_op[3]),
        .O(reg_write));
  LUT6 #(
    .INIT(64'h0000000080030000)) 
    \/i___0 
       (.I0(real_op[0]),
        .I1(real_op[2]),
        .I2(real_op[3]),
        .I3(real_op[4]),
        .I4(real_op[1]),
        .I5(real_op[5]),
        .O(branch));
  LUT6 #(
    .INIT(64'h0000000064A24243)) 
    \/i___1 
       (.I0(real_op[3]),
        .I1(real_op[2]),
        .I2(real_op[4]),
        .I3(real_op[0]),
        .I4(real_op[1]),
        .I5(real_op[5]),
        .O(alu_src));
  LUT6 #(
    .INIT(64'hEFBFEFFBBEBFFFBA)) 
    \/i___2 
       (.I0(real_op[5]),
        .I1(real_op[3]),
        .I2(real_op[1]),
        .I3(real_op[2]),
        .I4(real_op[4]),
        .I5(real_op[0]),
        .O(addr_flag));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    memory_to_reg__0
       (.I0(real_op[5]),
        .I1(real_op[1]),
        .I2(real_op[4]),
        .I3(real_op[2]),
        .I4(real_op[3]),
        .I5(real_op[0]),
        .O(memory_to_reg));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    memory_write__0
       (.I0(real_op[5]),
        .I1(real_op[1]),
        .I2(real_op[2]),
        .I3(real_op[0]),
        .I4(real_op[3]),
        .I5(real_op[4]),
        .O(memory_write));
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
