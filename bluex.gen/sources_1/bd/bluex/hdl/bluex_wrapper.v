//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Dec 20 23:29:00 2023
//Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
//Command     : generate_target bluex_wrapper.bd
//Design      : bluex_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bluex_wrapper
   (CPU_done_0,
    clk,
    isc,
    read_mem_out_inw,
    rst_n,
    write_mem_addr,
    write_mem_clk,
    write_mem_data,
    write_mem_en);
  output CPU_done_0;
  input clk;
  input [31:0]isc;
  input [31:0]read_mem_out_inw;
  input rst_n;
  output [15:0]write_mem_addr;
  output write_mem_clk;
  output [31:0]write_mem_data;
  output write_mem_en;

  wire CPU_done_0;
  wire clk;
  wire [31:0]isc;
  wire [31:0]read_mem_out_inw;
  wire rst_n;
  wire [15:0]write_mem_addr;
  wire write_mem_clk;
  wire [31:0]write_mem_data;
  wire write_mem_en;

  bluex bluex_i
       (.CPU_done_0(CPU_done_0),
        .clk(clk),
        .isc(isc),
        .read_mem_out_inw(read_mem_out_inw),
        .rst_n(rst_n),
        .write_mem_addr(write_mem_addr),
        .write_mem_clk(write_mem_clk),
        .write_mem_data(write_mem_data),
        .write_mem_en(write_mem_en));
endmodule
