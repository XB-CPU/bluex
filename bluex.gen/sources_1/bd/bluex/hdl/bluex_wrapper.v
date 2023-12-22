//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Fri Dec 22 14:18:35 2023
//Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
//Command     : generate_target bluex_wrapper.bd
//Design      : bluex_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bluex_wrapper
   (clk,
    current_addr_0,
    enable_CPU,
    isc,
    read_mem_out_inw,
    rst_n,
    write_mem_addr,
    write_mem_clk,
    write_mem_data,
    write_mem_en);
  input clk;
  output [15:0]current_addr_0;
  input [0:0]enable_CPU;
  input [31:0]isc;
  input [31:0]read_mem_out_inw;
  input rst_n;
  output [15:0]write_mem_addr;
  output write_mem_clk;
  output [31:0]write_mem_data;
  output write_mem_en;

  wire clk;
  wire [15:0]current_addr_0;
  wire [0:0]enable_CPU;
  wire [31:0]isc;
  wire [31:0]read_mem_out_inw;
  wire rst_n;
  wire [15:0]write_mem_addr;
  wire write_mem_clk;
  wire [31:0]write_mem_data;
  wire write_mem_en;

  bluex bluex_i
       (.clk(clk),
        .current_addr_0(current_addr_0),
        .enable_CPU(enable_CPU),
        .isc(isc),
        .read_mem_out_inw(read_mem_out_inw),
        .rst_n(rst_n),
        .write_mem_addr(write_mem_addr),
        .write_mem_clk(write_mem_clk),
        .write_mem_data(write_mem_data),
        .write_mem_en(write_mem_en));
endmodule
