//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Mon Dec 18 13:19:10 2023
//Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
//Command     : generate_target bluex.bd
//Design      : bluex
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bluex,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bluex,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=9,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=9,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bluex.hwdef" *) 
module bluex
   (clk,
    current_addr,
    isc,
    read_mem_out_inw,
    rst_n,
    write_mem_addr,
    write_mem_clk,
    write_mem_data,
    write_mem_en);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN bluex_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  output [15:0]current_addr;
  input [31:0]isc;
  input [31:0]read_mem_out_inw;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n;
  output [15:0]write_mem_addr;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.WRITE_MEM_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.WRITE_MEM_CLK, CLK_DOMAIN bluex_wrapper_mem_0_0_write_mem_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output write_mem_clk;
  output [31:0]write_mem_data;
  output write_mem_en;

  wire [15:0]PC_0_current_addr;
  wire [15:0]PC_0_next_addr_output;
  wire [15:0]alu_ex_0_branch_addr;
  wire alu_ex_0_branch_jump_flag;
  wire alu_ex_0_memory_to_reg;
  wire alu_ex_0_memory_write;
  wire [31:0]alu_ex_0_rd_value;
  wire alu_ex_0_reg_write;
  wire [31:0]alu_ex_0_write_data;
  wire [4:0]alu_ex_0_write_reg_addr_out;
  wire [4:0]aux_id_0_addr_reg;
  wire [31:0]aux_id_0_sext_imm;
  wire clk_0_1;
  wire controller_id_0_addr_flag;
  wire controller_id_0_alu_src;
  wire controller_id_0_branch;
  wire controller_id_0_memory_to_reg;
  wire controller_id_0_memory_write;
  wire controller_id_0_reg_write;
  wire [15:0]demux_id_0_imm;
  wire [15:0]demux_id_0_pc_next;
  wire [4:0]demux_id_0_rd;
  wire [5:0]demux_id_0_real_op;
  wire [4:0]demux_id_0_rs;
  wire [4:0]demux_id_0_rt;
  wire [31:0]isc_0_1;
  wire [31:0]read_mem_out_inw_0_1;
  wire redirection_0_flush;
  wire [1:0]redirection_0_rs_forward;
  wire [1:0]redirection_0_rt_forward;
  wire redirection_0_stall;
  wire [31:0]reg_heap_id_0_rs;
  wire [31:0]reg_heap_id_0_rt;
  wire reg_wb_0_reg_write;
  wire [31:0]reg_wb_0_write_back_data;
  wire [4:0]reg_wb_0_write_reg_addr;
  wire rst_n_0_1;
  wire [31:0]wrapper_mem_0_alu_result;
  wire wrapper_mem_0_memory_to_reg;
  wire [31:0]wrapper_mem_0_read_mem_out;
  wire wrapper_mem_0_reg_write;
  wire [15:0]wrapper_mem_0_write_mem_addr;
  wire wrapper_mem_0_write_mem_clk;
  wire [31:0]wrapper_mem_0_write_mem_data;
  wire wrapper_mem_0_write_mem_en;
  wire [4:0]wrapper_mem_0_write_reg_addr;

  assign clk_0_1 = clk;
  assign current_addr[15:0] = PC_0_current_addr;
  assign isc_0_1 = isc[31:0];
  assign read_mem_out_inw_0_1 = read_mem_out_inw[31:0];
  assign rst_n_0_1 = rst_n;
  assign write_mem_addr[15:0] = wrapper_mem_0_write_mem_addr;
  assign write_mem_clk = wrapper_mem_0_write_mem_clk;
  assign write_mem_data[31:0] = wrapper_mem_0_write_mem_data;
  assign write_mem_en = wrapper_mem_0_write_mem_en;
  bluex_PC_0_0 PC_0
       (.branch_taken_ex(alu_ex_0_branch_jump_flag),
        .clk(clk_0_1),
        .current_addr(PC_0_current_addr),
        .ena_n(redirection_0_stall),
        .next_addr_branch(alu_ex_0_branch_addr),
        .next_addr_output(PC_0_next_addr_output),
        .rst_n(rst_n_0_1));
  bluex_alu_ex_0_0 alu_ex_0
       (.alu_op_inw(demux_id_0_real_op),
        .alu_result_back(wrapper_mem_0_alu_result),
        .alu_src_inw(controller_id_0_alu_src),
        .branch_addr(alu_ex_0_branch_addr),
        .branch_isc_flag_inw(controller_id_0_branch),
        .branch_jump_flag(alu_ex_0_branch_jump_flag),
        .clk(clk_0_1),
        .imm_inw(aux_id_0_sext_imm),
        .memory_to_reg(alu_ex_0_memory_to_reg),
        .memory_to_reg_inw(controller_id_0_memory_to_reg),
        .memory_write(alu_ex_0_memory_write),
        .memory_write_inw(controller_id_0_memory_write),
        .pc_next_inw(demux_id_0_pc_next),
        .rd_value(alu_ex_0_rd_value),
        .reg_write(alu_ex_0_reg_write),
        .reg_write_inw(controller_id_0_reg_write),
        .rs_forward_inw(redirection_0_rs_forward),
        .rs_inw(reg_heap_id_0_rs),
        .rst_n(redirection_0_flush),
        .rt_forward_inw(redirection_0_rt_forward),
        .rt_inw(reg_heap_id_0_rt),
        .write_back_data(reg_wb_0_write_back_data),
        .write_data(alu_ex_0_write_data),
        .write_reg_addr_in_inw(aux_id_0_addr_reg),
        .write_reg_addr_out(alu_ex_0_write_reg_addr_out));
  bluex_aux_id_0_0 aux_id_0
       (.addr_flag(controller_id_0_addr_flag),
        .addr_rd(demux_id_0_rd),
        .addr_reg(aux_id_0_addr_reg),
        .addr_rt(demux_id_0_rt),
        .imm(demux_id_0_imm),
        .sext_imm(aux_id_0_sext_imm));
  bluex_controller_id_0_0 controller_id_0
       (.addr_flag(controller_id_0_addr_flag),
        .alu_src(controller_id_0_alu_src),
        .branch(controller_id_0_branch),
        .memory_to_reg(controller_id_0_memory_to_reg),
        .memory_write(controller_id_0_memory_write),
        .real_op(demux_id_0_real_op),
        .reg_write(controller_id_0_reg_write));
  bluex_demux_id_0_0 demux_id_0
       (.clk(clk_0_1),
        .ena_n(redirection_0_stall),
        .imm(demux_id_0_imm),
        .isc(isc_0_1),
        .pc_next(demux_id_0_pc_next),
        .pc_next_inw(PC_0_next_addr_output),
        .rd(demux_id_0_rd),
        .real_op(demux_id_0_real_op),
        .rs(demux_id_0_rs),
        .rst_n(rst_n_0_1),
        .rt(demux_id_0_rt));
  bluex_redirection_0_0 redirection_0
       (.branch_taken_ex(alu_ex_0_branch_jump_flag),
        .flush(redirection_0_flush),
        .mem_rd_ex(alu_ex_0_memory_to_reg),
        .real_op(demux_id_0_real_op),
        .reg_write_ex(alu_ex_0_reg_write),
        .reg_write_mem(wrapper_mem_0_reg_write),
        .rs(demux_id_0_rs),
        .rs_forward(redirection_0_rs_forward),
        .rt(demux_id_0_rt),
        .rt_forward(redirection_0_rt_forward),
        .stall(redirection_0_stall),
        .write_reg_addr_ex(alu_ex_0_write_reg_addr_out),
        .write_reg_addr_mem(wrapper_mem_0_write_reg_addr));
  bluex_reg_heap_id_0_0 reg_heap_id_0
       (.addr_rs(demux_id_0_rs),
        .addr_rt(demux_id_0_rt),
        .addr_wr(reg_wb_0_write_reg_addr),
        .clk(clk_0_1),
        .rs(reg_heap_id_0_rs),
        .rst_n(rst_n_0_1),
        .rt(reg_heap_id_0_rt),
        .wd(reg_wb_0_write_back_data),
        .we(reg_wb_0_reg_write));
  bluex_reg_wb_0_0 reg_wb_0
       (.alu_result_inw(wrapper_mem_0_alu_result),
        .clk(clk_0_1),
        .mem_rd_inw(wrapper_mem_0_read_mem_out),
        .memory_to_reg_inw(wrapper_mem_0_memory_to_reg),
        .reg_write(reg_wb_0_reg_write),
        .reg_write_inw(wrapper_mem_0_reg_write),
        .rst_n(rst_n_0_1),
        .write_back_data(reg_wb_0_write_back_data),
        .write_reg_addr(reg_wb_0_write_reg_addr),
        .write_reg_addr_inw(wrapper_mem_0_write_reg_addr));
  bluex_wrapper_mem_0_0 wrapper_mem_0
       (.alu_result(wrapper_mem_0_alu_result),
        .alu_result_inw(alu_ex_0_rd_value),
        .clk(clk_0_1),
        .memory_to_reg(wrapper_mem_0_memory_to_reg),
        .memory_to_reg_inw(alu_ex_0_memory_to_reg),
        .memory_write_inw(alu_ex_0_memory_write),
        .read_mem_out(wrapper_mem_0_read_mem_out),
        .read_mem_out_inw(read_mem_out_inw_0_1),
        .reg_write(wrapper_mem_0_reg_write),
        .reg_write_inw(alu_ex_0_reg_write),
        .rst_n(rst_n_0_1),
        .write_data_inw(alu_ex_0_write_data),
        .write_mem_addr(wrapper_mem_0_write_mem_addr),
        .write_mem_clk(wrapper_mem_0_write_mem_clk),
        .write_mem_data(wrapper_mem_0_write_mem_data),
        .write_mem_en(wrapper_mem_0_write_mem_en),
        .write_reg_addr(wrapper_mem_0_write_reg_addr),
        .write_reg_addr_inw(alu_ex_0_write_reg_addr_out));
endmodule
