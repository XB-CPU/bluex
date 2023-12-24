// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:reg_wb:1.0
// IP Revision: 1

(* X_CORE_INFO = "reg_wb,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "bluex_reg_wb_0_0,reg_wb,{}" *)
(* CORE_GENERATION_INFO = "bluex_reg_wb_0_0,reg_wb,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=reg_wb,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bluex_reg_wb_0_0 (
  clk,
  rst_n,
  enable_CPU,
  alu_result_inw,
  mem_rd_inw,
  write_reg_addr_inw,
  reg_write_inw,
  memory_to_reg_inw,
  write_back_data,
  write_reg_addr,
  reg_write
);

(* X_INTERFACE_INFO = "xilinx.com:user:lcd:1.0 user_lcd CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
input wire enable_CPU;
input wire [31 : 0] alu_result_inw;
input wire [31 : 0] mem_rd_inw;
input wire [4 : 0] write_reg_addr_inw;
input wire reg_write_inw;
input wire memory_to_reg_inw;
output wire [31 : 0] write_back_data;
output wire [4 : 0] write_reg_addr;
output wire reg_write;

  reg_wb inst (
    .clk(clk),
    .rst_n(rst_n),
    .enable_CPU(enable_CPU),
    .alu_result_inw(alu_result_inw),
    .mem_rd_inw(mem_rd_inw),
    .write_reg_addr_inw(write_reg_addr_inw),
    .reg_write_inw(reg_write_inw),
    .memory_to_reg_inw(memory_to_reg_inw),
    .write_back_data(write_back_data),
    .write_reg_addr(write_reg_addr),
    .reg_write(reg_write)
  );
endmodule
