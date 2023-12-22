// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Dec 22 12:14:37 2023
// Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/MyWorks/Programs/Verilog/vivado/bluex/bluex.gen/sources_1/bd/bluex/ip/bluex_redirection_0_0/bluex_redirection_0_0_stub.v
// Design      : bluex_redirection_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "redirection,Vivado 2023.2" *)
module bluex_redirection_0_0(rs, rt, reg_write_ex, write_reg_addr_ex, 
  mem_rd_ex, branch_taken_ex, reg_write_mem, write_reg_addr_mem, real_op, flush, stall, 
  rs_forward, rt_forward)
/* synthesis syn_black_box black_box_pad_pin="rs[4:0],rt[4:0],reg_write_ex,write_reg_addr_ex[4:0],mem_rd_ex,branch_taken_ex,reg_write_mem,write_reg_addr_mem[4:0],real_op[5:0],flush,stall,rs_forward[1:0],rt_forward[1:0]" */;
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
endmodule
