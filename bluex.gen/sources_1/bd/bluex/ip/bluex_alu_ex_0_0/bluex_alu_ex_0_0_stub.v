// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Dec 20 23:17:16 2023
// Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/MyWorks/Programs/Verilog/vivado/bluex/bluex.gen/sources_1/bd/bluex/ip/bluex_alu_ex_0_0/bluex_alu_ex_0_0_stub.v
// Design      : bluex_alu_ex_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "alu_ex,Vivado 2023.2" *)
module bluex_alu_ex_0_0(clk, rst_n, rs_inw, rt_inw, imm_inw, 
  write_back_data, alu_result_back, alu_op_inw, rs_forward_inw, rt_forward_inw, alu_src_inw, 
  memory_write_inw, memory_to_reg_inw, reg_write_inw, branch_isc_flag_inw, pc_next_inw, 
  write_reg_addr_in_inw, rd_value, write_data, branch_jump_flag, branch_addr, 
  write_reg_addr_out, memory_write, memory_to_reg, reg_write)
/* synthesis syn_black_box black_box_pad_pin="rst_n,rs_inw[31:0],rt_inw[31:0],imm_inw[31:0],write_back_data[31:0],alu_result_back[31:0],alu_op_inw[5:0],rs_forward_inw[1:0],rt_forward_inw[1:0],alu_src_inw,memory_write_inw,memory_to_reg_inw,reg_write_inw,branch_isc_flag_inw,pc_next_inw[15:0],write_reg_addr_in_inw[4:0],rd_value[31:0],write_data[31:0],branch_jump_flag,branch_addr[15:0],write_reg_addr_out[4:0],memory_write,memory_to_reg,reg_write" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst_n;
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
  input branch_isc_flag_inw;
  input [15:0]pc_next_inw;
  input [4:0]write_reg_addr_in_inw;
  output [31:0]rd_value;
  output [31:0]write_data;
  output branch_jump_flag;
  output [15:0]branch_addr;
  output [4:0]write_reg_addr_out;
  output memory_write;
  output memory_to_reg;
  output reg_write;
endmodule
