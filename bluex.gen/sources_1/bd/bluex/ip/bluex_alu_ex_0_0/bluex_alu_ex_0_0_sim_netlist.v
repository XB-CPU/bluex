// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Dec 18 14:34:09 2023
// Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/MyWorks/Programs/Verilog/vivado/bluex/bluex.gen/sources_1/bd/bluex/ip/bluex_alu_ex_0_0/bluex_alu_ex_0_0_sim_netlist.v
// Design      : bluex_alu_ex_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bluex_alu_ex_0_0,alu_ex,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "alu_ex,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bluex_alu_ex_0_0
   (clk,
    rst_n,
    rs_inw,
    rt_inw,
    imm_inw,
    write_back_data,
    alu_result_back,
    alu_op_inw,
    rs_forward_inw,
    rt_forward_inw,
    alu_src_inw,
    memory_write_inw,
    memory_to_reg_inw,
    reg_write_inw,
    pc_next_inw,
    write_reg_addr_in_inw,
    branch_isc_flag_inw,
    rd_value,
    write_data,
    branch_jump_flag,
    branch_addr,
    write_reg_addr_out,
    memory_write,
    memory_to_reg,
    reg_write);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bluex_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [31:0]rs_inw;
  input [31:0]rt_inw;
  input [31:0]imm_inw;
  input [31:0]write_back_data;
  input [31:0]alu_result_back;
  input [5:0]alu_op_inw;
  input [1:0]rs_forward_inw;
  input [1:0]rt_forward_inw;
  input alu_src_inw;
  input memory_write_inw;
  input memory_to_reg_inw;
  input reg_write_inw;
  input [15:0]pc_next_inw;
  input [4:0]write_reg_addr_in_inw;
  input branch_isc_flag_inw;
  output [31:0]rd_value;
  output [31:0]write_data;
  output branch_jump_flag;
  output [15:0]branch_addr;
  output [4:0]write_reg_addr_out;
  output memory_write;
  output memory_to_reg;
  output reg_write;

  wire [5:0]alu_op_inw;
  wire [31:0]alu_result_back;
  wire alu_src_inw;
  wire [15:0]branch_addr;
  wire branch_isc_flag_inw;
  wire branch_jump_flag;
  wire clk;
  wire [31:0]imm_inw;
  wire memory_to_reg;
  wire memory_to_reg_inw;
  wire memory_write;
  wire memory_write_inw;
  wire [15:0]pc_next_inw;
  wire [31:0]rd_value;
  wire reg_write;
  wire reg_write_inw;
  wire [1:0]rs_forward_inw;
  wire [31:0]rs_inw;
  wire rst_n;
  wire [1:0]rt_forward_inw;
  wire [31:0]rt_inw;
  wire [31:0]write_back_data;
  wire [31:0]write_data;
  wire [4:0]write_reg_addr_in_inw;
  wire [4:0]write_reg_addr_out;

  bluex_alu_ex_0_0_alu_ex inst
       (.alu_op_inw(alu_op_inw),
        .alu_result_back(alu_result_back),
        .alu_src_inw(alu_src_inw),
        .branch_addr(branch_addr),
        .branch_isc_flag_inw(branch_isc_flag_inw),
        .branch_jump_flag(branch_jump_flag),
        .clk(clk),
        .imm_inw(imm_inw),
        .memory_to_reg(memory_to_reg),
        .memory_to_reg_inw(memory_to_reg_inw),
        .memory_write(memory_write),
        .memory_write_inw(memory_write_inw),
        .pc_next_inw(pc_next_inw),
        .rd_value(rd_value),
        .reg_write(reg_write),
        .reg_write_inw(reg_write_inw),
        .rs_forward_inw(rs_forward_inw),
        .rs_inw(rs_inw),
        .rst_n(rst_n),
        .rt_forward_inw(rt_forward_inw),
        .rt_inw(rt_inw),
        .write_back_data(write_back_data),
        .write_data(write_data),
        .write_reg_addr_in_inw(write_reg_addr_in_inw),
        .write_reg_addr_out(write_reg_addr_out));
endmodule

(* ORIG_REF_NAME = "alu_ex" *) 
module bluex_alu_ex_0_0_alu_ex
   (rd_value,
    write_data,
    write_reg_addr_out,
    memory_write,
    memory_to_reg,
    reg_write,
    branch_jump_flag,
    branch_addr,
    alu_result_back,
    write_back_data,
    alu_op_inw,
    clk,
    rt_forward_inw,
    rt_inw,
    alu_src_inw,
    imm_inw,
    rs_forward_inw,
    rs_inw,
    branch_isc_flag_inw,
    pc_next_inw,
    write_reg_addr_in_inw,
    memory_write_inw,
    memory_to_reg_inw,
    reg_write_inw,
    rst_n);
  output [31:0]rd_value;
  output [31:0]write_data;
  output [4:0]write_reg_addr_out;
  output memory_write;
  output memory_to_reg;
  output reg_write;
  output branch_jump_flag;
  output [15:0]branch_addr;
  input [31:0]alu_result_back;
  input [31:0]write_back_data;
  input [5:0]alu_op_inw;
  input clk;
  input [1:0]rt_forward_inw;
  input [31:0]rt_inw;
  input alu_src_inw;
  input [31:0]imm_inw;
  input [1:0]rs_forward_inw;
  input [31:0]rs_inw;
  input branch_isc_flag_inw;
  input [15:0]pc_next_inw;
  input [4:0]write_reg_addr_in_inw;
  input memory_write_inw;
  input memory_to_reg_inw;
  input reg_write_inw;
  input rst_n;

  wire [5:5]alu_op;
  wire [5:0]alu_op_inw;
  wire \alu_op_reg_n_0_[0] ;
  wire \alu_op_reg_n_0_[1] ;
  wire \alu_op_reg_n_0_[2] ;
  wire \alu_op_reg_n_0_[3] ;
  wire \alu_op_reg_n_0_[4] ;
  wire [31:0]alu_result_back;
  wire alu_src;
  wire alu_src_inw;
  wire [30:0]alu_src_s;
  wire [30:0]alu_src_t;
  wire [15:0]branch_addr;
  wire branch_addr_carry__0_n_0;
  wire branch_addr_carry__0_n_1;
  wire branch_addr_carry__0_n_2;
  wire branch_addr_carry__0_n_3;
  wire branch_addr_carry__1_n_0;
  wire branch_addr_carry__1_n_1;
  wire branch_addr_carry__1_n_2;
  wire branch_addr_carry__1_n_3;
  wire branch_addr_carry__2_n_1;
  wire branch_addr_carry__2_n_2;
  wire branch_addr_carry__2_n_3;
  wire branch_addr_carry_i_1__0_n_0;
  wire branch_addr_carry_i_1__1_n_0;
  wire branch_addr_carry_i_1__2_n_0;
  wire branch_addr_carry_i_1_n_0;
  wire branch_addr_carry_i_2__0_n_0;
  wire branch_addr_carry_i_2__1_n_0;
  wire branch_addr_carry_i_2__2_n_0;
  wire branch_addr_carry_i_2_n_0;
  wire branch_addr_carry_i_3__0_n_0;
  wire branch_addr_carry_i_3__1_n_0;
  wire branch_addr_carry_i_3__2_n_0;
  wire branch_addr_carry_i_3_n_0;
  wire branch_addr_carry_i_4__0_n_0;
  wire branch_addr_carry_i_4__1_n_0;
  wire branch_addr_carry_i_4__2_n_0;
  wire branch_addr_carry_i_4_n_0;
  wire branch_addr_carry_n_0;
  wire branch_addr_carry_n_1;
  wire branch_addr_carry_n_2;
  wire branch_addr_carry_n_3;
  wire branch_isc_flag;
  wire branch_isc_flag_inw;
  wire branch_jump_flag;
  wire branch_jump_flag_INST_0_i_10_n_0;
  wire branch_jump_flag_INST_0_i_11_n_0;
  wire branch_jump_flag_INST_0_i_12_n_0;
  wire branch_jump_flag_INST_0_i_13_n_0;
  wire branch_jump_flag_INST_0_i_13_n_1;
  wire branch_jump_flag_INST_0_i_13_n_2;
  wire branch_jump_flag_INST_0_i_13_n_3;
  wire branch_jump_flag_INST_0_i_14_n_0;
  wire branch_jump_flag_INST_0_i_15_n_0;
  wire branch_jump_flag_INST_0_i_16_n_0;
  wire branch_jump_flag_INST_0_i_17_n_0;
  wire branch_jump_flag_INST_0_i_18_n_0;
  wire branch_jump_flag_INST_0_i_18_n_1;
  wire branch_jump_flag_INST_0_i_18_n_2;
  wire branch_jump_flag_INST_0_i_18_n_3;
  wire branch_jump_flag_INST_0_i_19_n_0;
  wire branch_jump_flag_INST_0_i_1_n_0;
  wire branch_jump_flag_INST_0_i_20_n_0;
  wire branch_jump_flag_INST_0_i_21_n_0;
  wire branch_jump_flag_INST_0_i_22_n_0;
  wire branch_jump_flag_INST_0_i_23_n_0;
  wire branch_jump_flag_INST_0_i_24_n_0;
  wire branch_jump_flag_INST_0_i_25_n_0;
  wire branch_jump_flag_INST_0_i_26_n_0;
  wire branch_jump_flag_INST_0_i_27_n_0;
  wire branch_jump_flag_INST_0_i_28_n_0;
  wire branch_jump_flag_INST_0_i_29_n_0;
  wire branch_jump_flag_INST_0_i_2_n_0;
  wire branch_jump_flag_INST_0_i_30_n_0;
  wire branch_jump_flag_INST_0_i_3_n_1;
  wire branch_jump_flag_INST_0_i_3_n_2;
  wire branch_jump_flag_INST_0_i_3_n_3;
  wire branch_jump_flag_INST_0_i_4_n_1;
  wire branch_jump_flag_INST_0_i_4_n_2;
  wire branch_jump_flag_INST_0_i_4_n_3;
  wire branch_jump_flag_INST_0_i_5_n_0;
  wire branch_jump_flag_INST_0_i_5_n_1;
  wire branch_jump_flag_INST_0_i_5_n_2;
  wire branch_jump_flag_INST_0_i_5_n_3;
  wire branch_jump_flag_INST_0_i_6_n_0;
  wire branch_jump_flag_INST_0_i_7_n_0;
  wire branch_jump_flag_INST_0_i_8_n_0;
  wire branch_jump_flag_INST_0_i_9_n_0;
  wire branch_jump_flag_INST_0_i_9_n_1;
  wire branch_jump_flag_INST_0_i_9_n_2;
  wire branch_jump_flag_INST_0_i_9_n_3;
  wire clk;
  wire [31:0]data0;
  wire [31:0]data1;
  wire [25:0]data6;
  wire data9;
  wire [31:0]imm_inw;
  wire \imm_reg_n_0_[0] ;
  wire \imm_reg_n_0_[10] ;
  wire \imm_reg_n_0_[11] ;
  wire \imm_reg_n_0_[12] ;
  wire \imm_reg_n_0_[13] ;
  wire \imm_reg_n_0_[14] ;
  wire \imm_reg_n_0_[15] ;
  wire \imm_reg_n_0_[16] ;
  wire \imm_reg_n_0_[17] ;
  wire \imm_reg_n_0_[18] ;
  wire \imm_reg_n_0_[19] ;
  wire \imm_reg_n_0_[1] ;
  wire \imm_reg_n_0_[20] ;
  wire \imm_reg_n_0_[21] ;
  wire \imm_reg_n_0_[22] ;
  wire \imm_reg_n_0_[23] ;
  wire \imm_reg_n_0_[24] ;
  wire \imm_reg_n_0_[25] ;
  wire \imm_reg_n_0_[26] ;
  wire \imm_reg_n_0_[27] ;
  wire \imm_reg_n_0_[28] ;
  wire \imm_reg_n_0_[29] ;
  wire \imm_reg_n_0_[2] ;
  wire \imm_reg_n_0_[30] ;
  wire \imm_reg_n_0_[31] ;
  wire \imm_reg_n_0_[3] ;
  wire \imm_reg_n_0_[4] ;
  wire \imm_reg_n_0_[5] ;
  wire \imm_reg_n_0_[6] ;
  wire \imm_reg_n_0_[7] ;
  wire \imm_reg_n_0_[8] ;
  wire \imm_reg_n_0_[9] ;
  wire memory_to_reg;
  wire memory_to_reg_inw;
  wire memory_write;
  wire memory_write_inw;
  wire [15:0]pc_next;
  wire [15:0]pc_next_inw;
  wire rd_add_carry__0_i_5_n_0;
  wire rd_add_carry__0_i_6_n_0;
  wire rd_add_carry__0_i_7_n_0;
  wire rd_add_carry__0_i_8_n_0;
  wire rd_add_carry__0_n_0;
  wire rd_add_carry__0_n_1;
  wire rd_add_carry__0_n_2;
  wire rd_add_carry__0_n_3;
  wire rd_add_carry__1_i_5_n_0;
  wire rd_add_carry__1_i_6_n_0;
  wire rd_add_carry__1_i_7_n_0;
  wire rd_add_carry__1_i_8_n_0;
  wire rd_add_carry__1_n_0;
  wire rd_add_carry__1_n_1;
  wire rd_add_carry__1_n_2;
  wire rd_add_carry__1_n_3;
  wire rd_add_carry__2_i_5_n_0;
  wire rd_add_carry__2_i_6_n_0;
  wire rd_add_carry__2_i_7_n_0;
  wire rd_add_carry__2_i_8_n_0;
  wire rd_add_carry__2_n_0;
  wire rd_add_carry__2_n_1;
  wire rd_add_carry__2_n_2;
  wire rd_add_carry__2_n_3;
  wire rd_add_carry__3_i_5_n_0;
  wire rd_add_carry__3_i_6_n_0;
  wire rd_add_carry__3_i_7_n_0;
  wire rd_add_carry__3_i_8_n_0;
  wire rd_add_carry__3_n_0;
  wire rd_add_carry__3_n_1;
  wire rd_add_carry__3_n_2;
  wire rd_add_carry__3_n_3;
  wire rd_add_carry__4_i_5_n_0;
  wire rd_add_carry__4_i_6_n_0;
  wire rd_add_carry__4_i_7_n_0;
  wire rd_add_carry__4_i_8_n_0;
  wire rd_add_carry__4_n_0;
  wire rd_add_carry__4_n_1;
  wire rd_add_carry__4_n_2;
  wire rd_add_carry__4_n_3;
  wire rd_add_carry__5_i_5_n_0;
  wire rd_add_carry__5_i_6_n_0;
  wire rd_add_carry__5_i_7_n_0;
  wire rd_add_carry__5_i_8_n_0;
  wire rd_add_carry__5_n_0;
  wire rd_add_carry__5_n_1;
  wire rd_add_carry__5_n_2;
  wire rd_add_carry__5_n_3;
  wire rd_add_carry__6_i_4_n_0;
  wire rd_add_carry__6_i_5_n_0;
  wire rd_add_carry__6_i_6_n_0;
  wire rd_add_carry__6_i_7_n_0;
  wire rd_add_carry__6_n_1;
  wire rd_add_carry__6_n_2;
  wire rd_add_carry__6_n_3;
  wire rd_add_carry_i_5_n_0;
  wire rd_add_carry_i_6_n_0;
  wire rd_add_carry_i_7_n_0;
  wire rd_add_carry_i_8_n_0;
  wire rd_add_carry_n_0;
  wire rd_add_carry_n_1;
  wire rd_add_carry_n_2;
  wire rd_add_carry_n_3;
  wire rd_sub_carry__0_i_1_n_0;
  wire rd_sub_carry__0_i_2_n_0;
  wire rd_sub_carry__0_i_3_n_0;
  wire rd_sub_carry__0_i_4_n_0;
  wire rd_sub_carry__0_n_0;
  wire rd_sub_carry__0_n_1;
  wire rd_sub_carry__0_n_2;
  wire rd_sub_carry__0_n_3;
  wire rd_sub_carry__1_i_1_n_0;
  wire rd_sub_carry__1_i_2_n_0;
  wire rd_sub_carry__1_i_3_n_0;
  wire rd_sub_carry__1_i_4_n_0;
  wire rd_sub_carry__1_n_0;
  wire rd_sub_carry__1_n_1;
  wire rd_sub_carry__1_n_2;
  wire rd_sub_carry__1_n_3;
  wire rd_sub_carry__2_i_1_n_0;
  wire rd_sub_carry__2_i_2_n_0;
  wire rd_sub_carry__2_i_3_n_0;
  wire rd_sub_carry__2_i_4_n_0;
  wire rd_sub_carry__2_n_0;
  wire rd_sub_carry__2_n_1;
  wire rd_sub_carry__2_n_2;
  wire rd_sub_carry__2_n_3;
  wire rd_sub_carry__3_i_1_n_0;
  wire rd_sub_carry__3_i_2_n_0;
  wire rd_sub_carry__3_i_3_n_0;
  wire rd_sub_carry__3_i_4_n_0;
  wire rd_sub_carry__3_n_0;
  wire rd_sub_carry__3_n_1;
  wire rd_sub_carry__3_n_2;
  wire rd_sub_carry__3_n_3;
  wire rd_sub_carry__4_i_1_n_0;
  wire rd_sub_carry__4_i_2_n_0;
  wire rd_sub_carry__4_i_3_n_0;
  wire rd_sub_carry__4_i_4_n_0;
  wire rd_sub_carry__4_n_0;
  wire rd_sub_carry__4_n_1;
  wire rd_sub_carry__4_n_2;
  wire rd_sub_carry__4_n_3;
  wire rd_sub_carry__5_i_1_n_0;
  wire rd_sub_carry__5_i_2_n_0;
  wire rd_sub_carry__5_i_3_n_0;
  wire rd_sub_carry__5_i_4_n_0;
  wire rd_sub_carry__5_n_0;
  wire rd_sub_carry__5_n_1;
  wire rd_sub_carry__5_n_2;
  wire rd_sub_carry__5_n_3;
  wire rd_sub_carry__6_i_1_n_0;
  wire rd_sub_carry__6_i_2_n_0;
  wire rd_sub_carry__6_i_3_n_0;
  wire rd_sub_carry__6_i_4_n_0;
  wire rd_sub_carry__6_n_1;
  wire rd_sub_carry__6_n_2;
  wire rd_sub_carry__6_n_3;
  wire rd_sub_carry_i_1_n_0;
  wire rd_sub_carry_i_2_n_0;
  wire rd_sub_carry_i_3_n_0;
  wire rd_sub_carry_i_4_n_0;
  wire rd_sub_carry_n_0;
  wire rd_sub_carry_n_1;
  wire rd_sub_carry_n_2;
  wire rd_sub_carry_n_3;
  wire [31:0]rd_value;
  wire rd_value2_carry__0_i_1_n_0;
  wire rd_value2_carry__0_i_2_n_0;
  wire rd_value2_carry__0_i_3_n_0;
  wire rd_value2_carry__0_i_4_n_0;
  wire rd_value2_carry__0_i_5_n_0;
  wire rd_value2_carry__0_i_6_n_0;
  wire rd_value2_carry__0_i_7_n_0;
  wire rd_value2_carry__0_i_8_n_0;
  wire rd_value2_carry__0_n_0;
  wire rd_value2_carry__0_n_1;
  wire rd_value2_carry__0_n_2;
  wire rd_value2_carry__0_n_3;
  wire rd_value2_carry__1_i_1_n_0;
  wire rd_value2_carry__1_i_2_n_0;
  wire rd_value2_carry__1_i_3_n_0;
  wire rd_value2_carry__1_i_4_n_0;
  wire rd_value2_carry__1_i_5_n_0;
  wire rd_value2_carry__1_i_6_n_0;
  wire rd_value2_carry__1_i_7_n_0;
  wire rd_value2_carry__1_i_8_n_0;
  wire rd_value2_carry__1_n_0;
  wire rd_value2_carry__1_n_1;
  wire rd_value2_carry__1_n_2;
  wire rd_value2_carry__1_n_3;
  wire rd_value2_carry__2_i_1_n_0;
  wire rd_value2_carry__2_i_2_n_0;
  wire rd_value2_carry__2_i_3_n_0;
  wire rd_value2_carry__2_i_4_n_0;
  wire rd_value2_carry__2_i_5_n_0;
  wire rd_value2_carry__2_i_6_n_0;
  wire rd_value2_carry__2_i_7_n_0;
  wire rd_value2_carry__2_i_8_n_0;
  wire rd_value2_carry__2_n_1;
  wire rd_value2_carry__2_n_2;
  wire rd_value2_carry__2_n_3;
  wire rd_value2_carry_i_1_n_0;
  wire rd_value2_carry_i_2_n_0;
  wire rd_value2_carry_i_3_n_0;
  wire rd_value2_carry_i_4_n_0;
  wire rd_value2_carry_i_5_n_0;
  wire rd_value2_carry_i_6_n_0;
  wire rd_value2_carry_i_7_n_0;
  wire rd_value2_carry_i_8_n_0;
  wire rd_value2_carry_n_0;
  wire rd_value2_carry_n_1;
  wire rd_value2_carry_n_2;
  wire rd_value2_carry_n_3;
  wire \rd_value[0]_INST_0_i_1_n_0 ;
  wire \rd_value[0]_INST_0_i_2_n_0 ;
  wire \rd_value[0]_INST_0_i_3_n_0 ;
  wire \rd_value[0]_INST_0_i_4_n_0 ;
  wire \rd_value[10]_INST_0_i_1_n_0 ;
  wire \rd_value[10]_INST_0_i_2_n_0 ;
  wire \rd_value[10]_INST_0_i_3_n_0 ;
  wire \rd_value[11]_INST_0_i_1_n_0 ;
  wire \rd_value[11]_INST_0_i_2_n_0 ;
  wire \rd_value[11]_INST_0_i_3_n_0 ;
  wire \rd_value[11]_INST_0_i_4_n_0 ;
  wire \rd_value[11]_INST_0_i_6_n_0 ;
  wire \rd_value[11]_INST_0_i_7_n_0 ;
  wire \rd_value[11]_INST_0_i_8_n_0 ;
  wire \rd_value[11]_INST_0_i_9_n_0 ;
  wire \rd_value[12]_INST_0_i_1_n_0 ;
  wire \rd_value[12]_INST_0_i_2_n_0 ;
  wire \rd_value[12]_INST_0_i_3_n_0 ;
  wire \rd_value[12]_INST_0_i_5_n_0 ;
  wire \rd_value[12]_INST_0_i_6_n_0 ;
  wire \rd_value[12]_INST_0_i_7_n_0 ;
  wire \rd_value[12]_INST_0_i_8_n_0 ;
  wire \rd_value[12]_INST_0_i_9_n_0 ;
  wire \rd_value[13]_INST_0_i_1_n_0 ;
  wire \rd_value[13]_INST_0_i_2_n_0 ;
  wire \rd_value[13]_INST_0_i_3_n_0 ;
  wire \rd_value[13]_INST_0_i_4_n_0 ;
  wire \rd_value[13]_INST_0_i_6_n_0 ;
  wire \rd_value[13]_INST_0_i_7_n_0 ;
  wire \rd_value[13]_INST_0_i_8_n_0 ;
  wire \rd_value[13]_INST_0_i_9_n_0 ;
  wire \rd_value[14]_INST_0_i_1_n_0 ;
  wire \rd_value[14]_INST_0_i_2_n_0 ;
  wire \rd_value[14]_INST_0_i_3_n_0 ;
  wire \rd_value[14]_INST_0_i_4_n_0 ;
  wire \rd_value[14]_INST_0_i_6_n_0 ;
  wire \rd_value[14]_INST_0_i_7_n_0 ;
  wire \rd_value[14]_INST_0_i_8_n_0 ;
  wire \rd_value[14]_INST_0_i_9_n_0 ;
  wire \rd_value[15]_INST_0_i_1_n_0 ;
  wire \rd_value[15]_INST_0_i_2_n_0 ;
  wire \rd_value[15]_INST_0_i_3_n_0 ;
  wire \rd_value[15]_INST_0_i_4_n_0 ;
  wire \rd_value[15]_INST_0_i_6_n_0 ;
  wire \rd_value[15]_INST_0_i_7_n_0 ;
  wire \rd_value[15]_INST_0_i_8_n_0 ;
  wire \rd_value[15]_INST_0_i_9_n_0 ;
  wire \rd_value[16]_INST_0_i_1_n_0 ;
  wire \rd_value[16]_INST_0_i_2_n_0 ;
  wire \rd_value[16]_INST_0_i_3_n_0 ;
  wire \rd_value[16]_INST_0_i_4_n_0 ;
  wire \rd_value[16]_INST_0_i_6_n_0 ;
  wire \rd_value[16]_INST_0_i_7_n_0 ;
  wire \rd_value[16]_INST_0_i_8_n_0 ;
  wire \rd_value[16]_INST_0_i_9_n_0 ;
  wire \rd_value[17]_INST_0_i_10_n_0 ;
  wire \rd_value[17]_INST_0_i_1_n_0 ;
  wire \rd_value[17]_INST_0_i_2_n_0 ;
  wire \rd_value[17]_INST_0_i_3_n_0 ;
  wire \rd_value[17]_INST_0_i_4_n_0 ;
  wire \rd_value[17]_INST_0_i_6_n_0 ;
  wire \rd_value[17]_INST_0_i_7_n_0 ;
  wire \rd_value[17]_INST_0_i_8_n_0 ;
  wire \rd_value[17]_INST_0_i_9_n_0 ;
  wire \rd_value[18]_INST_0_i_1_n_0 ;
  wire \rd_value[18]_INST_0_i_2_n_0 ;
  wire \rd_value[18]_INST_0_i_3_n_0 ;
  wire \rd_value[18]_INST_0_i_5_n_0 ;
  wire \rd_value[18]_INST_0_i_6_n_0 ;
  wire \rd_value[18]_INST_0_i_7_n_0 ;
  wire \rd_value[18]_INST_0_i_8_n_0 ;
  wire \rd_value[18]_INST_0_i_9_n_0 ;
  wire \rd_value[19]_INST_0_i_1_n_0 ;
  wire \rd_value[19]_INST_0_i_2_n_0 ;
  wire \rd_value[19]_INST_0_i_3_n_0 ;
  wire \rd_value[19]_INST_0_i_5_n_0 ;
  wire \rd_value[19]_INST_0_i_6_n_0 ;
  wire \rd_value[19]_INST_0_i_7_n_0 ;
  wire \rd_value[1]_INST_0_i_1_n_0 ;
  wire \rd_value[1]_INST_0_i_2_n_0 ;
  wire \rd_value[1]_INST_0_i_3_n_0 ;
  wire \rd_value[1]_INST_0_i_4_n_0 ;
  wire \rd_value[1]_INST_0_i_5_n_0 ;
  wire \rd_value[1]_INST_0_i_6_n_0 ;
  wire \rd_value[1]_INST_0_i_7_n_0 ;
  wire \rd_value[1]_INST_0_i_8_n_0 ;
  wire \rd_value[20]_INST_0_i_10_n_0 ;
  wire \rd_value[20]_INST_0_i_1_n_0 ;
  wire \rd_value[20]_INST_0_i_2_n_0 ;
  wire \rd_value[20]_INST_0_i_3_n_0 ;
  wire \rd_value[20]_INST_0_i_4_n_0 ;
  wire \rd_value[20]_INST_0_i_6_n_0 ;
  wire \rd_value[20]_INST_0_i_7_n_0 ;
  wire \rd_value[20]_INST_0_i_8_n_0 ;
  wire \rd_value[20]_INST_0_i_9_n_0 ;
  wire \rd_value[21]_INST_0_i_1_n_0 ;
  wire \rd_value[21]_INST_0_i_2_n_0 ;
  wire \rd_value[21]_INST_0_i_3_n_0 ;
  wire \rd_value[21]_INST_0_i_5_n_0 ;
  wire \rd_value[21]_INST_0_i_6_n_0 ;
  wire \rd_value[21]_INST_0_i_7_n_0 ;
  wire \rd_value[21]_INST_0_i_8_n_0 ;
  wire \rd_value[21]_INST_0_i_9_n_0 ;
  wire \rd_value[22]_INST_0_i_1_n_0 ;
  wire \rd_value[22]_INST_0_i_2_n_0 ;
  wire \rd_value[22]_INST_0_i_3_n_0 ;
  wire \rd_value[22]_INST_0_i_5_n_0 ;
  wire \rd_value[22]_INST_0_i_6_n_0 ;
  wire \rd_value[22]_INST_0_i_7_n_0 ;
  wire \rd_value[22]_INST_0_i_8_n_0 ;
  wire \rd_value[23]_INST_0_i_1_n_0 ;
  wire \rd_value[23]_INST_0_i_2_n_0 ;
  wire \rd_value[23]_INST_0_i_3_n_0 ;
  wire \rd_value[23]_INST_0_i_4_n_0 ;
  wire \rd_value[23]_INST_0_i_5_n_0 ;
  wire \rd_value[23]_INST_0_i_7_n_0 ;
  wire \rd_value[23]_INST_0_i_8_n_0 ;
  wire \rd_value[23]_INST_0_i_9_n_0 ;
  wire \rd_value[24]_INST_0_i_10_n_0 ;
  wire \rd_value[24]_INST_0_i_1_n_0 ;
  wire \rd_value[24]_INST_0_i_2_n_0 ;
  wire \rd_value[24]_INST_0_i_3_n_0 ;
  wire \rd_value[24]_INST_0_i_4_n_0 ;
  wire \rd_value[24]_INST_0_i_5_n_0 ;
  wire \rd_value[24]_INST_0_i_7_n_0 ;
  wire \rd_value[24]_INST_0_i_8_n_0 ;
  wire \rd_value[24]_INST_0_i_9_n_0 ;
  wire \rd_value[25]_INST_0_i_10_n_0 ;
  wire \rd_value[25]_INST_0_i_1_n_0 ;
  wire \rd_value[25]_INST_0_i_2_n_0 ;
  wire \rd_value[25]_INST_0_i_3_n_0 ;
  wire \rd_value[25]_INST_0_i_5_n_0 ;
  wire \rd_value[25]_INST_0_i_6_n_0 ;
  wire \rd_value[25]_INST_0_i_7_n_0 ;
  wire \rd_value[25]_INST_0_i_8_n_0 ;
  wire \rd_value[25]_INST_0_i_9_n_0 ;
  wire \rd_value[26]_INST_0_i_1_n_0 ;
  wire \rd_value[26]_INST_0_i_2_n_0 ;
  wire \rd_value[26]_INST_0_i_3_n_0 ;
  wire \rd_value[26]_INST_0_i_5_n_0 ;
  wire \rd_value[26]_INST_0_i_6_n_0 ;
  wire \rd_value[26]_INST_0_i_7_n_0 ;
  wire \rd_value[26]_INST_0_i_8_n_0 ;
  wire \rd_value[27]_INST_0_i_1_n_0 ;
  wire \rd_value[27]_INST_0_i_2_n_0 ;
  wire \rd_value[27]_INST_0_i_3_n_0 ;
  wire \rd_value[27]_INST_0_i_4_n_0 ;
  wire \rd_value[27]_INST_0_i_5_n_0 ;
  wire \rd_value[27]_INST_0_i_7_n_0 ;
  wire \rd_value[27]_INST_0_i_8_n_0 ;
  wire \rd_value[27]_INST_0_i_9_n_0 ;
  wire \rd_value[28]_INST_0_i_1_n_0 ;
  wire \rd_value[28]_INST_0_i_2_n_0 ;
  wire \rd_value[28]_INST_0_i_3_n_0 ;
  wire \rd_value[28]_INST_0_i_4_n_0 ;
  wire \rd_value[28]_INST_0_i_5_n_0 ;
  wire \rd_value[28]_INST_0_i_7_n_0 ;
  wire \rd_value[28]_INST_0_i_8_n_0 ;
  wire \rd_value[28]_INST_0_i_9_n_0 ;
  wire \rd_value[29]_INST_0_i_1_n_0 ;
  wire \rd_value[29]_INST_0_i_2_n_0 ;
  wire \rd_value[29]_INST_0_i_3_n_0 ;
  wire \rd_value[29]_INST_0_i_4_n_0 ;
  wire \rd_value[29]_INST_0_i_5_n_0 ;
  wire \rd_value[29]_INST_0_i_7_n_0 ;
  wire \rd_value[29]_INST_0_i_8_n_0 ;
  wire \rd_value[29]_INST_0_i_9_n_0 ;
  wire \rd_value[2]_INST_0_i_1_n_0 ;
  wire \rd_value[2]_INST_0_i_2_n_0 ;
  wire \rd_value[2]_INST_0_i_3_n_0 ;
  wire \rd_value[30]_INST_0_i_10_n_0 ;
  wire \rd_value[30]_INST_0_i_11_n_0 ;
  wire \rd_value[30]_INST_0_i_12_n_0 ;
  wire \rd_value[30]_INST_0_i_13_n_0 ;
  wire \rd_value[30]_INST_0_i_1_n_0 ;
  wire \rd_value[30]_INST_0_i_2_n_0 ;
  wire \rd_value[30]_INST_0_i_3_n_0 ;
  wire \rd_value[30]_INST_0_i_4_n_0 ;
  wire \rd_value[30]_INST_0_i_5_n_0 ;
  wire \rd_value[30]_INST_0_i_8_n_0 ;
  wire \rd_value[30]_INST_0_i_9_n_0 ;
  wire \rd_value[31]_INST_0_i_10_n_0 ;
  wire \rd_value[31]_INST_0_i_11_n_0 ;
  wire \rd_value[31]_INST_0_i_12_n_0 ;
  wire \rd_value[31]_INST_0_i_13_n_0 ;
  wire \rd_value[31]_INST_0_i_14_n_0 ;
  wire \rd_value[31]_INST_0_i_15_n_0 ;
  wire \rd_value[31]_INST_0_i_16_n_0 ;
  wire \rd_value[31]_INST_0_i_17_n_0 ;
  wire \rd_value[31]_INST_0_i_18_n_0 ;
  wire \rd_value[31]_INST_0_i_19_n_0 ;
  wire \rd_value[31]_INST_0_i_1_n_0 ;
  wire \rd_value[31]_INST_0_i_20_n_0 ;
  wire \rd_value[31]_INST_0_i_21_n_0 ;
  wire \rd_value[31]_INST_0_i_22_n_0 ;
  wire \rd_value[31]_INST_0_i_23_n_0 ;
  wire \rd_value[31]_INST_0_i_24_n_0 ;
  wire \rd_value[31]_INST_0_i_25_n_0 ;
  wire \rd_value[31]_INST_0_i_2_n_0 ;
  wire \rd_value[31]_INST_0_i_31_n_0 ;
  wire \rd_value[31]_INST_0_i_32_n_0 ;
  wire \rd_value[31]_INST_0_i_33_n_0 ;
  wire \rd_value[31]_INST_0_i_34_n_0 ;
  wire \rd_value[31]_INST_0_i_35_n_0 ;
  wire \rd_value[31]_INST_0_i_36_n_0 ;
  wire \rd_value[31]_INST_0_i_3_n_0 ;
  wire \rd_value[31]_INST_0_i_4_n_0 ;
  wire \rd_value[31]_INST_0_i_5_n_0 ;
  wire \rd_value[31]_INST_0_i_6_n_0 ;
  wire \rd_value[31]_INST_0_i_7_n_0 ;
  wire \rd_value[31]_INST_0_i_8_n_0 ;
  wire \rd_value[31]_INST_0_i_9_n_0 ;
  wire \rd_value[3]_INST_0_i_1_n_0 ;
  wire \rd_value[3]_INST_0_i_2_n_0 ;
  wire \rd_value[3]_INST_0_i_3_n_0 ;
  wire \rd_value[3]_INST_0_i_4_n_0 ;
  wire \rd_value[3]_INST_0_i_7_n_0 ;
  wire \rd_value[4]_INST_0_i_1_n_0 ;
  wire \rd_value[4]_INST_0_i_2_n_0 ;
  wire \rd_value[4]_INST_0_i_3_n_0 ;
  wire \rd_value[4]_INST_0_i_4_n_0 ;
  wire \rd_value[4]_INST_0_i_7_n_0 ;
  wire \rd_value[4]_INST_0_i_8_n_0 ;
  wire \rd_value[5]_INST_0_i_1_n_0 ;
  wire \rd_value[5]_INST_0_i_2_n_0 ;
  wire \rd_value[5]_INST_0_i_3_n_0 ;
  wire \rd_value[5]_INST_0_i_5_n_0 ;
  wire \rd_value[5]_INST_0_i_6_n_0 ;
  wire \rd_value[5]_INST_0_i_7_n_0 ;
  wire \rd_value[5]_INST_0_i_8_n_0 ;
  wire \rd_value[6]_INST_0_i_1_n_0 ;
  wire \rd_value[6]_INST_0_i_2_n_0 ;
  wire \rd_value[6]_INST_0_i_3_n_0 ;
  wire \rd_value[6]_INST_0_i_4_n_0 ;
  wire \rd_value[6]_INST_0_i_6_n_0 ;
  wire \rd_value[6]_INST_0_i_7_n_0 ;
  wire \rd_value[6]_INST_0_i_9_n_0 ;
  wire \rd_value[7]_INST_0_i_1_n_0 ;
  wire \rd_value[7]_INST_0_i_2_n_0 ;
  wire \rd_value[7]_INST_0_i_3_n_0 ;
  wire \rd_value[7]_INST_0_i_5_n_0 ;
  wire \rd_value[7]_INST_0_i_6_n_0 ;
  wire \rd_value[7]_INST_0_i_7_n_0 ;
  wire \rd_value[7]_INST_0_i_8_n_0 ;
  wire \rd_value[7]_INST_0_i_9_n_0 ;
  wire \rd_value[8]_INST_0_i_1_n_0 ;
  wire \rd_value[8]_INST_0_i_2_n_0 ;
  wire \rd_value[8]_INST_0_i_3_n_0 ;
  wire \rd_value[8]_INST_0_i_4_n_0 ;
  wire \rd_value[8]_INST_0_i_5_n_0 ;
  wire \rd_value[8]_INST_0_i_8_n_0 ;
  wire \rd_value[9]_INST_0_i_10_n_0 ;
  wire \rd_value[9]_INST_0_i_1_n_0 ;
  wire \rd_value[9]_INST_0_i_2_n_0 ;
  wire \rd_value[9]_INST_0_i_3_n_0 ;
  wire \rd_value[9]_INST_0_i_4_n_0 ;
  wire \rd_value[9]_INST_0_i_6_n_0 ;
  wire \rd_value[9]_INST_0_i_7_n_0 ;
  wire \rd_value[9]_INST_0_i_8_n_0 ;
  wire \rd_value[9]_INST_0_i_9_n_0 ;
  wire reg_write;
  wire reg_write_inw;
  wire [31:0]rs;
  wire [1:0]rs_forward;
  wire [1:0]rs_forward_inw;
  wire [31:0]rs_inw;
  wire rst_n;
  wire [31:0]rt;
  wire [1:0]rt_forward;
  wire [1:0]rt_forward_inw;
  wire [31:0]rt_inw;
  wire [31:0]write_back_data;
  wire [31:0]write_data;
  wire [4:0]write_reg_addr_in;
  wire [4:0]write_reg_addr_in_inw;
  wire [4:0]write_reg_addr_out;
  wire \write_reg_addr_out[4]_i_1_n_0 ;
  wire [3:3]NLW_branch_addr_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_branch_jump_flag_INST_0_i_13_O_UNCONNECTED;
  wire [3:0]NLW_branch_jump_flag_INST_0_i_18_O_UNCONNECTED;
  wire [3:3]NLW_branch_jump_flag_INST_0_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_branch_jump_flag_INST_0_i_3_O_UNCONNECTED;
  wire [3:3]NLW_branch_jump_flag_INST_0_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_branch_jump_flag_INST_0_i_4_O_UNCONNECTED;
  wire [3:0]NLW_branch_jump_flag_INST_0_i_5_O_UNCONNECTED;
  wire [3:0]NLW_branch_jump_flag_INST_0_i_9_O_UNCONNECTED;
  wire [3:3]NLW_rd_add_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_rd_sub_carry__6_CO_UNCONNECTED;
  wire [3:0]NLW_rd_value2_carry_O_UNCONNECTED;
  wire [3:0]NLW_rd_value2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_rd_value2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_rd_value2_carry__2_O_UNCONNECTED;

  FDCE \alu_op_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(alu_op_inw[0]),
        .Q(\alu_op_reg_n_0_[0] ));
  FDCE \alu_op_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(alu_op_inw[1]),
        .Q(\alu_op_reg_n_0_[1] ));
  FDCE \alu_op_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(alu_op_inw[2]),
        .Q(\alu_op_reg_n_0_[2] ));
  FDCE \alu_op_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(alu_op_inw[3]),
        .Q(\alu_op_reg_n_0_[3] ));
  FDCE \alu_op_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(alu_op_inw[4]),
        .Q(\alu_op_reg_n_0_[4] ));
  FDCE \alu_op_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(alu_op_inw[5]),
        .Q(alu_op));
  FDCE alu_src_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(alu_src_inw),
        .Q(alu_src));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 branch_addr_carry
       (.CI(1'b0),
        .CO({branch_addr_carry_n_0,branch_addr_carry_n_1,branch_addr_carry_n_2,branch_addr_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\imm_reg_n_0_[3] ,\imm_reg_n_0_[2] ,\imm_reg_n_0_[1] ,\imm_reg_n_0_[0] }),
        .O(branch_addr[3:0]),
        .S({branch_addr_carry_i_1__0_n_0,branch_addr_carry_i_2_n_0,branch_addr_carry_i_3_n_0,branch_addr_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 branch_addr_carry__0
       (.CI(branch_addr_carry_n_0),
        .CO({branch_addr_carry__0_n_0,branch_addr_carry__0_n_1,branch_addr_carry__0_n_2,branch_addr_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\imm_reg_n_0_[7] ,\imm_reg_n_0_[6] ,\imm_reg_n_0_[5] ,\imm_reg_n_0_[4] }),
        .O(branch_addr[7:4]),
        .S({branch_addr_carry_i_1__1_n_0,branch_addr_carry_i_2__0_n_0,branch_addr_carry_i_3__0_n_0,branch_addr_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 branch_addr_carry__1
       (.CI(branch_addr_carry__0_n_0),
        .CO({branch_addr_carry__1_n_0,branch_addr_carry__1_n_1,branch_addr_carry__1_n_2,branch_addr_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\imm_reg_n_0_[11] ,\imm_reg_n_0_[10] ,\imm_reg_n_0_[9] ,\imm_reg_n_0_[8] }),
        .O(branch_addr[11:8]),
        .S({branch_addr_carry_i_1__2_n_0,branch_addr_carry_i_2__1_n_0,branch_addr_carry_i_3__1_n_0,branch_addr_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 branch_addr_carry__2
       (.CI(branch_addr_carry__1_n_0),
        .CO({NLW_branch_addr_carry__2_CO_UNCONNECTED[3],branch_addr_carry__2_n_1,branch_addr_carry__2_n_2,branch_addr_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\imm_reg_n_0_[14] ,\imm_reg_n_0_[13] ,\imm_reg_n_0_[12] }),
        .O(branch_addr[15:12]),
        .S({branch_addr_carry_i_1_n_0,branch_addr_carry_i_2__2_n_0,branch_addr_carry_i_3__2_n_0,branch_addr_carry_i_4__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_1
       (.I0(pc_next[15]),
        .I1(\imm_reg_n_0_[15] ),
        .O(branch_addr_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_1__0
       (.I0(\imm_reg_n_0_[3] ),
        .I1(pc_next[3]),
        .O(branch_addr_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_1__1
       (.I0(\imm_reg_n_0_[7] ),
        .I1(pc_next[7]),
        .O(branch_addr_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_1__2
       (.I0(\imm_reg_n_0_[11] ),
        .I1(pc_next[11]),
        .O(branch_addr_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_2
       (.I0(\imm_reg_n_0_[2] ),
        .I1(pc_next[2]),
        .O(branch_addr_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_2__0
       (.I0(\imm_reg_n_0_[6] ),
        .I1(pc_next[6]),
        .O(branch_addr_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_2__1
       (.I0(\imm_reg_n_0_[10] ),
        .I1(pc_next[10]),
        .O(branch_addr_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_2__2
       (.I0(\imm_reg_n_0_[14] ),
        .I1(pc_next[14]),
        .O(branch_addr_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_3
       (.I0(\imm_reg_n_0_[1] ),
        .I1(pc_next[1]),
        .O(branch_addr_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_3__0
       (.I0(\imm_reg_n_0_[5] ),
        .I1(pc_next[5]),
        .O(branch_addr_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_3__1
       (.I0(\imm_reg_n_0_[9] ),
        .I1(pc_next[9]),
        .O(branch_addr_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_3__2
       (.I0(\imm_reg_n_0_[13] ),
        .I1(pc_next[13]),
        .O(branch_addr_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_4
       (.I0(\imm_reg_n_0_[0] ),
        .I1(pc_next[0]),
        .O(branch_addr_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_4__0
       (.I0(\imm_reg_n_0_[4] ),
        .I1(pc_next[4]),
        .O(branch_addr_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_4__1
       (.I0(\imm_reg_n_0_[8] ),
        .I1(pc_next[8]),
        .O(branch_addr_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    branch_addr_carry_i_4__2
       (.I0(\imm_reg_n_0_[12] ),
        .I1(pc_next[12]),
        .O(branch_addr_carry_i_4__2_n_0));
  FDCE branch_isc_flag_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(branch_isc_flag_inw),
        .Q(branch_isc_flag));
  LUT6 #(
    .INIT(64'h2200202222002000)) 
    branch_jump_flag_INST_0
       (.I0(branch_jump_flag_INST_0_i_1_n_0),
        .I1(branch_jump_flag_INST_0_i_2_n_0),
        .I2(branch_jump_flag_INST_0_i_3_n_1),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .I5(branch_jump_flag_INST_0_i_4_n_1),
        .O(branch_jump_flag));
  LUT6 #(
    .INIT(64'h0808080800000008)) 
    branch_jump_flag_INST_0_i_1
       (.I0(branch_isc_flag),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(alu_op),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(\alu_op_reg_n_0_[4] ),
        .O(branch_jump_flag_INST_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    branch_jump_flag_INST_0_i_10
       (.I0(\rd_value[31]_INST_0_i_6_n_0 ),
        .I1(alu_src_s[30]),
        .I2(alu_src_t[30]),
        .O(branch_jump_flag_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_11
       (.I0(alu_src_s[29]),
        .I1(alu_src_t[29]),
        .I2(alu_src_t[27]),
        .I3(alu_src_s[27]),
        .I4(alu_src_t[28]),
        .I5(alu_src_s[28]),
        .O(branch_jump_flag_INST_0_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_12
       (.I0(alu_src_s[26]),
        .I1(alu_src_t[26]),
        .I2(alu_src_t[24]),
        .I3(alu_src_s[24]),
        .I4(alu_src_t[25]),
        .I5(alu_src_s[25]),
        .O(branch_jump_flag_INST_0_i_12_n_0));
  CARRY4 branch_jump_flag_INST_0_i_13
       (.CI(1'b0),
        .CO({branch_jump_flag_INST_0_i_13_n_0,branch_jump_flag_INST_0_i_13_n_1,branch_jump_flag_INST_0_i_13_n_2,branch_jump_flag_INST_0_i_13_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_branch_jump_flag_INST_0_i_13_O_UNCONNECTED[3:0]),
        .S({branch_jump_flag_INST_0_i_23_n_0,branch_jump_flag_INST_0_i_24_n_0,branch_jump_flag_INST_0_i_25_n_0,branch_jump_flag_INST_0_i_26_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_14
       (.I0(alu_src_t[23]),
        .I1(alu_src_s[23]),
        .I2(alu_src_t[21]),
        .I3(alu_src_s[21]),
        .I4(alu_src_s[22]),
        .I5(alu_src_t[22]),
        .O(branch_jump_flag_INST_0_i_14_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_15
       (.I0(alu_src_t[20]),
        .I1(alu_src_s[20]),
        .I2(alu_src_t[18]),
        .I3(alu_src_s[18]),
        .I4(alu_src_s[19]),
        .I5(alu_src_t[19]),
        .O(branch_jump_flag_INST_0_i_15_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_16
       (.I0(alu_src_t[17]),
        .I1(alu_src_s[17]),
        .I2(alu_src_t[15]),
        .I3(alu_src_s[15]),
        .I4(alu_src_s[16]),
        .I5(alu_src_t[16]),
        .O(branch_jump_flag_INST_0_i_16_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_17
       (.I0(alu_src_t[14]),
        .I1(alu_src_s[14]),
        .I2(alu_src_t[12]),
        .I3(alu_src_s[12]),
        .I4(alu_src_s[13]),
        .I5(alu_src_t[13]),
        .O(branch_jump_flag_INST_0_i_17_n_0));
  CARRY4 branch_jump_flag_INST_0_i_18
       (.CI(1'b0),
        .CO({branch_jump_flag_INST_0_i_18_n_0,branch_jump_flag_INST_0_i_18_n_1,branch_jump_flag_INST_0_i_18_n_2,branch_jump_flag_INST_0_i_18_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_branch_jump_flag_INST_0_i_18_O_UNCONNECTED[3:0]),
        .S({branch_jump_flag_INST_0_i_27_n_0,branch_jump_flag_INST_0_i_28_n_0,branch_jump_flag_INST_0_i_29_n_0,branch_jump_flag_INST_0_i_30_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_19
       (.I0(alu_src_t[23]),
        .I1(alu_src_s[23]),
        .I2(alu_src_t[21]),
        .I3(alu_src_s[21]),
        .I4(alu_src_s[22]),
        .I5(alu_src_t[22]),
        .O(branch_jump_flag_INST_0_i_19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    branch_jump_flag_INST_0_i_2
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .O(branch_jump_flag_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_20
       (.I0(alu_src_t[20]),
        .I1(alu_src_s[20]),
        .I2(alu_src_t[18]),
        .I3(alu_src_s[18]),
        .I4(alu_src_s[19]),
        .I5(alu_src_t[19]),
        .O(branch_jump_flag_INST_0_i_20_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_21
       (.I0(alu_src_t[17]),
        .I1(alu_src_s[17]),
        .I2(alu_src_t[15]),
        .I3(alu_src_s[15]),
        .I4(alu_src_s[16]),
        .I5(alu_src_t[16]),
        .O(branch_jump_flag_INST_0_i_21_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_22
       (.I0(alu_src_t[14]),
        .I1(alu_src_s[14]),
        .I2(alu_src_t[12]),
        .I3(alu_src_s[12]),
        .I4(alu_src_s[13]),
        .I5(alu_src_t[13]),
        .O(branch_jump_flag_INST_0_i_22_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_23
       (.I0(alu_src_t[11]),
        .I1(alu_src_s[11]),
        .I2(alu_src_t[9]),
        .I3(alu_src_s[9]),
        .I4(alu_src_s[10]),
        .I5(alu_src_t[10]),
        .O(branch_jump_flag_INST_0_i_23_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_24
       (.I0(alu_src_t[8]),
        .I1(alu_src_s[8]),
        .I2(alu_src_t[6]),
        .I3(alu_src_s[6]),
        .I4(alu_src_s[7]),
        .I5(alu_src_t[7]),
        .O(branch_jump_flag_INST_0_i_24_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_25
       (.I0(alu_src_s[3]),
        .I1(alu_src_t[3]),
        .I2(alu_src_t[5]),
        .I3(alu_src_s[5]),
        .I4(alu_src_t[4]),
        .I5(alu_src_s[4]),
        .O(branch_jump_flag_INST_0_i_25_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_26
       (.I0(alu_src_s[0]),
        .I1(alu_src_t[0]),
        .I2(alu_src_t[1]),
        .I3(alu_src_s[1]),
        .I4(alu_src_t[2]),
        .I5(alu_src_s[2]),
        .O(branch_jump_flag_INST_0_i_26_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_27
       (.I0(alu_src_t[11]),
        .I1(alu_src_s[11]),
        .I2(alu_src_t[9]),
        .I3(alu_src_s[9]),
        .I4(alu_src_s[10]),
        .I5(alu_src_t[10]),
        .O(branch_jump_flag_INST_0_i_27_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_28
       (.I0(alu_src_t[8]),
        .I1(alu_src_s[8]),
        .I2(alu_src_t[6]),
        .I3(alu_src_s[6]),
        .I4(alu_src_s[7]),
        .I5(alu_src_t[7]),
        .O(branch_jump_flag_INST_0_i_28_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_29
       (.I0(alu_src_s[3]),
        .I1(alu_src_t[3]),
        .I2(alu_src_t[5]),
        .I3(alu_src_s[5]),
        .I4(alu_src_t[4]),
        .I5(alu_src_s[4]),
        .O(branch_jump_flag_INST_0_i_29_n_0));
  CARRY4 branch_jump_flag_INST_0_i_3
       (.CI(branch_jump_flag_INST_0_i_5_n_0),
        .CO({NLW_branch_jump_flag_INST_0_i_3_CO_UNCONNECTED[3],branch_jump_flag_INST_0_i_3_n_1,branch_jump_flag_INST_0_i_3_n_2,branch_jump_flag_INST_0_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_branch_jump_flag_INST_0_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,branch_jump_flag_INST_0_i_6_n_0,branch_jump_flag_INST_0_i_7_n_0,branch_jump_flag_INST_0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_30
       (.I0(alu_src_s[0]),
        .I1(alu_src_t[0]),
        .I2(alu_src_t[1]),
        .I3(alu_src_s[1]),
        .I4(alu_src_t[2]),
        .I5(alu_src_s[2]),
        .O(branch_jump_flag_INST_0_i_30_n_0));
  CARRY4 branch_jump_flag_INST_0_i_4
       (.CI(branch_jump_flag_INST_0_i_9_n_0),
        .CO({NLW_branch_jump_flag_INST_0_i_4_CO_UNCONNECTED[3],branch_jump_flag_INST_0_i_4_n_1,branch_jump_flag_INST_0_i_4_n_2,branch_jump_flag_INST_0_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_branch_jump_flag_INST_0_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,branch_jump_flag_INST_0_i_10_n_0,branch_jump_flag_INST_0_i_11_n_0,branch_jump_flag_INST_0_i_12_n_0}));
  CARRY4 branch_jump_flag_INST_0_i_5
       (.CI(branch_jump_flag_INST_0_i_13_n_0),
        .CO({branch_jump_flag_INST_0_i_5_n_0,branch_jump_flag_INST_0_i_5_n_1,branch_jump_flag_INST_0_i_5_n_2,branch_jump_flag_INST_0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_branch_jump_flag_INST_0_i_5_O_UNCONNECTED[3:0]),
        .S({branch_jump_flag_INST_0_i_14_n_0,branch_jump_flag_INST_0_i_15_n_0,branch_jump_flag_INST_0_i_16_n_0,branch_jump_flag_INST_0_i_17_n_0}));
  LUT3 #(
    .INIT(8'h41)) 
    branch_jump_flag_INST_0_i_6
       (.I0(\rd_value[31]_INST_0_i_6_n_0 ),
        .I1(alu_src_s[30]),
        .I2(alu_src_t[30]),
        .O(branch_jump_flag_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_7
       (.I0(alu_src_s[29]),
        .I1(alu_src_t[29]),
        .I2(alu_src_t[27]),
        .I3(alu_src_s[27]),
        .I4(alu_src_t[28]),
        .I5(alu_src_s[28]),
        .O(branch_jump_flag_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    branch_jump_flag_INST_0_i_8
       (.I0(alu_src_s[26]),
        .I1(alu_src_t[26]),
        .I2(alu_src_t[24]),
        .I3(alu_src_s[24]),
        .I4(alu_src_t[25]),
        .I5(alu_src_s[25]),
        .O(branch_jump_flag_INST_0_i_8_n_0));
  CARRY4 branch_jump_flag_INST_0_i_9
       (.CI(branch_jump_flag_INST_0_i_18_n_0),
        .CO({branch_jump_flag_INST_0_i_9_n_0,branch_jump_flag_INST_0_i_9_n_1,branch_jump_flag_INST_0_i_9_n_2,branch_jump_flag_INST_0_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_branch_jump_flag_INST_0_i_9_O_UNCONNECTED[3:0]),
        .S({branch_jump_flag_INST_0_i_19_n_0,branch_jump_flag_INST_0_i_20_n_0,branch_jump_flag_INST_0_i_21_n_0,branch_jump_flag_INST_0_i_22_n_0}));
  FDCE \imm_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[0]),
        .Q(\imm_reg_n_0_[0] ));
  FDCE \imm_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[10]),
        .Q(\imm_reg_n_0_[10] ));
  FDCE \imm_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[11]),
        .Q(\imm_reg_n_0_[11] ));
  FDCE \imm_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[12]),
        .Q(\imm_reg_n_0_[12] ));
  FDCE \imm_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[13]),
        .Q(\imm_reg_n_0_[13] ));
  FDCE \imm_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[14]),
        .Q(\imm_reg_n_0_[14] ));
  FDCE \imm_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[15]),
        .Q(\imm_reg_n_0_[15] ));
  FDCE \imm_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[16]),
        .Q(\imm_reg_n_0_[16] ));
  FDCE \imm_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[17]),
        .Q(\imm_reg_n_0_[17] ));
  FDCE \imm_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[18]),
        .Q(\imm_reg_n_0_[18] ));
  FDCE \imm_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[19]),
        .Q(\imm_reg_n_0_[19] ));
  FDCE \imm_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[1]),
        .Q(\imm_reg_n_0_[1] ));
  FDCE \imm_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[20]),
        .Q(\imm_reg_n_0_[20] ));
  FDCE \imm_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[21]),
        .Q(\imm_reg_n_0_[21] ));
  FDCE \imm_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[22]),
        .Q(\imm_reg_n_0_[22] ));
  FDCE \imm_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[23]),
        .Q(\imm_reg_n_0_[23] ));
  FDCE \imm_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[24]),
        .Q(\imm_reg_n_0_[24] ));
  FDCE \imm_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[25]),
        .Q(\imm_reg_n_0_[25] ));
  FDCE \imm_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[26]),
        .Q(\imm_reg_n_0_[26] ));
  FDCE \imm_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[27]),
        .Q(\imm_reg_n_0_[27] ));
  FDCE \imm_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[28]),
        .Q(\imm_reg_n_0_[28] ));
  FDCE \imm_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[29]),
        .Q(\imm_reg_n_0_[29] ));
  FDCE \imm_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[2]),
        .Q(\imm_reg_n_0_[2] ));
  FDCE \imm_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[30]),
        .Q(\imm_reg_n_0_[30] ));
  FDCE \imm_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[31]),
        .Q(\imm_reg_n_0_[31] ));
  FDCE \imm_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[3]),
        .Q(\imm_reg_n_0_[3] ));
  FDCE \imm_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[4]),
        .Q(\imm_reg_n_0_[4] ));
  FDCE \imm_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[5]),
        .Q(\imm_reg_n_0_[5] ));
  FDCE \imm_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[6]),
        .Q(\imm_reg_n_0_[6] ));
  FDCE \imm_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[7]),
        .Q(\imm_reg_n_0_[7] ));
  FDCE \imm_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[8]),
        .Q(\imm_reg_n_0_[8] ));
  FDCE \imm_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(imm_inw[9]),
        .Q(\imm_reg_n_0_[9] ));
  FDCE memory_to_reg_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(memory_to_reg_inw),
        .Q(memory_to_reg));
  FDCE memory_write_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(memory_write_inw),
        .Q(memory_write));
  FDCE \pc_next_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[0]),
        .Q(pc_next[0]));
  FDCE \pc_next_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[10]),
        .Q(pc_next[10]));
  FDCE \pc_next_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[11]),
        .Q(pc_next[11]));
  FDCE \pc_next_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[12]),
        .Q(pc_next[12]));
  FDCE \pc_next_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[13]),
        .Q(pc_next[13]));
  FDCE \pc_next_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[14]),
        .Q(pc_next[14]));
  FDCE \pc_next_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[15]),
        .Q(pc_next[15]));
  FDCE \pc_next_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[1]),
        .Q(pc_next[1]));
  FDCE \pc_next_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[2]),
        .Q(pc_next[2]));
  FDCE \pc_next_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[3]),
        .Q(pc_next[3]));
  FDCE \pc_next_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[4]),
        .Q(pc_next[4]));
  FDCE \pc_next_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[5]),
        .Q(pc_next[5]));
  FDCE \pc_next_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[6]),
        .Q(pc_next[6]));
  FDCE \pc_next_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[7]),
        .Q(pc_next[7]));
  FDCE \pc_next_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[8]),
        .Q(pc_next[8]));
  FDCE \pc_next_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(pc_next_inw[9]),
        .Q(pc_next[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_add_carry
       (.CI(1'b0),
        .CO({rd_add_carry_n_0,rd_add_carry_n_1,rd_add_carry_n_2,rd_add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(alu_src_s[3:0]),
        .O(data0[3:0]),
        .S({rd_add_carry_i_5_n_0,rd_add_carry_i_6_n_0,rd_add_carry_i_7_n_0,rd_add_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_add_carry__0
       (.CI(rd_add_carry_n_0),
        .CO({rd_add_carry__0_n_0,rd_add_carry__0_n_1,rd_add_carry__0_n_2,rd_add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(alu_src_s[7:4]),
        .O(data0[7:4]),
        .S({rd_add_carry__0_i_5_n_0,rd_add_carry__0_i_6_n_0,rd_add_carry__0_i_7_n_0,rd_add_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__0_i_1
       (.I0(write_back_data[7]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[7]),
        .I3(rs_forward[1]),
        .I4(rs[7]),
        .O(alu_src_s[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__0_i_2
       (.I0(write_back_data[6]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[6]),
        .I3(rs_forward[1]),
        .I4(rs[6]),
        .O(alu_src_s[6]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__0_i_3
       (.I0(write_back_data[5]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[5]),
        .I3(rs_forward[1]),
        .I4(rs[5]),
        .O(alu_src_s[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__0_i_4
       (.I0(write_back_data[4]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[4]),
        .I3(rs_forward[1]),
        .I4(rs[4]),
        .O(alu_src_s[4]));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__0_i_5
       (.I0(rs[7]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[7]),
        .I3(rs_forward[0]),
        .I4(write_back_data[7]),
        .I5(alu_src_t[7]),
        .O(rd_add_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__0_i_6
       (.I0(rs[6]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[6]),
        .I3(rs_forward[0]),
        .I4(write_back_data[6]),
        .I5(alu_src_t[6]),
        .O(rd_add_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__0_i_7
       (.I0(rs[5]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[5]),
        .I3(rs_forward[0]),
        .I4(write_back_data[5]),
        .I5(alu_src_t[5]),
        .O(rd_add_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__0_i_8
       (.I0(rs[4]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[4]),
        .I3(rs_forward[0]),
        .I4(write_back_data[4]),
        .I5(alu_src_t[4]),
        .O(rd_add_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_add_carry__1
       (.CI(rd_add_carry__0_n_0),
        .CO({rd_add_carry__1_n_0,rd_add_carry__1_n_1,rd_add_carry__1_n_2,rd_add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(alu_src_s[11:8]),
        .O(data0[11:8]),
        .S({rd_add_carry__1_i_5_n_0,rd_add_carry__1_i_6_n_0,rd_add_carry__1_i_7_n_0,rd_add_carry__1_i_8_n_0}));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__1_i_1
       (.I0(write_back_data[11]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[11]),
        .I3(rs_forward[1]),
        .I4(rs[11]),
        .O(alu_src_s[11]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__1_i_2
       (.I0(write_back_data[10]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[10]),
        .I3(rs_forward[1]),
        .I4(rs[10]),
        .O(alu_src_s[10]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__1_i_3
       (.I0(write_back_data[9]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[9]),
        .I3(rs_forward[1]),
        .I4(rs[9]),
        .O(alu_src_s[9]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__1_i_4
       (.I0(write_back_data[8]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[8]),
        .I3(rs_forward[1]),
        .I4(rs[8]),
        .O(alu_src_s[8]));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__1_i_5
       (.I0(rs[11]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[11]),
        .I3(rs_forward[0]),
        .I4(write_back_data[11]),
        .I5(alu_src_t[11]),
        .O(rd_add_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__1_i_6
       (.I0(rs[10]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[10]),
        .I3(rs_forward[0]),
        .I4(write_back_data[10]),
        .I5(alu_src_t[10]),
        .O(rd_add_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__1_i_7
       (.I0(rs[9]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[9]),
        .I3(rs_forward[0]),
        .I4(write_back_data[9]),
        .I5(alu_src_t[9]),
        .O(rd_add_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__1_i_8
       (.I0(rs[8]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[8]),
        .I3(rs_forward[0]),
        .I4(write_back_data[8]),
        .I5(alu_src_t[8]),
        .O(rd_add_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_add_carry__2
       (.CI(rd_add_carry__1_n_0),
        .CO({rd_add_carry__2_n_0,rd_add_carry__2_n_1,rd_add_carry__2_n_2,rd_add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(alu_src_s[15:12]),
        .O(data0[15:12]),
        .S({rd_add_carry__2_i_5_n_0,rd_add_carry__2_i_6_n_0,rd_add_carry__2_i_7_n_0,rd_add_carry__2_i_8_n_0}));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__2_i_1
       (.I0(write_back_data[15]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[15]),
        .I3(rs_forward[1]),
        .I4(rs[15]),
        .O(alu_src_s[15]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__2_i_2
       (.I0(write_back_data[14]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[14]),
        .I3(rs_forward[1]),
        .I4(rs[14]),
        .O(alu_src_s[14]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__2_i_3
       (.I0(write_back_data[13]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[13]),
        .I3(rs_forward[1]),
        .I4(rs[13]),
        .O(alu_src_s[13]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__2_i_4
       (.I0(write_back_data[12]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[12]),
        .I3(rs_forward[1]),
        .I4(rs[12]),
        .O(alu_src_s[12]));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__2_i_5
       (.I0(rs[15]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[15]),
        .I3(rs_forward[0]),
        .I4(write_back_data[15]),
        .I5(alu_src_t[15]),
        .O(rd_add_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__2_i_6
       (.I0(rs[14]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[14]),
        .I3(rs_forward[0]),
        .I4(write_back_data[14]),
        .I5(alu_src_t[14]),
        .O(rd_add_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__2_i_7
       (.I0(rs[13]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[13]),
        .I3(rs_forward[0]),
        .I4(write_back_data[13]),
        .I5(alu_src_t[13]),
        .O(rd_add_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__2_i_8
       (.I0(rs[12]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[12]),
        .I3(rs_forward[0]),
        .I4(write_back_data[12]),
        .I5(alu_src_t[12]),
        .O(rd_add_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_add_carry__3
       (.CI(rd_add_carry__2_n_0),
        .CO({rd_add_carry__3_n_0,rd_add_carry__3_n_1,rd_add_carry__3_n_2,rd_add_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(alu_src_s[19:16]),
        .O(data0[19:16]),
        .S({rd_add_carry__3_i_5_n_0,rd_add_carry__3_i_6_n_0,rd_add_carry__3_i_7_n_0,rd_add_carry__3_i_8_n_0}));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__3_i_1
       (.I0(write_back_data[19]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[19]),
        .I3(rs_forward[1]),
        .I4(rs[19]),
        .O(alu_src_s[19]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__3_i_2
       (.I0(write_back_data[18]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[18]),
        .I3(rs_forward[1]),
        .I4(rs[18]),
        .O(alu_src_s[18]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__3_i_3
       (.I0(write_back_data[17]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[17]),
        .I3(rs_forward[1]),
        .I4(rs[17]),
        .O(alu_src_s[17]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__3_i_4
       (.I0(write_back_data[16]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[16]),
        .I3(rs_forward[1]),
        .I4(rs[16]),
        .O(alu_src_s[16]));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__3_i_5
       (.I0(rs[19]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[19]),
        .I3(rs_forward[0]),
        .I4(write_back_data[19]),
        .I5(alu_src_t[19]),
        .O(rd_add_carry__3_i_5_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__3_i_6
       (.I0(rs[18]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[18]),
        .I3(rs_forward[0]),
        .I4(write_back_data[18]),
        .I5(alu_src_t[18]),
        .O(rd_add_carry__3_i_6_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__3_i_7
       (.I0(rs[17]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[17]),
        .I3(rs_forward[0]),
        .I4(write_back_data[17]),
        .I5(alu_src_t[17]),
        .O(rd_add_carry__3_i_7_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__3_i_8
       (.I0(rs[16]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[16]),
        .I3(rs_forward[0]),
        .I4(write_back_data[16]),
        .I5(alu_src_t[16]),
        .O(rd_add_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_add_carry__4
       (.CI(rd_add_carry__3_n_0),
        .CO({rd_add_carry__4_n_0,rd_add_carry__4_n_1,rd_add_carry__4_n_2,rd_add_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(alu_src_s[23:20]),
        .O(data0[23:20]),
        .S({rd_add_carry__4_i_5_n_0,rd_add_carry__4_i_6_n_0,rd_add_carry__4_i_7_n_0,rd_add_carry__4_i_8_n_0}));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__4_i_1
       (.I0(write_back_data[23]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[23]),
        .I3(rs_forward[1]),
        .I4(rs[23]),
        .O(alu_src_s[23]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__4_i_2
       (.I0(write_back_data[22]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[22]),
        .I3(rs_forward[1]),
        .I4(rs[22]),
        .O(alu_src_s[22]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__4_i_3
       (.I0(write_back_data[21]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[21]),
        .I3(rs_forward[1]),
        .I4(rs[21]),
        .O(alu_src_s[21]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__4_i_4
       (.I0(write_back_data[20]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[20]),
        .I3(rs_forward[1]),
        .I4(rs[20]),
        .O(alu_src_s[20]));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__4_i_5
       (.I0(rs[23]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[23]),
        .I3(rs_forward[0]),
        .I4(write_back_data[23]),
        .I5(alu_src_t[23]),
        .O(rd_add_carry__4_i_5_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__4_i_6
       (.I0(rs[22]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[22]),
        .I3(rs_forward[0]),
        .I4(write_back_data[22]),
        .I5(alu_src_t[22]),
        .O(rd_add_carry__4_i_6_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__4_i_7
       (.I0(rs[21]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[21]),
        .I3(rs_forward[0]),
        .I4(write_back_data[21]),
        .I5(alu_src_t[21]),
        .O(rd_add_carry__4_i_7_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__4_i_8
       (.I0(rs[20]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[20]),
        .I3(rs_forward[0]),
        .I4(write_back_data[20]),
        .I5(alu_src_t[20]),
        .O(rd_add_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_add_carry__5
       (.CI(rd_add_carry__4_n_0),
        .CO({rd_add_carry__5_n_0,rd_add_carry__5_n_1,rd_add_carry__5_n_2,rd_add_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(alu_src_s[27:24]),
        .O(data0[27:24]),
        .S({rd_add_carry__5_i_5_n_0,rd_add_carry__5_i_6_n_0,rd_add_carry__5_i_7_n_0,rd_add_carry__5_i_8_n_0}));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__5_i_1
       (.I0(write_back_data[27]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[27]),
        .I3(rs_forward[1]),
        .I4(rs[27]),
        .O(alu_src_s[27]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__5_i_2
       (.I0(write_back_data[26]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[26]),
        .I3(rs_forward[1]),
        .I4(rs[26]),
        .O(alu_src_s[26]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__5_i_3
       (.I0(write_back_data[25]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[25]),
        .I3(rs_forward[1]),
        .I4(rs[25]),
        .O(alu_src_s[25]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__5_i_4
       (.I0(write_back_data[24]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[24]),
        .I3(rs_forward[1]),
        .I4(rs[24]),
        .O(alu_src_s[24]));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__5_i_5
       (.I0(rs[27]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[27]),
        .I3(rs_forward[0]),
        .I4(write_back_data[27]),
        .I5(alu_src_t[27]),
        .O(rd_add_carry__5_i_5_n_0));
  LUT6 #(
    .INIT(64'hCF44CF7730BB3088)) 
    rd_add_carry__5_i_6
       (.I0(write_back_data[26]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[26]),
        .I3(rs_forward[1]),
        .I4(rs[26]),
        .I5(alu_src_t[26]),
        .O(rd_add_carry__5_i_6_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__5_i_7
       (.I0(rs[25]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[25]),
        .I3(rs_forward[0]),
        .I4(write_back_data[25]),
        .I5(alu_src_t[25]),
        .O(rd_add_carry__5_i_7_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__5_i_8
       (.I0(rs[24]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[24]),
        .I3(rs_forward[0]),
        .I4(write_back_data[24]),
        .I5(alu_src_t[24]),
        .O(rd_add_carry__5_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_add_carry__6
       (.CI(rd_add_carry__5_n_0),
        .CO({NLW_rd_add_carry__6_CO_UNCONNECTED[3],rd_add_carry__6_n_1,rd_add_carry__6_n_2,rd_add_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,alu_src_s[30:28]}),
        .O(data0[31:28]),
        .S({rd_add_carry__6_i_4_n_0,rd_add_carry__6_i_5_n_0,rd_add_carry__6_i_6_n_0,rd_add_carry__6_i_7_n_0}));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__6_i_1
       (.I0(write_back_data[30]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[30]),
        .I3(rs_forward[1]),
        .I4(rs[30]),
        .O(alu_src_s[30]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__6_i_2
       (.I0(write_back_data[29]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[29]),
        .I3(rs_forward[1]),
        .I4(rs[29]),
        .O(alu_src_s[29]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry__6_i_3
       (.I0(write_back_data[28]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[28]),
        .I3(rs_forward[1]),
        .I4(rs[28]),
        .O(alu_src_s[28]));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__6_i_4
       (.I0(rs[31]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[31]),
        .I3(rs_forward[0]),
        .I4(write_back_data[31]),
        .I5(\rd_value[31]_INST_0_i_13_n_0 ),
        .O(rd_add_carry__6_i_4_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__6_i_5
       (.I0(rs[30]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[30]),
        .I3(rs_forward[0]),
        .I4(write_back_data[30]),
        .I5(alu_src_t[30]),
        .O(rd_add_carry__6_i_5_n_0));
  LUT6 #(
    .INIT(64'hCF44CF7730BB3088)) 
    rd_add_carry__6_i_6
       (.I0(write_back_data[29]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[29]),
        .I3(rs_forward[1]),
        .I4(rs[29]),
        .I5(alu_src_t[29]),
        .O(rd_add_carry__6_i_6_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry__6_i_7
       (.I0(rs[28]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[28]),
        .I3(rs_forward[0]),
        .I4(write_back_data[28]),
        .I5(alu_src_t[28]),
        .O(rd_add_carry__6_i_7_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry_i_1
       (.I0(write_back_data[3]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[3]),
        .I3(rs_forward[1]),
        .I4(rs[3]),
        .O(alu_src_s[3]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry_i_2
       (.I0(write_back_data[2]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[2]),
        .I3(rs_forward[1]),
        .I4(rs[2]),
        .O(alu_src_s[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry_i_3
       (.I0(write_back_data[1]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[1]),
        .I3(rs_forward[1]),
        .I4(rs[1]),
        .O(alu_src_s[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    rd_add_carry_i_4
       (.I0(write_back_data[0]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[0]),
        .I3(rs_forward[1]),
        .I4(rs[0]),
        .O(alu_src_s[0]));
  LUT6 #(
    .INIT(64'hCF44CF7730BB3088)) 
    rd_add_carry_i_5
       (.I0(write_back_data[3]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[3]),
        .I3(rs_forward[1]),
        .I4(rs[3]),
        .I5(alu_src_t[3]),
        .O(rd_add_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry_i_6
       (.I0(rs[2]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[2]),
        .I3(rs_forward[0]),
        .I4(write_back_data[2]),
        .I5(alu_src_t[2]),
        .O(rd_add_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_add_carry_i_7
       (.I0(rs[1]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[1]),
        .I3(rs_forward[0]),
        .I4(write_back_data[1]),
        .I5(alu_src_t[1]),
        .O(rd_add_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hCF44CF7730BB3088)) 
    rd_add_carry_i_8
       (.I0(write_back_data[0]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[0]),
        .I3(rs_forward[1]),
        .I4(rs[0]),
        .I5(alu_src_t[0]),
        .O(rd_add_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_sub_carry
       (.CI(1'b0),
        .CO({rd_sub_carry_n_0,rd_sub_carry_n_1,rd_sub_carry_n_2,rd_sub_carry_n_3}),
        .CYINIT(1'b1),
        .DI(alu_src_s[3:0]),
        .O(data1[3:0]),
        .S({rd_sub_carry_i_1_n_0,rd_sub_carry_i_2_n_0,rd_sub_carry_i_3_n_0,rd_sub_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_sub_carry__0
       (.CI(rd_sub_carry_n_0),
        .CO({rd_sub_carry__0_n_0,rd_sub_carry__0_n_1,rd_sub_carry__0_n_2,rd_sub_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(alu_src_s[7:4]),
        .O(data1[7:4]),
        .S({rd_sub_carry__0_i_1_n_0,rd_sub_carry__0_i_2_n_0,rd_sub_carry__0_i_3_n_0,rd_sub_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'hA959)) 
    rd_sub_carry__0_i_1
       (.I0(alu_src_s[7]),
        .I1(write_data[7]),
        .I2(alu_src),
        .I3(\imm_reg_n_0_[7] ),
        .O(rd_sub_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_sub_carry__0_i_2
       (.I0(rs[6]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[6]),
        .I3(rs_forward[0]),
        .I4(write_back_data[6]),
        .I5(data6[6]),
        .O(rd_sub_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    rd_sub_carry__0_i_3
       (.I0(alu_src_s[5]),
        .I1(write_data[5]),
        .I2(alu_src),
        .I3(\imm_reg_n_0_[5] ),
        .O(rd_sub_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h30BB3088CF44CF77)) 
    rd_sub_carry__0_i_4
       (.I0(write_back_data[4]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[4]),
        .I3(rs_forward[1]),
        .I4(rs[4]),
        .I5(alu_src_t[4]),
        .O(rd_sub_carry__0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h47)) 
    rd_sub_carry__0_i_5
       (.I0(\imm_reg_n_0_[6] ),
        .I1(alu_src),
        .I2(write_data[6]),
        .O(data6[6]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_sub_carry__1
       (.CI(rd_sub_carry__0_n_0),
        .CO({rd_sub_carry__1_n_0,rd_sub_carry__1_n_1,rd_sub_carry__1_n_2,rd_sub_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(alu_src_s[11:8]),
        .O(data1[11:8]),
        .S({rd_sub_carry__1_i_1_n_0,rd_sub_carry__1_i_2_n_0,rd_sub_carry__1_i_3_n_0,rd_sub_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h30BB3088CF44CF77)) 
    rd_sub_carry__1_i_1
       (.I0(write_back_data[11]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[11]),
        .I3(rs_forward[1]),
        .I4(rs[11]),
        .I5(alu_src_t[11]),
        .O(rd_sub_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h30BB3088CF44CF77)) 
    rd_sub_carry__1_i_2
       (.I0(write_back_data[10]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[10]),
        .I3(rs_forward[1]),
        .I4(rs[10]),
        .I5(alu_src_t[10]),
        .O(rd_sub_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    rd_sub_carry__1_i_3
       (.I0(alu_src_s[9]),
        .I1(write_data[9]),
        .I2(alu_src),
        .I3(\imm_reg_n_0_[9] ),
        .O(rd_sub_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    rd_sub_carry__1_i_4
       (.I0(alu_src_s[8]),
        .I1(write_data[8]),
        .I2(alu_src),
        .I3(\imm_reg_n_0_[8] ),
        .O(rd_sub_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_sub_carry__2
       (.CI(rd_sub_carry__1_n_0),
        .CO({rd_sub_carry__2_n_0,rd_sub_carry__2_n_1,rd_sub_carry__2_n_2,rd_sub_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(alu_src_s[15:12]),
        .O(data1[15:12]),
        .S({rd_sub_carry__2_i_1_n_0,rd_sub_carry__2_i_2_n_0,rd_sub_carry__2_i_3_n_0,rd_sub_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h30BB3088CF44CF77)) 
    rd_sub_carry__2_i_1
       (.I0(write_back_data[15]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[15]),
        .I3(rs_forward[1]),
        .I4(rs[15]),
        .I5(alu_src_t[15]),
        .O(rd_sub_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h30BB3088CF44CF77)) 
    rd_sub_carry__2_i_2
       (.I0(write_back_data[14]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[14]),
        .I3(rs_forward[1]),
        .I4(rs[14]),
        .I5(alu_src_t[14]),
        .O(rd_sub_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h30BB3088CF44CF77)) 
    rd_sub_carry__2_i_3
       (.I0(write_back_data[13]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[13]),
        .I3(rs_forward[1]),
        .I4(rs[13]),
        .I5(alu_src_t[13]),
        .O(rd_sub_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    rd_sub_carry__2_i_4
       (.I0(alu_src_s[12]),
        .I1(write_data[12]),
        .I2(alu_src),
        .I3(\imm_reg_n_0_[12] ),
        .O(rd_sub_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_sub_carry__3
       (.CI(rd_sub_carry__2_n_0),
        .CO({rd_sub_carry__3_n_0,rd_sub_carry__3_n_1,rd_sub_carry__3_n_2,rd_sub_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(alu_src_s[19:16]),
        .O(data1[19:16]),
        .S({rd_sub_carry__3_i_1_n_0,rd_sub_carry__3_i_2_n_0,rd_sub_carry__3_i_3_n_0,rd_sub_carry__3_i_4_n_0}));
  LUT6 #(
    .INIT(64'h30BB3088CF44CF77)) 
    rd_sub_carry__3_i_1
       (.I0(write_back_data[19]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[19]),
        .I3(rs_forward[1]),
        .I4(rs[19]),
        .I5(alu_src_t[19]),
        .O(rd_sub_carry__3_i_1_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    rd_sub_carry__3_i_2
       (.I0(alu_src_s[18]),
        .I1(write_data[18]),
        .I2(alu_src),
        .I3(\imm_reg_n_0_[18] ),
        .O(rd_sub_carry__3_i_2_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    rd_sub_carry__3_i_3
       (.I0(alu_src_s[17]),
        .I1(write_data[17]),
        .I2(alu_src),
        .I3(\imm_reg_n_0_[17] ),
        .O(rd_sub_carry__3_i_3_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    rd_sub_carry__3_i_4
       (.I0(alu_src_s[16]),
        .I1(write_data[16]),
        .I2(alu_src),
        .I3(\imm_reg_n_0_[16] ),
        .O(rd_sub_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_sub_carry__4
       (.CI(rd_sub_carry__3_n_0),
        .CO({rd_sub_carry__4_n_0,rd_sub_carry__4_n_1,rd_sub_carry__4_n_2,rd_sub_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(alu_src_s[23:20]),
        .O(data1[23:20]),
        .S({rd_sub_carry__4_i_1_n_0,rd_sub_carry__4_i_2_n_0,rd_sub_carry__4_i_3_n_0,rd_sub_carry__4_i_4_n_0}));
  LUT4 #(
    .INIT(16'hA959)) 
    rd_sub_carry__4_i_1
       (.I0(alu_src_s[23]),
        .I1(write_data[23]),
        .I2(alu_src),
        .I3(\imm_reg_n_0_[23] ),
        .O(rd_sub_carry__4_i_1_n_0));
  LUT6 #(
    .INIT(64'h30BB3088CF44CF77)) 
    rd_sub_carry__4_i_2
       (.I0(write_back_data[22]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[22]),
        .I3(rs_forward[1]),
        .I4(rs[22]),
        .I5(alu_src_t[22]),
        .O(rd_sub_carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'h30BB3088CF44CF77)) 
    rd_sub_carry__4_i_3
       (.I0(write_back_data[21]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[21]),
        .I3(rs_forward[1]),
        .I4(rs[21]),
        .I5(alu_src_t[21]),
        .O(rd_sub_carry__4_i_3_n_0));
  LUT6 #(
    .INIT(64'h30BB3088CF44CF77)) 
    rd_sub_carry__4_i_4
       (.I0(write_back_data[20]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[20]),
        .I3(rs_forward[1]),
        .I4(rs[20]),
        .I5(alu_src_t[20]),
        .O(rd_sub_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_sub_carry__5
       (.CI(rd_sub_carry__4_n_0),
        .CO({rd_sub_carry__5_n_0,rd_sub_carry__5_n_1,rd_sub_carry__5_n_2,rd_sub_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(alu_src_s[27:24]),
        .O(data1[27:24]),
        .S({rd_sub_carry__5_i_1_n_0,rd_sub_carry__5_i_2_n_0,rd_sub_carry__5_i_3_n_0,rd_sub_carry__5_i_4_n_0}));
  LUT6 #(
    .INIT(64'h30BB3088CF44CF77)) 
    rd_sub_carry__5_i_1
       (.I0(write_back_data[27]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[27]),
        .I3(rs_forward[1]),
        .I4(rs[27]),
        .I5(alu_src_t[27]),
        .O(rd_sub_carry__5_i_1_n_0));
  LUT6 #(
    .INIT(64'h33E200E2CC1DFF1D)) 
    rd_sub_carry__5_i_2
       (.I0(rs[26]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[26]),
        .I3(rs_forward[0]),
        .I4(write_back_data[26]),
        .I5(alu_src_t[26]),
        .O(rd_sub_carry__5_i_2_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    rd_sub_carry__5_i_3
       (.I0(alu_src_s[25]),
        .I1(write_data[25]),
        .I2(alu_src),
        .I3(\imm_reg_n_0_[25] ),
        .O(rd_sub_carry__5_i_3_n_0));
  LUT4 #(
    .INIT(16'hA959)) 
    rd_sub_carry__5_i_4
       (.I0(alu_src_s[24]),
        .I1(write_data[24]),
        .I2(alu_src),
        .I3(\imm_reg_n_0_[24] ),
        .O(rd_sub_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 rd_sub_carry__6
       (.CI(rd_sub_carry__5_n_0),
        .CO({NLW_rd_sub_carry__6_CO_UNCONNECTED[3],rd_sub_carry__6_n_1,rd_sub_carry__6_n_2,rd_sub_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,alu_src_s[30:28]}),
        .O(data1[31:28]),
        .S({rd_sub_carry__6_i_1_n_0,rd_sub_carry__6_i_2_n_0,rd_sub_carry__6_i_3_n_0,rd_sub_carry__6_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    rd_sub_carry__6_i_1
       (.I0(\rd_value[31]_INST_0_i_6_n_0 ),
        .O(rd_sub_carry__6_i_1_n_0));
  LUT6 #(
    .INIT(64'h30BB3088CF44CF77)) 
    rd_sub_carry__6_i_2
       (.I0(write_back_data[30]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[30]),
        .I3(rs_forward[1]),
        .I4(rs[30]),
        .I5(alu_src_t[30]),
        .O(rd_sub_carry__6_i_2_n_0));
  LUT6 #(
    .INIT(64'h33E200E2CC1DFF1D)) 
    rd_sub_carry__6_i_3
       (.I0(rs[29]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[29]),
        .I3(rs_forward[0]),
        .I4(write_back_data[29]),
        .I5(alu_src_t[29]),
        .O(rd_sub_carry__6_i_3_n_0));
  LUT6 #(
    .INIT(64'h30BB3088CF44CF77)) 
    rd_sub_carry__6_i_4
       (.I0(write_back_data[28]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[28]),
        .I3(rs_forward[1]),
        .I4(rs[28]),
        .I5(alu_src_t[28]),
        .O(rd_sub_carry__6_i_4_n_0));
  LUT6 #(
    .INIT(64'h33E200E2CC1DFF1D)) 
    rd_sub_carry_i_1
       (.I0(rs[3]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[3]),
        .I3(rs_forward[0]),
        .I4(write_back_data[3]),
        .I5(alu_src_t[3]),
        .O(rd_sub_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h30BB3088CF44CF77)) 
    rd_sub_carry_i_2
       (.I0(write_back_data[2]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[2]),
        .I3(rs_forward[1]),
        .I4(rs[2]),
        .I5(alu_src_t[2]),
        .O(rd_sub_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_sub_carry_i_3
       (.I0(rs[1]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[1]),
        .I3(rs_forward[0]),
        .I4(write_back_data[1]),
        .I5(data6[1]),
        .O(rd_sub_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    rd_sub_carry_i_4
       (.I0(rs[0]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[0]),
        .I3(rs_forward[0]),
        .I4(write_back_data[0]),
        .I5(data6[0]),
        .O(rd_sub_carry_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rd_value2_carry
       (.CI(1'b0),
        .CO({rd_value2_carry_n_0,rd_value2_carry_n_1,rd_value2_carry_n_2,rd_value2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({rd_value2_carry_i_1_n_0,rd_value2_carry_i_2_n_0,rd_value2_carry_i_3_n_0,rd_value2_carry_i_4_n_0}),
        .O(NLW_rd_value2_carry_O_UNCONNECTED[3:0]),
        .S({rd_value2_carry_i_5_n_0,rd_value2_carry_i_6_n_0,rd_value2_carry_i_7_n_0,rd_value2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rd_value2_carry__0
       (.CI(rd_value2_carry_n_0),
        .CO({rd_value2_carry__0_n_0,rd_value2_carry__0_n_1,rd_value2_carry__0_n_2,rd_value2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({rd_value2_carry__0_i_1_n_0,rd_value2_carry__0_i_2_n_0,rd_value2_carry__0_i_3_n_0,rd_value2_carry__0_i_4_n_0}),
        .O(NLW_rd_value2_carry__0_O_UNCONNECTED[3:0]),
        .S({rd_value2_carry__0_i_5_n_0,rd_value2_carry__0_i_6_n_0,rd_value2_carry__0_i_7_n_0,rd_value2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2B22)) 
    rd_value2_carry__0_i_1
       (.I0(alu_src_t[15]),
        .I1(alu_src_s[15]),
        .I2(alu_src_s[14]),
        .I3(alu_src_t[14]),
        .O(rd_value2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2B22)) 
    rd_value2_carry__0_i_2
       (.I0(alu_src_t[13]),
        .I1(alu_src_s[13]),
        .I2(alu_src_s[12]),
        .I3(alu_src_t[12]),
        .O(rd_value2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2B22)) 
    rd_value2_carry__0_i_3
       (.I0(alu_src_t[11]),
        .I1(alu_src_s[11]),
        .I2(alu_src_s[10]),
        .I3(alu_src_t[10]),
        .O(rd_value2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    rd_value2_carry__0_i_4
       (.I0(alu_src_s[9]),
        .I1(alu_src_t[9]),
        .I2(alu_src_t[8]),
        .I3(alu_src_s[8]),
        .O(rd_value2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry__0_i_5
       (.I0(alu_src_t[15]),
        .I1(alu_src_s[15]),
        .I2(alu_src_t[14]),
        .I3(alu_src_s[14]),
        .O(rd_value2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry__0_i_6
       (.I0(alu_src_t[13]),
        .I1(alu_src_s[13]),
        .I2(alu_src_t[12]),
        .I3(alu_src_s[12]),
        .O(rd_value2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry__0_i_7
       (.I0(alu_src_t[11]),
        .I1(alu_src_s[11]),
        .I2(alu_src_t[10]),
        .I3(alu_src_s[10]),
        .O(rd_value2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry__0_i_8
       (.I0(alu_src_t[9]),
        .I1(alu_src_s[9]),
        .I2(alu_src_t[8]),
        .I3(alu_src_s[8]),
        .O(rd_value2_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rd_value2_carry__1
       (.CI(rd_value2_carry__0_n_0),
        .CO({rd_value2_carry__1_n_0,rd_value2_carry__1_n_1,rd_value2_carry__1_n_2,rd_value2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({rd_value2_carry__1_i_1_n_0,rd_value2_carry__1_i_2_n_0,rd_value2_carry__1_i_3_n_0,rd_value2_carry__1_i_4_n_0}),
        .O(NLW_rd_value2_carry__1_O_UNCONNECTED[3:0]),
        .S({rd_value2_carry__1_i_5_n_0,rd_value2_carry__1_i_6_n_0,rd_value2_carry__1_i_7_n_0,rd_value2_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2B22)) 
    rd_value2_carry__1_i_1
       (.I0(alu_src_t[23]),
        .I1(alu_src_s[23]),
        .I2(alu_src_s[22]),
        .I3(alu_src_t[22]),
        .O(rd_value2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2B22)) 
    rd_value2_carry__1_i_2
       (.I0(alu_src_t[21]),
        .I1(alu_src_s[21]),
        .I2(alu_src_s[20]),
        .I3(alu_src_t[20]),
        .O(rd_value2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2B22)) 
    rd_value2_carry__1_i_3
       (.I0(alu_src_t[19]),
        .I1(alu_src_s[19]),
        .I2(alu_src_s[18]),
        .I3(alu_src_t[18]),
        .O(rd_value2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2B22)) 
    rd_value2_carry__1_i_4
       (.I0(alu_src_t[17]),
        .I1(alu_src_s[17]),
        .I2(alu_src_s[16]),
        .I3(alu_src_t[16]),
        .O(rd_value2_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry__1_i_5
       (.I0(alu_src_t[23]),
        .I1(alu_src_s[23]),
        .I2(alu_src_t[22]),
        .I3(alu_src_s[22]),
        .O(rd_value2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry__1_i_6
       (.I0(alu_src_t[21]),
        .I1(alu_src_s[21]),
        .I2(alu_src_t[20]),
        .I3(alu_src_s[20]),
        .O(rd_value2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry__1_i_7
       (.I0(alu_src_t[19]),
        .I1(alu_src_s[19]),
        .I2(alu_src_t[18]),
        .I3(alu_src_s[18]),
        .O(rd_value2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry__1_i_8
       (.I0(alu_src_t[17]),
        .I1(alu_src_s[17]),
        .I2(alu_src_t[16]),
        .I3(alu_src_s[16]),
        .O(rd_value2_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 rd_value2_carry__2
       (.CI(rd_value2_carry__1_n_0),
        .CO({data9,rd_value2_carry__2_n_1,rd_value2_carry__2_n_2,rd_value2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({rd_value2_carry__2_i_1_n_0,rd_value2_carry__2_i_2_n_0,rd_value2_carry__2_i_3_n_0,rd_value2_carry__2_i_4_n_0}),
        .O(NLW_rd_value2_carry__2_O_UNCONNECTED[3:0]),
        .S({rd_value2_carry__2_i_5_n_0,rd_value2_carry__2_i_6_n_0,rd_value2_carry__2_i_7_n_0,rd_value2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h88E8)) 
    rd_value2_carry__2_i_1
       (.I0(\rd_value[31]_INST_0_i_12_n_0 ),
        .I1(\rd_value[31]_INST_0_i_13_n_0 ),
        .I2(alu_src_t[30]),
        .I3(alu_src_s[30]),
        .O(rd_value2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    rd_value2_carry__2_i_2
       (.I0(alu_src_s[29]),
        .I1(alu_src_t[29]),
        .I2(alu_src_t[28]),
        .I3(alu_src_s[28]),
        .O(rd_value2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    rd_value2_carry__2_i_3
       (.I0(alu_src_s[27]),
        .I1(alu_src_t[27]),
        .I2(alu_src_t[26]),
        .I3(alu_src_s[26]),
        .O(rd_value2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    rd_value2_carry__2_i_4
       (.I0(alu_src_s[25]),
        .I1(alu_src_t[25]),
        .I2(alu_src_t[24]),
        .I3(alu_src_s[24]),
        .O(rd_value2_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    rd_value2_carry__2_i_5
       (.I0(alu_src_t[30]),
        .I1(alu_src_s[30]),
        .I2(\rd_value[31]_INST_0_i_6_n_0 ),
        .O(rd_value2_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry__2_i_6
       (.I0(alu_src_t[29]),
        .I1(alu_src_s[29]),
        .I2(alu_src_t[28]),
        .I3(alu_src_s[28]),
        .O(rd_value2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry__2_i_7
       (.I0(alu_src_t[27]),
        .I1(alu_src_s[27]),
        .I2(alu_src_t[26]),
        .I3(alu_src_s[26]),
        .O(rd_value2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry__2_i_8
       (.I0(alu_src_t[25]),
        .I1(alu_src_s[25]),
        .I2(alu_src_t[24]),
        .I3(alu_src_s[24]),
        .O(rd_value2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    rd_value2_carry_i_1
       (.I0(alu_src_s[7]),
        .I1(alu_src_t[7]),
        .I2(alu_src_t[6]),
        .I3(alu_src_s[6]),
        .O(rd_value2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    rd_value2_carry_i_2
       (.I0(alu_src_s[5]),
        .I1(alu_src_t[5]),
        .I2(alu_src_t[4]),
        .I3(alu_src_s[4]),
        .O(rd_value2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    rd_value2_carry_i_3
       (.I0(alu_src_s[3]),
        .I1(alu_src_t[3]),
        .I2(alu_src_t[2]),
        .I3(alu_src_s[2]),
        .O(rd_value2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    rd_value2_carry_i_4
       (.I0(alu_src_s[1]),
        .I1(alu_src_t[1]),
        .I2(alu_src_t[0]),
        .I3(alu_src_s[0]),
        .O(rd_value2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry_i_5
       (.I0(alu_src_t[7]),
        .I1(alu_src_s[7]),
        .I2(alu_src_t[6]),
        .I3(alu_src_s[6]),
        .O(rd_value2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry_i_6
       (.I0(alu_src_t[5]),
        .I1(alu_src_s[5]),
        .I2(alu_src_t[4]),
        .I3(alu_src_s[4]),
        .O(rd_value2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry_i_7
       (.I0(alu_src_t[3]),
        .I1(alu_src_s[3]),
        .I2(alu_src_t[2]),
        .I3(alu_src_s[2]),
        .O(rd_value2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    rd_value2_carry_i_8
       (.I0(alu_src_t[1]),
        .I1(alu_src_s[1]),
        .I2(alu_src_t[0]),
        .I3(alu_src_s[0]),
        .O(rd_value2_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \rd_value[0]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[0]_INST_0_i_1_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(\rd_value[0]_INST_0_i_2_n_0 ),
        .I4(\alu_op_reg_n_0_[4] ),
        .I5(\rd_value[0]_INST_0_i_3_n_0 ),
        .O(rd_value[0]));
  LUT6 #(
    .INIT(64'h17FF170017FF17FF)) 
    \rd_value[0]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(alu_src_t[0]),
        .I2(alu_src_s[0]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .I5(data9),
        .O(\rd_value[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEDE2DF7F)) 
    \rd_value[0]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(alu_src_s[0]),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(alu_src_t[0]),
        .I4(\alu_op_reg_n_0_[3] ),
        .O(\rd_value[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    \rd_value[0]_INST_0_i_3 
       (.I0(\rd_value[0]_INST_0_i_4_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(data0[0]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FC7073F3FF7C7F)) 
    \rd_value[0]_INST_0_i_4 
       (.I0(alu_src_t[0]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(data1[0]),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(data0[0]),
        .O(\rd_value[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0101015151510151)) 
    \rd_value[10]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[10]_INST_0_i_1_n_0 ),
        .I2(\alu_op_reg_n_0_[4] ),
        .I3(\rd_value[10]_INST_0_i_2_n_0 ),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[10]_INST_0_i_3_n_0 ),
        .O(rd_value[10]));
  LUT6 #(
    .INIT(64'hCCFF877F8B7FF3FF)) 
    \rd_value[10]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(alu_src_s[10]),
        .I5(alu_src_t[10]),
        .O(\rd_value[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \rd_value[10]_INST_0_i_2 
       (.I0(data0[10]),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FC7073F3FF7C7F)) 
    \rd_value[10]_INST_0_i_3 
       (.I0(alu_src_t[10]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(data1[10]),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(data0[10]),
        .O(\rd_value[10]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[10]_INST_0_i_4 
       (.I0(\imm_reg_n_0_[10] ),
        .I1(alu_src),
        .I2(write_data[10]),
        .O(alu_src_t[10]));
  LUT5 #(
    .INIT(32'h00545555)) 
    \rd_value[11]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[11]_INST_0_i_1_n_0 ),
        .I2(\rd_value[11]_INST_0_i_2_n_0 ),
        .I3(\rd_value[11]_INST_0_i_3_n_0 ),
        .I4(\rd_value[11]_INST_0_i_4_n_0 ),
        .O(rd_value[11]));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[11]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[11]),
        .I4(alu_src_s[11]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5510551055105555)) 
    \rd_value[11]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[11]_INST_0_i_6_n_0 ),
        .I2(\rd_value[31]_INST_0_i_8_n_0 ),
        .I3(\rd_value[11]_INST_0_i_7_n_0 ),
        .I4(\rd_value[31]_INST_0_i_11_n_0 ),
        .I5(\rd_value[12]_INST_0_i_7_n_0 ),
        .O(\rd_value[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAFBFBFFF)) 
    \rd_value[11]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(alu_src_s[11]),
        .I4(alu_src_t[11]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF00DFFFFFFFFF)) 
    \rd_value[11]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(data0[11]),
        .I3(\alu_op_reg_n_0_[1] ),
        .I4(\rd_value[11]_INST_0_i_8_n_0 ),
        .I5(\alu_op_reg_n_0_[4] ),
        .O(\rd_value[11]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[11]_INST_0_i_5 
       (.I0(\imm_reg_n_0_[11] ),
        .I1(alu_src),
        .I2(write_data[11]),
        .O(alu_src_t[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[11]_INST_0_i_6 
       (.I0(\rd_value[13]_INST_0_i_9_n_0 ),
        .I1(data6[1]),
        .I2(\rd_value[11]_INST_0_i_9_n_0 ),
        .O(\rd_value[11]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[11]_INST_0_i_7 
       (.I0(alu_src_s[11]),
        .I1(alu_src_t[11]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0FC7073F3FF7C7F)) 
    \rd_value[11]_INST_0_i_8 
       (.I0(alu_src_t[11]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(data1[11]),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(data0[11]),
        .O(\rd_value[11]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEEEFFFEF)) 
    \rd_value[11]_INST_0_i_9 
       (.I0(alu_src_t[4]),
        .I1(alu_src_t[2]),
        .I2(alu_src_t[8]),
        .I3(alu_src_t[3]),
        .I4(alu_src_t[0]),
        .O(\rd_value[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \rd_value[12]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[12]_INST_0_i_1_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(\rd_value[12]_INST_0_i_2_n_0 ),
        .I4(\alu_op_reg_n_0_[4] ),
        .I5(\rd_value[12]_INST_0_i_3_n_0 ),
        .O(rd_value[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h577F)) 
    \rd_value[12]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(alu_src_t[12]),
        .I2(alu_src_s[12]),
        .I3(\alu_op_reg_n_0_[0] ),
        .O(\rd_value[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFB0B0B0BFB0BFB0)) 
    \rd_value[12]_INST_0_i_2 
       (.I0(\rd_value[22]_INST_0_i_5_n_0 ),
        .I1(\rd_value[12]_INST_0_i_5_n_0 ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\rd_value[12]_INST_0_i_6_n_0 ),
        .I4(\rd_value[12]_INST_0_i_7_n_0 ),
        .I5(\rd_value[31]_INST_0_i_8_n_0 ),
        .O(\rd_value[12]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    \rd_value[12]_INST_0_i_3 
       (.I0(\rd_value[12]_INST_0_i_8_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(data0[12]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[12]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[12]_INST_0_i_4 
       (.I0(\imm_reg_n_0_[12] ),
        .I1(alu_src),
        .I2(write_data[12]),
        .O(alu_src_t[12]));
  LUT6 #(
    .INIT(64'hA5A556A6AAAA56A6)) 
    \rd_value[12]_INST_0_i_5 
       (.I0(alu_src_t[12]),
        .I1(rs[12]),
        .I2(rs_forward[1]),
        .I3(alu_result_back[12]),
        .I4(rs_forward[0]),
        .I5(write_back_data[12]),
        .O(\rd_value[12]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hCAFF)) 
    \rd_value[12]_INST_0_i_6 
       (.I0(alu_src_t[12]),
        .I1(alu_src_s[12]),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(\alu_op_reg_n_0_[3] ),
        .O(\rd_value[12]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[12]_INST_0_i_7 
       (.I0(\rd_value[14]_INST_0_i_9_n_0 ),
        .I1(data6[1]),
        .I2(\rd_value[12]_INST_0_i_9_n_0 ),
        .O(\rd_value[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0FC7073F3FF7C7F)) 
    \rd_value[12]_INST_0_i_8 
       (.I0(alu_src_t[12]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(data1[12]),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(data0[12]),
        .O(\rd_value[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF053FFFFFF53)) 
    \rd_value[12]_INST_0_i_9 
       (.I0(alu_src_t[1]),
        .I1(alu_src_t[9]),
        .I2(alu_src_t[3]),
        .I3(alu_src_t[2]),
        .I4(alu_src_t[4]),
        .I5(alu_src_t[5]),
        .O(\rd_value[12]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00545555)) 
    \rd_value[13]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[13]_INST_0_i_1_n_0 ),
        .I2(\rd_value[13]_INST_0_i_2_n_0 ),
        .I3(\rd_value[13]_INST_0_i_3_n_0 ),
        .I4(\rd_value[13]_INST_0_i_4_n_0 ),
        .O(rd_value[13]));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[13]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[13]),
        .I4(alu_src_s[13]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4544454445445555)) 
    \rd_value[13]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[13]_INST_0_i_6_n_0 ),
        .I2(\rd_value[13]_INST_0_i_7_n_0 ),
        .I3(\rd_value[31]_INST_0_i_8_n_0 ),
        .I4(\rd_value[31]_INST_0_i_11_n_0 ),
        .I5(\rd_value[14]_INST_0_i_7_n_0 ),
        .O(\rd_value[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAFBFBFFF)) 
    \rd_value[13]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(alu_src_s[13]),
        .I4(alu_src_t[13]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555DFFFFFFFDFFF)) 
    \rd_value[13]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(data0[13]),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[13]_INST_0_i_8_n_0 ),
        .O(\rd_value[13]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[13]_INST_0_i_5 
       (.I0(\imm_reg_n_0_[13] ),
        .I1(alu_src),
        .I2(write_data[13]),
        .O(alu_src_t[13]));
  LUT4 #(
    .INIT(16'h3500)) 
    \rd_value[13]_INST_0_i_6 
       (.I0(alu_src_t[13]),
        .I1(alu_src_s[13]),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(\alu_op_reg_n_0_[3] ),
        .O(\rd_value[13]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[13]_INST_0_i_7 
       (.I0(\rd_value[15]_INST_0_i_9_n_0 ),
        .I1(data6[1]),
        .I2(\rd_value[13]_INST_0_i_9_n_0 ),
        .O(\rd_value[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00880088F3FCC030)) 
    \rd_value[13]_INST_0_i_8 
       (.I0(alu_src_t[13]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(data1[13]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(data0[13]),
        .I5(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[13]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEECF)) 
    \rd_value[13]_INST_0_i_9 
       (.I0(data6[6]),
        .I1(alu_src_t[4]),
        .I2(alu_src_t[10]),
        .I3(alu_src_t[2]),
        .I4(alu_src_t[3]),
        .O(\rd_value[13]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00545555)) 
    \rd_value[14]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[14]_INST_0_i_1_n_0 ),
        .I2(\rd_value[14]_INST_0_i_2_n_0 ),
        .I3(\rd_value[14]_INST_0_i_3_n_0 ),
        .I4(\rd_value[14]_INST_0_i_4_n_0 ),
        .O(rd_value[14]));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[14]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[14]),
        .I4(alu_src_s[14]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4544454445445555)) 
    \rd_value[14]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[14]_INST_0_i_6_n_0 ),
        .I2(\rd_value[14]_INST_0_i_7_n_0 ),
        .I3(\rd_value[31]_INST_0_i_8_n_0 ),
        .I4(\rd_value[31]_INST_0_i_11_n_0 ),
        .I5(\rd_value[15]_INST_0_i_7_n_0 ),
        .O(\rd_value[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAFBFBFFF)) 
    \rd_value[14]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(alu_src_s[14]),
        .I4(alu_src_t[14]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555DFFFFFFFDFFF)) 
    \rd_value[14]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(data0[14]),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[14]_INST_0_i_8_n_0 ),
        .O(\rd_value[14]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[14]_INST_0_i_5 
       (.I0(\imm_reg_n_0_[14] ),
        .I1(alu_src),
        .I2(write_data[14]),
        .O(alu_src_t[14]));
  LUT4 #(
    .INIT(16'h3500)) 
    \rd_value[14]_INST_0_i_6 
       (.I0(alu_src_t[14]),
        .I1(alu_src_s[14]),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(\alu_op_reg_n_0_[3] ),
        .O(\rd_value[14]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rd_value[14]_INST_0_i_7 
       (.I0(\rd_value[16]_INST_0_i_9_n_0 ),
        .I1(alu_src_t[2]),
        .I2(\rd_value[20]_INST_0_i_10_n_0 ),
        .I3(data6[1]),
        .I4(\rd_value[14]_INST_0_i_9_n_0 ),
        .O(\rd_value[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00880088F3FCC030)) 
    \rd_value[14]_INST_0_i_8 
       (.I0(alu_src_t[14]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(data1[14]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(data0[14]),
        .I5(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[14]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFCFCF4F7)) 
    \rd_value[14]_INST_0_i_9 
       (.I0(alu_src_t[7]),
        .I1(alu_src_t[2]),
        .I2(alu_src_t[4]),
        .I3(alu_src_t[11]),
        .I4(alu_src_t[3]),
        .O(\rd_value[14]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00545555)) 
    \rd_value[15]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[15]_INST_0_i_1_n_0 ),
        .I2(\rd_value[15]_INST_0_i_2_n_0 ),
        .I3(\rd_value[15]_INST_0_i_3_n_0 ),
        .I4(\rd_value[15]_INST_0_i_4_n_0 ),
        .O(rd_value[15]));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[15]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[15]),
        .I4(alu_src_s[15]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444544445545)) 
    \rd_value[15]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[15]_INST_0_i_6_n_0 ),
        .I2(\rd_value[16]_INST_0_i_6_n_0 ),
        .I3(alu_src_t[0]),
        .I4(\rd_value[30]_INST_0_i_8_n_0 ),
        .I5(\rd_value[15]_INST_0_i_7_n_0 ),
        .O(\rd_value[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAFBFBFFF)) 
    \rd_value[15]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(alu_src_s[15]),
        .I4(alu_src_t[15]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF00DFFFFFFFFF)) 
    \rd_value[15]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(data0[15]),
        .I3(\alu_op_reg_n_0_[1] ),
        .I4(\rd_value[15]_INST_0_i_8_n_0 ),
        .I5(\alu_op_reg_n_0_[4] ),
        .O(\rd_value[15]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[15]_INST_0_i_5 
       (.I0(\imm_reg_n_0_[15] ),
        .I1(alu_src),
        .I2(write_data[15]),
        .O(alu_src_t[15]));
  LUT4 #(
    .INIT(16'h3500)) 
    \rd_value[15]_INST_0_i_6 
       (.I0(alu_src_t[15]),
        .I1(alu_src_s[15]),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(\alu_op_reg_n_0_[3] ),
        .O(\rd_value[15]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[15]_INST_0_i_7 
       (.I0(\rd_value[17]_INST_0_i_10_n_0 ),
        .I1(data6[1]),
        .I2(\rd_value[15]_INST_0_i_9_n_0 ),
        .O(\rd_value[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0FC7073F3FF7C7F)) 
    \rd_value[15]_INST_0_i_8 
       (.I0(alu_src_t[15]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(data1[15]),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(data0[15]),
        .O(\rd_value[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5FFFFF3F3F0FF)) 
    \rd_value[15]_INST_0_i_9 
       (.I0(alu_src_t[0]),
        .I1(alu_src_t[8]),
        .I2(alu_src_t[4]),
        .I3(alu_src_t[12]),
        .I4(alu_src_t[2]),
        .I5(alu_src_t[3]),
        .O(\rd_value[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF8A)) 
    \rd_value[16]_INST_0 
       (.I0(\rd_value[16]_INST_0_i_1_n_0 ),
        .I1(\rd_value[16]_INST_0_i_2_n_0 ),
        .I2(\rd_value[16]_INST_0_i_3_n_0 ),
        .I3(\alu_op_reg_n_0_[4] ),
        .I4(\rd_value[16]_INST_0_i_4_n_0 ),
        .I5(alu_op),
        .O(rd_value[16]));
  LUT5 #(
    .INIT(32'hFEAAEAAA)) 
    \rd_value[16]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[1] ),
        .I1(alu_src_t[16]),
        .I2(alu_src_s[16]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[0] ),
        .O(\rd_value[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[16]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[16]),
        .I4(alu_src_s[16]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFAAEFAAEFAAAA)) 
    \rd_value[16]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[16]_INST_0_i_6_n_0 ),
        .I2(\rd_value[31]_INST_0_i_8_n_0 ),
        .I3(\rd_value[16]_INST_0_i_7_n_0 ),
        .I4(\rd_value[31]_INST_0_i_11_n_0 ),
        .I5(\rd_value[17]_INST_0_i_6_n_0 ),
        .O(\rd_value[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00008AAAAAAA8AAA)) 
    \rd_value[16]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(data0[16]),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[16]_INST_0_i_8_n_0 ),
        .O(\rd_value[16]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[16]_INST_0_i_5 
       (.I0(\imm_reg_n_0_[16] ),
        .I1(alu_src),
        .I2(write_data[16]),
        .O(alu_src_t[16]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rd_value[16]_INST_0_i_6 
       (.I0(\rd_value[18]_INST_0_i_9_n_0 ),
        .I1(data6[1]),
        .I2(\rd_value[16]_INST_0_i_9_n_0 ),
        .I3(alu_src_t[2]),
        .I4(\rd_value[20]_INST_0_i_10_n_0 ),
        .O(\rd_value[16]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[16]_INST_0_i_7 
       (.I0(alu_src_s[16]),
        .I1(alu_src_t[16]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[16]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h55E400D800E400D8)) 
    \rd_value[16]_INST_0_i_8 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(data0[16]),
        .I2(data1[16]),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(alu_src_t[0]),
        .O(\rd_value[16]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \rd_value[16]_INST_0_i_9 
       (.I0(alu_src_t[1]),
        .I1(alu_src_t[3]),
        .I2(alu_src_t[4]),
        .I3(alu_src_t[9]),
        .O(\rd_value[16]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF8A)) 
    \rd_value[17]_INST_0 
       (.I0(\rd_value[17]_INST_0_i_1_n_0 ),
        .I1(\rd_value[17]_INST_0_i_2_n_0 ),
        .I2(\rd_value[17]_INST_0_i_3_n_0 ),
        .I3(\alu_op_reg_n_0_[4] ),
        .I4(\rd_value[17]_INST_0_i_4_n_0 ),
        .I5(alu_op),
        .O(rd_value[17]));
  LUT5 #(
    .INIT(32'hFEAAEAAA)) 
    \rd_value[17]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[1] ),
        .I1(alu_src_t[17]),
        .I2(alu_src_s[17]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[0] ),
        .O(\rd_value[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0344FFFF0377)) 
    \rd_value[17]_INST_0_i_10 
       (.I0(alu_src_t[10]),
        .I1(alu_src_t[2]),
        .I2(alu_src_t[6]),
        .I3(alu_src_t[3]),
        .I4(alu_src_t[4]),
        .I5(alu_src_t[14]),
        .O(\rd_value[17]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[17]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[17]),
        .I4(alu_src_s[17]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFAAEFAAEFAAAA)) 
    \rd_value[17]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[17]_INST_0_i_6_n_0 ),
        .I2(\rd_value[31]_INST_0_i_8_n_0 ),
        .I3(\rd_value[17]_INST_0_i_7_n_0 ),
        .I4(\rd_value[31]_INST_0_i_11_n_0 ),
        .I5(\rd_value[18]_INST_0_i_6_n_0 ),
        .O(\rd_value[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00008AAAAAAA8AAA)) 
    \rd_value[17]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(data0[17]),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[17]_INST_0_i_8_n_0 ),
        .O(\rd_value[17]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[17]_INST_0_i_5 
       (.I0(\imm_reg_n_0_[17] ),
        .I1(alu_src),
        .I2(write_data[17]),
        .O(alu_src_t[17]));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \rd_value[17]_INST_0_i_6 
       (.I0(alu_src_t[3]),
        .I1(\rd_value[17]_INST_0_i_9_n_0 ),
        .I2(alu_src_t[2]),
        .I3(\rd_value[23]_INST_0_i_9_n_0 ),
        .I4(data6[1]),
        .I5(\rd_value[17]_INST_0_i_10_n_0 ),
        .O(\rd_value[17]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[17]_INST_0_i_7 
       (.I0(alu_src_s[17]),
        .I1(alu_src_t[17]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[17]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h55E400D800E400D8)) 
    \rd_value[17]_INST_0_i_8 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(data0[17]),
        .I2(data1[17]),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(alu_src_t[1]),
        .O(\rd_value[17]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rd_value[17]_INST_0_i_9 
       (.I0(alu_src_t[4]),
        .I1(alu_src_t[12]),
        .O(\rd_value[17]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \rd_value[18]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[18]_INST_0_i_1_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(\rd_value[18]_INST_0_i_2_n_0 ),
        .I4(\alu_op_reg_n_0_[4] ),
        .I5(\rd_value[18]_INST_0_i_3_n_0 ),
        .O(rd_value[18]));
  LUT4 #(
    .INIT(16'h577F)) 
    \rd_value[18]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(alu_src_t[18]),
        .I2(alu_src_s[18]),
        .I3(\alu_op_reg_n_0_[0] ),
        .O(\rd_value[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBBBBB)) 
    \rd_value[18]_INST_0_i_2 
       (.I0(\rd_value[18]_INST_0_i_5_n_0 ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\rd_value[18]_INST_0_i_6_n_0 ),
        .I3(alu_src_t[0]),
        .I4(\rd_value[25]_INST_0_i_6_n_0 ),
        .I5(\rd_value[18]_INST_0_i_7_n_0 ),
        .O(\rd_value[18]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    \rd_value[18]_INST_0_i_3 
       (.I0(\rd_value[18]_INST_0_i_8_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(data0[18]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[18]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[18]_INST_0_i_4 
       (.I0(\imm_reg_n_0_[18] ),
        .I1(alu_src),
        .I2(write_data[18]),
        .O(alu_src_t[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF99F)) 
    \rd_value[18]_INST_0_i_5 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(alu_src_s[18]),
        .I3(alu_src_t[18]),
        .O(\rd_value[18]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rd_value[18]_INST_0_i_6 
       (.I0(\rd_value[20]_INST_0_i_10_n_0 ),
        .I1(alu_src_t[2]),
        .I2(\rd_value[24]_INST_0_i_10_n_0 ),
        .I3(data6[1]),
        .I4(\rd_value[18]_INST_0_i_9_n_0 ),
        .O(\rd_value[18]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[18]_INST_0_i_7 
       (.I0(alu_src_s[18]),
        .I1(alu_src_t[18]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[18]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h89AECDBFABAEEFBF)) 
    \rd_value[18]_INST_0_i_8 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(data0[18]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(data1[18]),
        .I5(alu_src_t[2]),
        .O(\rd_value[18]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0344FFFF0377)) 
    \rd_value[18]_INST_0_i_9 
       (.I0(alu_src_t[11]),
        .I1(alu_src_t[2]),
        .I2(alu_src_t[7]),
        .I3(alu_src_t[3]),
        .I4(alu_src_t[4]),
        .I5(alu_src_t[15]),
        .O(\rd_value[18]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h000000F2)) 
    \rd_value[19]_INST_0 
       (.I0(\rd_value[19]_INST_0_i_1_n_0 ),
        .I1(\rd_value[19]_INST_0_i_2_n_0 ),
        .I2(\alu_op_reg_n_0_[4] ),
        .I3(\rd_value[19]_INST_0_i_3_n_0 ),
        .I4(alu_op),
        .O(rd_value[19]));
  LUT5 #(
    .INIT(32'hFEAAEAAA)) 
    \rd_value[19]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[1] ),
        .I1(alu_src_t[19]),
        .I2(alu_src_s[19]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[0] ),
        .O(\rd_value[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF3302)) 
    \rd_value[19]_INST_0_i_2 
       (.I0(\rd_value[31]_INST_0_i_11_n_0 ),
        .I1(\rd_value[19]_INST_0_i_5_n_0 ),
        .I2(\rd_value[31]_INST_0_i_8_n_0 ),
        .I3(\rd_value[20]_INST_0_i_6_n_0 ),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(\rd_value[19]_INST_0_i_6_n_0 ),
        .O(\rd_value[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00008AAAAAAA8AAA)) 
    \rd_value[19]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(data0[19]),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[19]_INST_0_i_7_n_0 ),
        .O(\rd_value[19]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[19]_INST_0_i_4 
       (.I0(\imm_reg_n_0_[19] ),
        .I1(alu_src),
        .I2(write_data[19]),
        .O(alu_src_t[19]));
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[19]_INST_0_i_5 
       (.I0(alu_src_s[19]),
        .I1(alu_src_t[19]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[19]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[19]_INST_0_i_6 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[19]),
        .I4(alu_src_s[19]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[19]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h55E400D800E400D8)) 
    \rd_value[19]_INST_0_i_7 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(data0[19]),
        .I2(data1[19]),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(alu_src_t[3]),
        .O(\rd_value[19]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \rd_value[1]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[1]_INST_0_i_1_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(\rd_value[1]_INST_0_i_2_n_0 ),
        .I4(\alu_op_reg_n_0_[4] ),
        .I5(\rd_value[1]_INST_0_i_3_n_0 ),
        .O(rd_value[1]));
  LUT4 #(
    .INIT(16'h577F)) 
    \rd_value[1]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(alu_src_t[1]),
        .I2(alu_src_s[1]),
        .I3(\alu_op_reg_n_0_[0] ),
        .O(\rd_value[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888BBBBBBB8)) 
    \rd_value[1]_INST_0_i_2 
       (.I0(\rd_value[1]_INST_0_i_4_n_0 ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\rd_value[30]_INST_0_i_8_n_0 ),
        .I3(\rd_value[1]_INST_0_i_5_n_0 ),
        .I4(\rd_value[1]_INST_0_i_6_n_0 ),
        .I5(\rd_value[1]_INST_0_i_7_n_0 ),
        .O(\rd_value[1]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    \rd_value[1]_INST_0_i_3 
       (.I0(\rd_value[1]_INST_0_i_8_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(data0[1]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[1]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF99F)) 
    \rd_value[1]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(alu_src_s[1]),
        .I3(alu_src_t[1]),
        .O(\rd_value[1]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \rd_value[1]_INST_0_i_5 
       (.I0(data6[1]),
        .I1(alu_src_t[3]),
        .I2(alu_src_t[2]),
        .O(\rd_value[1]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rd_value[1]_INST_0_i_6 
       (.I0(alu_src_t[4]),
        .I1(alu_src_t[0]),
        .O(\rd_value[1]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[1]_INST_0_i_7 
       (.I0(alu_src_s[1]),
        .I1(alu_src_t[1]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0FC7073F3FF7C7F)) 
    \rd_value[1]_INST_0_i_8 
       (.I0(alu_src_t[1]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(data1[1]),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(data0[1]),
        .O(\rd_value[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF8A)) 
    \rd_value[20]_INST_0 
       (.I0(\rd_value[20]_INST_0_i_1_n_0 ),
        .I1(\rd_value[20]_INST_0_i_2_n_0 ),
        .I2(\rd_value[20]_INST_0_i_3_n_0 ),
        .I3(\alu_op_reg_n_0_[4] ),
        .I4(\rd_value[20]_INST_0_i_4_n_0 ),
        .I5(alu_op),
        .O(rd_value[20]));
  LUT5 #(
    .INIT(32'hFEAAEAAA)) 
    \rd_value[20]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[1] ),
        .I1(alu_src_t[20]),
        .I2(alu_src_s[20]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[0] ),
        .O(\rd_value[20]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF4F7)) 
    \rd_value[20]_INST_0_i_10 
       (.I0(alu_src_t[5]),
        .I1(alu_src_t[3]),
        .I2(alu_src_t[4]),
        .I3(alu_src_t[13]),
        .O(\rd_value[20]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[20]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[20]),
        .I4(alu_src_s[20]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFAAEFAAEFAAAA)) 
    \rd_value[20]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[20]_INST_0_i_6_n_0 ),
        .I2(\rd_value[31]_INST_0_i_8_n_0 ),
        .I3(\rd_value[20]_INST_0_i_7_n_0 ),
        .I4(\rd_value[31]_INST_0_i_11_n_0 ),
        .I5(\rd_value[21]_INST_0_i_6_n_0 ),
        .O(\rd_value[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00008AAAAAAA8AAA)) 
    \rd_value[20]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(data0[20]),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[20]_INST_0_i_8_n_0 ),
        .O(\rd_value[20]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[20]_INST_0_i_5 
       (.I0(\imm_reg_n_0_[20] ),
        .I1(alu_src),
        .I2(write_data[20]),
        .O(alu_src_t[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_value[20]_INST_0_i_6 
       (.I0(\rd_value[20]_INST_0_i_9_n_0 ),
        .I1(\rd_value[24]_INST_0_i_9_n_0 ),
        .I2(data6[1]),
        .I3(\rd_value[20]_INST_0_i_10_n_0 ),
        .I4(alu_src_t[2]),
        .I5(\rd_value[24]_INST_0_i_10_n_0 ),
        .O(\rd_value[20]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[20]_INST_0_i_7 
       (.I0(alu_src_s[20]),
        .I1(alu_src_t[20]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[20]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h55E400D800E400D8)) 
    \rd_value[20]_INST_0_i_8 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(data0[20]),
        .I2(data1[20]),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(alu_src_t[4]),
        .O(\rd_value[20]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \rd_value[20]_INST_0_i_9 
       (.I0(alu_src_t[7]),
        .I1(alu_src_t[3]),
        .I2(alu_src_t[4]),
        .I3(alu_src_t[15]),
        .O(\rd_value[20]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \rd_value[21]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[21]_INST_0_i_1_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(\rd_value[21]_INST_0_i_2_n_0 ),
        .I4(\alu_op_reg_n_0_[4] ),
        .I5(\rd_value[21]_INST_0_i_3_n_0 ),
        .O(rd_value[21]));
  LUT4 #(
    .INIT(16'h577F)) 
    \rd_value[21]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(alu_src_t[21]),
        .I2(alu_src_s[21]),
        .I3(\alu_op_reg_n_0_[0] ),
        .O(\rd_value[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBBBBB)) 
    \rd_value[21]_INST_0_i_2 
       (.I0(\rd_value[21]_INST_0_i_5_n_0 ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\rd_value[21]_INST_0_i_6_n_0 ),
        .I3(alu_src_t[0]),
        .I4(\rd_value[25]_INST_0_i_6_n_0 ),
        .I5(\rd_value[21]_INST_0_i_7_n_0 ),
        .O(\rd_value[21]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    \rd_value[21]_INST_0_i_3 
       (.I0(\rd_value[21]_INST_0_i_8_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(data0[21]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[21]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_value[21]_INST_0_i_4 
       (.I0(write_data[21]),
        .I1(\imm_reg_n_0_[21] ),
        .I2(alu_src),
        .O(alu_src_t[21]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF99F)) 
    \rd_value[21]_INST_0_i_5 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(alu_src_s[21]),
        .I3(alu_src_t[21]),
        .O(\rd_value[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_value[21]_INST_0_i_6 
       (.I0(\rd_value[23]_INST_0_i_9_n_0 ),
        .I1(\rd_value[27]_INST_0_i_9_n_0 ),
        .I2(data6[1]),
        .I3(\rd_value[21]_INST_0_i_9_n_0 ),
        .I4(alu_src_t[2]),
        .I5(\rd_value[25]_INST_0_i_10_n_0 ),
        .O(\rd_value[21]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[21]_INST_0_i_7 
       (.I0(alu_src_s[21]),
        .I1(alu_src_t[21]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[21]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h89AECDBFABAEEFBF)) 
    \rd_value[21]_INST_0_i_8 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(data0[21]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(data1[21]),
        .I5(alu_src_t[5]),
        .O(\rd_value[21]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF4F7)) 
    \rd_value[21]_INST_0_i_9 
       (.I0(alu_src_t[6]),
        .I1(alu_src_t[3]),
        .I2(alu_src_t[4]),
        .I3(alu_src_t[14]),
        .O(\rd_value[21]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \rd_value[22]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[22]_INST_0_i_1_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(\rd_value[22]_INST_0_i_2_n_0 ),
        .I4(\alu_op_reg_n_0_[4] ),
        .I5(\rd_value[22]_INST_0_i_3_n_0 ),
        .O(rd_value[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h577F)) 
    \rd_value[22]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(alu_src_t[22]),
        .I2(alu_src_s[22]),
        .I3(\alu_op_reg_n_0_[0] ),
        .O(\rd_value[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0BFBFBFB0)) 
    \rd_value[22]_INST_0_i_2 
       (.I0(\rd_value[22]_INST_0_i_5_n_0 ),
        .I1(\rd_value[22]_INST_0_i_6_n_0 ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\rd_value[23]_INST_0_i_7_n_0 ),
        .I4(\rd_value[31]_INST_0_i_11_n_0 ),
        .I5(\rd_value[22]_INST_0_i_7_n_0 ),
        .O(\rd_value[22]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    \rd_value[22]_INST_0_i_3 
       (.I0(\rd_value[22]_INST_0_i_8_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(data0[22]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[22]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_value[22]_INST_0_i_4 
       (.I0(write_data[22]),
        .I1(\imm_reg_n_0_[22] ),
        .I2(alu_src),
        .O(alu_src_t[22]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \rd_value[22]_INST_0_i_5 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .O(\rd_value[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA5A556A6AAAA56A6)) 
    \rd_value[22]_INST_0_i_6 
       (.I0(alu_src_t[22]),
        .I1(rs[22]),
        .I2(rs_forward[1]),
        .I3(alu_result_back[22]),
        .I4(rs_forward[0]),
        .I5(write_back_data[22]),
        .O(\rd_value[22]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[22]_INST_0_i_7 
       (.I0(alu_src_s[22]),
        .I1(alu_src_t[22]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[22]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h89AECDBFABAEEFBF)) 
    \rd_value[22]_INST_0_i_8 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(data0[22]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(data1[22]),
        .I5(alu_src_t[6]),
        .O(\rd_value[22]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h44445455)) 
    \rd_value[23]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[23]_INST_0_i_1_n_0 ),
        .I2(\rd_value[23]_INST_0_i_2_n_0 ),
        .I3(\rd_value[23]_INST_0_i_3_n_0 ),
        .I4(\rd_value[23]_INST_0_i_4_n_0 ),
        .O(rd_value[23]));
  LUT6 #(
    .INIT(64'h00000800AAAA0800)) 
    \rd_value[23]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(data0[23]),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[23]_INST_0_i_5_n_0 ),
        .O(\rd_value[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[23]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[23]),
        .I4(alu_src_s[23]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFAAEFAAEFAAAA)) 
    \rd_value[23]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[23]_INST_0_i_7_n_0 ),
        .I2(\rd_value[31]_INST_0_i_8_n_0 ),
        .I3(\rd_value[23]_INST_0_i_8_n_0 ),
        .I4(\rd_value[31]_INST_0_i_11_n_0 ),
        .I5(\rd_value[24]_INST_0_i_7_n_0 ),
        .O(\rd_value[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAFBFBFFF)) 
    \rd_value[23]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(alu_src_s[23]),
        .I4(alu_src_t[23]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h89AECDBFABAEEFBF)) 
    \rd_value[23]_INST_0_i_5 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(data0[23]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(data1[23]),
        .I5(alu_src_t[7]),
        .O(\rd_value[23]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[23]_INST_0_i_6 
       (.I0(\imm_reg_n_0_[23] ),
        .I1(alu_src),
        .I2(write_data[23]),
        .O(alu_src_t[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_value[23]_INST_0_i_7 
       (.I0(\rd_value[25]_INST_0_i_10_n_0 ),
        .I1(\rd_value[29]_INST_0_i_9_n_0 ),
        .I2(data6[1]),
        .I3(\rd_value[23]_INST_0_i_9_n_0 ),
        .I4(alu_src_t[2]),
        .I5(\rd_value[27]_INST_0_i_9_n_0 ),
        .O(\rd_value[23]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[23]_INST_0_i_8 
       (.I0(alu_src_s[23]),
        .I1(alu_src_t[23]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[23]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFC77FC44)) 
    \rd_value[23]_INST_0_i_9 
       (.I0(alu_src_t[8]),
        .I1(alu_src_t[3]),
        .I2(data6[0]),
        .I3(alu_src_t[4]),
        .I4(data6[16]),
        .O(\rd_value[23]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h44445455)) 
    \rd_value[24]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[24]_INST_0_i_1_n_0 ),
        .I2(\rd_value[24]_INST_0_i_2_n_0 ),
        .I3(\rd_value[24]_INST_0_i_3_n_0 ),
        .I4(\rd_value[24]_INST_0_i_4_n_0 ),
        .O(rd_value[24]));
  LUT6 #(
    .INIT(64'h00000800AAAA0800)) 
    \rd_value[24]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(data0[24]),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[24]_INST_0_i_5_n_0 ),
        .O(\rd_value[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFC77FC44)) 
    \rd_value[24]_INST_0_i_10 
       (.I0(alu_src_t[9]),
        .I1(alu_src_t[3]),
        .I2(data6[1]),
        .I3(alu_src_t[4]),
        .I4(data6[17]),
        .O(\rd_value[24]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[24]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[24]),
        .I4(alu_src_s[24]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFAAEFAAEFAAAA)) 
    \rd_value[24]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[24]_INST_0_i_7_n_0 ),
        .I2(\rd_value[31]_INST_0_i_8_n_0 ),
        .I3(\rd_value[24]_INST_0_i_8_n_0 ),
        .I4(\rd_value[31]_INST_0_i_11_n_0 ),
        .I5(\rd_value[25]_INST_0_i_5_n_0 ),
        .O(\rd_value[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAFBFBFFF)) 
    \rd_value[24]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(alu_src_t[24]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(alu_src_s[24]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h89AECDBFABAEEFBF)) 
    \rd_value[24]_INST_0_i_5 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(data0[24]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(data1[24]),
        .I5(alu_src_t[8]),
        .O(\rd_value[24]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[24]_INST_0_i_6 
       (.I0(\imm_reg_n_0_[24] ),
        .I1(alu_src),
        .I2(write_data[24]),
        .O(alu_src_t[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_value[24]_INST_0_i_7 
       (.I0(\rd_value[24]_INST_0_i_9_n_0 ),
        .I1(\rd_value[30]_INST_0_i_13_n_0 ),
        .I2(data6[1]),
        .I3(\rd_value[24]_INST_0_i_10_n_0 ),
        .I4(alu_src_t[2]),
        .I5(\rd_value[28]_INST_0_i_9_n_0 ),
        .O(\rd_value[24]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[24]_INST_0_i_8 
       (.I0(alu_src_s[24]),
        .I1(alu_src_t[24]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[24]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \rd_value[24]_INST_0_i_9 
       (.I0(alu_src_t[11]),
        .I1(alu_src_t[3]),
        .I2(alu_src_t[4]),
        .I3(alu_src_t[19]),
        .O(\rd_value[24]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \rd_value[25]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[25]_INST_0_i_1_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(\rd_value[25]_INST_0_i_2_n_0 ),
        .I4(\alu_op_reg_n_0_[4] ),
        .I5(\rd_value[25]_INST_0_i_3_n_0 ),
        .O(rd_value[25]));
  LUT4 #(
    .INIT(16'h577F)) 
    \rd_value[25]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(alu_src_s[25]),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[25]),
        .O(\rd_value[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCF77CF44)) 
    \rd_value[25]_INST_0_i_10 
       (.I0(alu_src_t[10]),
        .I1(alu_src_t[3]),
        .I2(alu_src_t[2]),
        .I3(alu_src_t[4]),
        .I4(data6[18]),
        .O(\rd_value[25]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00BF)) 
    \rd_value[25]_INST_0_i_2 
       (.I0(\rd_value[25]_INST_0_i_5_n_0 ),
        .I1(alu_src_t[0]),
        .I2(\rd_value[25]_INST_0_i_6_n_0 ),
        .I3(\rd_value[25]_INST_0_i_7_n_0 ),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(\rd_value[25]_INST_0_i_8_n_0 ),
        .O(\rd_value[25]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    \rd_value[25]_INST_0_i_3 
       (.I0(\rd_value[25]_INST_0_i_9_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(data0[25]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[25]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[25]_INST_0_i_4 
       (.I0(\imm_reg_n_0_[25] ),
        .I1(alu_src),
        .I2(write_data[25]),
        .O(alu_src_t[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_value[25]_INST_0_i_5 
       (.I0(\rd_value[27]_INST_0_i_9_n_0 ),
        .I1(\rd_value[31]_INST_0_i_14_n_0 ),
        .I2(data6[1]),
        .I3(\rd_value[25]_INST_0_i_10_n_0 ),
        .I4(alu_src_t[2]),
        .I5(\rd_value[29]_INST_0_i_9_n_0 ),
        .O(\rd_value[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rd_value[25]_INST_0_i_6 
       (.I0(\rd_value[31]_INST_0_i_18_n_0 ),
        .I1(\rd_value[31]_INST_0_i_19_n_0 ),
        .I2(\rd_value[30]_INST_0_i_12_n_0 ),
        .I3(\rd_value[30]_INST_0_i_11_n_0 ),
        .I4(\rd_value[31]_INST_0_i_21_n_0 ),
        .I5(\alu_op_reg_n_0_[3] ),
        .O(\rd_value[25]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[25]_INST_0_i_7 
       (.I0(alu_src_s[25]),
        .I1(alu_src_t[25]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[25]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00606000)) 
    \rd_value[25]_INST_0_i_8 
       (.I0(alu_src_s[25]),
        .I1(alu_src_t[25]),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[3] ),
        .O(\rd_value[25]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h89AECDBFABAEEFBF)) 
    \rd_value[25]_INST_0_i_9 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(data0[25]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(data1[25]),
        .I5(alu_src_t[9]),
        .O(\rd_value[25]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \rd_value[26]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[26]_INST_0_i_1_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(\rd_value[26]_INST_0_i_2_n_0 ),
        .I4(\alu_op_reg_n_0_[4] ),
        .I5(\rd_value[26]_INST_0_i_3_n_0 ),
        .O(rd_value[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h577F)) 
    \rd_value[26]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(alu_src_s[26]),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[26]),
        .O(\rd_value[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0EFF0EFF0E0000)) 
    \rd_value[26]_INST_0_i_2 
       (.I0(\rd_value[27]_INST_0_i_7_n_0 ),
        .I1(\rd_value[31]_INST_0_i_11_n_0 ),
        .I2(\rd_value[26]_INST_0_i_5_n_0 ),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(\rd_value[26]_INST_0_i_6_n_0 ),
        .I5(\rd_value[26]_INST_0_i_7_n_0 ),
        .O(\rd_value[26]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    \rd_value[26]_INST_0_i_3 
       (.I0(\rd_value[26]_INST_0_i_8_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(data0[26]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[26]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[26]_INST_0_i_4 
       (.I0(\imm_reg_n_0_[26] ),
        .I1(alu_src),
        .I2(write_data[26]),
        .O(alu_src_t[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[26]_INST_0_i_5 
       (.I0(alu_src_s[26]),
        .I1(alu_src_t[26]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[26]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h9F)) 
    \rd_value[26]_INST_0_i_6 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .O(\rd_value[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5A5AA9595555A959)) 
    \rd_value[26]_INST_0_i_7 
       (.I0(alu_src_t[26]),
        .I1(rs[26]),
        .I2(rs_forward[1]),
        .I3(alu_result_back[26]),
        .I4(rs_forward[0]),
        .I5(write_back_data[26]),
        .O(\rd_value[26]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h89AECDBFABAEEFBF)) 
    \rd_value[26]_INST_0_i_8 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(data0[26]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(data1[26]),
        .I5(alu_src_t[10]),
        .O(\rd_value[26]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h44445455)) 
    \rd_value[27]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[27]_INST_0_i_1_n_0 ),
        .I2(\rd_value[27]_INST_0_i_2_n_0 ),
        .I3(\rd_value[27]_INST_0_i_3_n_0 ),
        .I4(\rd_value[27]_INST_0_i_4_n_0 ),
        .O(rd_value[27]));
  LUT6 #(
    .INIT(64'h00000800AAAA0800)) 
    \rd_value[27]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(data0[27]),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[27]_INST_0_i_5_n_0 ),
        .O(\rd_value[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[27]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[27]),
        .I4(alu_src_s[27]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFAAEFAAEFAAAA)) 
    \rd_value[27]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[27]_INST_0_i_7_n_0 ),
        .I2(\rd_value[31]_INST_0_i_8_n_0 ),
        .I3(\rd_value[27]_INST_0_i_8_n_0 ),
        .I4(\rd_value[31]_INST_0_i_11_n_0 ),
        .I5(\rd_value[28]_INST_0_i_8_n_0 ),
        .O(\rd_value[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAFBFBFFF)) 
    \rd_value[27]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(alu_src_t[27]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(alu_src_s[27]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h89AECDBFABAEEFBF)) 
    \rd_value[27]_INST_0_i_5 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(data0[27]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(data1[27]),
        .I5(alu_src_t[11]),
        .O(\rd_value[27]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[27]_INST_0_i_6 
       (.I0(\imm_reg_n_0_[27] ),
        .I1(alu_src),
        .I2(write_data[27]),
        .O(alu_src_t[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_value[27]_INST_0_i_7 
       (.I0(\rd_value[29]_INST_0_i_9_n_0 ),
        .I1(\rd_value[31]_INST_0_i_16_n_0 ),
        .I2(data6[1]),
        .I3(\rd_value[27]_INST_0_i_9_n_0 ),
        .I4(alu_src_t[2]),
        .I5(\rd_value[31]_INST_0_i_14_n_0 ),
        .O(\rd_value[27]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[27]_INST_0_i_8 
       (.I0(alu_src_s[27]),
        .I1(alu_src_t[27]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[27]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hC4C7)) 
    \rd_value[27]_INST_0_i_9 
       (.I0(alu_src_t[12]),
        .I1(alu_src_t[3]),
        .I2(alu_src_t[4]),
        .I3(alu_src_t[20]),
        .O(\rd_value[27]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h44445455)) 
    \rd_value[28]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[28]_INST_0_i_1_n_0 ),
        .I2(\rd_value[28]_INST_0_i_2_n_0 ),
        .I3(\rd_value[28]_INST_0_i_3_n_0 ),
        .I4(\rd_value[28]_INST_0_i_4_n_0 ),
        .O(rd_value[28]));
  LUT6 #(
    .INIT(64'h00000800AAAA0800)) 
    \rd_value[28]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(data0[28]),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[28]_INST_0_i_5_n_0 ),
        .O(\rd_value[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[28]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[28]),
        .I4(alu_src_s[28]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABBBABBAAAA)) 
    \rd_value[28]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[28]_INST_0_i_7_n_0 ),
        .I2(\rd_value[28]_INST_0_i_8_n_0 ),
        .I3(\rd_value[31]_INST_0_i_8_n_0 ),
        .I4(\rd_value[31]_INST_0_i_11_n_0 ),
        .I5(\rd_value[29]_INST_0_i_7_n_0 ),
        .O(\rd_value[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBFBFFF)) 
    \rd_value[28]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(alu_src_t[28]),
        .I3(alu_src_s[28]),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h89AECDBFABAEEFBF)) 
    \rd_value[28]_INST_0_i_5 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(data0[28]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(data1[28]),
        .I5(alu_src_t[12]),
        .O(\rd_value[28]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_value[28]_INST_0_i_6 
       (.I0(write_data[28]),
        .I1(\imm_reg_n_0_[28] ),
        .I2(alu_src),
        .O(alu_src_t[28]));
  LUT4 #(
    .INIT(16'h3500)) 
    \rd_value[28]_INST_0_i_7 
       (.I0(alu_src_t[28]),
        .I1(alu_src_s[28]),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(\alu_op_reg_n_0_[3] ),
        .O(\rd_value[28]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_value[28]_INST_0_i_8 
       (.I0(\rd_value[30]_INST_0_i_13_n_0 ),
        .I1(\rd_value[31]_INST_0_i_24_n_0 ),
        .I2(data6[1]),
        .I3(\rd_value[28]_INST_0_i_9_n_0 ),
        .I4(alu_src_t[2]),
        .I5(\rd_value[31]_INST_0_i_22_n_0 ),
        .O(\rd_value[28]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFC44FC77)) 
    \rd_value[28]_INST_0_i_9 
       (.I0(alu_src_t[13]),
        .I1(alu_src_t[3]),
        .I2(data6[5]),
        .I3(alu_src_t[4]),
        .I4(alu_src_t[21]),
        .O(\rd_value[28]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h44445455)) 
    \rd_value[29]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[29]_INST_0_i_1_n_0 ),
        .I2(\rd_value[29]_INST_0_i_2_n_0 ),
        .I3(\rd_value[29]_INST_0_i_3_n_0 ),
        .I4(\rd_value[29]_INST_0_i_4_n_0 ),
        .O(rd_value[29]));
  LUT6 #(
    .INIT(64'h00000800AAAA0800)) 
    \rd_value[29]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(data0[29]),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[29]_INST_0_i_5_n_0 ),
        .O(\rd_value[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[29]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[29]),
        .I4(alu_src_s[29]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFAAEFAAEFAAAA)) 
    \rd_value[29]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[29]_INST_0_i_7_n_0 ),
        .I2(\rd_value[31]_INST_0_i_8_n_0 ),
        .I3(\rd_value[29]_INST_0_i_8_n_0 ),
        .I4(\rd_value[31]_INST_0_i_11_n_0 ),
        .I5(\rd_value[30]_INST_0_i_10_n_0 ),
        .O(\rd_value[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBFBFFF)) 
    \rd_value[29]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(alu_src_t[29]),
        .I3(alu_src_s[29]),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF530F35FF53FF35)) 
    \rd_value[29]_INST_0_i_5 
       (.I0(data1[29]),
        .I1(data0[29]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(alu_src_t[13]),
        .O(\rd_value[29]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_value[29]_INST_0_i_6 
       (.I0(write_data[29]),
        .I1(\imm_reg_n_0_[29] ),
        .I2(alu_src),
        .O(alu_src_t[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_value[29]_INST_0_i_7 
       (.I0(\rd_value[31]_INST_0_i_14_n_0 ),
        .I1(\rd_value[31]_INST_0_i_15_n_0 ),
        .I2(data6[1]),
        .I3(\rd_value[29]_INST_0_i_9_n_0 ),
        .I4(alu_src_t[2]),
        .I5(\rd_value[31]_INST_0_i_16_n_0 ),
        .O(\rd_value[29]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[29]_INST_0_i_8 
       (.I0(alu_src_s[29]),
        .I1(alu_src_t[29]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[29]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFC44FC77)) 
    \rd_value[29]_INST_0_i_9 
       (.I0(alu_src_t[14]),
        .I1(alu_src_t[3]),
        .I2(data6[6]),
        .I3(alu_src_t[4]),
        .I4(alu_src_t[22]),
        .O(\rd_value[29]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0101015151510151)) 
    \rd_value[2]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[2]_INST_0_i_1_n_0 ),
        .I2(\alu_op_reg_n_0_[4] ),
        .I3(\rd_value[2]_INST_0_i_2_n_0 ),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[2]_INST_0_i_3_n_0 ),
        .O(rd_value[2]));
  LUT6 #(
    .INIT(64'hCDD3B7FF859BFFFF)) 
    \rd_value[2]_INST_0_i_1 
       (.I0(alu_src_t[2]),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(alu_src_s[2]),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \rd_value[2]_INST_0_i_2 
       (.I0(data0[2]),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FC7073F3FF7C7F)) 
    \rd_value[2]_INST_0_i_3 
       (.I0(alu_src_t[2]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(data1[2]),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(data0[2]),
        .O(\rd_value[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h44445455)) 
    \rd_value[30]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[30]_INST_0_i_1_n_0 ),
        .I2(\rd_value[30]_INST_0_i_2_n_0 ),
        .I3(\rd_value[30]_INST_0_i_3_n_0 ),
        .I4(\rd_value[30]_INST_0_i_4_n_0 ),
        .O(rd_value[30]));
  LUT6 #(
    .INIT(64'h00000800AAAA0800)) 
    \rd_value[30]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(data0[30]),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[30]_INST_0_i_5_n_0 ),
        .O(\rd_value[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_value[30]_INST_0_i_10 
       (.I0(\rd_value[31]_INST_0_i_22_n_0 ),
        .I1(\rd_value[31]_INST_0_i_23_n_0 ),
        .I2(data6[1]),
        .I3(\rd_value[30]_INST_0_i_13_n_0 ),
        .I4(alu_src_t[2]),
        .I5(\rd_value[31]_INST_0_i_24_n_0 ),
        .O(\rd_value[30]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_value[30]_INST_0_i_11 
       (.I0(alu_src_t[10]),
        .I1(alu_src_t[8]),
        .I2(alu_src_t[26]),
        .I3(alu_src_t[9]),
        .O(\rd_value[30]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_value[30]_INST_0_i_12 
       (.I0(alu_src_t[20]),
        .I1(alu_src_t[19]),
        .I2(alu_src_t[27]),
        .I3(\rd_value[31]_INST_0_i_13_n_0 ),
        .O(\rd_value[30]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFC77FC44)) 
    \rd_value[30]_INST_0_i_13 
       (.I0(alu_src_t[15]),
        .I1(alu_src_t[3]),
        .I2(data6[7]),
        .I3(alu_src_t[4]),
        .I4(data6[23]),
        .O(\rd_value[30]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[30]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[30]),
        .I4(alu_src_s[30]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFEAAAAFFAE)) 
    \rd_value[30]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[31]_INST_0_i_7_n_0 ),
        .I2(alu_src_t[0]),
        .I3(\rd_value[30]_INST_0_i_8_n_0 ),
        .I4(\rd_value[30]_INST_0_i_9_n_0 ),
        .I5(\rd_value[30]_INST_0_i_10_n_0 ),
        .O(\rd_value[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAFBFBFFF)) 
    \rd_value[30]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(alu_src_t[30]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(alu_src_s[30]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[30]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h89AECDBFABAEEFBF)) 
    \rd_value[30]_INST_0_i_5 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(data0[30]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(data1[30]),
        .I5(alu_src_t[14]),
        .O(\rd_value[30]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[30]_INST_0_i_6 
       (.I0(\imm_reg_n_0_[30] ),
        .I1(alu_src),
        .I2(write_data[30]),
        .O(alu_src_t[30]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[30]_INST_0_i_7 
       (.I0(\imm_reg_n_0_[0] ),
        .I1(alu_src),
        .I2(write_data[0]),
        .O(alu_src_t[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rd_value[30]_INST_0_i_8 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\rd_value[31]_INST_0_i_21_n_0 ),
        .I2(\rd_value[30]_INST_0_i_11_n_0 ),
        .I3(\rd_value[30]_INST_0_i_12_n_0 ),
        .I4(\rd_value[31]_INST_0_i_19_n_0 ),
        .I5(\rd_value[31]_INST_0_i_18_n_0 ),
        .O(\rd_value[30]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[30]_INST_0_i_9 
       (.I0(alu_src_s[30]),
        .I1(alu_src_t[30]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[30]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h44445455)) 
    \rd_value[31]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[31]_INST_0_i_1_n_0 ),
        .I2(\rd_value[31]_INST_0_i_2_n_0 ),
        .I3(\rd_value[31]_INST_0_i_3_n_0 ),
        .I4(\rd_value[31]_INST_0_i_4_n_0 ),
        .O(rd_value[31]));
  LUT6 #(
    .INIT(64'h00000800AAAA0800)) 
    \rd_value[31]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(data0[31]),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(\rd_value[31]_INST_0_i_5_n_0 ),
        .O(\rd_value[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_value[31]_INST_0_i_10 
       (.I0(\rd_value[31]_INST_0_i_22_n_0 ),
        .I1(\rd_value[31]_INST_0_i_23_n_0 ),
        .I2(alu_src_t[1]),
        .I3(\rd_value[31]_INST_0_i_24_n_0 ),
        .I4(alu_src_t[2]),
        .I5(\rd_value[31]_INST_0_i_25_n_0 ),
        .O(\rd_value[31]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rd_value[31]_INST_0_i_11 
       (.I0(alu_src_t[0]),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(\rd_value[31]_INST_0_i_21_n_0 ),
        .I3(\rd_value[31]_INST_0_i_20_n_0 ),
        .I4(\rd_value[31]_INST_0_i_19_n_0 ),
        .I5(\rd_value[31]_INST_0_i_18_n_0 ),
        .O(\rd_value[31]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hCF44CF77)) 
    \rd_value[31]_INST_0_i_12 
       (.I0(write_back_data[31]),
        .I1(rs_forward[0]),
        .I2(alu_result_back[31]),
        .I3(rs_forward[1]),
        .I4(rs[31]),
        .O(\rd_value[31]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[31]_INST_0_i_13 
       (.I0(\imm_reg_n_0_[31] ),
        .I1(alu_src),
        .I2(write_data[31]),
        .O(\rd_value[31]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_value[31]_INST_0_i_14 
       (.I0(data6[0]),
        .I1(data6[16]),
        .I2(alu_src_t[3]),
        .I3(data6[8]),
        .I4(alu_src_t[4]),
        .I5(data6[24]),
        .O(\rd_value[31]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h30443077)) 
    \rd_value[31]_INST_0_i_15 
       (.I0(alu_src_t[20]),
        .I1(alu_src_t[3]),
        .I2(data6[12]),
        .I3(alu_src_t[4]),
        .I4(alu_src_t[28]),
        .O(\rd_value[31]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h505FC0C0505FCFCF)) 
    \rd_value[31]_INST_0_i_16 
       (.I0(alu_src_t[2]),
        .I1(data6[18]),
        .I2(alu_src_t[3]),
        .I3(alu_src_t[10]),
        .I4(alu_src_t[4]),
        .I5(alu_src_t[26]),
        .O(\rd_value[31]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3030A0AF3F3F)) 
    \rd_value[31]_INST_0_i_17 
       (.I0(data6[6]),
        .I1(alu_src_t[22]),
        .I2(alu_src_t[3]),
        .I3(alu_src_t[14]),
        .I4(alu_src_t[4]),
        .I5(alu_src_t[30]),
        .O(\rd_value[31]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rd_value[31]_INST_0_i_18 
       (.I0(\rd_value[31]_INST_0_i_31_n_0 ),
        .I1(alu_src_t[13]),
        .I2(alu_src_t[15]),
        .I3(alu_src_t[7]),
        .I4(alu_src_t[16]),
        .I5(\rd_value[31]_INST_0_i_32_n_0 ),
        .O(\rd_value[31]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rd_value[31]_INST_0_i_19 
       (.I0(alu_src_t[28]),
        .I1(alu_src_t[21]),
        .I2(alu_src_t[29]),
        .I3(alu_src_t[22]),
        .O(\rd_value[31]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6000FFFF)) 
    \rd_value[31]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\rd_value[31]_INST_0_i_6_n_0 ),
        .I4(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rd_value[31]_INST_0_i_20 
       (.I0(\rd_value[31]_INST_0_i_13_n_0 ),
        .I1(alu_src_t[27]),
        .I2(alu_src_t[19]),
        .I3(alu_src_t[20]),
        .I4(\rd_value[31]_INST_0_i_33_n_0 ),
        .I5(\rd_value[31]_INST_0_i_34_n_0 ),
        .O(\rd_value[31]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rd_value[31]_INST_0_i_21 
       (.I0(alu_src_t[11]),
        .I1(alu_src_t[14]),
        .I2(\rd_value[31]_INST_0_i_35_n_0 ),
        .I3(alu_src_t[6]),
        .I4(alu_src_t[12]),
        .I5(\rd_value[31]_INST_0_i_36_n_0 ),
        .O(\rd_value[31]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_value[31]_INST_0_i_22 
       (.I0(data6[1]),
        .I1(data6[17]),
        .I2(alu_src_t[3]),
        .I3(data6[9]),
        .I4(alu_src_t[4]),
        .I5(data6[25]),
        .O(\rd_value[31]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3030A0AF3F3F)) 
    \rd_value[31]_INST_0_i_23 
       (.I0(data6[5]),
        .I1(alu_src_t[21]),
        .I2(alu_src_t[3]),
        .I3(alu_src_t[13]),
        .I4(alu_src_t[4]),
        .I5(alu_src_t[29]),
        .O(\rd_value[31]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h03440377)) 
    \rd_value[31]_INST_0_i_24 
       (.I0(alu_src_t[19]),
        .I1(alu_src_t[3]),
        .I2(alu_src_t[11]),
        .I3(alu_src_t[4]),
        .I4(alu_src_t[27]),
        .O(\rd_value[31]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AFAFC0CFC0CF)) 
    \rd_value[31]_INST_0_i_25 
       (.I0(data6[7]),
        .I1(data6[23]),
        .I2(alu_src_t[3]),
        .I3(\rd_value[31]_INST_0_i_13_n_0 ),
        .I4(alu_src_t[15]),
        .I5(alu_src_t[4]),
        .O(\rd_value[31]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rd_value[31]_INST_0_i_26 
       (.I0(\imm_reg_n_0_[16] ),
        .I1(alu_src),
        .I2(write_data[16]),
        .O(data6[16]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rd_value[31]_INST_0_i_27 
       (.I0(\imm_reg_n_0_[8] ),
        .I1(alu_src),
        .I2(write_data[8]),
        .O(data6[8]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rd_value[31]_INST_0_i_28 
       (.I0(\imm_reg_n_0_[24] ),
        .I1(alu_src),
        .I2(write_data[24]),
        .O(data6[24]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rd_value[31]_INST_0_i_29 
       (.I0(\imm_reg_n_0_[12] ),
        .I1(alu_src),
        .I2(write_data[12]),
        .O(data6[12]));
  LUT6 #(
    .INIT(64'hAAEFAAEFAAEFAAAA)) 
    \rd_value[31]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[31]_INST_0_i_7_n_0 ),
        .I2(\rd_value[31]_INST_0_i_8_n_0 ),
        .I3(\rd_value[31]_INST_0_i_9_n_0 ),
        .I4(\rd_value[31]_INST_0_i_10_n_0 ),
        .I5(\rd_value[31]_INST_0_i_11_n_0 ),
        .O(\rd_value[31]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rd_value[31]_INST_0_i_30 
       (.I0(\imm_reg_n_0_[18] ),
        .I1(alu_src),
        .I2(write_data[18]),
        .O(data6[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \rd_value[31]_INST_0_i_31 
       (.I0(write_data[17]),
        .I1(\imm_reg_n_0_[17] ),
        .I2(write_data[25]),
        .I3(alu_src),
        .I4(\imm_reg_n_0_[25] ),
        .O(\rd_value[31]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \rd_value[31]_INST_0_i_32 
       (.I0(write_data[18]),
        .I1(\imm_reg_n_0_[18] ),
        .I2(write_data[23]),
        .I3(alu_src),
        .I4(\imm_reg_n_0_[23] ),
        .O(\rd_value[31]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \rd_value[31]_INST_0_i_33 
       (.I0(write_data[9]),
        .I1(\imm_reg_n_0_[9] ),
        .I2(write_data[26]),
        .I3(alu_src),
        .I4(\imm_reg_n_0_[26] ),
        .O(\rd_value[31]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \rd_value[31]_INST_0_i_34 
       (.I0(write_data[8]),
        .I1(\imm_reg_n_0_[8] ),
        .I2(write_data[10]),
        .I3(alu_src),
        .I4(\imm_reg_n_0_[10] ),
        .O(\rd_value[31]_INST_0_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \rd_value[31]_INST_0_i_35 
       (.I0(write_data[5]),
        .I1(\imm_reg_n_0_[5] ),
        .I2(write_data[24]),
        .I3(alu_src),
        .I4(\imm_reg_n_0_[24] ),
        .O(\rd_value[31]_INST_0_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \rd_value[31]_INST_0_i_36 
       (.I0(write_data[30]),
        .I1(alu_src),
        .I2(\imm_reg_n_0_[30] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[31]_INST_0_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rd_value[31]_INST_0_i_37 
       (.I0(\imm_reg_n_0_[17] ),
        .I1(alu_src),
        .I2(write_data[17]),
        .O(data6[17]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rd_value[31]_INST_0_i_38 
       (.I0(\imm_reg_n_0_[9] ),
        .I1(alu_src),
        .I2(write_data[9]),
        .O(data6[9]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rd_value[31]_INST_0_i_39 
       (.I0(\imm_reg_n_0_[25] ),
        .I1(alu_src),
        .I2(write_data[25]),
        .O(data6[25]));
  LUT6 #(
    .INIT(64'hAAAAAAAABFAFFFBF)) 
    \rd_value[31]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\rd_value[31]_INST_0_i_12_n_0 ),
        .I4(\rd_value[31]_INST_0_i_13_n_0 ),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[31]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rd_value[31]_INST_0_i_40 
       (.I0(\imm_reg_n_0_[5] ),
        .I1(alu_src),
        .I2(write_data[5]),
        .O(data6[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rd_value[31]_INST_0_i_41 
       (.I0(\imm_reg_n_0_[7] ),
        .I1(alu_src),
        .I2(write_data[7]),
        .O(data6[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rd_value[31]_INST_0_i_42 
       (.I0(\imm_reg_n_0_[23] ),
        .I1(alu_src),
        .I2(write_data[23]),
        .O(data6[23]));
  LUT6 #(
    .INIT(64'h89AECDBFABAEEFBF)) 
    \rd_value[31]_INST_0_i_5 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(data0[31]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(data1[31]),
        .I5(alu_src_t[15]),
        .O(\rd_value[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCC1DFF1D33E200E2)) 
    \rd_value[31]_INST_0_i_6 
       (.I0(rs[31]),
        .I1(rs_forward[1]),
        .I2(alu_result_back[31]),
        .I3(rs_forward[0]),
        .I4(write_back_data[31]),
        .I5(\rd_value[31]_INST_0_i_13_n_0 ),
        .O(\rd_value[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_value[31]_INST_0_i_7 
       (.I0(\rd_value[31]_INST_0_i_14_n_0 ),
        .I1(\rd_value[31]_INST_0_i_15_n_0 ),
        .I2(alu_src_t[1]),
        .I3(\rd_value[31]_INST_0_i_16_n_0 ),
        .I4(alu_src_t[2]),
        .I5(\rd_value[31]_INST_0_i_17_n_0 ),
        .O(\rd_value[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \rd_value[31]_INST_0_i_8 
       (.I0(alu_src_t[0]),
        .I1(\rd_value[31]_INST_0_i_18_n_0 ),
        .I2(\rd_value[31]_INST_0_i_19_n_0 ),
        .I3(\rd_value[31]_INST_0_i_20_n_0 ),
        .I4(\rd_value[31]_INST_0_i_21_n_0 ),
        .I5(\alu_op_reg_n_0_[3] ),
        .O(\rd_value[31]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hA030)) 
    \rd_value[31]_INST_0_i_9 
       (.I0(\rd_value[31]_INST_0_i_12_n_0 ),
        .I1(\rd_value[31]_INST_0_i_13_n_0 ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000005155550051)) 
    \rd_value[3]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[3]_INST_0_i_1_n_0 ),
        .I2(\rd_value[3]_INST_0_i_2_n_0 ),
        .I3(\rd_value[3]_INST_0_i_3_n_0 ),
        .I4(\alu_op_reg_n_0_[4] ),
        .I5(\rd_value[3]_INST_0_i_4_n_0 ),
        .O(rd_value[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \rd_value[3]_INST_0_i_1 
       (.I0(alu_src_t[1]),
        .I1(alu_src_t[4]),
        .I2(alu_src_t[3]),
        .I3(alu_src_t[2]),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(\rd_value[25]_INST_0_i_6_n_0 ),
        .O(\rd_value[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0068FFFF640CFFFF)) 
    \rd_value[3]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_s[3]),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(alu_src_t[3]),
        .O(\rd_value[3]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01551555)) 
    \rd_value[3]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[1] ),
        .I1(alu_src_s[3]),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(alu_src_t[3]),
        .O(\rd_value[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    \rd_value[3]_INST_0_i_4 
       (.I0(\rd_value[3]_INST_0_i_7_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(data0[3]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[3]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_value[3]_INST_0_i_5 
       (.I0(write_data[3]),
        .I1(\imm_reg_n_0_[3] ),
        .I2(alu_src),
        .O(alu_src_t[3]));
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_value[3]_INST_0_i_6 
       (.I0(write_data[2]),
        .I1(\imm_reg_n_0_[2] ),
        .I2(alu_src),
        .O(alu_src_t[2]));
  LUT6 #(
    .INIT(64'hF0FC7073F3FF7C7F)) 
    \rd_value[3]_INST_0_i_7 
       (.I0(alu_src_t[3]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(data1[3]),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(data0[3]),
        .O(\rd_value[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000005155550051)) 
    \rd_value[4]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[4]_INST_0_i_1_n_0 ),
        .I2(\rd_value[4]_INST_0_i_2_n_0 ),
        .I3(\rd_value[4]_INST_0_i_3_n_0 ),
        .I4(\alu_op_reg_n_0_[4] ),
        .I5(\rd_value[4]_INST_0_i_4_n_0 ),
        .O(rd_value[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    \rd_value[4]_INST_0_i_1 
       (.I0(\rd_value[25]_INST_0_i_6_n_0 ),
        .I1(alu_src_t[0]),
        .I2(alu_src_t[1]),
        .I3(alu_src_t[4]),
        .I4(\rd_value[4]_INST_0_i_7_n_0 ),
        .I5(\alu_op_reg_n_0_[0] ),
        .O(\rd_value[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1440FFFF284CFFFF)) 
    \rd_value[4]_INST_0_i_2 
       (.I0(alu_src_s[4]),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(\alu_op_reg_n_0_[0] ),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(alu_src_t[4]),
        .O(\rd_value[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01551555)) 
    \rd_value[4]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[1] ),
        .I1(alu_src_s[4]),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(alu_src_t[4]),
        .O(\rd_value[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    \rd_value[4]_INST_0_i_4 
       (.I0(\rd_value[4]_INST_0_i_8_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(data0[4]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[4]_INST_0_i_5 
       (.I0(\imm_reg_n_0_[1] ),
        .I1(alu_src),
        .I2(write_data[1]),
        .O(alu_src_t[1]));
  LUT3 #(
    .INIT(8'hCA)) 
    \rd_value[4]_INST_0_i_6 
       (.I0(write_data[4]),
        .I1(\imm_reg_n_0_[4] ),
        .I2(alu_src),
        .O(alu_src_t[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rd_value[4]_INST_0_i_7 
       (.I0(alu_src_t[2]),
        .I1(alu_src_t[3]),
        .O(\rd_value[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0FC7073F3FF7C7F)) 
    \rd_value[4]_INST_0_i_8 
       (.I0(alu_src_t[4]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(data1[4]),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(data0[4]),
        .O(\rd_value[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \rd_value[5]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[5]_INST_0_i_1_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(\rd_value[5]_INST_0_i_2_n_0 ),
        .I4(\alu_op_reg_n_0_[4] ),
        .I5(\rd_value[5]_INST_0_i_3_n_0 ),
        .O(rd_value[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h377F)) 
    \rd_value[5]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(alu_src_s[5]),
        .I3(alu_src_t[5]),
        .O(\rd_value[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0BFBFB0BF)) 
    \rd_value[5]_INST_0_i_2 
       (.I0(\rd_value[22]_INST_0_i_5_n_0 ),
        .I1(\rd_value[5]_INST_0_i_5_n_0 ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\rd_value[25]_INST_0_i_6_n_0 ),
        .I4(\rd_value[5]_INST_0_i_6_n_0 ),
        .I5(\rd_value[5]_INST_0_i_7_n_0 ),
        .O(\rd_value[5]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    \rd_value[5]_INST_0_i_3 
       (.I0(\rd_value[5]_INST_0_i_8_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(data0[5]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[5]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[5]_INST_0_i_4 
       (.I0(\imm_reg_n_0_[5] ),
        .I1(alu_src),
        .I2(write_data[5]),
        .O(alu_src_t[5]));
  LUT6 #(
    .INIT(64'hA5A556A6AAAA56A6)) 
    \rd_value[5]_INST_0_i_5 
       (.I0(alu_src_t[5]),
        .I1(rs[5]),
        .I2(rs_forward[1]),
        .I3(alu_result_back[5]),
        .I4(rs_forward[0]),
        .I5(write_back_data[5]),
        .O(\rd_value[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFBFFFEFFFF)) 
    \rd_value[5]_INST_0_i_6 
       (.I0(alu_src_t[1]),
        .I1(alu_src_t[2]),
        .I2(alu_src_t[3]),
        .I3(alu_src_t[4]),
        .I4(alu_src_t[5]),
        .I5(alu_src_t[0]),
        .O(\rd_value[5]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[5]_INST_0_i_7 
       (.I0(alu_src_s[5]),
        .I1(alu_src_t[5]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF0FC7073F3FF7C7F)) 
    \rd_value[5]_INST_0_i_8 
       (.I0(alu_src_t[5]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(data1[5]),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(data0[5]),
        .O(\rd_value[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000005155550051)) 
    \rd_value[6]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[6]_INST_0_i_1_n_0 ),
        .I2(\rd_value[6]_INST_0_i_2_n_0 ),
        .I3(\rd_value[6]_INST_0_i_3_n_0 ),
        .I4(\alu_op_reg_n_0_[4] ),
        .I5(\rd_value[6]_INST_0_i_4_n_0 ),
        .O(rd_value[6]));
  LUT6 #(
    .INIT(64'hFFFFFBAAFFFFFFFF)) 
    \rd_value[6]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(data6[1]),
        .I2(\rd_value[6]_INST_0_i_6_n_0 ),
        .I3(alu_src_t[0]),
        .I4(\rd_value[6]_INST_0_i_7_n_0 ),
        .I5(\rd_value[25]_INST_0_i_6_n_0 ),
        .O(\rd_value[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0068FFFF640CFFFF)) 
    \rd_value[6]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_s[6]),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(alu_src_t[6]),
        .O(\rd_value[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01551555)) 
    \rd_value[6]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[1] ),
        .I1(alu_src_s[6]),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(alu_src_t[6]),
        .O(\rd_value[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    \rd_value[6]_INST_0_i_4 
       (.I0(\rd_value[6]_INST_0_i_9_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(data0[6]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[6]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rd_value[6]_INST_0_i_5 
       (.I0(\imm_reg_n_0_[1] ),
        .I1(alu_src),
        .I2(write_data[1]),
        .O(data6[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rd_value[6]_INST_0_i_6 
       (.I0(alu_src_t[5]),
        .I1(alu_src_t[4]),
        .I2(alu_src_t[3]),
        .I3(alu_src_t[2]),
        .O(\rd_value[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA888AAAAAAAAA)) 
    \rd_value[6]_INST_0_i_7 
       (.I0(data6[0]),
        .I1(alu_src_t[4]),
        .I2(alu_src_t[6]),
        .I3(alu_src_t[2]),
        .I4(alu_src_t[3]),
        .I5(data6[1]),
        .O(\rd_value[6]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[6]_INST_0_i_8 
       (.I0(\imm_reg_n_0_[6] ),
        .I1(alu_src),
        .I2(write_data[6]),
        .O(alu_src_t[6]));
  LUT6 #(
    .INIT(64'hF0FC7073F3FF7C7F)) 
    \rd_value[6]_INST_0_i_9 
       (.I0(alu_src_t[6]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(data1[6]),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(data0[6]),
        .O(\rd_value[6]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \rd_value[7]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[7]_INST_0_i_1_n_0 ),
        .I2(\alu_op_reg_n_0_[1] ),
        .I3(\rd_value[7]_INST_0_i_2_n_0 ),
        .I4(\alu_op_reg_n_0_[4] ),
        .I5(\rd_value[7]_INST_0_i_3_n_0 ),
        .O(rd_value[7]));
  LUT4 #(
    .INIT(16'h577F)) 
    \rd_value[7]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(alu_src_t[7]),
        .I2(alu_src_s[7]),
        .I3(\alu_op_reg_n_0_[0] ),
        .O(\rd_value[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00FB)) 
    \rd_value[7]_INST_0_i_2 
       (.I0(\rd_value[7]_INST_0_i_5_n_0 ),
        .I1(\rd_value[25]_INST_0_i_6_n_0 ),
        .I2(\rd_value[7]_INST_0_i_6_n_0 ),
        .I3(\rd_value[7]_INST_0_i_7_n_0 ),
        .I4(\alu_op_reg_n_0_[0] ),
        .I5(\rd_value[7]_INST_0_i_8_n_0 ),
        .O(\rd_value[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00F7FFF7)) 
    \rd_value[7]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(data0[7]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[1] ),
        .I4(\rd_value[7]_INST_0_i_9_n_0 ),
        .O(\rd_value[7]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[7]_INST_0_i_4 
       (.I0(\imm_reg_n_0_[7] ),
        .I1(alu_src),
        .I2(write_data[7]),
        .O(alu_src_t[7]));
  LUT6 #(
    .INIT(64'h5555444555554455)) 
    \rd_value[7]_INST_0_i_5 
       (.I0(data6[0]),
        .I1(alu_src_t[4]),
        .I2(alu_src_t[6]),
        .I3(alu_src_t[2]),
        .I4(alu_src_t[3]),
        .I5(data6[1]),
        .O(\rd_value[7]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_value[7]_INST_0_i_6 
       (.I0(data6[0]),
        .I1(\rd_value[8]_INST_0_i_5_n_0 ),
        .O(\rd_value[7]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5030)) 
    \rd_value[7]_INST_0_i_7 
       (.I0(alu_src_s[7]),
        .I1(alu_src_t[7]),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[7]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00606000)) 
    \rd_value[7]_INST_0_i_8 
       (.I0(alu_src_s[7]),
        .I1(alu_src_t[7]),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\alu_op_reg_n_0_[2] ),
        .I4(\alu_op_reg_n_0_[3] ),
        .O(\rd_value[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00880088F3FCC030)) 
    \rd_value[7]_INST_0_i_9 
       (.I0(alu_src_t[7]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(data1[7]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(data0[7]),
        .I5(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[7]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000005155550051)) 
    \rd_value[8]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[8]_INST_0_i_1_n_0 ),
        .I2(\rd_value[8]_INST_0_i_2_n_0 ),
        .I3(\rd_value[8]_INST_0_i_3_n_0 ),
        .I4(\alu_op_reg_n_0_[4] ),
        .I5(\rd_value[8]_INST_0_i_4_n_0 ),
        .O(rd_value[8]));
  LUT6 #(
    .INIT(64'hF2FFF2FFFFFFF2FF)) 
    \rd_value[8]_INST_0_i_1 
       (.I0(alu_src_t[0]),
        .I1(\rd_value[8]_INST_0_i_5_n_0 ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\rd_value[25]_INST_0_i_6_n_0 ),
        .I4(data6[0]),
        .I5(\rd_value[9]_INST_0_i_7_n_0 ),
        .O(\rd_value[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0068FFFF640CFFFF)) 
    \rd_value[8]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_s[8]),
        .I4(\alu_op_reg_n_0_[1] ),
        .I5(alu_src_t[8]),
        .O(\rd_value[8]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01551555)) 
    \rd_value[8]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[1] ),
        .I1(alu_src_s[8]),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(alu_src_t[8]),
        .O(\rd_value[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBB8BBBBB)) 
    \rd_value[8]_INST_0_i_4 
       (.I0(\rd_value[8]_INST_0_i_8_n_0 ),
        .I1(\alu_op_reg_n_0_[1] ),
        .I2(data0[8]),
        .I3(\alu_op_reg_n_0_[3] ),
        .I4(\alu_op_reg_n_0_[2] ),
        .O(\rd_value[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000003B00000038)) 
    \rd_value[8]_INST_0_i_5 
       (.I0(alu_src_t[7]),
        .I1(data6[1]),
        .I2(alu_src_t[2]),
        .I3(alu_src_t[3]),
        .I4(alu_src_t[4]),
        .I5(alu_src_t[5]),
        .O(\rd_value[8]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \rd_value[8]_INST_0_i_6 
       (.I0(\imm_reg_n_0_[0] ),
        .I1(alu_src),
        .I2(write_data[0]),
        .O(data6[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[8]_INST_0_i_7 
       (.I0(\imm_reg_n_0_[8] ),
        .I1(alu_src),
        .I2(write_data[8]),
        .O(alu_src_t[8]));
  LUT6 #(
    .INIT(64'hF0FC7073F3FF7C7F)) 
    \rd_value[8]_INST_0_i_8 
       (.I0(alu_src_t[8]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(data1[8]),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(data0[8]),
        .O(\rd_value[8]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00545555)) 
    \rd_value[9]_INST_0 
       (.I0(alu_op),
        .I1(\rd_value[9]_INST_0_i_1_n_0 ),
        .I2(\rd_value[9]_INST_0_i_2_n_0 ),
        .I3(\rd_value[9]_INST_0_i_3_n_0 ),
        .I4(\rd_value[9]_INST_0_i_4_n_0 ),
        .O(rd_value[9]));
  LUT6 #(
    .INIT(64'h00606000FFFFFFFF)) 
    \rd_value[9]_INST_0_i_1 
       (.I0(\alu_op_reg_n_0_[3] ),
        .I1(\alu_op_reg_n_0_[2] ),
        .I2(\alu_op_reg_n_0_[0] ),
        .I3(alu_src_t[9]),
        .I4(alu_src_s[9]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFAB)) 
    \rd_value[9]_INST_0_i_10 
       (.I0(alu_src_t[4]),
        .I1(alu_src_t[6]),
        .I2(alu_src_t[2]),
        .I3(alu_src_t[3]),
        .O(\rd_value[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5040004055555555)) 
    \rd_value[9]_INST_0_i_2 
       (.I0(\alu_op_reg_n_0_[0] ),
        .I1(\rd_value[9]_INST_0_i_6_n_0 ),
        .I2(\rd_value[25]_INST_0_i_6_n_0 ),
        .I3(alu_src_t[0]),
        .I4(\rd_value[9]_INST_0_i_7_n_0 ),
        .I5(\rd_value[9]_INST_0_i_8_n_0 ),
        .O(\rd_value[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAFBFBFFF)) 
    \rd_value[9]_INST_0_i_3 
       (.I0(\alu_op_reg_n_0_[4] ),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[3] ),
        .I3(alu_src_s[9]),
        .I4(alu_src_t[9]),
        .I5(\alu_op_reg_n_0_[1] ),
        .O(\rd_value[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF00DFFFFFFFFF)) 
    \rd_value[9]_INST_0_i_4 
       (.I0(\alu_op_reg_n_0_[2] ),
        .I1(\alu_op_reg_n_0_[3] ),
        .I2(data0[9]),
        .I3(\alu_op_reg_n_0_[1] ),
        .I4(\rd_value[9]_INST_0_i_9_n_0 ),
        .I5(\alu_op_reg_n_0_[4] ),
        .O(\rd_value[9]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_value[9]_INST_0_i_5 
       (.I0(\imm_reg_n_0_[9] ),
        .I1(alu_src),
        .I2(write_data[9]),
        .O(alu_src_t[9]));
  LUT6 #(
    .INIT(64'h4444444444474444)) 
    \rd_value[9]_INST_0_i_6 
       (.I0(\rd_value[12]_INST_0_i_9_n_0 ),
        .I1(data6[1]),
        .I2(alu_src_t[3]),
        .I3(alu_src_t[2]),
        .I4(alu_src_t[7]),
        .I5(alu_src_t[4]),
        .O(\rd_value[9]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \rd_value[9]_INST_0_i_7 
       (.I0(\rd_value[9]_INST_0_i_10_n_0 ),
        .I1(alu_src_t[1]),
        .I2(\rd_value[11]_INST_0_i_9_n_0 ),
        .I3(data6[1]),
        .O(\rd_value[9]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hCAFF)) 
    \rd_value[9]_INST_0_i_8 
       (.I0(alu_src_t[9]),
        .I1(alu_src_s[9]),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(\alu_op_reg_n_0_[3] ),
        .O(\rd_value[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0FC7073F3FF7C7F)) 
    \rd_value[9]_INST_0_i_9 
       (.I0(alu_src_t[9]),
        .I1(\alu_op_reg_n_0_[0] ),
        .I2(\alu_op_reg_n_0_[2] ),
        .I3(data1[9]),
        .I4(\alu_op_reg_n_0_[3] ),
        .I5(data0[9]),
        .O(\rd_value[9]_INST_0_i_9_n_0 ));
  FDCE reg_write_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(reg_write_inw),
        .Q(reg_write));
  FDCE \rs_forward_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_forward_inw[0]),
        .Q(rs_forward[0]));
  FDCE \rs_forward_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_forward_inw[1]),
        .Q(rs_forward[1]));
  FDCE \rs_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[0]),
        .Q(rs[0]));
  FDCE \rs_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[10]),
        .Q(rs[10]));
  FDCE \rs_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[11]),
        .Q(rs[11]));
  FDCE \rs_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[12]),
        .Q(rs[12]));
  FDCE \rs_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[13]),
        .Q(rs[13]));
  FDCE \rs_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[14]),
        .Q(rs[14]));
  FDCE \rs_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[15]),
        .Q(rs[15]));
  FDCE \rs_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[16]),
        .Q(rs[16]));
  FDCE \rs_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[17]),
        .Q(rs[17]));
  FDCE \rs_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[18]),
        .Q(rs[18]));
  FDCE \rs_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[19]),
        .Q(rs[19]));
  FDCE \rs_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[1]),
        .Q(rs[1]));
  FDCE \rs_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[20]),
        .Q(rs[20]));
  FDCE \rs_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[21]),
        .Q(rs[21]));
  FDCE \rs_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[22]),
        .Q(rs[22]));
  FDCE \rs_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[23]),
        .Q(rs[23]));
  FDCE \rs_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[24]),
        .Q(rs[24]));
  FDCE \rs_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[25]),
        .Q(rs[25]));
  FDCE \rs_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[26]),
        .Q(rs[26]));
  FDCE \rs_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[27]),
        .Q(rs[27]));
  FDCE \rs_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[28]),
        .Q(rs[28]));
  FDCE \rs_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[29]),
        .Q(rs[29]));
  FDCE \rs_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[2]),
        .Q(rs[2]));
  FDCE \rs_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[30]),
        .Q(rs[30]));
  FDCE \rs_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[31]),
        .Q(rs[31]));
  FDCE \rs_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[3]),
        .Q(rs[3]));
  FDCE \rs_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[4]),
        .Q(rs[4]));
  FDCE \rs_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[5]),
        .Q(rs[5]));
  FDCE \rs_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[6]),
        .Q(rs[6]));
  FDCE \rs_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[7]),
        .Q(rs[7]));
  FDCE \rs_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[8]),
        .Q(rs[8]));
  FDCE \rs_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rs_inw[9]),
        .Q(rs[9]));
  FDCE \rt_forward_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_forward_inw[0]),
        .Q(rt_forward[0]));
  FDCE \rt_forward_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_forward_inw[1]),
        .Q(rt_forward[1]));
  FDCE \rt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[0]),
        .Q(rt[0]));
  FDCE \rt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[10]),
        .Q(rt[10]));
  FDCE \rt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[11]),
        .Q(rt[11]));
  FDCE \rt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[12]),
        .Q(rt[12]));
  FDCE \rt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[13]),
        .Q(rt[13]));
  FDCE \rt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[14]),
        .Q(rt[14]));
  FDCE \rt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[15]),
        .Q(rt[15]));
  FDCE \rt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[16]),
        .Q(rt[16]));
  FDCE \rt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[17]),
        .Q(rt[17]));
  FDCE \rt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[18]),
        .Q(rt[18]));
  FDCE \rt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[19]),
        .Q(rt[19]));
  FDCE \rt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[1]),
        .Q(rt[1]));
  FDCE \rt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[20]),
        .Q(rt[20]));
  FDCE \rt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[21]),
        .Q(rt[21]));
  FDCE \rt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[22]),
        .Q(rt[22]));
  FDCE \rt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[23]),
        .Q(rt[23]));
  FDCE \rt_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[24]),
        .Q(rt[24]));
  FDCE \rt_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[25]),
        .Q(rt[25]));
  FDCE \rt_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[26]),
        .Q(rt[26]));
  FDCE \rt_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[27]),
        .Q(rt[27]));
  FDCE \rt_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[28]),
        .Q(rt[28]));
  FDCE \rt_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[29]),
        .Q(rt[29]));
  FDCE \rt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[2]),
        .Q(rt[2]));
  FDCE \rt_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[30]),
        .Q(rt[30]));
  FDCE \rt_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[31]),
        .Q(rt[31]));
  FDCE \rt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[3]),
        .Q(rt[3]));
  FDCE \rt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[4]),
        .Q(rt[4]));
  FDCE \rt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[5]),
        .Q(rt[5]));
  FDCE \rt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[6]),
        .Q(rt[6]));
  FDCE \rt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[7]),
        .Q(rt[7]));
  FDCE \rt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[8]),
        .Q(rt[8]));
  FDCE \rt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(rt_inw[9]),
        .Q(rt[9]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \write_data[0]_INST_0 
       (.I0(write_back_data[0]),
        .I1(rt[0]),
        .I2(alu_result_back[0]),
        .I3(rt_forward[1]),
        .I4(rt_forward[0]),
        .O(write_data[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[10]_INST_0 
       (.I0(write_back_data[10]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[10]),
        .I3(rt_forward[1]),
        .I4(rt[10]),
        .O(write_data[10]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[11]_INST_0 
       (.I0(write_back_data[11]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[11]),
        .I3(rt_forward[1]),
        .I4(rt[11]),
        .O(write_data[11]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[12]_INST_0 
       (.I0(write_back_data[12]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[12]),
        .I3(rt_forward[1]),
        .I4(rt[12]),
        .O(write_data[12]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[13]_INST_0 
       (.I0(write_back_data[13]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[13]),
        .I3(rt_forward[1]),
        .I4(rt[13]),
        .O(write_data[13]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[14]_INST_0 
       (.I0(write_back_data[14]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[14]),
        .I3(rt_forward[1]),
        .I4(rt[14]),
        .O(write_data[14]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[15]_INST_0 
       (.I0(write_back_data[15]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[15]),
        .I3(rt_forward[1]),
        .I4(rt[15]),
        .O(write_data[15]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[16]_INST_0 
       (.I0(write_back_data[16]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[16]),
        .I3(rt_forward[1]),
        .I4(rt[16]),
        .O(write_data[16]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[17]_INST_0 
       (.I0(write_back_data[17]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[17]),
        .I3(rt_forward[1]),
        .I4(rt[17]),
        .O(write_data[17]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[18]_INST_0 
       (.I0(write_back_data[18]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[18]),
        .I3(rt_forward[1]),
        .I4(rt[18]),
        .O(write_data[18]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[19]_INST_0 
       (.I0(write_back_data[19]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[19]),
        .I3(rt_forward[1]),
        .I4(rt[19]),
        .O(write_data[19]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \write_data[1]_INST_0 
       (.I0(write_back_data[1]),
        .I1(rt[1]),
        .I2(alu_result_back[1]),
        .I3(rt_forward[1]),
        .I4(rt_forward[0]),
        .O(write_data[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[20]_INST_0 
       (.I0(write_back_data[20]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[20]),
        .I3(rt_forward[1]),
        .I4(rt[20]),
        .O(write_data[20]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[21]_INST_0 
       (.I0(write_back_data[21]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[21]),
        .I3(rt_forward[1]),
        .I4(rt[21]),
        .O(write_data[21]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[22]_INST_0 
       (.I0(write_back_data[22]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[22]),
        .I3(rt_forward[1]),
        .I4(rt[22]),
        .O(write_data[22]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[23]_INST_0 
       (.I0(write_back_data[23]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[23]),
        .I3(rt_forward[1]),
        .I4(rt[23]),
        .O(write_data[23]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[24]_INST_0 
       (.I0(write_back_data[24]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[24]),
        .I3(rt_forward[1]),
        .I4(rt[24]),
        .O(write_data[24]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[25]_INST_0 
       (.I0(write_back_data[25]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[25]),
        .I3(rt_forward[1]),
        .I4(rt[25]),
        .O(write_data[25]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[26]_INST_0 
       (.I0(write_back_data[26]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[26]),
        .I3(rt_forward[1]),
        .I4(rt[26]),
        .O(write_data[26]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[27]_INST_0 
       (.I0(write_back_data[27]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[27]),
        .I3(rt_forward[1]),
        .I4(rt[27]),
        .O(write_data[27]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[28]_INST_0 
       (.I0(write_back_data[28]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[28]),
        .I3(rt_forward[1]),
        .I4(rt[28]),
        .O(write_data[28]));
  LUT5 #(
    .INIT(32'h3300B8B8)) 
    \write_data[29]_INST_0 
       (.I0(write_back_data[29]),
        .I1(rt_forward[0]),
        .I2(rt[29]),
        .I3(alu_result_back[29]),
        .I4(rt_forward[1]),
        .O(write_data[29]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[2]_INST_0 
       (.I0(write_back_data[2]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[2]),
        .I3(rt_forward[1]),
        .I4(rt[2]),
        .O(write_data[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[30]_INST_0 
       (.I0(write_back_data[30]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[30]),
        .I3(rt_forward[1]),
        .I4(rt[30]),
        .O(write_data[30]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[31]_INST_0 
       (.I0(write_back_data[31]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[31]),
        .I3(rt_forward[1]),
        .I4(rt[31]),
        .O(write_data[31]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[3]_INST_0 
       (.I0(write_back_data[3]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[3]),
        .I3(rt_forward[1]),
        .I4(rt[3]),
        .O(write_data[3]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[4]_INST_0 
       (.I0(write_back_data[4]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[4]),
        .I3(rt_forward[1]),
        .I4(rt[4]),
        .O(write_data[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[5]_INST_0 
       (.I0(write_back_data[5]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[5]),
        .I3(rt_forward[1]),
        .I4(rt[5]),
        .O(write_data[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[6]_INST_0 
       (.I0(write_back_data[6]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[6]),
        .I3(rt_forward[1]),
        .I4(rt[6]),
        .O(write_data[6]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[7]_INST_0 
       (.I0(write_back_data[7]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[7]),
        .I3(rt_forward[1]),
        .I4(rt[7]),
        .O(write_data[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[8]_INST_0 
       (.I0(write_back_data[8]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[8]),
        .I3(rt_forward[1]),
        .I4(rt[8]),
        .O(write_data[8]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \write_data[9]_INST_0 
       (.I0(write_back_data[9]),
        .I1(rt_forward[0]),
        .I2(alu_result_back[9]),
        .I3(rt_forward[1]),
        .I4(rt[9]),
        .O(write_data[9]));
  FDCE \write_reg_addr_in_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(write_reg_addr_in_inw[0]),
        .Q(write_reg_addr_in[0]));
  FDCE \write_reg_addr_in_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(write_reg_addr_in_inw[1]),
        .Q(write_reg_addr_in[1]));
  FDCE \write_reg_addr_in_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(write_reg_addr_in_inw[2]),
        .Q(write_reg_addr_in[2]));
  FDCE \write_reg_addr_in_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(write_reg_addr_in_inw[3]),
        .Q(write_reg_addr_in[3]));
  FDCE \write_reg_addr_in_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(write_reg_addr_in_inw[4]),
        .Q(write_reg_addr_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_reg_addr_out[4]_i_1 
       (.I0(rst_n),
        .O(\write_reg_addr_out[4]_i_1_n_0 ));
  FDCE \write_reg_addr_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(write_reg_addr_in[0]),
        .Q(write_reg_addr_out[0]));
  FDCE \write_reg_addr_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(write_reg_addr_in[1]),
        .Q(write_reg_addr_out[1]));
  FDCE \write_reg_addr_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(write_reg_addr_in[2]),
        .Q(write_reg_addr_out[2]));
  FDCE \write_reg_addr_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(write_reg_addr_in[3]),
        .Q(write_reg_addr_out[3]));
  FDCE \write_reg_addr_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\write_reg_addr_out[4]_i_1_n_0 ),
        .D(write_reg_addr_in[4]),
        .Q(write_reg_addr_out[4]));
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
