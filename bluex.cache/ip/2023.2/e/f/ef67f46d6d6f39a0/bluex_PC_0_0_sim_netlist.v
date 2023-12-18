// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Dec 18 13:20:58 2023
// Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bluex_PC_0_0_sim_netlist.v
// Design      : bluex_PC_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PC
   (current_addr,
    next_addr_output,
    next_addr_branch,
    branch_taken_ex,
    clk,
    ena_n,
    rst_n);
  output [15:0]current_addr;
  output [15:0]next_addr_output;
  input [15:0]next_addr_branch;
  input branch_taken_ex;
  input clk;
  input ena_n;
  input rst_n;

  wire branch_taken_ex;
  wire clk;
  wire [15:0]current_addr;
  wire \current_addr[11]_i_2_n_0 ;
  wire \current_addr[11]_i_3_n_0 ;
  wire \current_addr[11]_i_4_n_0 ;
  wire \current_addr[11]_i_5_n_0 ;
  wire \current_addr[15]_i_3_n_0 ;
  wire \current_addr[15]_i_4_n_0 ;
  wire \current_addr[15]_i_5_n_0 ;
  wire \current_addr[15]_i_6_n_0 ;
  wire \current_addr[15]_i_7_n_0 ;
  wire \current_addr[3]_i_2_n_0 ;
  wire \current_addr[3]_i_3_n_0 ;
  wire \current_addr[3]_i_4_n_0 ;
  wire \current_addr[3]_i_5_n_0 ;
  wire \current_addr[3]_i_6_n_0 ;
  wire \current_addr[7]_i_2_n_0 ;
  wire \current_addr[7]_i_3_n_0 ;
  wire \current_addr[7]_i_4_n_0 ;
  wire \current_addr[7]_i_5_n_0 ;
  wire \current_addr_reg[11]_i_1_n_0 ;
  wire \current_addr_reg[11]_i_1_n_1 ;
  wire \current_addr_reg[11]_i_1_n_2 ;
  wire \current_addr_reg[11]_i_1_n_3 ;
  wire \current_addr_reg[11]_i_1_n_4 ;
  wire \current_addr_reg[11]_i_1_n_5 ;
  wire \current_addr_reg[11]_i_1_n_6 ;
  wire \current_addr_reg[11]_i_1_n_7 ;
  wire \current_addr_reg[15]_i_2_n_1 ;
  wire \current_addr_reg[15]_i_2_n_2 ;
  wire \current_addr_reg[15]_i_2_n_3 ;
  wire \current_addr_reg[15]_i_2_n_4 ;
  wire \current_addr_reg[15]_i_2_n_5 ;
  wire \current_addr_reg[15]_i_2_n_6 ;
  wire \current_addr_reg[15]_i_2_n_7 ;
  wire \current_addr_reg[3]_i_1_n_0 ;
  wire \current_addr_reg[3]_i_1_n_1 ;
  wire \current_addr_reg[3]_i_1_n_2 ;
  wire \current_addr_reg[3]_i_1_n_3 ;
  wire \current_addr_reg[3]_i_1_n_4 ;
  wire \current_addr_reg[3]_i_1_n_5 ;
  wire \current_addr_reg[3]_i_1_n_6 ;
  wire \current_addr_reg[3]_i_1_n_7 ;
  wire \current_addr_reg[7]_i_1_n_0 ;
  wire \current_addr_reg[7]_i_1_n_1 ;
  wire \current_addr_reg[7]_i_1_n_2 ;
  wire \current_addr_reg[7]_i_1_n_3 ;
  wire \current_addr_reg[7]_i_1_n_4 ;
  wire \current_addr_reg[7]_i_1_n_5 ;
  wire \current_addr_reg[7]_i_1_n_6 ;
  wire \current_addr_reg[7]_i_1_n_7 ;
  wire ena_n;
  wire [15:0]next_addr_branch;
  wire [15:0]next_addr_output;
  wire next_addr_output_carry__0_n_0;
  wire next_addr_output_carry__0_n_1;
  wire next_addr_output_carry__0_n_2;
  wire next_addr_output_carry__0_n_3;
  wire next_addr_output_carry__1_n_0;
  wire next_addr_output_carry__1_n_1;
  wire next_addr_output_carry__1_n_2;
  wire next_addr_output_carry__1_n_3;
  wire next_addr_output_carry__2_n_2;
  wire next_addr_output_carry__2_n_3;
  wire next_addr_output_carry_n_0;
  wire next_addr_output_carry_n_1;
  wire next_addr_output_carry_n_2;
  wire next_addr_output_carry_n_3;
  wire rst_n;
  wire sel;
  wire [3:3]\NLW_current_addr_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:2]NLW_next_addr_output_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_next_addr_output_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[11]_i_2 
       (.I0(next_addr_branch[11]),
        .I1(branch_taken_ex),
        .I2(current_addr[11]),
        .O(\current_addr[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[11]_i_3 
       (.I0(next_addr_branch[10]),
        .I1(branch_taken_ex),
        .I2(current_addr[10]),
        .O(\current_addr[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[11]_i_4 
       (.I0(next_addr_branch[9]),
        .I1(branch_taken_ex),
        .I2(current_addr[9]),
        .O(\current_addr[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[11]_i_5 
       (.I0(next_addr_branch[8]),
        .I1(branch_taken_ex),
        .I2(current_addr[8]),
        .O(\current_addr[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_addr[15]_i_1 
       (.I0(ena_n),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \current_addr[15]_i_3 
       (.I0(rst_n),
        .O(\current_addr[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[15]_i_4 
       (.I0(next_addr_branch[15]),
        .I1(branch_taken_ex),
        .I2(current_addr[15]),
        .O(\current_addr[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[15]_i_5 
       (.I0(next_addr_branch[14]),
        .I1(branch_taken_ex),
        .I2(current_addr[14]),
        .O(\current_addr[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[15]_i_6 
       (.I0(next_addr_branch[13]),
        .I1(branch_taken_ex),
        .I2(current_addr[13]),
        .O(\current_addr[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[15]_i_7 
       (.I0(next_addr_branch[12]),
        .I1(branch_taken_ex),
        .I2(current_addr[12]),
        .O(\current_addr[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[3]_i_2 
       (.I0(next_addr_branch[0]),
        .I1(branch_taken_ex),
        .I2(current_addr[0]),
        .O(\current_addr[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[3]_i_3 
       (.I0(next_addr_branch[3]),
        .I1(branch_taken_ex),
        .I2(current_addr[3]),
        .O(\current_addr[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[3]_i_4 
       (.I0(next_addr_branch[2]),
        .I1(branch_taken_ex),
        .I2(current_addr[2]),
        .O(\current_addr[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[3]_i_5 
       (.I0(next_addr_branch[1]),
        .I1(branch_taken_ex),
        .I2(current_addr[1]),
        .O(\current_addr[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \current_addr[3]_i_6 
       (.I0(current_addr[0]),
        .I1(next_addr_branch[0]),
        .I2(branch_taken_ex),
        .O(\current_addr[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[7]_i_2 
       (.I0(next_addr_branch[7]),
        .I1(branch_taken_ex),
        .I2(current_addr[7]),
        .O(\current_addr[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[7]_i_3 
       (.I0(next_addr_branch[6]),
        .I1(branch_taken_ex),
        .I2(current_addr[6]),
        .O(\current_addr[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[7]_i_4 
       (.I0(next_addr_branch[5]),
        .I1(branch_taken_ex),
        .I2(current_addr[5]),
        .O(\current_addr[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \current_addr[7]_i_5 
       (.I0(next_addr_branch[4]),
        .I1(branch_taken_ex),
        .I2(current_addr[4]),
        .O(\current_addr[7]_i_5_n_0 ));
  FDCE \current_addr_reg[0] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[3]_i_1_n_7 ),
        .Q(current_addr[0]));
  FDCE \current_addr_reg[10] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[11]_i_1_n_5 ),
        .Q(current_addr[10]));
  FDCE \current_addr_reg[11] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[11]_i_1_n_4 ),
        .Q(current_addr[11]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_addr_reg[11]_i_1 
       (.CI(\current_addr_reg[7]_i_1_n_0 ),
        .CO({\current_addr_reg[11]_i_1_n_0 ,\current_addr_reg[11]_i_1_n_1 ,\current_addr_reg[11]_i_1_n_2 ,\current_addr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_addr_reg[11]_i_1_n_4 ,\current_addr_reg[11]_i_1_n_5 ,\current_addr_reg[11]_i_1_n_6 ,\current_addr_reg[11]_i_1_n_7 }),
        .S({\current_addr[11]_i_2_n_0 ,\current_addr[11]_i_3_n_0 ,\current_addr[11]_i_4_n_0 ,\current_addr[11]_i_5_n_0 }));
  FDCE \current_addr_reg[12] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[15]_i_2_n_7 ),
        .Q(current_addr[12]));
  FDCE \current_addr_reg[13] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[15]_i_2_n_6 ),
        .Q(current_addr[13]));
  FDCE \current_addr_reg[14] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[15]_i_2_n_5 ),
        .Q(current_addr[14]));
  FDCE \current_addr_reg[15] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[15]_i_2_n_4 ),
        .Q(current_addr[15]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_addr_reg[15]_i_2 
       (.CI(\current_addr_reg[11]_i_1_n_0 ),
        .CO({\NLW_current_addr_reg[15]_i_2_CO_UNCONNECTED [3],\current_addr_reg[15]_i_2_n_1 ,\current_addr_reg[15]_i_2_n_2 ,\current_addr_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_addr_reg[15]_i_2_n_4 ,\current_addr_reg[15]_i_2_n_5 ,\current_addr_reg[15]_i_2_n_6 ,\current_addr_reg[15]_i_2_n_7 }),
        .S({\current_addr[15]_i_4_n_0 ,\current_addr[15]_i_5_n_0 ,\current_addr[15]_i_6_n_0 ,\current_addr[15]_i_7_n_0 }));
  FDCE \current_addr_reg[1] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[3]_i_1_n_6 ),
        .Q(current_addr[1]));
  FDCE \current_addr_reg[2] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[3]_i_1_n_5 ),
        .Q(current_addr[2]));
  FDCE \current_addr_reg[3] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[3]_i_1_n_4 ),
        .Q(current_addr[3]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_addr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\current_addr_reg[3]_i_1_n_0 ,\current_addr_reg[3]_i_1_n_1 ,\current_addr_reg[3]_i_1_n_2 ,\current_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\current_addr[3]_i_2_n_0 }),
        .O({\current_addr_reg[3]_i_1_n_4 ,\current_addr_reg[3]_i_1_n_5 ,\current_addr_reg[3]_i_1_n_6 ,\current_addr_reg[3]_i_1_n_7 }),
        .S({\current_addr[3]_i_3_n_0 ,\current_addr[3]_i_4_n_0 ,\current_addr[3]_i_5_n_0 ,\current_addr[3]_i_6_n_0 }));
  FDCE \current_addr_reg[4] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[7]_i_1_n_7 ),
        .Q(current_addr[4]));
  FDCE \current_addr_reg[5] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[7]_i_1_n_6 ),
        .Q(current_addr[5]));
  FDCE \current_addr_reg[6] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[7]_i_1_n_5 ),
        .Q(current_addr[6]));
  FDCE \current_addr_reg[7] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[7]_i_1_n_4 ),
        .Q(current_addr[7]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \current_addr_reg[7]_i_1 
       (.CI(\current_addr_reg[3]_i_1_n_0 ),
        .CO({\current_addr_reg[7]_i_1_n_0 ,\current_addr_reg[7]_i_1_n_1 ,\current_addr_reg[7]_i_1_n_2 ,\current_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\current_addr_reg[7]_i_1_n_4 ,\current_addr_reg[7]_i_1_n_5 ,\current_addr_reg[7]_i_1_n_6 ,\current_addr_reg[7]_i_1_n_7 }),
        .S({\current_addr[7]_i_2_n_0 ,\current_addr[7]_i_3_n_0 ,\current_addr[7]_i_4_n_0 ,\current_addr[7]_i_5_n_0 }));
  FDCE \current_addr_reg[8] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[11]_i_1_n_7 ),
        .Q(current_addr[8]));
  FDCE \current_addr_reg[9] 
       (.C(clk),
        .CE(sel),
        .CLR(\current_addr[15]_i_3_n_0 ),
        .D(\current_addr_reg[11]_i_1_n_6 ),
        .Q(current_addr[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \next_addr_output[0]_INST_0 
       (.I0(current_addr[0]),
        .O(next_addr_output[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_addr_output_carry
       (.CI(1'b0),
        .CO({next_addr_output_carry_n_0,next_addr_output_carry_n_1,next_addr_output_carry_n_2,next_addr_output_carry_n_3}),
        .CYINIT(current_addr[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(next_addr_output[4:1]),
        .S(current_addr[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_addr_output_carry__0
       (.CI(next_addr_output_carry_n_0),
        .CO({next_addr_output_carry__0_n_0,next_addr_output_carry__0_n_1,next_addr_output_carry__0_n_2,next_addr_output_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(next_addr_output[8:5]),
        .S(current_addr[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_addr_output_carry__1
       (.CI(next_addr_output_carry__0_n_0),
        .CO({next_addr_output_carry__1_n_0,next_addr_output_carry__1_n_1,next_addr_output_carry__1_n_2,next_addr_output_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(next_addr_output[12:9]),
        .S(current_addr[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 next_addr_output_carry__2
       (.CI(next_addr_output_carry__1_n_0),
        .CO({NLW_next_addr_output_carry__2_CO_UNCONNECTED[3:2],next_addr_output_carry__2_n_2,next_addr_output_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_next_addr_output_carry__2_O_UNCONNECTED[3],next_addr_output[15:13]}),
        .S({1'b0,current_addr[15:13]}));
endmodule

(* CHECK_LICENSE_TYPE = "bluex_PC_0_0,PC,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "PC,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    ena_n,
    next_addr_branch,
    branch_taken_ex,
    current_addr,
    next_addr_output);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bluex_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input ena_n;
  input [15:0]next_addr_branch;
  input branch_taken_ex;
  output [15:0]current_addr;
  output [15:0]next_addr_output;

  wire branch_taken_ex;
  wire clk;
  wire [15:0]current_addr;
  wire ena_n;
  wire [15:0]next_addr_branch;
  wire [15:0]next_addr_output;
  wire rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PC inst
       (.branch_taken_ex(branch_taken_ex),
        .clk(clk),
        .current_addr(current_addr),
        .ena_n(ena_n),
        .next_addr_branch(next_addr_branch),
        .next_addr_output(next_addr_output),
        .rst_n(rst_n));
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
