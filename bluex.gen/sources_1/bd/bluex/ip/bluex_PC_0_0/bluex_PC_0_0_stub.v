// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Dec 18 14:34:05 2023
// Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/MyWorks/Programs/Verilog/vivado/bluex/bluex.gen/sources_1/bd/bluex/ip/bluex_PC_0_0/bluex_PC_0_0_stub.v
// Design      : bluex_PC_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "PC,Vivado 2023.2" *)
module bluex_PC_0_0(clk, rst_n, ena_n, next_addr_branch, 
  branch_taken_ex, current_addr, next_addr_output)
/* synthesis syn_black_box black_box_pad_pin="rst_n,ena_n,next_addr_branch[15:0],branch_taken_ex,current_addr[15:0],next_addr_output[15:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst_n;
  input ena_n;
  input [15:0]next_addr_branch;
  input branch_taken_ex;
  output [15:0]current_addr;
  output [15:0]next_addr_output;
endmodule
