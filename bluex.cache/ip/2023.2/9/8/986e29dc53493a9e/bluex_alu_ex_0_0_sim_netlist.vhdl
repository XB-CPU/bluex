-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Sat Dec 23 23:12:33 2023
-- Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bluex_alu_ex_0_0_sim_netlist.vhdl
-- Design      : bluex_alu_ex_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu_ex is
  port (
    write_reg_addr_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    memory_write : out STD_LOGIC;
    memory_to_reg : out STD_LOGIC;
    reg_write : out STD_LOGIC;
    rd_value : out STD_LOGIC_VECTOR ( 31 downto 0 );
    write_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    branch_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    branch_jump_flag : out STD_LOGIC;
    write_back_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_result_back : in STD_LOGIC_VECTOR ( 31 downto 0 );
    enable_CPU : in STD_LOGIC;
    rt_forward_inw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rt_inw : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_src_inw : in STD_LOGIC;
    imm_inw : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rs_forward_inw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rs_inw : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_op_inw : in STD_LOGIC_VECTOR ( 5 downto 0 );
    branch_isc_flag_inw : in STD_LOGIC;
    pc_next_inw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    write_reg_addr_in_inw : in STD_LOGIC_VECTOR ( 4 downto 0 );
    memory_write_inw : in STD_LOGIC;
    memory_to_reg_inw : in STD_LOGIC;
    reg_write_inw : in STD_LOGIC;
    flush : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu_ex;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu_ex is
  signal alu_branch_result_i_10_n_0 : STD_LOGIC;
  signal alu_branch_result_i_11_n_0 : STD_LOGIC;
  signal alu_branch_result_i_12_n_0 : STD_LOGIC;
  signal alu_branch_result_i_14_n_0 : STD_LOGIC;
  signal alu_branch_result_i_15_n_0 : STD_LOGIC;
  signal alu_branch_result_i_16_n_0 : STD_LOGIC;
  signal alu_branch_result_i_17_n_0 : STD_LOGIC;
  signal alu_branch_result_i_19_n_0 : STD_LOGIC;
  signal alu_branch_result_i_1_n_0 : STD_LOGIC;
  signal alu_branch_result_i_20_n_0 : STD_LOGIC;
  signal alu_branch_result_i_21_n_0 : STD_LOGIC;
  signal alu_branch_result_i_22_n_0 : STD_LOGIC;
  signal alu_branch_result_i_23_n_0 : STD_LOGIC;
  signal alu_branch_result_i_24_n_0 : STD_LOGIC;
  signal alu_branch_result_i_25_n_0 : STD_LOGIC;
  signal alu_branch_result_i_26_n_0 : STD_LOGIC;
  signal alu_branch_result_i_27_n_0 : STD_LOGIC;
  signal alu_branch_result_i_28_n_0 : STD_LOGIC;
  signal alu_branch_result_i_29_n_0 : STD_LOGIC;
  signal alu_branch_result_i_2_n_0 : STD_LOGIC;
  signal alu_branch_result_i_30_n_0 : STD_LOGIC;
  signal alu_branch_result_i_6_n_0 : STD_LOGIC;
  signal alu_branch_result_i_7_n_0 : STD_LOGIC;
  signal alu_branch_result_i_8_n_0 : STD_LOGIC;
  signal alu_branch_result_reg_i_13_n_0 : STD_LOGIC;
  signal alu_branch_result_reg_i_13_n_1 : STD_LOGIC;
  signal alu_branch_result_reg_i_13_n_2 : STD_LOGIC;
  signal alu_branch_result_reg_i_13_n_3 : STD_LOGIC;
  signal alu_branch_result_reg_i_18_n_0 : STD_LOGIC;
  signal alu_branch_result_reg_i_18_n_1 : STD_LOGIC;
  signal alu_branch_result_reg_i_18_n_2 : STD_LOGIC;
  signal alu_branch_result_reg_i_18_n_3 : STD_LOGIC;
  signal alu_branch_result_reg_i_3_n_1 : STD_LOGIC;
  signal alu_branch_result_reg_i_3_n_2 : STD_LOGIC;
  signal alu_branch_result_reg_i_3_n_3 : STD_LOGIC;
  signal alu_branch_result_reg_i_4_n_1 : STD_LOGIC;
  signal alu_branch_result_reg_i_4_n_2 : STD_LOGIC;
  signal alu_branch_result_reg_i_4_n_3 : STD_LOGIC;
  signal alu_branch_result_reg_i_5_n_0 : STD_LOGIC;
  signal alu_branch_result_reg_i_5_n_1 : STD_LOGIC;
  signal alu_branch_result_reg_i_5_n_2 : STD_LOGIC;
  signal alu_branch_result_reg_i_5_n_3 : STD_LOGIC;
  signal alu_branch_result_reg_i_9_n_0 : STD_LOGIC;
  signal alu_branch_result_reg_i_9_n_1 : STD_LOGIC;
  signal alu_branch_result_reg_i_9_n_2 : STD_LOGIC;
  signal alu_branch_result_reg_i_9_n_3 : STD_LOGIC;
  signal alu_branch_result_reg_n_0 : STD_LOGIC;
  signal alu_op : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \alu_op_reg_n_0_[0]\ : STD_LOGIC;
  signal \alu_op_reg_n_0_[1]\ : STD_LOGIC;
  signal \alu_op_reg_n_0_[2]\ : STD_LOGIC;
  signal \alu_op_reg_n_0_[3]\ : STD_LOGIC;
  signal \alu_op_reg_n_0_[4]\ : STD_LOGIC;
  signal alu_src : STD_LOGIC;
  signal alu_src_s : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \alu_src_s__96\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal alu_src_t : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \alu_src_t__95\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \branch_addr_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \branch_addr_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \branch_addr_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \branch_addr_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \branch_addr_carry__0_n_0\ : STD_LOGIC;
  signal \branch_addr_carry__0_n_1\ : STD_LOGIC;
  signal \branch_addr_carry__0_n_2\ : STD_LOGIC;
  signal \branch_addr_carry__0_n_3\ : STD_LOGIC;
  signal \branch_addr_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \branch_addr_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \branch_addr_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \branch_addr_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \branch_addr_carry__1_n_0\ : STD_LOGIC;
  signal \branch_addr_carry__1_n_1\ : STD_LOGIC;
  signal \branch_addr_carry__1_n_2\ : STD_LOGIC;
  signal \branch_addr_carry__1_n_3\ : STD_LOGIC;
  signal \branch_addr_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \branch_addr_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \branch_addr_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \branch_addr_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \branch_addr_carry__2_n_1\ : STD_LOGIC;
  signal \branch_addr_carry__2_n_2\ : STD_LOGIC;
  signal \branch_addr_carry__2_n_3\ : STD_LOGIC;
  signal branch_addr_carry_i_1_n_0 : STD_LOGIC;
  signal branch_addr_carry_i_2_n_0 : STD_LOGIC;
  signal branch_addr_carry_i_3_n_0 : STD_LOGIC;
  signal branch_addr_carry_i_4_n_0 : STD_LOGIC;
  signal branch_addr_carry_n_0 : STD_LOGIC;
  signal branch_addr_carry_n_1 : STD_LOGIC;
  signal branch_addr_carry_n_2 : STD_LOGIC;
  signal branch_addr_carry_n_3 : STD_LOGIC;
  signal branch_isc_flag : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data9 : STD_LOGIC;
  signal \imm_reg_n_0_[0]\ : STD_LOGIC;
  signal \imm_reg_n_0_[10]\ : STD_LOGIC;
  signal \imm_reg_n_0_[11]\ : STD_LOGIC;
  signal \imm_reg_n_0_[12]\ : STD_LOGIC;
  signal \imm_reg_n_0_[13]\ : STD_LOGIC;
  signal \imm_reg_n_0_[14]\ : STD_LOGIC;
  signal \imm_reg_n_0_[15]\ : STD_LOGIC;
  signal \imm_reg_n_0_[16]\ : STD_LOGIC;
  signal \imm_reg_n_0_[17]\ : STD_LOGIC;
  signal \imm_reg_n_0_[18]\ : STD_LOGIC;
  signal \imm_reg_n_0_[19]\ : STD_LOGIC;
  signal \imm_reg_n_0_[1]\ : STD_LOGIC;
  signal \imm_reg_n_0_[20]\ : STD_LOGIC;
  signal \imm_reg_n_0_[21]\ : STD_LOGIC;
  signal \imm_reg_n_0_[22]\ : STD_LOGIC;
  signal \imm_reg_n_0_[23]\ : STD_LOGIC;
  signal \imm_reg_n_0_[24]\ : STD_LOGIC;
  signal \imm_reg_n_0_[25]\ : STD_LOGIC;
  signal \imm_reg_n_0_[26]\ : STD_LOGIC;
  signal \imm_reg_n_0_[27]\ : STD_LOGIC;
  signal \imm_reg_n_0_[28]\ : STD_LOGIC;
  signal \imm_reg_n_0_[29]\ : STD_LOGIC;
  signal \imm_reg_n_0_[2]\ : STD_LOGIC;
  signal \imm_reg_n_0_[30]\ : STD_LOGIC;
  signal \imm_reg_n_0_[31]\ : STD_LOGIC;
  signal \imm_reg_n_0_[3]\ : STD_LOGIC;
  signal \imm_reg_n_0_[4]\ : STD_LOGIC;
  signal \imm_reg_n_0_[5]\ : STD_LOGIC;
  signal \imm_reg_n_0_[6]\ : STD_LOGIC;
  signal \imm_reg_n_0_[7]\ : STD_LOGIC;
  signal \imm_reg_n_0_[8]\ : STD_LOGIC;
  signal \imm_reg_n_0_[9]\ : STD_LOGIC;
  signal pc_next : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rd_add_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \rd_add_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \rd_add_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \rd_add_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \rd_add_carry__0_n_0\ : STD_LOGIC;
  signal \rd_add_carry__0_n_1\ : STD_LOGIC;
  signal \rd_add_carry__0_n_2\ : STD_LOGIC;
  signal \rd_add_carry__0_n_3\ : STD_LOGIC;
  signal \rd_add_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \rd_add_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \rd_add_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \rd_add_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \rd_add_carry__1_n_0\ : STD_LOGIC;
  signal \rd_add_carry__1_n_1\ : STD_LOGIC;
  signal \rd_add_carry__1_n_2\ : STD_LOGIC;
  signal \rd_add_carry__1_n_3\ : STD_LOGIC;
  signal \rd_add_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \rd_add_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \rd_add_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \rd_add_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \rd_add_carry__2_n_0\ : STD_LOGIC;
  signal \rd_add_carry__2_n_1\ : STD_LOGIC;
  signal \rd_add_carry__2_n_2\ : STD_LOGIC;
  signal \rd_add_carry__2_n_3\ : STD_LOGIC;
  signal \rd_add_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \rd_add_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \rd_add_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \rd_add_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \rd_add_carry__3_n_0\ : STD_LOGIC;
  signal \rd_add_carry__3_n_1\ : STD_LOGIC;
  signal \rd_add_carry__3_n_2\ : STD_LOGIC;
  signal \rd_add_carry__3_n_3\ : STD_LOGIC;
  signal \rd_add_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \rd_add_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \rd_add_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \rd_add_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \rd_add_carry__4_n_0\ : STD_LOGIC;
  signal \rd_add_carry__4_n_1\ : STD_LOGIC;
  signal \rd_add_carry__4_n_2\ : STD_LOGIC;
  signal \rd_add_carry__4_n_3\ : STD_LOGIC;
  signal \rd_add_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \rd_add_carry__5_i_6_n_0\ : STD_LOGIC;
  signal \rd_add_carry__5_i_7_n_0\ : STD_LOGIC;
  signal \rd_add_carry__5_i_8_n_0\ : STD_LOGIC;
  signal \rd_add_carry__5_n_0\ : STD_LOGIC;
  signal \rd_add_carry__5_n_1\ : STD_LOGIC;
  signal \rd_add_carry__5_n_2\ : STD_LOGIC;
  signal \rd_add_carry__5_n_3\ : STD_LOGIC;
  signal \rd_add_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \rd_add_carry__6_i_5_n_0\ : STD_LOGIC;
  signal \rd_add_carry__6_i_6_n_0\ : STD_LOGIC;
  signal \rd_add_carry__6_i_7_n_0\ : STD_LOGIC;
  signal \rd_add_carry__6_n_1\ : STD_LOGIC;
  signal \rd_add_carry__6_n_2\ : STD_LOGIC;
  signal \rd_add_carry__6_n_3\ : STD_LOGIC;
  signal rd_add_carry_i_5_n_0 : STD_LOGIC;
  signal rd_add_carry_i_6_n_0 : STD_LOGIC;
  signal rd_add_carry_i_7_n_0 : STD_LOGIC;
  signal rd_add_carry_i_8_n_0 : STD_LOGIC;
  signal rd_add_carry_n_0 : STD_LOGIC;
  signal rd_add_carry_n_1 : STD_LOGIC;
  signal rd_add_carry_n_2 : STD_LOGIC;
  signal rd_add_carry_n_3 : STD_LOGIC;
  signal \rd_sub_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__0_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__0_n_1\ : STD_LOGIC;
  signal \rd_sub_carry__0_n_2\ : STD_LOGIC;
  signal \rd_sub_carry__0_n_3\ : STD_LOGIC;
  signal \rd_sub_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__1_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__1_n_1\ : STD_LOGIC;
  signal \rd_sub_carry__1_n_2\ : STD_LOGIC;
  signal \rd_sub_carry__1_n_3\ : STD_LOGIC;
  signal \rd_sub_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__2_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__2_n_1\ : STD_LOGIC;
  signal \rd_sub_carry__2_n_2\ : STD_LOGIC;
  signal \rd_sub_carry__2_n_3\ : STD_LOGIC;
  signal \rd_sub_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__3_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__3_n_1\ : STD_LOGIC;
  signal \rd_sub_carry__3_n_2\ : STD_LOGIC;
  signal \rd_sub_carry__3_n_3\ : STD_LOGIC;
  signal \rd_sub_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__4_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__4_n_1\ : STD_LOGIC;
  signal \rd_sub_carry__4_n_2\ : STD_LOGIC;
  signal \rd_sub_carry__4_n_3\ : STD_LOGIC;
  signal \rd_sub_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__5_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__5_n_1\ : STD_LOGIC;
  signal \rd_sub_carry__5_n_2\ : STD_LOGIC;
  signal \rd_sub_carry__5_n_3\ : STD_LOGIC;
  signal \rd_sub_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \rd_sub_carry__6_n_1\ : STD_LOGIC;
  signal \rd_sub_carry__6_n_2\ : STD_LOGIC;
  signal \rd_sub_carry__6_n_3\ : STD_LOGIC;
  signal rd_sub_carry_i_1_n_0 : STD_LOGIC;
  signal rd_sub_carry_i_2_n_0 : STD_LOGIC;
  signal rd_sub_carry_i_3_n_0 : STD_LOGIC;
  signal rd_sub_carry_i_4_n_0 : STD_LOGIC;
  signal rd_sub_carry_n_0 : STD_LOGIC;
  signal rd_sub_carry_n_1 : STD_LOGIC;
  signal rd_sub_carry_n_2 : STD_LOGIC;
  signal rd_sub_carry_n_3 : STD_LOGIC;
  signal \rd_value2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__0_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__0_n_1\ : STD_LOGIC;
  signal \rd_value2_carry__0_n_2\ : STD_LOGIC;
  signal \rd_value2_carry__0_n_3\ : STD_LOGIC;
  signal \rd_value2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__1_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__1_n_1\ : STD_LOGIC;
  signal \rd_value2_carry__1_n_2\ : STD_LOGIC;
  signal \rd_value2_carry__1_n_3\ : STD_LOGIC;
  signal \rd_value2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \rd_value2_carry__2_n_1\ : STD_LOGIC;
  signal \rd_value2_carry__2_n_2\ : STD_LOGIC;
  signal \rd_value2_carry__2_n_3\ : STD_LOGIC;
  signal rd_value2_carry_i_1_n_0 : STD_LOGIC;
  signal rd_value2_carry_i_2_n_0 : STD_LOGIC;
  signal rd_value2_carry_i_3_n_0 : STD_LOGIC;
  signal rd_value2_carry_i_4_n_0 : STD_LOGIC;
  signal rd_value2_carry_i_5_n_0 : STD_LOGIC;
  signal rd_value2_carry_i_6_n_0 : STD_LOGIC;
  signal rd_value2_carry_i_7_n_0 : STD_LOGIC;
  signal rd_value2_carry_i_8_n_0 : STD_LOGIC;
  signal rd_value2_carry_n_0 : STD_LOGIC;
  signal rd_value2_carry_n_1 : STD_LOGIC;
  signal rd_value2_carry_n_2 : STD_LOGIC;
  signal rd_value2_carry_n_3 : STD_LOGIC;
  signal \rd_value[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \rd_value[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \rd_value[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \rd_value[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \rd_value[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \rd_value[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[13]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[13]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[15]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[15]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[15]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \rd_value[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \rd_value[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \rd_value[17]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \rd_value[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[17]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[17]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[17]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \rd_value[18]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \rd_value[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[18]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[18]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[18]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \rd_value[19]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \rd_value[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[19]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[19]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[19]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[19]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[19]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \rd_value[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[20]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[20]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[20]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[20]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[20]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \rd_value[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[21]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[21]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[21]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[21]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[21]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \rd_value[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[23]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[23]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[23]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[23]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[24]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[24]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[24]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \rd_value[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[25]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[25]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[25]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[25]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[25]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \rd_value[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[26]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[27]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[27]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[27]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[27]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[28]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[28]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[28]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[28]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[29]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[29]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[29]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[29]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[30]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \rd_value[30]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \rd_value[30]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \rd_value[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[30]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[30]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[30]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[30]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \rd_value[31]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \rd_value[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \rd_value[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rd_value[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rd_value[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rd_value[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \rd_value[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \rd_value[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \rd_value[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal read_write_rst : STD_LOGIC;
  signal rs : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rs_forward : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rt_forward : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^write_data\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_alu_branch_result_reg_i_13_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_alu_branch_result_reg_i_18_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_alu_branch_result_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_alu_branch_result_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_alu_branch_result_reg_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_alu_branch_result_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_alu_branch_result_reg_i_5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_alu_branch_result_reg_i_9_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_branch_addr_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rd_add_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rd_sub_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_rd_value2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rd_value2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rd_value2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rd_value2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of branch_addr_carry : label is 35;
  attribute ADDER_THRESHOLD of \branch_addr_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \branch_addr_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \branch_addr_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of rd_add_carry : label is 35;
  attribute ADDER_THRESHOLD of \rd_add_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \rd_add_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \rd_add_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \rd_add_carry__3\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rd_add_carry__3_i_10\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rd_add_carry__3_i_11\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rd_add_carry__3_i_12\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rd_add_carry__3_i_9\ : label is "soft_lutpair34";
  attribute ADDER_THRESHOLD of \rd_add_carry__4\ : label is 35;
  attribute SOFT_HLUTNM of \rd_add_carry__4_i_10\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rd_add_carry__4_i_11\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rd_add_carry__4_i_12\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rd_add_carry__4_i_9\ : label is "soft_lutpair33";
  attribute ADDER_THRESHOLD of \rd_add_carry__5\ : label is 35;
  attribute SOFT_HLUTNM of \rd_add_carry__5_i_10\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rd_add_carry__5_i_11\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rd_add_carry__5_i_12\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rd_add_carry__5_i_9\ : label is "soft_lutpair31";
  attribute ADDER_THRESHOLD of \rd_add_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \rd_add_carry__6_i_8\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rd_add_carry__6_i_9\ : label is "soft_lutpair30";
  attribute ADDER_THRESHOLD of rd_sub_carry : label is 35;
  attribute ADDER_THRESHOLD of \rd_sub_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \rd_sub_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \rd_sub_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \rd_sub_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \rd_sub_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \rd_sub_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \rd_sub_carry__6\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of rd_value2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \rd_value2_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rd_value2_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rd_value2_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \rd_value[0]_INST_0_i_6\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rd_value[0]_INST_0_i_7\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rd_value[10]_INST_0_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rd_value[11]_INST_0_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rd_value[12]_INST_0_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rd_value[13]_INST_0_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rd_value[14]_INST_0_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rd_value[15]_INST_0_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rd_value[15]_INST_0_i_9\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rd_value[16]_INST_0_i_10\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rd_value[16]_INST_0_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rd_value[16]_INST_0_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rd_value[16]_INST_0_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rd_value[17]_INST_0_i_8\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rd_value[17]_INST_0_i_9\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rd_value[18]_INST_0_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rd_value[18]_INST_0_i_9\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rd_value[19]_INST_0_i_10\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rd_value[19]_INST_0_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rd_value[19]_INST_0_i_9\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rd_value[1]_INST_0_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rd_value[20]_INST_0_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rd_value[21]_INST_0_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rd_value[21]_INST_0_i_9\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rd_value[22]_INST_0_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rd_value[22]_INST_0_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rd_value[23]_INST_0_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rd_value[23]_INST_0_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rd_value[23]_INST_0_i_8\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rd_value[24]_INST_0_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rd_value[24]_INST_0_i_9\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rd_value[25]_INST_0_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rd_value[25]_INST_0_i_8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rd_value[26]_INST_0_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rd_value[26]_INST_0_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rd_value[26]_INST_0_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rd_value[26]_INST_0_i_8\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rd_value[27]_INST_0_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rd_value[27]_INST_0_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rd_value[27]_INST_0_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rd_value[28]_INST_0_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rd_value[28]_INST_0_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rd_value[28]_INST_0_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rd_value[29]_INST_0_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rd_value[29]_INST_0_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rd_value[29]_INST_0_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rd_value[2]_INST_0_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rd_value[30]_INST_0_i_12\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rd_value[30]_INST_0_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rd_value[30]_INST_0_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rd_value[30]_INST_0_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rd_value[31]_INST_0_i_22\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rd_value[31]_INST_0_i_28\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rd_value[31]_INST_0_i_29\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rd_value[31]_INST_0_i_30\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rd_value[31]_INST_0_i_31\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rd_value[31]_INST_0_i_32\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rd_value[31]_INST_0_i_33\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rd_value[31]_INST_0_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rd_value[31]_INST_0_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rd_value[3]_INST_0_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rd_value[4]_INST_0_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rd_value[5]_INST_0_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rd_value[6]_INST_0_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rd_value[7]_INST_0_i_5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rd_value[8]_INST_0_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rd_value[8]_INST_0_i_7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rd_value[9]_INST_0_i_7\ : label is "soft_lutpair9";
begin
  write_data(31 downto 0) <= \^write_data\(31 downto 0);
alu_branch_result_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A828880"
    )
        port map (
      I0 => alu_branch_result_i_2_n_0,
      I1 => \alu_op_reg_n_0_[0]\,
      I2 => \alu_op_reg_n_0_[2]\,
      I3 => alu_branch_result_reg_i_3_n_1,
      I4 => alu_branch_result_reg_i_4_n_1,
      O => alu_branch_result_i_1_n_0
    );
alu_branch_result_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => alu_src_s(30),
      I1 => alu_src_t(30),
      I2 => \rd_value2_carry__2_i_9_n_0\,
      O => alu_branch_result_i_10_n_0
    );
alu_branch_result_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(27),
      I1 => alu_src_s(27),
      I2 => alu_src_s(28),
      I3 => alu_src_t(28),
      I4 => alu_src_t(29),
      I5 => alu_src_s(29),
      O => alu_branch_result_i_11_n_0
    );
alu_branch_result_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(24),
      I1 => alu_src_s(24),
      I2 => alu_src_s(25),
      I3 => alu_src_t(25),
      I4 => alu_src_t(26),
      I5 => alu_src_s(26),
      O => alu_branch_result_i_12_n_0
    );
alu_branch_result_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(21),
      I1 => alu_src_s(21),
      I2 => alu_src_s(22),
      I3 => alu_src_t(22),
      I4 => alu_src_t(23),
      I5 => alu_src_s(23),
      O => alu_branch_result_i_14_n_0
    );
alu_branch_result_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(18),
      I1 => alu_src_s(18),
      I2 => alu_src_s(19),
      I3 => alu_src_t(19),
      I4 => alu_src_t(20),
      I5 => alu_src_s(20),
      O => alu_branch_result_i_15_n_0
    );
alu_branch_result_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(15),
      I1 => alu_src_s(15),
      I2 => alu_src_s(16),
      I3 => alu_src_t(16),
      I4 => alu_src_t(17),
      I5 => alu_src_s(17),
      O => alu_branch_result_i_16_n_0
    );
alu_branch_result_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(12),
      I1 => alu_src_s(12),
      I2 => alu_src_s(13),
      I3 => alu_src_t(13),
      I4 => alu_src_t(14),
      I5 => alu_src_s(14),
      O => alu_branch_result_i_17_n_0
    );
alu_branch_result_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(21),
      I1 => alu_src_s(21),
      I2 => alu_src_s(22),
      I3 => alu_src_t(22),
      I4 => alu_src_t(23),
      I5 => alu_src_s(23),
      O => alu_branch_result_i_19_n_0
    );
alu_branch_result_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008100"
    )
        port map (
      I0 => \alu_op_reg_n_0_[4]\,
      I1 => \alu_op_reg_n_0_[3]\,
      I2 => \alu_op_reg_n_0_[2]\,
      I3 => \alu_op_reg_n_0_[1]\,
      I4 => alu_op(5),
      O => alu_branch_result_i_2_n_0
    );
alu_branch_result_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(18),
      I1 => alu_src_s(18),
      I2 => alu_src_s(19),
      I3 => alu_src_t(19),
      I4 => alu_src_t(20),
      I5 => alu_src_s(20),
      O => alu_branch_result_i_20_n_0
    );
alu_branch_result_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(15),
      I1 => alu_src_s(15),
      I2 => alu_src_s(16),
      I3 => alu_src_t(16),
      I4 => alu_src_t(17),
      I5 => alu_src_s(17),
      O => alu_branch_result_i_21_n_0
    );
alu_branch_result_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(12),
      I1 => alu_src_s(12),
      I2 => alu_src_s(13),
      I3 => alu_src_t(13),
      I4 => alu_src_t(14),
      I5 => alu_src_s(14),
      O => alu_branch_result_i_22_n_0
    );
alu_branch_result_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(9),
      I1 => alu_src_s(9),
      I2 => alu_src_s(10),
      I3 => alu_src_t(10),
      I4 => alu_src_t(11),
      I5 => alu_src_s(11),
      O => alu_branch_result_i_23_n_0
    );
alu_branch_result_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(6),
      I1 => alu_src_s(6),
      I2 => alu_src_s(7),
      I3 => alu_src_t(7),
      I4 => alu_src_t(8),
      I5 => alu_src_s(8),
      O => alu_branch_result_i_24_n_0
    );
alu_branch_result_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(3),
      I1 => alu_src_s(3),
      I2 => alu_src_s(4),
      I3 => alu_src_t(4),
      I4 => alu_src_t(5),
      I5 => alu_src_s(5),
      O => alu_branch_result_i_25_n_0
    );
alu_branch_result_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(0),
      I1 => alu_src_s(0),
      I2 => alu_src_s(1),
      I3 => alu_src_t(1),
      I4 => alu_src_t(2),
      I5 => alu_src_s(2),
      O => alu_branch_result_i_26_n_0
    );
alu_branch_result_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(9),
      I1 => alu_src_s(9),
      I2 => alu_src_s(10),
      I3 => alu_src_t(10),
      I4 => alu_src_t(11),
      I5 => alu_src_s(11),
      O => alu_branch_result_i_27_n_0
    );
alu_branch_result_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(6),
      I1 => alu_src_s(6),
      I2 => alu_src_s(7),
      I3 => alu_src_t(7),
      I4 => alu_src_t(8),
      I5 => alu_src_s(8),
      O => alu_branch_result_i_28_n_0
    );
alu_branch_result_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(3),
      I1 => alu_src_s(3),
      I2 => alu_src_s(4),
      I3 => alu_src_t(4),
      I4 => alu_src_t(5),
      I5 => alu_src_s(5),
      O => alu_branch_result_i_29_n_0
    );
alu_branch_result_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(0),
      I1 => alu_src_s(0),
      I2 => alu_src_s(1),
      I3 => alu_src_t(1),
      I4 => alu_src_t(2),
      I5 => alu_src_s(2),
      O => alu_branch_result_i_30_n_0
    );
alu_branch_result_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => alu_src_s(30),
      I1 => alu_src_t(30),
      I2 => \rd_value2_carry__2_i_9_n_0\,
      O => alu_branch_result_i_6_n_0
    );
alu_branch_result_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(27),
      I1 => alu_src_s(27),
      I2 => alu_src_s(28),
      I3 => alu_src_t(28),
      I4 => alu_src_t(29),
      I5 => alu_src_s(29),
      O => alu_branch_result_i_7_n_0
    );
alu_branch_result_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => alu_src_t(24),
      I1 => alu_src_s(24),
      I2 => alu_src_s(25),
      I3 => alu_src_t(25),
      I4 => alu_src_t(26),
      I5 => alu_src_s(26),
      O => alu_branch_result_i_8_n_0
    );
alu_branch_result_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => alu_branch_result_i_1_n_0,
      Q => alu_branch_result_reg_n_0
    );
alu_branch_result_reg_i_13: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => alu_branch_result_reg_i_13_n_0,
      CO(2) => alu_branch_result_reg_i_13_n_1,
      CO(1) => alu_branch_result_reg_i_13_n_2,
      CO(0) => alu_branch_result_reg_i_13_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_alu_branch_result_reg_i_13_O_UNCONNECTED(3 downto 0),
      S(3) => alu_branch_result_i_23_n_0,
      S(2) => alu_branch_result_i_24_n_0,
      S(1) => alu_branch_result_i_25_n_0,
      S(0) => alu_branch_result_i_26_n_0
    );
alu_branch_result_reg_i_18: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => alu_branch_result_reg_i_18_n_0,
      CO(2) => alu_branch_result_reg_i_18_n_1,
      CO(1) => alu_branch_result_reg_i_18_n_2,
      CO(0) => alu_branch_result_reg_i_18_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_alu_branch_result_reg_i_18_O_UNCONNECTED(3 downto 0),
      S(3) => alu_branch_result_i_27_n_0,
      S(2) => alu_branch_result_i_28_n_0,
      S(1) => alu_branch_result_i_29_n_0,
      S(0) => alu_branch_result_i_30_n_0
    );
alu_branch_result_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => alu_branch_result_reg_i_5_n_0,
      CO(3) => NLW_alu_branch_result_reg_i_3_CO_UNCONNECTED(3),
      CO(2) => alu_branch_result_reg_i_3_n_1,
      CO(1) => alu_branch_result_reg_i_3_n_2,
      CO(0) => alu_branch_result_reg_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_alu_branch_result_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => alu_branch_result_i_6_n_0,
      S(1) => alu_branch_result_i_7_n_0,
      S(0) => alu_branch_result_i_8_n_0
    );
alu_branch_result_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => alu_branch_result_reg_i_9_n_0,
      CO(3) => NLW_alu_branch_result_reg_i_4_CO_UNCONNECTED(3),
      CO(2) => alu_branch_result_reg_i_4_n_1,
      CO(1) => alu_branch_result_reg_i_4_n_2,
      CO(0) => alu_branch_result_reg_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => NLW_alu_branch_result_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => alu_branch_result_i_10_n_0,
      S(1) => alu_branch_result_i_11_n_0,
      S(0) => alu_branch_result_i_12_n_0
    );
alu_branch_result_reg_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => alu_branch_result_reg_i_13_n_0,
      CO(3) => alu_branch_result_reg_i_5_n_0,
      CO(2) => alu_branch_result_reg_i_5_n_1,
      CO(1) => alu_branch_result_reg_i_5_n_2,
      CO(0) => alu_branch_result_reg_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_alu_branch_result_reg_i_5_O_UNCONNECTED(3 downto 0),
      S(3) => alu_branch_result_i_14_n_0,
      S(2) => alu_branch_result_i_15_n_0,
      S(1) => alu_branch_result_i_16_n_0,
      S(0) => alu_branch_result_i_17_n_0
    );
alu_branch_result_reg_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => alu_branch_result_reg_i_18_n_0,
      CO(3) => alu_branch_result_reg_i_9_n_0,
      CO(2) => alu_branch_result_reg_i_9_n_1,
      CO(1) => alu_branch_result_reg_i_9_n_2,
      CO(0) => alu_branch_result_reg_i_9_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_alu_branch_result_reg_i_9_O_UNCONNECTED(3 downto 0),
      S(3) => alu_branch_result_i_19_n_0,
      S(2) => alu_branch_result_i_20_n_0,
      S(1) => alu_branch_result_i_21_n_0,
      S(0) => alu_branch_result_i_22_n_0
    );
\alu_op_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => alu_op_inw(0),
      Q => \alu_op_reg_n_0_[0]\
    );
\alu_op_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => alu_op_inw(1),
      Q => \alu_op_reg_n_0_[1]\
    );
\alu_op_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => alu_op_inw(2),
      Q => \alu_op_reg_n_0_[2]\
    );
\alu_op_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => alu_op_inw(3),
      Q => \alu_op_reg_n_0_[3]\
    );
\alu_op_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => alu_op_inw(4),
      Q => \alu_op_reg_n_0_[4]\
    );
\alu_op_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => alu_op_inw(5),
      Q => alu_op(5)
    );
alu_src_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => alu_src_inw,
      Q => alu_src
    );
branch_PC_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => branch_isc_flag,
      I1 => alu_branch_result_reg_n_0,
      O => branch_jump_flag
    );
branch_addr_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => branch_addr_carry_n_0,
      CO(2) => branch_addr_carry_n_1,
      CO(1) => branch_addr_carry_n_2,
      CO(0) => branch_addr_carry_n_3,
      CYINIT => '0',
      DI(3) => \imm_reg_n_0_[3]\,
      DI(2) => \imm_reg_n_0_[2]\,
      DI(1) => \imm_reg_n_0_[1]\,
      DI(0) => \imm_reg_n_0_[0]\,
      O(3 downto 0) => branch_addr(3 downto 0),
      S(3) => branch_addr_carry_i_1_n_0,
      S(2) => branch_addr_carry_i_2_n_0,
      S(1) => branch_addr_carry_i_3_n_0,
      S(0) => branch_addr_carry_i_4_n_0
    );
\branch_addr_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => branch_addr_carry_n_0,
      CO(3) => \branch_addr_carry__0_n_0\,
      CO(2) => \branch_addr_carry__0_n_1\,
      CO(1) => \branch_addr_carry__0_n_2\,
      CO(0) => \branch_addr_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \imm_reg_n_0_[7]\,
      DI(2) => \imm_reg_n_0_[6]\,
      DI(1) => \imm_reg_n_0_[5]\,
      DI(0) => \imm_reg_n_0_[4]\,
      O(3 downto 0) => branch_addr(7 downto 4),
      S(3) => \branch_addr_carry__0_i_1_n_0\,
      S(2) => \branch_addr_carry__0_i_2_n_0\,
      S(1) => \branch_addr_carry__0_i_3_n_0\,
      S(0) => \branch_addr_carry__0_i_4_n_0\
    );
\branch_addr_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[7]\,
      I1 => pc_next(7),
      O => \branch_addr_carry__0_i_1_n_0\
    );
\branch_addr_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[6]\,
      I1 => pc_next(6),
      O => \branch_addr_carry__0_i_2_n_0\
    );
\branch_addr_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[5]\,
      I1 => pc_next(5),
      O => \branch_addr_carry__0_i_3_n_0\
    );
\branch_addr_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[4]\,
      I1 => pc_next(4),
      O => \branch_addr_carry__0_i_4_n_0\
    );
\branch_addr_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_addr_carry__0_n_0\,
      CO(3) => \branch_addr_carry__1_n_0\,
      CO(2) => \branch_addr_carry__1_n_1\,
      CO(1) => \branch_addr_carry__1_n_2\,
      CO(0) => \branch_addr_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \imm_reg_n_0_[11]\,
      DI(2) => \imm_reg_n_0_[10]\,
      DI(1) => \imm_reg_n_0_[9]\,
      DI(0) => \imm_reg_n_0_[8]\,
      O(3 downto 0) => branch_addr(11 downto 8),
      S(3) => \branch_addr_carry__1_i_1_n_0\,
      S(2) => \branch_addr_carry__1_i_2_n_0\,
      S(1) => \branch_addr_carry__1_i_3_n_0\,
      S(0) => \branch_addr_carry__1_i_4_n_0\
    );
\branch_addr_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[11]\,
      I1 => pc_next(11),
      O => \branch_addr_carry__1_i_1_n_0\
    );
\branch_addr_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[10]\,
      I1 => pc_next(10),
      O => \branch_addr_carry__1_i_2_n_0\
    );
\branch_addr_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[9]\,
      I1 => pc_next(9),
      O => \branch_addr_carry__1_i_3_n_0\
    );
\branch_addr_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[8]\,
      I1 => pc_next(8),
      O => \branch_addr_carry__1_i_4_n_0\
    );
\branch_addr_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \branch_addr_carry__1_n_0\,
      CO(3) => \NLW_branch_addr_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \branch_addr_carry__2_n_1\,
      CO(1) => \branch_addr_carry__2_n_2\,
      CO(0) => \branch_addr_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \imm_reg_n_0_[14]\,
      DI(1) => \imm_reg_n_0_[13]\,
      DI(0) => \imm_reg_n_0_[12]\,
      O(3 downto 0) => branch_addr(15 downto 12),
      S(3) => \branch_addr_carry__2_i_1_n_0\,
      S(2) => \branch_addr_carry__2_i_2_n_0\,
      S(1) => \branch_addr_carry__2_i_3_n_0\,
      S(0) => \branch_addr_carry__2_i_4_n_0\
    );
\branch_addr_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[15]\,
      I1 => pc_next(15),
      O => \branch_addr_carry__2_i_1_n_0\
    );
\branch_addr_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[14]\,
      I1 => pc_next(14),
      O => \branch_addr_carry__2_i_2_n_0\
    );
\branch_addr_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[13]\,
      I1 => pc_next(13),
      O => \branch_addr_carry__2_i_3_n_0\
    );
\branch_addr_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[12]\,
      I1 => pc_next(12),
      O => \branch_addr_carry__2_i_4_n_0\
    );
branch_addr_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[3]\,
      I1 => pc_next(3),
      O => branch_addr_carry_i_1_n_0
    );
branch_addr_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[2]\,
      I1 => pc_next(2),
      O => branch_addr_carry_i_2_n_0
    );
branch_addr_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[1]\,
      I1 => pc_next(1),
      O => branch_addr_carry_i_3_n_0
    );
branch_addr_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \imm_reg_n_0_[0]\,
      I1 => pc_next(0),
      O => branch_addr_carry_i_4_n_0
    );
branch_isc_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => branch_isc_flag_inw,
      Q => branch_isc_flag
    );
\imm_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(0),
      Q => \imm_reg_n_0_[0]\
    );
\imm_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(10),
      Q => \imm_reg_n_0_[10]\
    );
\imm_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(11),
      Q => \imm_reg_n_0_[11]\
    );
\imm_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(12),
      Q => \imm_reg_n_0_[12]\
    );
\imm_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(13),
      Q => \imm_reg_n_0_[13]\
    );
\imm_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(14),
      Q => \imm_reg_n_0_[14]\
    );
\imm_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(15),
      Q => \imm_reg_n_0_[15]\
    );
\imm_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(16),
      Q => \imm_reg_n_0_[16]\
    );
\imm_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(17),
      Q => \imm_reg_n_0_[17]\
    );
\imm_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(18),
      Q => \imm_reg_n_0_[18]\
    );
\imm_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(19),
      Q => \imm_reg_n_0_[19]\
    );
\imm_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(1),
      Q => \imm_reg_n_0_[1]\
    );
\imm_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(20),
      Q => \imm_reg_n_0_[20]\
    );
\imm_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(21),
      Q => \imm_reg_n_0_[21]\
    );
\imm_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(22),
      Q => \imm_reg_n_0_[22]\
    );
\imm_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(23),
      Q => \imm_reg_n_0_[23]\
    );
\imm_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(24),
      Q => \imm_reg_n_0_[24]\
    );
\imm_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(25),
      Q => \imm_reg_n_0_[25]\
    );
\imm_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(26),
      Q => \imm_reg_n_0_[26]\
    );
\imm_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(27),
      Q => \imm_reg_n_0_[27]\
    );
\imm_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(28),
      Q => \imm_reg_n_0_[28]\
    );
\imm_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(29),
      Q => \imm_reg_n_0_[29]\
    );
\imm_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(2),
      Q => \imm_reg_n_0_[2]\
    );
\imm_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(30),
      Q => \imm_reg_n_0_[30]\
    );
\imm_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(31),
      Q => \imm_reg_n_0_[31]\
    );
\imm_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(3),
      Q => \imm_reg_n_0_[3]\
    );
\imm_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(4),
      Q => \imm_reg_n_0_[4]\
    );
\imm_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(5),
      Q => \imm_reg_n_0_[5]\
    );
\imm_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(6),
      Q => \imm_reg_n_0_[6]\
    );
\imm_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(7),
      Q => \imm_reg_n_0_[7]\
    );
\imm_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(8),
      Q => \imm_reg_n_0_[8]\
    );
\imm_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => imm_inw(9),
      Q => \imm_reg_n_0_[9]\
    );
memory_to_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => read_write_rst,
      D => memory_to_reg_inw,
      Q => memory_to_reg
    );
memory_write_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => read_write_rst,
      D => memory_write_inw,
      Q => memory_write
    );
\pc_next_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(0),
      Q => pc_next(0)
    );
\pc_next_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(10),
      Q => pc_next(10)
    );
\pc_next_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(11),
      Q => pc_next(11)
    );
\pc_next_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(12),
      Q => pc_next(12)
    );
\pc_next_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(13),
      Q => pc_next(13)
    );
\pc_next_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(14),
      Q => pc_next(14)
    );
\pc_next_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(15),
      Q => pc_next(15)
    );
\pc_next_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(1),
      Q => pc_next(1)
    );
\pc_next_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(2),
      Q => pc_next(2)
    );
\pc_next_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(3),
      Q => pc_next(3)
    );
\pc_next_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(4),
      Q => pc_next(4)
    );
\pc_next_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(5),
      Q => pc_next(5)
    );
\pc_next_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(6),
      Q => pc_next(6)
    );
\pc_next_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(7),
      Q => pc_next(7)
    );
\pc_next_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(8),
      Q => pc_next(8)
    );
\pc_next_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => pc_next_inw(9),
      Q => pc_next(9)
    );
rd_add_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rd_add_carry_n_0,
      CO(2) => rd_add_carry_n_1,
      CO(1) => rd_add_carry_n_2,
      CO(0) => rd_add_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => alu_src_s(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => rd_add_carry_i_5_n_0,
      S(2) => rd_add_carry_i_6_n_0,
      S(1) => rd_add_carry_i_7_n_0,
      S(0) => rd_add_carry_i_8_n_0
    );
\rd_add_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rd_add_carry_n_0,
      CO(3) => \rd_add_carry__0_n_0\,
      CO(2) => \rd_add_carry__0_n_1\,
      CO(1) => \rd_add_carry__0_n_2\,
      CO(0) => \rd_add_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => alu_src_s(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \rd_add_carry__0_i_5_n_0\,
      S(2) => \rd_add_carry__0_i_6_n_0\,
      S(1) => \rd_add_carry__0_i_7_n_0\,
      S(0) => \rd_add_carry__0_i_8_n_0\
    );
\rd_add_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(7),
      I1 => write_back_data(7),
      I2 => alu_result_back(7),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(7)
    );
\rd_add_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(6),
      I1 => write_back_data(6),
      I2 => alu_result_back(6),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(6)
    );
\rd_add_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(5),
      I1 => write_back_data(5),
      I2 => alu_result_back(5),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(5)
    );
\rd_add_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(4),
      I1 => write_back_data(4),
      I2 => alu_result_back(4),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(4)
    );
\rd_add_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(7),
      I3 => write_back_data(7),
      I4 => rs(7),
      I5 => alu_src_t(7),
      O => \rd_add_carry__0_i_5_n_0\
    );
\rd_add_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(6),
      I3 => write_back_data(6),
      I4 => rs(6),
      I5 => alu_src_t(6),
      O => \rd_add_carry__0_i_6_n_0\
    );
\rd_add_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(5),
      I3 => write_back_data(5),
      I4 => rs(5),
      I5 => alu_src_t(5),
      O => \rd_add_carry__0_i_7_n_0\
    );
\rd_add_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(4),
      I3 => write_back_data(4),
      I4 => rs(4),
      I5 => alu_src_t(4),
      O => \rd_add_carry__0_i_8_n_0\
    );
\rd_add_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_add_carry__0_n_0\,
      CO(3) => \rd_add_carry__1_n_0\,
      CO(2) => \rd_add_carry__1_n_1\,
      CO(1) => \rd_add_carry__1_n_2\,
      CO(0) => \rd_add_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => alu_src_s(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \rd_add_carry__1_i_5_n_0\,
      S(2) => \rd_add_carry__1_i_6_n_0\,
      S(1) => \rd_add_carry__1_i_7_n_0\,
      S(0) => \rd_add_carry__1_i_8_n_0\
    );
\rd_add_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(11),
      I1 => write_back_data(11),
      I2 => alu_result_back(11),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(11)
    );
\rd_add_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(10),
      I1 => write_back_data(10),
      I2 => alu_result_back(10),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(10)
    );
\rd_add_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(9),
      I1 => write_back_data(9),
      I2 => alu_result_back(9),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(9)
    );
\rd_add_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(8),
      I1 => write_back_data(8),
      I2 => alu_result_back(8),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(8)
    );
\rd_add_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(11),
      I3 => write_back_data(11),
      I4 => rs(11),
      I5 => alu_src_t(11),
      O => \rd_add_carry__1_i_5_n_0\
    );
\rd_add_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(10),
      I3 => write_back_data(10),
      I4 => rs(10),
      I5 => alu_src_t(10),
      O => \rd_add_carry__1_i_6_n_0\
    );
\rd_add_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(9),
      I3 => write_back_data(9),
      I4 => rs(9),
      I5 => alu_src_t(9),
      O => \rd_add_carry__1_i_7_n_0\
    );
\rd_add_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(8),
      I3 => write_back_data(8),
      I4 => rs(8),
      I5 => alu_src_t(8),
      O => \rd_add_carry__1_i_8_n_0\
    );
\rd_add_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_add_carry__1_n_0\,
      CO(3) => \rd_add_carry__2_n_0\,
      CO(2) => \rd_add_carry__2_n_1\,
      CO(1) => \rd_add_carry__2_n_2\,
      CO(0) => \rd_add_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => alu_src_s(15 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \rd_add_carry__2_i_5_n_0\,
      S(2) => \rd_add_carry__2_i_6_n_0\,
      S(1) => \rd_add_carry__2_i_7_n_0\,
      S(0) => \rd_add_carry__2_i_8_n_0\
    );
\rd_add_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(15),
      I1 => write_back_data(15),
      I2 => alu_result_back(15),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(15)
    );
\rd_add_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(14),
      I1 => write_back_data(14),
      I2 => alu_result_back(14),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(14)
    );
\rd_add_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(13),
      I1 => write_back_data(13),
      I2 => alu_result_back(13),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(13)
    );
\rd_add_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(12),
      I1 => write_back_data(12),
      I2 => alu_result_back(12),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(12)
    );
\rd_add_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(15),
      I3 => write_back_data(15),
      I4 => rs(15),
      I5 => alu_src_t(15),
      O => \rd_add_carry__2_i_5_n_0\
    );
\rd_add_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(14),
      I3 => write_back_data(14),
      I4 => rs(14),
      I5 => alu_src_t(14),
      O => \rd_add_carry__2_i_6_n_0\
    );
\rd_add_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(13),
      I3 => write_back_data(13),
      I4 => rs(13),
      I5 => alu_src_t(13),
      O => \rd_add_carry__2_i_7_n_0\
    );
\rd_add_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(12),
      I3 => write_back_data(12),
      I4 => rs(12),
      I5 => alu_src_t(12),
      O => \rd_add_carry__2_i_8_n_0\
    );
\rd_add_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_add_carry__2_n_0\,
      CO(3) => \rd_add_carry__3_n_0\,
      CO(2) => \rd_add_carry__3_n_1\,
      CO(1) => \rd_add_carry__3_n_2\,
      CO(0) => \rd_add_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => alu_src_s(19 downto 16),
      O(3 downto 0) => data0(19 downto 16),
      S(3) => \rd_add_carry__3_i_5_n_0\,
      S(2) => \rd_add_carry__3_i_6_n_0\,
      S(1) => \rd_add_carry__3_i_7_n_0\,
      S(0) => \rd_add_carry__3_i_8_n_0\
    );
\rd_add_carry__3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(19),
      I1 => write_back_data(19),
      I2 => alu_result_back(19),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(19)
    );
\rd_add_carry__3_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[18]\,
      I1 => alu_src,
      I2 => \^write_data\(18),
      O => alu_src_t(18)
    );
\rd_add_carry__3_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[17]\,
      I1 => alu_src,
      I2 => \^write_data\(17),
      O => alu_src_t(17)
    );
\rd_add_carry__3_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[16]\,
      I1 => alu_src,
      I2 => \^write_data\(16),
      O => alu_src_t(16)
    );
\rd_add_carry__3_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(18),
      I1 => write_back_data(18),
      I2 => alu_result_back(18),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(18)
    );
\rd_add_carry__3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(17),
      I1 => write_back_data(17),
      I2 => alu_result_back(17),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(17)
    );
\rd_add_carry__3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(16),
      I1 => write_back_data(16),
      I2 => alu_result_back(16),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(16)
    );
\rd_add_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(19),
      I3 => write_back_data(19),
      I4 => rs(19),
      I5 => alu_src_t(19),
      O => \rd_add_carry__3_i_5_n_0\
    );
\rd_add_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(18),
      I3 => write_back_data(18),
      I4 => rs(18),
      I5 => alu_src_t(18),
      O => \rd_add_carry__3_i_6_n_0\
    );
\rd_add_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(17),
      I3 => write_back_data(17),
      I4 => rs(17),
      I5 => alu_src_t(17),
      O => \rd_add_carry__3_i_7_n_0\
    );
\rd_add_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(16),
      I3 => write_back_data(16),
      I4 => rs(16),
      I5 => alu_src_t(16),
      O => \rd_add_carry__3_i_8_n_0\
    );
\rd_add_carry__3_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[19]\,
      I1 => alu_src,
      I2 => \^write_data\(19),
      O => alu_src_t(19)
    );
\rd_add_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_add_carry__3_n_0\,
      CO(3) => \rd_add_carry__4_n_0\,
      CO(2) => \rd_add_carry__4_n_1\,
      CO(1) => \rd_add_carry__4_n_2\,
      CO(0) => \rd_add_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => alu_src_s(23 downto 20),
      O(3 downto 0) => data0(23 downto 20),
      S(3) => \rd_add_carry__4_i_5_n_0\,
      S(2) => \rd_add_carry__4_i_6_n_0\,
      S(1) => \rd_add_carry__4_i_7_n_0\,
      S(0) => \rd_add_carry__4_i_8_n_0\
    );
\rd_add_carry__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(23),
      I1 => write_back_data(23),
      I2 => alu_result_back(23),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(23)
    );
\rd_add_carry__4_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[22]\,
      I1 => alu_src,
      I2 => \^write_data\(22),
      O => alu_src_t(22)
    );
\rd_add_carry__4_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[21]\,
      I1 => alu_src,
      I2 => \^write_data\(21),
      O => alu_src_t(21)
    );
\rd_add_carry__4_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[20]\,
      I1 => alu_src,
      I2 => \^write_data\(20),
      O => alu_src_t(20)
    );
\rd_add_carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(22),
      I1 => write_back_data(22),
      I2 => alu_result_back(22),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(22)
    );
\rd_add_carry__4_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(21),
      I1 => write_back_data(21),
      I2 => alu_result_back(21),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(21)
    );
\rd_add_carry__4_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(20),
      I1 => write_back_data(20),
      I2 => alu_result_back(20),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(20)
    );
\rd_add_carry__4_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(23),
      I3 => write_back_data(23),
      I4 => rs(23),
      I5 => alu_src_t(23),
      O => \rd_add_carry__4_i_5_n_0\
    );
\rd_add_carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(22),
      I3 => write_back_data(22),
      I4 => rs(22),
      I5 => alu_src_t(22),
      O => \rd_add_carry__4_i_6_n_0\
    );
\rd_add_carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(21),
      I3 => write_back_data(21),
      I4 => rs(21),
      I5 => alu_src_t(21),
      O => \rd_add_carry__4_i_7_n_0\
    );
\rd_add_carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(20),
      I3 => write_back_data(20),
      I4 => rs(20),
      I5 => alu_src_t(20),
      O => \rd_add_carry__4_i_8_n_0\
    );
\rd_add_carry__4_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[23]\,
      I1 => alu_src,
      I2 => \^write_data\(23),
      O => alu_src_t(23)
    );
\rd_add_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_add_carry__4_n_0\,
      CO(3) => \rd_add_carry__5_n_0\,
      CO(2) => \rd_add_carry__5_n_1\,
      CO(1) => \rd_add_carry__5_n_2\,
      CO(0) => \rd_add_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => alu_src_s(27 downto 24),
      O(3 downto 0) => data0(27 downto 24),
      S(3) => \rd_add_carry__5_i_5_n_0\,
      S(2) => \rd_add_carry__5_i_6_n_0\,
      S(1) => \rd_add_carry__5_i_7_n_0\,
      S(0) => \rd_add_carry__5_i_8_n_0\
    );
\rd_add_carry__5_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(27),
      I1 => write_back_data(27),
      I2 => alu_result_back(27),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(27)
    );
\rd_add_carry__5_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[26]\,
      I1 => alu_src,
      I2 => \^write_data\(26),
      O => alu_src_t(26)
    );
\rd_add_carry__5_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[25]\,
      I1 => alu_src,
      I2 => \^write_data\(25),
      O => alu_src_t(25)
    );
\rd_add_carry__5_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[24]\,
      I1 => alu_src,
      I2 => \^write_data\(24),
      O => alu_src_t(24)
    );
\rd_add_carry__5_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(26),
      I1 => write_back_data(26),
      I2 => alu_result_back(26),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(26)
    );
\rd_add_carry__5_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(25),
      I1 => write_back_data(25),
      I2 => alu_result_back(25),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(25)
    );
\rd_add_carry__5_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(24),
      I1 => write_back_data(24),
      I2 => alu_result_back(24),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(24)
    );
\rd_add_carry__5_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(27),
      I3 => write_back_data(27),
      I4 => rs(27),
      I5 => alu_src_t(27),
      O => \rd_add_carry__5_i_5_n_0\
    );
\rd_add_carry__5_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(26),
      I3 => write_back_data(26),
      I4 => rs(26),
      I5 => alu_src_t(26),
      O => \rd_add_carry__5_i_6_n_0\
    );
\rd_add_carry__5_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(25),
      I3 => write_back_data(25),
      I4 => rs(25),
      I5 => alu_src_t(25),
      O => \rd_add_carry__5_i_7_n_0\
    );
\rd_add_carry__5_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(24),
      I3 => write_back_data(24),
      I4 => rs(24),
      I5 => alu_src_t(24),
      O => \rd_add_carry__5_i_8_n_0\
    );
\rd_add_carry__5_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[27]\,
      I1 => alu_src,
      I2 => \^write_data\(27),
      O => alu_src_t(27)
    );
\rd_add_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_add_carry__5_n_0\,
      CO(3) => \NLW_rd_add_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \rd_add_carry__6_n_1\,
      CO(1) => \rd_add_carry__6_n_2\,
      CO(0) => \rd_add_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => alu_src_s(30 downto 28),
      O(3 downto 0) => data0(31 downto 28),
      S(3) => \rd_add_carry__6_i_4_n_0\,
      S(2) => \rd_add_carry__6_i_5_n_0\,
      S(1) => \rd_add_carry__6_i_6_n_0\,
      S(0) => \rd_add_carry__6_i_7_n_0\
    );
\rd_add_carry__6_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(30),
      I1 => write_back_data(30),
      I2 => alu_result_back(30),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(30)
    );
\rd_add_carry__6_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(29),
      I1 => write_back_data(29),
      I2 => alu_result_back(29),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(29)
    );
\rd_add_carry__6_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(28),
      I1 => write_back_data(28),
      I2 => alu_result_back(28),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(28)
    );
\rd_add_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(31),
      I3 => write_back_data(31),
      I4 => rs(31),
      I5 => \alu_src_t__95\(31),
      O => \rd_add_carry__6_i_4_n_0\
    );
\rd_add_carry__6_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(30),
      I3 => write_back_data(30),
      I4 => rs(30),
      I5 => alu_src_t(30),
      O => \rd_add_carry__6_i_5_n_0\
    );
\rd_add_carry__6_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(29),
      I3 => write_back_data(29),
      I4 => rs(29),
      I5 => alu_src_t(29),
      O => \rd_add_carry__6_i_6_n_0\
    );
\rd_add_carry__6_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(28),
      I3 => write_back_data(28),
      I4 => rs(28),
      I5 => alu_src_t(28),
      O => \rd_add_carry__6_i_7_n_0\
    );
\rd_add_carry__6_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[29]\,
      I1 => alu_src,
      I2 => \^write_data\(29),
      O => alu_src_t(29)
    );
\rd_add_carry__6_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[28]\,
      I1 => alu_src,
      I2 => \^write_data\(28),
      O => alu_src_t(28)
    );
rd_add_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(3),
      I1 => write_back_data(3),
      I2 => alu_result_back(3),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(3)
    );
rd_add_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(2),
      I1 => write_back_data(2),
      I2 => alu_result_back(2),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(2)
    );
rd_add_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(1),
      I1 => write_back_data(1),
      I2 => alu_result_back(1),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(1)
    );
rd_add_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(0),
      I1 => write_back_data(0),
      I2 => alu_result_back(0),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => alu_src_s(0)
    );
rd_add_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(3),
      I3 => write_back_data(3),
      I4 => rs(3),
      I5 => alu_src_t(3),
      O => rd_add_carry_i_5_n_0
    );
rd_add_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(2),
      I3 => write_back_data(2),
      I4 => rs(2),
      I5 => alu_src_t(2),
      O => rd_add_carry_i_6_n_0
    );
rd_add_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(1),
      I3 => write_back_data(1),
      I4 => rs(1),
      I5 => alu_src_t(1),
      O => rd_add_carry_i_7_n_0
    );
rd_add_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(0),
      I3 => write_back_data(0),
      I4 => rs(0),
      I5 => alu_src_t(0),
      O => rd_add_carry_i_8_n_0
    );
rd_sub_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rd_sub_carry_n_0,
      CO(2) => rd_sub_carry_n_1,
      CO(1) => rd_sub_carry_n_2,
      CO(0) => rd_sub_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => alu_src_s(3 downto 0),
      O(3 downto 0) => data1(3 downto 0),
      S(3) => rd_sub_carry_i_1_n_0,
      S(2) => rd_sub_carry_i_2_n_0,
      S(1) => rd_sub_carry_i_3_n_0,
      S(0) => rd_sub_carry_i_4_n_0
    );
\rd_sub_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rd_sub_carry_n_0,
      CO(3) => \rd_sub_carry__0_n_0\,
      CO(2) => \rd_sub_carry__0_n_1\,
      CO(1) => \rd_sub_carry__0_n_2\,
      CO(0) => \rd_sub_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => alu_src_s(7 downto 4),
      O(3 downto 0) => data1(7 downto 4),
      S(3) => \rd_sub_carry__0_i_1_n_0\,
      S(2) => \rd_sub_carry__0_i_2_n_0\,
      S(1) => \rd_sub_carry__0_i_3_n_0\,
      S(0) => \rd_sub_carry__0_i_4_n_0\
    );
\rd_sub_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(7),
      I1 => rs(7),
      I2 => write_back_data(7),
      I3 => alu_result_back(7),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__0_i_1_n_0\
    );
\rd_sub_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(6),
      I1 => rs(6),
      I2 => write_back_data(6),
      I3 => alu_result_back(6),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__0_i_2_n_0\
    );
\rd_sub_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(5),
      I1 => rs(5),
      I2 => write_back_data(5),
      I3 => alu_result_back(5),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__0_i_3_n_0\
    );
\rd_sub_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(4),
      I1 => rs(4),
      I2 => write_back_data(4),
      I3 => alu_result_back(4),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__0_i_4_n_0\
    );
\rd_sub_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_sub_carry__0_n_0\,
      CO(3) => \rd_sub_carry__1_n_0\,
      CO(2) => \rd_sub_carry__1_n_1\,
      CO(1) => \rd_sub_carry__1_n_2\,
      CO(0) => \rd_sub_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => alu_src_s(11 downto 8),
      O(3 downto 0) => data1(11 downto 8),
      S(3) => \rd_sub_carry__1_i_1_n_0\,
      S(2) => \rd_sub_carry__1_i_2_n_0\,
      S(1) => \rd_sub_carry__1_i_3_n_0\,
      S(0) => \rd_sub_carry__1_i_4_n_0\
    );
\rd_sub_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(11),
      I1 => rs(11),
      I2 => write_back_data(11),
      I3 => alu_result_back(11),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__1_i_1_n_0\
    );
\rd_sub_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(10),
      I1 => rs(10),
      I2 => write_back_data(10),
      I3 => alu_result_back(10),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__1_i_2_n_0\
    );
\rd_sub_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(9),
      I1 => rs(9),
      I2 => write_back_data(9),
      I3 => alu_result_back(9),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__1_i_3_n_0\
    );
\rd_sub_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(8),
      I1 => rs(8),
      I2 => write_back_data(8),
      I3 => alu_result_back(8),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__1_i_4_n_0\
    );
\rd_sub_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_sub_carry__1_n_0\,
      CO(3) => \rd_sub_carry__2_n_0\,
      CO(2) => \rd_sub_carry__2_n_1\,
      CO(1) => \rd_sub_carry__2_n_2\,
      CO(0) => \rd_sub_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => alu_src_s(15 downto 12),
      O(3 downto 0) => data1(15 downto 12),
      S(3) => \rd_sub_carry__2_i_1_n_0\,
      S(2) => \rd_sub_carry__2_i_2_n_0\,
      S(1) => \rd_sub_carry__2_i_3_n_0\,
      S(0) => \rd_sub_carry__2_i_4_n_0\
    );
\rd_sub_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(15),
      I1 => rs(15),
      I2 => write_back_data(15),
      I3 => alu_result_back(15),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__2_i_1_n_0\
    );
\rd_sub_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(14),
      I1 => rs(14),
      I2 => write_back_data(14),
      I3 => alu_result_back(14),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__2_i_2_n_0\
    );
\rd_sub_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(13),
      I1 => rs(13),
      I2 => write_back_data(13),
      I3 => alu_result_back(13),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__2_i_3_n_0\
    );
\rd_sub_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(12),
      I1 => rs(12),
      I2 => write_back_data(12),
      I3 => alu_result_back(12),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__2_i_4_n_0\
    );
\rd_sub_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_sub_carry__2_n_0\,
      CO(3) => \rd_sub_carry__3_n_0\,
      CO(2) => \rd_sub_carry__3_n_1\,
      CO(1) => \rd_sub_carry__3_n_2\,
      CO(0) => \rd_sub_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => alu_src_s(19 downto 16),
      O(3 downto 0) => data1(19 downto 16),
      S(3) => \rd_sub_carry__3_i_1_n_0\,
      S(2) => \rd_sub_carry__3_i_2_n_0\,
      S(1) => \rd_sub_carry__3_i_3_n_0\,
      S(0) => \rd_sub_carry__3_i_4_n_0\
    );
\rd_sub_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(19),
      I1 => rs(19),
      I2 => write_back_data(19),
      I3 => alu_result_back(19),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__3_i_1_n_0\
    );
\rd_sub_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(18),
      I1 => rs(18),
      I2 => write_back_data(18),
      I3 => alu_result_back(18),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__3_i_2_n_0\
    );
\rd_sub_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(17),
      I1 => rs(17),
      I2 => write_back_data(17),
      I3 => alu_result_back(17),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__3_i_3_n_0\
    );
\rd_sub_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(16),
      I1 => rs(16),
      I2 => write_back_data(16),
      I3 => alu_result_back(16),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__3_i_4_n_0\
    );
\rd_sub_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_sub_carry__3_n_0\,
      CO(3) => \rd_sub_carry__4_n_0\,
      CO(2) => \rd_sub_carry__4_n_1\,
      CO(1) => \rd_sub_carry__4_n_2\,
      CO(0) => \rd_sub_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => alu_src_s(23 downto 20),
      O(3 downto 0) => data1(23 downto 20),
      S(3) => \rd_sub_carry__4_i_1_n_0\,
      S(2) => \rd_sub_carry__4_i_2_n_0\,
      S(1) => \rd_sub_carry__4_i_3_n_0\,
      S(0) => \rd_sub_carry__4_i_4_n_0\
    );
\rd_sub_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(23),
      I1 => rs(23),
      I2 => write_back_data(23),
      I3 => alu_result_back(23),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__4_i_1_n_0\
    );
\rd_sub_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(22),
      I1 => rs(22),
      I2 => write_back_data(22),
      I3 => alu_result_back(22),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__4_i_2_n_0\
    );
\rd_sub_carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(21),
      I1 => rs(21),
      I2 => write_back_data(21),
      I3 => alu_result_back(21),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__4_i_3_n_0\
    );
\rd_sub_carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(20),
      I1 => rs(20),
      I2 => write_back_data(20),
      I3 => alu_result_back(20),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__4_i_4_n_0\
    );
\rd_sub_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_sub_carry__4_n_0\,
      CO(3) => \rd_sub_carry__5_n_0\,
      CO(2) => \rd_sub_carry__5_n_1\,
      CO(1) => \rd_sub_carry__5_n_2\,
      CO(0) => \rd_sub_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => alu_src_s(27 downto 24),
      O(3 downto 0) => data1(27 downto 24),
      S(3) => \rd_sub_carry__5_i_1_n_0\,
      S(2) => \rd_sub_carry__5_i_2_n_0\,
      S(1) => \rd_sub_carry__5_i_3_n_0\,
      S(0) => \rd_sub_carry__5_i_4_n_0\
    );
\rd_sub_carry__5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(27),
      I1 => rs(27),
      I2 => write_back_data(27),
      I3 => alu_result_back(27),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__5_i_1_n_0\
    );
\rd_sub_carry__5_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(26),
      I1 => rs(26),
      I2 => write_back_data(26),
      I3 => alu_result_back(26),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__5_i_2_n_0\
    );
\rd_sub_carry__5_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(25),
      I1 => rs(25),
      I2 => write_back_data(25),
      I3 => alu_result_back(25),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__5_i_3_n_0\
    );
\rd_sub_carry__5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(24),
      I1 => rs(24),
      I2 => write_back_data(24),
      I3 => alu_result_back(24),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__5_i_4_n_0\
    );
\rd_sub_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_sub_carry__5_n_0\,
      CO(3) => \NLW_rd_sub_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \rd_sub_carry__6_n_1\,
      CO(1) => \rd_sub_carry__6_n_2\,
      CO(0) => \rd_sub_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => alu_src_s(30 downto 28),
      O(3 downto 0) => data1(31 downto 28),
      S(3) => \rd_sub_carry__6_i_1_n_0\,
      S(2) => \rd_sub_carry__6_i_2_n_0\,
      S(1) => \rd_sub_carry__6_i_3_n_0\,
      S(0) => \rd_sub_carry__6_i_4_n_0\
    );
\rd_sub_carry__6_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => \alu_src_t__95\(31),
      I1 => rs(31),
      I2 => write_back_data(31),
      I3 => alu_result_back(31),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__6_i_1_n_0\
    );
\rd_sub_carry__6_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(30),
      I1 => rs(30),
      I2 => write_back_data(30),
      I3 => alu_result_back(30),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__6_i_2_n_0\
    );
\rd_sub_carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(29),
      I1 => rs(29),
      I2 => write_back_data(29),
      I3 => alu_result_back(29),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__6_i_3_n_0\
    );
\rd_sub_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(28),
      I1 => rs(28),
      I2 => write_back_data(28),
      I3 => alu_result_back(28),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => \rd_sub_carry__6_i_4_n_0\
    );
rd_sub_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(3),
      I1 => rs(3),
      I2 => write_back_data(3),
      I3 => alu_result_back(3),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => rd_sub_carry_i_1_n_0
    );
rd_sub_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(2),
      I1 => rs(2),
      I2 => write_back_data(2),
      I3 => alu_result_back(2),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => rd_sub_carry_i_2_n_0
    );
rd_sub_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(1),
      I1 => rs(1),
      I2 => write_back_data(1),
      I3 => alu_result_back(1),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => rd_sub_carry_i_3_n_0
    );
rd_sub_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555A5A5AA559999"
    )
        port map (
      I0 => alu_src_t(0),
      I1 => rs(0),
      I2 => write_back_data(0),
      I3 => alu_result_back(0),
      I4 => rs_forward(1),
      I5 => rs_forward(0),
      O => rd_sub_carry_i_4_n_0
    );
rd_value2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rd_value2_carry_n_0,
      CO(2) => rd_value2_carry_n_1,
      CO(1) => rd_value2_carry_n_2,
      CO(0) => rd_value2_carry_n_3,
      CYINIT => '0',
      DI(3) => rd_value2_carry_i_1_n_0,
      DI(2) => rd_value2_carry_i_2_n_0,
      DI(1) => rd_value2_carry_i_3_n_0,
      DI(0) => rd_value2_carry_i_4_n_0,
      O(3 downto 0) => NLW_rd_value2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rd_value2_carry_i_5_n_0,
      S(2) => rd_value2_carry_i_6_n_0,
      S(1) => rd_value2_carry_i_7_n_0,
      S(0) => rd_value2_carry_i_8_n_0
    );
\rd_value2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rd_value2_carry_n_0,
      CO(3) => \rd_value2_carry__0_n_0\,
      CO(2) => \rd_value2_carry__0_n_1\,
      CO(1) => \rd_value2_carry__0_n_2\,
      CO(0) => \rd_value2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \rd_value2_carry__0_i_1_n_0\,
      DI(2) => \rd_value2_carry__0_i_2_n_0\,
      DI(1) => \rd_value2_carry__0_i_3_n_0\,
      DI(0) => \rd_value2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_rd_value2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \rd_value2_carry__0_i_5_n_0\,
      S(2) => \rd_value2_carry__0_i_6_n_0\,
      S(1) => \rd_value2_carry__0_i_7_n_0\,
      S(0) => \rd_value2_carry__0_i_8_n_0\
    );
\rd_value2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(14),
      I1 => alu_src_t(14),
      I2 => alu_src_s(15),
      I3 => alu_src_t(15),
      O => \rd_value2_carry__0_i_1_n_0\
    );
\rd_value2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(12),
      I1 => alu_src_t(12),
      I2 => alu_src_s(13),
      I3 => alu_src_t(13),
      O => \rd_value2_carry__0_i_2_n_0\
    );
\rd_value2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(10),
      I1 => alu_src_t(10),
      I2 => alu_src_s(11),
      I3 => alu_src_t(11),
      O => \rd_value2_carry__0_i_3_n_0\
    );
\rd_value2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(8),
      I1 => alu_src_t(8),
      I2 => alu_src_s(9),
      I3 => alu_src_t(9),
      O => \rd_value2_carry__0_i_4_n_0\
    );
\rd_value2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(15),
      I1 => alu_src_s(15),
      I2 => alu_src_t(14),
      I3 => alu_src_s(14),
      O => \rd_value2_carry__0_i_5_n_0\
    );
\rd_value2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(13),
      I1 => alu_src_s(13),
      I2 => alu_src_t(12),
      I3 => alu_src_s(12),
      O => \rd_value2_carry__0_i_6_n_0\
    );
\rd_value2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(11),
      I1 => alu_src_s(11),
      I2 => alu_src_t(10),
      I3 => alu_src_s(10),
      O => \rd_value2_carry__0_i_7_n_0\
    );
\rd_value2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(9),
      I1 => alu_src_s(9),
      I2 => alu_src_t(8),
      I3 => alu_src_s(8),
      O => \rd_value2_carry__0_i_8_n_0\
    );
\rd_value2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_value2_carry__0_n_0\,
      CO(3) => \rd_value2_carry__1_n_0\,
      CO(2) => \rd_value2_carry__1_n_1\,
      CO(1) => \rd_value2_carry__1_n_2\,
      CO(0) => \rd_value2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \rd_value2_carry__1_i_1_n_0\,
      DI(2) => \rd_value2_carry__1_i_2_n_0\,
      DI(1) => \rd_value2_carry__1_i_3_n_0\,
      DI(0) => \rd_value2_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_rd_value2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \rd_value2_carry__1_i_5_n_0\,
      S(2) => \rd_value2_carry__1_i_6_n_0\,
      S(1) => \rd_value2_carry__1_i_7_n_0\,
      S(0) => \rd_value2_carry__1_i_8_n_0\
    );
\rd_value2_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(22),
      I1 => alu_src_t(22),
      I2 => alu_src_s(23),
      I3 => alu_src_t(23),
      O => \rd_value2_carry__1_i_1_n_0\
    );
\rd_value2_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(20),
      I1 => alu_src_t(20),
      I2 => alu_src_s(21),
      I3 => alu_src_t(21),
      O => \rd_value2_carry__1_i_2_n_0\
    );
\rd_value2_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(18),
      I1 => alu_src_t(18),
      I2 => alu_src_s(19),
      I3 => alu_src_t(19),
      O => \rd_value2_carry__1_i_3_n_0\
    );
\rd_value2_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(16),
      I1 => alu_src_t(16),
      I2 => alu_src_s(17),
      I3 => alu_src_t(17),
      O => \rd_value2_carry__1_i_4_n_0\
    );
\rd_value2_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(23),
      I1 => alu_src_s(23),
      I2 => alu_src_t(22),
      I3 => alu_src_s(22),
      O => \rd_value2_carry__1_i_5_n_0\
    );
\rd_value2_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(21),
      I1 => alu_src_s(21),
      I2 => alu_src_t(20),
      I3 => alu_src_s(20),
      O => \rd_value2_carry__1_i_6_n_0\
    );
\rd_value2_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(19),
      I1 => alu_src_s(19),
      I2 => alu_src_t(18),
      I3 => alu_src_s(18),
      O => \rd_value2_carry__1_i_7_n_0\
    );
\rd_value2_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(17),
      I1 => alu_src_s(17),
      I2 => alu_src_t(16),
      I3 => alu_src_s(16),
      O => \rd_value2_carry__1_i_8_n_0\
    );
\rd_value2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_value2_carry__1_n_0\,
      CO(3) => data9,
      CO(2) => \rd_value2_carry__2_n_1\,
      CO(1) => \rd_value2_carry__2_n_2\,
      CO(0) => \rd_value2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \rd_value2_carry__2_i_1_n_0\,
      DI(2) => \rd_value2_carry__2_i_2_n_0\,
      DI(1) => \rd_value2_carry__2_i_3_n_0\,
      DI(0) => \rd_value2_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_rd_value2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \rd_value2_carry__2_i_5_n_0\,
      S(2) => \rd_value2_carry__2_i_6_n_0\,
      S(1) => \rd_value2_carry__2_i_7_n_0\,
      S(0) => \rd_value2_carry__2_i_8_n_0\
    );
\rd_value2_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => alu_src_t(30),
      I1 => alu_src_s(30),
      I2 => \alu_src_s__96\(31),
      I3 => \alu_src_t__95\(31),
      O => \rd_value2_carry__2_i_1_n_0\
    );
\rd_value2_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(28),
      I1 => alu_src_t(28),
      I2 => alu_src_s(29),
      I3 => alu_src_t(29),
      O => \rd_value2_carry__2_i_2_n_0\
    );
\rd_value2_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(26),
      I1 => alu_src_t(26),
      I2 => alu_src_s(27),
      I3 => alu_src_t(27),
      O => \rd_value2_carry__2_i_3_n_0\
    );
\rd_value2_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(24),
      I1 => alu_src_t(24),
      I2 => alu_src_s(25),
      I3 => alu_src_t(25),
      O => \rd_value2_carry__2_i_4_n_0\
    );
\rd_value2_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \rd_value2_carry__2_i_9_n_0\,
      I1 => alu_src_t(30),
      I2 => alu_src_s(30),
      O => \rd_value2_carry__2_i_5_n_0\
    );
\rd_value2_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(29),
      I1 => alu_src_s(29),
      I2 => alu_src_t(28),
      I3 => alu_src_s(28),
      O => \rd_value2_carry__2_i_6_n_0\
    );
\rd_value2_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(27),
      I1 => alu_src_s(27),
      I2 => alu_src_t(26),
      I3 => alu_src_s(26),
      O => \rd_value2_carry__2_i_7_n_0\
    );
\rd_value2_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(25),
      I1 => alu_src_s(25),
      I2 => alu_src_t(24),
      I3 => alu_src_s(24),
      O => \rd_value2_carry__2_i_8_n_0\
    );
\rd_value2_carry__2_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CAE9DBF73516240"
    )
        port map (
      I0 => rs_forward(0),
      I1 => rs_forward(1),
      I2 => alu_result_back(31),
      I3 => write_back_data(31),
      I4 => rs(31),
      I5 => \alu_src_t__95\(31),
      O => \rd_value2_carry__2_i_9_n_0\
    );
rd_value2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(6),
      I1 => alu_src_t(6),
      I2 => alu_src_s(7),
      I3 => alu_src_t(7),
      O => rd_value2_carry_i_1_n_0
    );
rd_value2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(4),
      I1 => alu_src_t(4),
      I2 => alu_src_s(5),
      I3 => alu_src_t(5),
      O => rd_value2_carry_i_2_n_0
    );
rd_value2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(2),
      I1 => alu_src_t(2),
      I2 => alu_src_s(3),
      I3 => alu_src_t(3),
      O => rd_value2_carry_i_3_n_0
    );
rd_value2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F04"
    )
        port map (
      I0 => alu_src_s(0),
      I1 => alu_src_t(0),
      I2 => alu_src_s(1),
      I3 => alu_src_t(1),
      O => rd_value2_carry_i_4_n_0
    );
rd_value2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(7),
      I1 => alu_src_s(7),
      I2 => alu_src_t(6),
      I3 => alu_src_s(6),
      O => rd_value2_carry_i_5_n_0
    );
rd_value2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(5),
      I1 => alu_src_s(5),
      I2 => alu_src_t(4),
      I3 => alu_src_s(4),
      O => rd_value2_carry_i_6_n_0
    );
rd_value2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(3),
      I1 => alu_src_s(3),
      I2 => alu_src_t(2),
      I3 => alu_src_s(2),
      O => rd_value2_carry_i_7_n_0
    );
rd_value2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => alu_src_t(1),
      I1 => alu_src_s(1),
      I2 => alu_src_t(0),
      I3 => alu_src_s(0),
      O => rd_value2_carry_i_8_n_0
    );
\rd_value[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAA80"
    )
        port map (
      I0 => \rd_value[0]_INST_0_i_1_n_0\,
      I1 => \rd_value[0]_INST_0_i_2_n_0\,
      I2 => \rd_value[0]_INST_0_i_3_n_0\,
      I3 => \rd_value[0]_INST_0_i_4_n_0\,
      I4 => \rd_value[0]_INST_0_i_5_n_0\,
      I5 => \rd_value[0]_INST_0_i_6_n_0\,
      O => rd_value(0)
    );
\rd_value[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFF7FFF"
    )
        port map (
      I0 => \alu_op_reg_n_0_[1]\,
      I1 => \alu_op_reg_n_0_[2]\,
      I2 => \alu_op_reg_n_0_[3]\,
      I3 => \alu_op_reg_n_0_[4]\,
      I4 => alu_op(5),
      I5 => \alu_op_reg_n_0_[0]\,
      O => \rd_value[0]_INST_0_i_1_n_0\
    );
\rd_value[0]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001050581F12"
    )
        port map (
      I0 => \alu_op_reg_n_0_[0]\,
      I1 => \alu_op_reg_n_0_[4]\,
      I2 => \alu_op_reg_n_0_[3]\,
      I3 => \alu_op_reg_n_0_[2]\,
      I4 => \alu_op_reg_n_0_[1]\,
      I5 => alu_op(5),
      O => \rd_value[0]_INST_0_i_10_n_0\
    );
\rd_value[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEDDFFEFFFCFCCCF"
    )
        port map (
      I0 => \alu_op_reg_n_0_[0]\,
      I1 => alu_op(5),
      I2 => \alu_op_reg_n_0_[2]\,
      I3 => \alu_op_reg_n_0_[3]\,
      I4 => \alu_op_reg_n_0_[4]\,
      I5 => \alu_op_reg_n_0_[1]\,
      O => \rd_value[0]_INST_0_i_11_n_0\
    );
\rd_value[0]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(0),
      I1 => alu_src_s(0),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(0),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[0]_INST_0_i_12_n_0\
    );
\rd_value[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => alu_src_t(0),
      I1 => alu_src_t(16),
      I2 => alu_src_t(3),
      I3 => alu_src_t(24),
      I4 => alu_src_t(4),
      I5 => alu_src_t(8),
      O => \rd_value[0]_INST_0_i_13_n_0\
    );
\rd_value[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000090000000300"
    )
        port map (
      I0 => \alu_op_reg_n_0_[1]\,
      I1 => \alu_op_reg_n_0_[4]\,
      I2 => \alu_op_reg_n_0_[3]\,
      I3 => \alu_op_reg_n_0_[2]\,
      I4 => alu_op(5),
      I5 => \alu_op_reg_n_0_[0]\,
      O => \rd_value[0]_INST_0_i_2_n_0\
    );
\rd_value[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_6_n_0\,
      I1 => \rd_value[0]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_8_n_0\,
      I3 => \rd_value[0]_INST_0_i_8_n_0\,
      I4 => \rd_value[1]_INST_0_i_4_n_0\,
      I5 => \rd_value[30]_INST_0_i_9_n_0\,
      O => \rd_value[0]_INST_0_i_3_n_0\
    );
\rd_value[0]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \rd_value[0]_INST_0_i_9_n_0\,
      I1 => \rd_value[0]_INST_0_i_10_n_0\,
      I2 => data9,
      I3 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[0]_INST_0_i_4_n_0\
    );
\rd_value[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBB8800000000"
    )
        port map (
      I0 => \rd_value[0]_INST_0_i_12_n_0\,
      I1 => \rd_value[31]_INST_0_i_14_n_0\,
      I2 => alu_src_s(0),
      I3 => data1(0),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_9_n_0\,
      O => \rd_value[0]_INST_0_i_5_n_0\
    );
\rd_value[0]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(0),
      O => \rd_value[0]_INST_0_i_6_n_0\
    );
\rd_value[0]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => alu_src_t(1),
      I1 => alu_src_t(2),
      I2 => alu_src_t(0),
      I3 => \rd_value[30]_INST_0_i_7_n_0\,
      O => \rd_value[0]_INST_0_i_7_n_0\
    );
\rd_value[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \rd_value[0]_INST_0_i_13_n_0\,
      I1 => \rd_value[4]_INST_0_i_6_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[6]_INST_0_i_7_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[2]_INST_0_i_6_n_0\,
      O => \rd_value[0]_INST_0_i_8_n_0\
    );
\rd_value[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000026780000A6F0"
    )
        port map (
      I0 => \alu_op_reg_n_0_[1]\,
      I1 => \alu_op_reg_n_0_[2]\,
      I2 => \alu_op_reg_n_0_[3]\,
      I3 => \alu_op_reg_n_0_[4]\,
      I4 => alu_op(5),
      I5 => \alu_op_reg_n_0_[0]\,
      O => \rd_value[0]_INST_0_i_9_n_0\
    );
\rd_value[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(10),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[10]_INST_0_i_1_n_0\,
      I4 => \rd_value[10]_INST_0_i_2_n_0\,
      I5 => \rd_value[10]_INST_0_i_3_n_0\,
      O => rd_value(10)
    );
\rd_value[10]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[10]_INST_0_i_4_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[11]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[10]_INST_0_i_1_n_0\
    );
\rd_value[10]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[11]_INST_0_i_4_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[10]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[10]_INST_0_i_2_n_0\
    );
\rd_value[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[10]_INST_0_i_6_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(10),
      I4 => data1(10),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[10]_INST_0_i_3_n_0\
    );
\rd_value[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[16]_INST_0_i_9_n_0\,
      I1 => \rd_value[12]_INST_0_i_8_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[14]_INST_0_i_7_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[10]_INST_0_i_7_n_0\,
      O => \rd_value[10]_INST_0_i_4_n_0\
    );
\rd_value[10]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0800"
    )
        port map (
      I0 => \rd_value[30]_INST_0_i_7_n_0\,
      I1 => alu_src_t(7),
      I2 => alu_src_t(2),
      I3 => alu_src_t(1),
      I4 => \rd_value[12]_INST_0_i_5_n_0\,
      O => \rd_value[10]_INST_0_i_5_n_0\
    );
\rd_value[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(10),
      I1 => alu_src_s(10),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(10),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[10]_INST_0_i_6_n_0\
    );
\rd_value[10]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => alu_src_t(18),
      I1 => alu_src_t(3),
      I2 => alu_src_t(26),
      I3 => alu_src_t(4),
      I4 => alu_src_t(10),
      O => \rd_value[10]_INST_0_i_7_n_0\
    );
\rd_value[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(11),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[11]_INST_0_i_1_n_0\,
      I4 => \rd_value[11]_INST_0_i_2_n_0\,
      I5 => \rd_value[11]_INST_0_i_3_n_0\,
      O => rd_value(11)
    );
\rd_value[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8B8B8FF000000"
    )
        port map (
      I0 => \rd_value[12]_INST_0_i_5_n_0\,
      I1 => alu_src_t(1),
      I2 => \rd_value[12]_INST_0_i_6_n_0\,
      I3 => \rd_value[11]_INST_0_i_4_n_0\,
      I4 => \rd_value[31]_INST_0_i_8_n_0\,
      I5 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[11]_INST_0_i_1_n_0\
    );
\rd_value[11]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[12]_INST_0_i_4_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[11]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[11]_INST_0_i_2_n_0\
    );
\rd_value[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[11]_INST_0_i_6_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(11),
      I4 => data1(11),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[11]_INST_0_i_3_n_0\
    );
\rd_value[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[17]_INST_0_i_9_n_0\,
      I1 => \rd_value[13]_INST_0_i_7_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[15]_INST_0_i_8_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[11]_INST_0_i_7_n_0\,
      O => \rd_value[11]_INST_0_i_4_n_0\
    );
\rd_value[11]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_9_n_0\,
      I1 => alu_src_t(2),
      I2 => alu_src_t(1),
      I3 => \rd_value[13]_INST_0_i_8_n_0\,
      O => \rd_value[11]_INST_0_i_5_n_0\
    );
\rd_value[11]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(11),
      I1 => alu_src_s(11),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(11),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[11]_INST_0_i_6_n_0\
    );
\rd_value[11]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => alu_src_t(19),
      I1 => alu_src_t(3),
      I2 => alu_src_t(27),
      I3 => alu_src_t(4),
      I4 => alu_src_t(11),
      O => \rd_value[11]_INST_0_i_7_n_0\
    );
\rd_value[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(12),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[12]_INST_0_i_1_n_0\,
      I4 => \rd_value[12]_INST_0_i_2_n_0\,
      I5 => \rd_value[12]_INST_0_i_3_n_0\,
      O => rd_value(12)
    );
\rd_value[12]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[12]_INST_0_i_4_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[13]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[12]_INST_0_i_1_n_0\
    );
\rd_value[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8B8B8FF000000"
    )
        port map (
      I0 => \rd_value[12]_INST_0_i_5_n_0\,
      I1 => alu_src_t(1),
      I2 => \rd_value[12]_INST_0_i_6_n_0\,
      I3 => \rd_value[13]_INST_0_i_4_n_0\,
      I4 => \rd_value[30]_INST_0_i_9_n_0\,
      I5 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[12]_INST_0_i_2_n_0\
    );
\rd_value[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[12]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(12),
      I4 => data1(12),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[12]_INST_0_i_3_n_0\
    );
\rd_value[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[18]_INST_0_i_9_n_0\,
      I1 => \rd_value[14]_INST_0_i_7_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[16]_INST_0_i_9_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[12]_INST_0_i_8_n_0\,
      O => \rd_value[12]_INST_0_i_4_n_0\
    );
\rd_value[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000030300000BB88"
    )
        port map (
      I0 => alu_src_t(5),
      I1 => alu_src_t(2),
      I2 => alu_src_t(1),
      I3 => alu_src_t(9),
      I4 => alu_src_t(4),
      I5 => alu_src_t(3),
      O => \rd_value[12]_INST_0_i_5_n_0\
    );
\rd_value[12]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"003300B8"
    )
        port map (
      I0 => alu_src_t(7),
      I1 => alu_src_t(2),
      I2 => alu_src_t(11),
      I3 => alu_src_t(4),
      I4 => alu_src_t(3),
      O => \rd_value[12]_INST_0_i_6_n_0\
    );
\rd_value[12]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(12),
      I1 => alu_src_s(12),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(12),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[12]_INST_0_i_7_n_0\
    );
\rd_value[12]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => alu_src_t(20),
      I1 => alu_src_t(3),
      I2 => alu_src_t(28),
      I3 => alu_src_t(4),
      I4 => alu_src_t(12),
      O => \rd_value[12]_INST_0_i_8_n_0\
    );
\rd_value[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(13),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[13]_INST_0_i_1_n_0\,
      I4 => \rd_value[13]_INST_0_i_2_n_0\,
      I5 => \rd_value[13]_INST_0_i_3_n_0\,
      O => rd_value(13)
    );
\rd_value[13]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[13]_INST_0_i_4_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[14]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[13]_INST_0_i_1_n_0\
    );
\rd_value[13]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[14]_INST_0_i_4_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[13]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[13]_INST_0_i_2_n_0\
    );
\rd_value[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[13]_INST_0_i_6_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(13),
      I4 => data1(13),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[13]_INST_0_i_3_n_0\
    );
\rd_value[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[19]_INST_0_i_9_n_0\,
      I1 => \rd_value[15]_INST_0_i_8_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[17]_INST_0_i_9_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[13]_INST_0_i_7_n_0\,
      O => \rd_value[13]_INST_0_i_4_n_0\
    );
\rd_value[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \rd_value[13]_INST_0_i_8_n_0\,
      I1 => alu_src_t(1),
      I2 => \rd_value[15]_INST_0_i_9_n_0\,
      I3 => alu_src_t(2),
      I4 => \rd_value[30]_INST_0_i_7_n_0\,
      I5 => alu_src_t(12),
      O => \rd_value[13]_INST_0_i_5_n_0\
    );
\rd_value[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(13),
      I1 => alu_src_s(13),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(13),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[13]_INST_0_i_6_n_0\
    );
\rd_value[13]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => alu_src_t(21),
      I1 => alu_src_t(3),
      I2 => alu_src_t(29),
      I3 => alu_src_t(4),
      I4 => alu_src_t(13),
      O => \rd_value[13]_INST_0_i_7_n_0\
    );
\rd_value[13]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => alu_src_t(6),
      I1 => alu_src_t(2),
      I2 => alu_src_t(10),
      I3 => alu_src_t(4),
      I4 => alu_src_t(3),
      O => \rd_value[13]_INST_0_i_8_n_0\
    );
\rd_value[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(14),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[14]_INST_0_i_1_n_0\,
      I4 => \rd_value[14]_INST_0_i_2_n_0\,
      I5 => \rd_value[14]_INST_0_i_3_n_0\,
      O => rd_value(14)
    );
\rd_value[14]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[14]_INST_0_i_4_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[15]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[14]_INST_0_i_1_n_0\
    );
\rd_value[14]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_5_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[14]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[14]_INST_0_i_2_n_0\
    );
\rd_value[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[14]_INST_0_i_6_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(14),
      I4 => data1(14),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[14]_INST_0_i_3_n_0\
    );
\rd_value[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[16]_INST_0_i_8_n_0\,
      I1 => \rd_value[16]_INST_0_i_9_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[18]_INST_0_i_9_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[14]_INST_0_i_7_n_0\,
      O => \rd_value[14]_INST_0_i_4_n_0\
    );
\rd_value[14]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rd_value[12]_INST_0_i_6_n_0\,
      I1 => alu_src_t(1),
      I2 => \rd_value[16]_INST_0_i_10_n_0\,
      I3 => alu_src_t(2),
      I4 => \rd_value[20]_INST_0_i_9_n_0\,
      O => \rd_value[14]_INST_0_i_5_n_0\
    );
\rd_value[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(14),
      I1 => alu_src_s(14),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(14),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[14]_INST_0_i_6_n_0\
    );
\rd_value[14]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => alu_src_t(22),
      I1 => alu_src_t(3),
      I2 => alu_src_t(30),
      I3 => alu_src_t(4),
      I4 => alu_src_t(14),
      O => \rd_value[14]_INST_0_i_7_n_0\
    );
\rd_value[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(15),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[15]_INST_0_i_2_n_0\,
      I4 => \rd_value[15]_INST_0_i_3_n_0\,
      I5 => \rd_value[15]_INST_0_i_4_n_0\,
      O => rd_value(15)
    );
\rd_value[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \alu_op_reg_n_0_[0]\,
      I1 => alu_op(5),
      I2 => \alu_op_reg_n_0_[4]\,
      I3 => \alu_op_reg_n_0_[3]\,
      I4 => \alu_op_reg_n_0_[2]\,
      I5 => \alu_op_reg_n_0_[1]\,
      O => \rd_value[15]_INST_0_i_1_n_0\
    );
\rd_value[15]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_5_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[16]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[15]_INST_0_i_2_n_0\
    );
\rd_value[15]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[16]_INST_0_i_5_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[15]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[15]_INST_0_i_3_n_0\
    );
\rd_value[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[15]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(15),
      I4 => data1(15),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[15]_INST_0_i_4_n_0\
    );
\rd_value[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[17]_INST_0_i_8_n_0\,
      I1 => \rd_value[17]_INST_0_i_9_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[19]_INST_0_i_9_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[15]_INST_0_i_8_n_0\,
      O => \rd_value[15]_INST_0_i_5_n_0\
    );
\rd_value[15]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_9_n_0\,
      I1 => alu_src_t(2),
      I2 => \rd_value[30]_INST_0_i_7_n_0\,
      I3 => alu_src_t(12),
      I4 => alu_src_t(1),
      I5 => \rd_value[17]_INST_0_i_10_n_0\,
      O => \rd_value[15]_INST_0_i_6_n_0\
    );
\rd_value[15]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(15),
      I1 => alu_src_s(15),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(15),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[15]_INST_0_i_7_n_0\
    );
\rd_value[15]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => alu_src_t(23),
      I1 => alu_src_t(3),
      I2 => \alu_src_t__95\(31),
      I3 => alu_src_t(4),
      I4 => alu_src_t(15),
      O => \rd_value[15]_INST_0_i_8_n_0\
    );
\rd_value[15]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => alu_src_t(0),
      I1 => alu_src_t(8),
      I2 => alu_src_t(4),
      I3 => alu_src_t(3),
      O => \rd_value[15]_INST_0_i_9_n_0\
    );
\rd_value[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[16]_INST_0_i_1_n_0\,
      I2 => \rd_value[16]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(0),
      I5 => \rd_value[16]_INST_0_i_4_n_0\,
      O => rd_value(16)
    );
\rd_value[16]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[16]_INST_0_i_5_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[17]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[16]_INST_0_i_1_n_0\
    );
\rd_value[16]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => alu_src_t(1),
      I1 => alu_src_t(9),
      I2 => alu_src_t(4),
      I3 => alu_src_t(3),
      O => \rd_value[16]_INST_0_i_10_n_0\
    );
\rd_value[16]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[17]_INST_0_i_5_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[16]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[16]_INST_0_i_2_n_0\
    );
\rd_value[16]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[0]\,
      I1 => alu_src,
      I2 => \^write_data\(0),
      O => alu_src_t(0)
    );
\rd_value[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[16]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(16),
      I4 => data1(16),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[16]_INST_0_i_4_n_0\
    );
\rd_value[16]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[18]_INST_0_i_8_n_0\,
      I1 => \rd_value[18]_INST_0_i_9_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[16]_INST_0_i_8_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[16]_INST_0_i_9_n_0\,
      O => \rd_value[16]_INST_0_i_5_n_0\
    );
\rd_value[16]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rd_value[16]_INST_0_i_10_n_0\,
      I1 => alu_src_t(2),
      I2 => \rd_value[20]_INST_0_i_9_n_0\,
      I3 => alu_src_t(1),
      I4 => \rd_value[18]_INST_0_i_10_n_0\,
      O => \rd_value[16]_INST_0_i_6_n_0\
    );
\rd_value[16]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(16),
      I1 => alu_src_s(16),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(16),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[16]_INST_0_i_7_n_0\
    );
\rd_value[16]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => alu_src_t(28),
      I1 => alu_src_t(20),
      I2 => alu_src_t(4),
      I3 => alu_src_t(3),
      O => \rd_value[16]_INST_0_i_8_n_0\
    );
\rd_value[16]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => alu_src_t(24),
      I1 => alu_src_t(16),
      I2 => alu_src_t(4),
      I3 => alu_src_t(3),
      O => \rd_value[16]_INST_0_i_9_n_0\
    );
\rd_value[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[17]_INST_0_i_1_n_0\,
      I2 => \rd_value[17]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(1),
      I5 => \rd_value[17]_INST_0_i_4_n_0\,
      O => rd_value(17)
    );
\rd_value[17]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[17]_INST_0_i_5_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[18]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[17]_INST_0_i_1_n_0\
    );
\rd_value[17]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FCFC0000BB88"
    )
        port map (
      I0 => alu_src_t(10),
      I1 => alu_src_t(2),
      I2 => alu_src_t(6),
      I3 => alu_src_t(14),
      I4 => alu_src_t(4),
      I5 => alu_src_t(3),
      O => \rd_value[17]_INST_0_i_10_n_0\
    );
\rd_value[17]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[18]_INST_0_i_5_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[17]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[17]_INST_0_i_2_n_0\
    );
\rd_value[17]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[1]\,
      I1 => alu_src,
      I2 => \^write_data\(1),
      O => alu_src_t(1)
    );
\rd_value[17]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[17]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(17),
      I4 => data1(17),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[17]_INST_0_i_4_n_0\
    );
\rd_value[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[19]_INST_0_i_8_n_0\,
      I1 => \rd_value[19]_INST_0_i_9_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[17]_INST_0_i_8_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[17]_INST_0_i_9_n_0\,
      O => \rd_value[17]_INST_0_i_5_n_0\
    );
\rd_value[17]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \rd_value[17]_INST_0_i_10_n_0\,
      I1 => alu_src_t(1),
      I2 => \rd_value[30]_INST_0_i_7_n_0\,
      I3 => alu_src_t(12),
      I4 => alu_src_t(2),
      I5 => \rd_value[23]_INST_0_i_8_n_0\,
      O => \rd_value[17]_INST_0_i_6_n_0\
    );
\rd_value[17]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(17),
      I1 => alu_src_s(17),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(17),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[17]_INST_0_i_7_n_0\
    );
\rd_value[17]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => alu_src_t(29),
      I1 => alu_src_t(21),
      I2 => alu_src_t(4),
      I3 => alu_src_t(3),
      O => \rd_value[17]_INST_0_i_8_n_0\
    );
\rd_value[17]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => alu_src_t(25),
      I1 => alu_src_t(17),
      I2 => alu_src_t(4),
      I3 => alu_src_t(3),
      O => \rd_value[17]_INST_0_i_9_n_0\
    );
\rd_value[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[18]_INST_0_i_1_n_0\,
      I2 => \rd_value[18]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[18]_INST_0_i_4_n_0\,
      O => rd_value(18)
    );
\rd_value[18]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[18]_INST_0_i_5_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[19]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[18]_INST_0_i_1_n_0\
    );
\rd_value[18]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FCFC0000BB88"
    )
        port map (
      I0 => alu_src_t(11),
      I1 => alu_src_t(2),
      I2 => alu_src_t(7),
      I3 => alu_src_t(15),
      I4 => alu_src_t(4),
      I5 => alu_src_t(3),
      O => \rd_value[18]_INST_0_i_10_n_0\
    );
\rd_value[18]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[19]_INST_0_i_5_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[18]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[18]_INST_0_i_2_n_0\
    );
\rd_value[18]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[2]\,
      I1 => alu_src,
      I2 => \^write_data\(2),
      O => alu_src_t(2)
    );
\rd_value[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[18]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(18),
      I4 => data1(18),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[18]_INST_0_i_4_n_0\
    );
\rd_value[18]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rd_value[20]_INST_0_i_6_n_0\,
      I1 => alu_src_t(1),
      I2 => \rd_value[18]_INST_0_i_8_n_0\,
      I3 => alu_src_t(2),
      I4 => \rd_value[18]_INST_0_i_9_n_0\,
      O => \rd_value[18]_INST_0_i_5_n_0\
    );
\rd_value[18]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rd_value[18]_INST_0_i_10_n_0\,
      I1 => alu_src_t(1),
      I2 => \rd_value[20]_INST_0_i_9_n_0\,
      I3 => alu_src_t(2),
      I4 => \rd_value[24]_INST_0_i_9_n_0\,
      O => \rd_value[18]_INST_0_i_6_n_0\
    );
\rd_value[18]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(18),
      I1 => alu_src_s(18),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(18),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[18]_INST_0_i_7_n_0\
    );
\rd_value[18]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => alu_src_t(30),
      I1 => alu_src_t(22),
      I2 => alu_src_t(4),
      I3 => alu_src_t(3),
      O => \rd_value[18]_INST_0_i_8_n_0\
    );
\rd_value[18]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => alu_src_t(26),
      I1 => alu_src_t(18),
      I2 => alu_src_t(4),
      I3 => alu_src_t(3),
      O => \rd_value[18]_INST_0_i_9_n_0\
    );
\rd_value[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[19]_INST_0_i_1_n_0\,
      I2 => \rd_value[19]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(3),
      I5 => \rd_value[19]_INST_0_i_4_n_0\,
      O => rd_value(19)
    );
\rd_value[19]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[19]_INST_0_i_5_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[20]_INST_0_i_7_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[19]_INST_0_i_1_n_0\
    );
\rd_value[19]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_value[30]_INST_0_i_7_n_0\,
      I1 => alu_src_t(12),
      O => \rd_value[19]_INST_0_i_10_n_0\
    );
\rd_value[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \rd_value[20]_INST_0_i_5_n_0\,
      I1 => alu_src_t(1),
      I2 => \rd_value[20]_INST_0_i_6_n_0\,
      I3 => \rd_value[30]_INST_0_i_9_n_0\,
      I4 => \rd_value[19]_INST_0_i_6_n_0\,
      I5 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[19]_INST_0_i_2_n_0\
    );
\rd_value[19]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[3]\,
      I1 => alu_src,
      I2 => \^write_data\(3),
      O => alu_src_t(3)
    );
\rd_value[19]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[19]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(19),
      I4 => data1(19),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[19]_INST_0_i_4_n_0\
    );
\rd_value[19]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \rd_value[21]_INST_0_i_6_n_0\,
      I1 => alu_src_t(1),
      I2 => \rd_value[19]_INST_0_i_8_n_0\,
      I3 => alu_src_t(2),
      I4 => \rd_value[19]_INST_0_i_9_n_0\,
      O => \rd_value[19]_INST_0_i_5_n_0\
    );
\rd_value[19]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[19]_INST_0_i_10_n_0\,
      I1 => \rd_value[23]_INST_0_i_8_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[21]_INST_0_i_9_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[25]_INST_0_i_9_n_0\,
      O => \rd_value[19]_INST_0_i_6_n_0\
    );
\rd_value[19]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(19),
      I1 => alu_src_s(19),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(19),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[19]_INST_0_i_7_n_0\
    );
\rd_value[19]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => \alu_src_t__95\(31),
      I1 => alu_src_t(23),
      I2 => alu_src_t(4),
      I3 => alu_src_t(3),
      O => \rd_value[19]_INST_0_i_8_n_0\
    );
\rd_value[19]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => alu_src_t(27),
      I1 => alu_src_t(19),
      I2 => alu_src_t(4),
      I3 => alu_src_t(3),
      O => \rd_value[19]_INST_0_i_9_n_0\
    );
\rd_value[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(1),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[1]_INST_0_i_1_n_0\,
      I4 => \rd_value[1]_INST_0_i_2_n_0\,
      I5 => \rd_value[1]_INST_0_i_3_n_0\,
      O => rd_value(1)
    );
\rd_value[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => alu_src_t(0),
      I1 => \rd_value[31]_INST_0_i_11_n_0\,
      I2 => alu_src_t(2),
      I3 => alu_src_t(1),
      I4 => \rd_value[30]_INST_0_i_7_n_0\,
      O => \rd_value[1]_INST_0_i_1_n_0\
    );
\rd_value[1]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[2]_INST_0_i_4_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[1]_INST_0_i_4_n_0\,
      I3 => \rd_value[31]_INST_0_i_8_n_0\,
      O => \rd_value[1]_INST_0_i_2_n_0\
    );
\rd_value[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[1]_INST_0_i_5_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(1),
      I4 => data1(1),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[1]_INST_0_i_3_n_0\
    );
\rd_value[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFA0AFC0CFA0A"
    )
        port map (
      I0 => \rd_value[1]_INST_0_i_6_n_0\,
      I1 => \rd_value[5]_INST_0_i_7_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[3]_INST_0_i_7_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[7]_INST_0_i_7_n_0\,
      O => \rd_value[1]_INST_0_i_4_n_0\
    );
\rd_value[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(1),
      I1 => alu_src_s(1),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(1),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[1]_INST_0_i_5_n_0\
    );
\rd_value[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => alu_src_t(1),
      I1 => alu_src_t(17),
      I2 => alu_src_t(3),
      I3 => alu_src_t(25),
      I4 => alu_src_t(4),
      I5 => alu_src_t(9),
      O => \rd_value[1]_INST_0_i_6_n_0\
    );
\rd_value[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[20]_INST_0_i_1_n_0\,
      I2 => \rd_value[20]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(4),
      I5 => \rd_value[20]_INST_0_i_4_n_0\,
      O => rd_value(20)
    );
\rd_value[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \rd_value[20]_INST_0_i_5_n_0\,
      I1 => alu_src_t(1),
      I2 => \rd_value[20]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_8_n_0\,
      I4 => \rd_value[21]_INST_0_i_7_n_0\,
      I5 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[20]_INST_0_i_1_n_0\
    );
\rd_value[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \rd_value[21]_INST_0_i_5_n_0\,
      I1 => alu_src_t(1),
      I2 => \rd_value[21]_INST_0_i_6_n_0\,
      I3 => \rd_value[30]_INST_0_i_9_n_0\,
      I4 => \rd_value[20]_INST_0_i_7_n_0\,
      I5 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[20]_INST_0_i_2_n_0\
    );
\rd_value[20]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[4]\,
      I1 => alu_src,
      I2 => \^write_data\(4),
      O => alu_src_t(4)
    );
\rd_value[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[20]_INST_0_i_8_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(20),
      I4 => data1(20),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[20]_INST_0_i_4_n_0\
    );
\rd_value[20]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000030300000BB88"
    )
        port map (
      I0 => alu_src_t(26),
      I1 => alu_src_t(2),
      I2 => alu_src_t(30),
      I3 => alu_src_t(22),
      I4 => alu_src_t(4),
      I5 => alu_src_t(3),
      O => \rd_value[20]_INST_0_i_5_n_0\
    );
\rd_value[20]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000030300000BB88"
    )
        port map (
      I0 => alu_src_t(24),
      I1 => alu_src_t(2),
      I2 => alu_src_t(28),
      I3 => alu_src_t(20),
      I4 => alu_src_t(4),
      I5 => alu_src_t(3),
      O => \rd_value[20]_INST_0_i_6_n_0\
    );
\rd_value[20]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[20]_INST_0_i_9_n_0\,
      I1 => \rd_value[24]_INST_0_i_9_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[22]_INST_0_i_8_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[26]_INST_0_i_8_n_0\,
      O => \rd_value[20]_INST_0_i_7_n_0\
    );
\rd_value[20]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(20),
      I1 => alu_src_s(20),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(20),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[20]_INST_0_i_8_n_0\
    );
\rd_value[20]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => alu_src_t(5),
      I1 => alu_src_t(13),
      I2 => alu_src_t(4),
      I3 => alu_src_t(3),
      O => \rd_value[20]_INST_0_i_9_n_0\
    );
\rd_value[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[21]_INST_0_i_1_n_0\,
      I2 => \rd_value[21]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(5),
      I5 => \rd_value[21]_INST_0_i_4_n_0\,
      O => rd_value(21)
    );
\rd_value[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB800B800B800"
    )
        port map (
      I0 => \rd_value[21]_INST_0_i_5_n_0\,
      I1 => alu_src_t(1),
      I2 => \rd_value[21]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_8_n_0\,
      I4 => \rd_value[22]_INST_0_i_6_n_0\,
      I5 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[21]_INST_0_i_1_n_0\
    );
\rd_value[21]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[22]_INST_0_i_5_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[21]_INST_0_i_7_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[21]_INST_0_i_2_n_0\
    );
\rd_value[21]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[5]\,
      I1 => alu_src,
      I2 => \^write_data\(5),
      O => alu_src_t(5)
    );
\rd_value[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[21]_INST_0_i_8_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(21),
      I4 => data1(21),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[21]_INST_0_i_4_n_0\
    );
\rd_value[21]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000030300000BB88"
    )
        port map (
      I0 => alu_src_t(27),
      I1 => alu_src_t(2),
      I2 => \alu_src_t__95\(31),
      I3 => alu_src_t(23),
      I4 => alu_src_t(4),
      I5 => alu_src_t(3),
      O => \rd_value[21]_INST_0_i_5_n_0\
    );
\rd_value[21]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000030300000BB88"
    )
        port map (
      I0 => alu_src_t(25),
      I1 => alu_src_t(2),
      I2 => alu_src_t(29),
      I3 => alu_src_t(21),
      I4 => alu_src_t(4),
      I5 => alu_src_t(3),
      O => \rd_value[21]_INST_0_i_6_n_0\
    );
\rd_value[21]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[21]_INST_0_i_9_n_0\,
      I1 => \rd_value[25]_INST_0_i_9_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[23]_INST_0_i_8_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[27]_INST_0_i_8_n_0\,
      O => \rd_value[21]_INST_0_i_7_n_0\
    );
\rd_value[21]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(21),
      I1 => alu_src_s(21),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(21),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[21]_INST_0_i_8_n_0\
    );
\rd_value[21]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => alu_src_t(6),
      I1 => alu_src_t(14),
      I2 => alu_src_t(4),
      I3 => alu_src_t(3),
      O => \rd_value[21]_INST_0_i_9_n_0\
    );
\rd_value[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[22]_INST_0_i_1_n_0\,
      I2 => \rd_value[22]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(6),
      I5 => \rd_value[22]_INST_0_i_4_n_0\,
      O => rd_value(22)
    );
\rd_value[22]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[22]_INST_0_i_5_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[23]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[22]_INST_0_i_1_n_0\
    );
\rd_value[22]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[23]_INST_0_i_5_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[22]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[22]_INST_0_i_2_n_0\
    );
\rd_value[22]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[6]\,
      I1 => alu_src,
      I2 => \^write_data\(6),
      O => alu_src_t(6)
    );
\rd_value[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[22]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(22),
      I4 => data1(22),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[22]_INST_0_i_4_n_0\
    );
\rd_value[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => alu_src_t(28),
      I1 => alu_src_t(2),
      I2 => \rd_value[30]_INST_0_i_7_n_0\,
      I3 => alu_src_t(24),
      I4 => alu_src_t(1),
      I5 => \rd_value[20]_INST_0_i_5_n_0\,
      O => \rd_value[22]_INST_0_i_5_n_0\
    );
\rd_value[22]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[22]_INST_0_i_8_n_0\,
      I1 => \rd_value[26]_INST_0_i_8_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[24]_INST_0_i_9_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[28]_INST_0_i_8_n_0\,
      O => \rd_value[22]_INST_0_i_6_n_0\
    );
\rd_value[22]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(22),
      I1 => alu_src_s(22),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(22),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[22]_INST_0_i_7_n_0\
    );
\rd_value[22]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A0C"
    )
        port map (
      I0 => alu_src_t(7),
      I1 => alu_src_t(15),
      I2 => alu_src_t(4),
      I3 => alu_src_t(3),
      O => \rd_value[22]_INST_0_i_8_n_0\
    );
\rd_value[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[23]_INST_0_i_1_n_0\,
      I2 => \rd_value[23]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(7),
      I5 => \rd_value[23]_INST_0_i_4_n_0\,
      O => rd_value(23)
    );
\rd_value[23]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[23]_INST_0_i_5_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[24]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[23]_INST_0_i_1_n_0\
    );
\rd_value[23]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[24]_INST_0_i_5_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[23]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[23]_INST_0_i_2_n_0\
    );
\rd_value[23]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[7]\,
      I1 => alu_src,
      I2 => \^write_data\(7),
      O => alu_src_t(7)
    );
\rd_value[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[23]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(23),
      I4 => data1(23),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[23]_INST_0_i_4_n_0\
    );
\rd_value[23]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => alu_src_t(29),
      I1 => alu_src_t(2),
      I2 => \rd_value[30]_INST_0_i_7_n_0\,
      I3 => alu_src_t(25),
      I4 => alu_src_t(1),
      I5 => \rd_value[21]_INST_0_i_5_n_0\,
      O => \rd_value[23]_INST_0_i_5_n_0\
    );
\rd_value[23]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[23]_INST_0_i_8_n_0\,
      I1 => \rd_value[27]_INST_0_i_8_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[25]_INST_0_i_9_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[29]_INST_0_i_8_n_0\,
      O => \rd_value[23]_INST_0_i_6_n_0\
    );
\rd_value[23]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(23),
      I1 => alu_src_s(23),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(23),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[23]_INST_0_i_7_n_0\
    );
\rd_value[23]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => alu_src_t(8),
      I1 => alu_src_t(3),
      I2 => alu_src_t(0),
      I3 => alu_src_t(4),
      I4 => alu_src_t(16),
      O => \rd_value[23]_INST_0_i_8_n_0\
    );
\rd_value[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[24]_INST_0_i_1_n_0\,
      I2 => \rd_value[24]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(8),
      I5 => \rd_value[24]_INST_0_i_4_n_0\,
      O => rd_value(24)
    );
\rd_value[24]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[24]_INST_0_i_5_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[25]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[24]_INST_0_i_1_n_0\
    );
\rd_value[24]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[25]_INST_0_i_5_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[24]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[24]_INST_0_i_2_n_0\
    );
\rd_value[24]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[8]\,
      I1 => alu_src,
      I2 => \^write_data\(8),
      O => alu_src_t(8)
    );
\rd_value[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[24]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(24),
      I4 => data1(24),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[24]_INST_0_i_4_n_0\
    );
\rd_value[24]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => alu_src_t(30),
      I1 => alu_src_t(2),
      I2 => \rd_value[30]_INST_0_i_7_n_0\,
      I3 => alu_src_t(26),
      I4 => alu_src_t(1),
      I5 => \rd_value[24]_INST_0_i_8_n_0\,
      O => \rd_value[24]_INST_0_i_5_n_0\
    );
\rd_value[24]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[24]_INST_0_i_9_n_0\,
      I1 => \rd_value[28]_INST_0_i_8_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[26]_INST_0_i_8_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[30]_INST_0_i_12_n_0\,
      O => \rd_value[24]_INST_0_i_6_n_0\
    );
\rd_value[24]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(24),
      I1 => alu_src_s(24),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(24),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[24]_INST_0_i_7_n_0\
    );
\rd_value[24]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => alu_src_t(28),
      I1 => alu_src_t(2),
      I2 => \rd_value[30]_INST_0_i_7_n_0\,
      I3 => alu_src_t(24),
      O => \rd_value[24]_INST_0_i_8_n_0\
    );
\rd_value[24]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => alu_src_t(9),
      I1 => alu_src_t(3),
      I2 => alu_src_t(1),
      I3 => alu_src_t(4),
      I4 => alu_src_t(17),
      O => \rd_value[24]_INST_0_i_9_n_0\
    );
\rd_value[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[25]_INST_0_i_1_n_0\,
      I2 => \rd_value[25]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(9),
      I5 => \rd_value[25]_INST_0_i_4_n_0\,
      O => rd_value(25)
    );
\rd_value[25]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[25]_INST_0_i_5_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[26]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[25]_INST_0_i_1_n_0\
    );
\rd_value[25]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[26]_INST_0_i_6_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[25]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[25]_INST_0_i_2_n_0\
    );
\rd_value[25]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[9]\,
      I1 => alu_src,
      I2 => \^write_data\(9),
      O => alu_src_t(9)
    );
\rd_value[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[25]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(25),
      I4 => data1(25),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[25]_INST_0_i_4_n_0\
    );
\rd_value[25]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \alu_src_t__95\(31),
      I1 => alu_src_t(2),
      I2 => \rd_value[30]_INST_0_i_7_n_0\,
      I3 => alu_src_t(27),
      I4 => alu_src_t(1),
      I5 => \rd_value[25]_INST_0_i_8_n_0\,
      O => \rd_value[25]_INST_0_i_5_n_0\
    );
\rd_value[25]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[25]_INST_0_i_9_n_0\,
      I1 => \rd_value[29]_INST_0_i_8_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[27]_INST_0_i_8_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[31]_INST_0_i_27_n_0\,
      O => \rd_value[25]_INST_0_i_6_n_0\
    );
\rd_value[25]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(25),
      I1 => alu_src_s(25),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(25),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[25]_INST_0_i_7_n_0\
    );
\rd_value[25]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => alu_src_t(29),
      I1 => alu_src_t(2),
      I2 => \rd_value[30]_INST_0_i_7_n_0\,
      I3 => alu_src_t(25),
      O => \rd_value[25]_INST_0_i_8_n_0\
    );
\rd_value[25]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => alu_src_t(10),
      I1 => alu_src_t(3),
      I2 => alu_src_t(2),
      I3 => alu_src_t(4),
      I4 => alu_src_t(18),
      O => \rd_value[25]_INST_0_i_9_n_0\
    );
\rd_value[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[26]_INST_0_i_1_n_0\,
      I2 => \rd_value[26]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(10),
      I5 => \rd_value[26]_INST_0_i_4_n_0\,
      O => rd_value(26)
    );
\rd_value[26]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[26]_INST_0_i_5_n_0\,
      I1 => \rd_value[31]_INST_0_i_11_n_0\,
      I2 => \rd_value[27]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[26]_INST_0_i_1_n_0\
    );
\rd_value[26]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[27]_INST_0_i_6_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[26]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_8_n_0\,
      O => \rd_value[26]_INST_0_i_2_n_0\
    );
\rd_value[26]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[10]\,
      I1 => alu_src,
      I2 => \^write_data\(10),
      O => alu_src_t(10)
    );
\rd_value[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[26]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(26),
      I4 => data1(26),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[26]_INST_0_i_4_n_0\
    );
\rd_value[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[26]_INST_0_i_8_n_0\,
      I1 => \rd_value[30]_INST_0_i_12_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[28]_INST_0_i_8_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[31]_INST_0_i_23_n_0\,
      O => \rd_value[26]_INST_0_i_5_n_0\
    );
\rd_value[26]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => alu_src_t(28),
      I1 => alu_src_t(1),
      I2 => alu_src_t(30),
      I3 => alu_src_t(2),
      I4 => \rd_value[30]_INST_0_i_7_n_0\,
      I5 => alu_src_t(26),
      O => \rd_value[26]_INST_0_i_6_n_0\
    );
\rd_value[26]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(26),
      I1 => alu_src_s(26),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(26),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[26]_INST_0_i_7_n_0\
    );
\rd_value[26]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => alu_src_t(11),
      I1 => alu_src_t(3),
      I2 => alu_src_t(4),
      I3 => alu_src_t(19),
      O => \rd_value[26]_INST_0_i_8_n_0\
    );
\rd_value[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[27]_INST_0_i_1_n_0\,
      I2 => \rd_value[27]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(11),
      I5 => \rd_value[27]_INST_0_i_4_n_0\,
      O => rd_value(27)
    );
\rd_value[27]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[27]_INST_0_i_5_n_0\,
      I1 => \rd_value[31]_INST_0_i_11_n_0\,
      I2 => \rd_value[28]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[27]_INST_0_i_1_n_0\
    );
\rd_value[27]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[28]_INST_0_i_5_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[27]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_8_n_0\,
      O => \rd_value[27]_INST_0_i_2_n_0\
    );
\rd_value[27]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[11]\,
      I1 => alu_src,
      I2 => \^write_data\(11),
      O => alu_src_t(11)
    );
\rd_value[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[27]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(27),
      I4 => data1(27),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[27]_INST_0_i_4_n_0\
    );
\rd_value[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[27]_INST_0_i_8_n_0\,
      I1 => \rd_value[31]_INST_0_i_27_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[29]_INST_0_i_8_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[31]_INST_0_i_26_n_0\,
      O => \rd_value[27]_INST_0_i_5_n_0\
    );
\rd_value[27]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30BB000030880000"
    )
        port map (
      I0 => alu_src_t(29),
      I1 => alu_src_t(1),
      I2 => \alu_src_t__95\(31),
      I3 => alu_src_t(2),
      I4 => \rd_value[30]_INST_0_i_7_n_0\,
      I5 => alu_src_t(27),
      O => \rd_value[27]_INST_0_i_6_n_0\
    );
\rd_value[27]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(27),
      I1 => alu_src_s(27),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(27),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[27]_INST_0_i_7_n_0\
    );
\rd_value[27]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B38"
    )
        port map (
      I0 => alu_src_t(12),
      I1 => alu_src_t(3),
      I2 => alu_src_t(4),
      I3 => alu_src_t(20),
      O => \rd_value[27]_INST_0_i_8_n_0\
    );
\rd_value[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[28]_INST_0_i_1_n_0\,
      I2 => \rd_value[28]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(12),
      I5 => \rd_value[28]_INST_0_i_4_n_0\,
      O => rd_value(28)
    );
\rd_value[28]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[28]_INST_0_i_5_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[29]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[28]_INST_0_i_1_n_0\
    );
\rd_value[28]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[29]_INST_0_i_5_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[28]_INST_0_i_6_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[28]_INST_0_i_2_n_0\
    );
\rd_value[28]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[12]\,
      I1 => alu_src,
      I2 => \^write_data\(12),
      O => alu_src_t(12)
    );
\rd_value[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[28]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(28),
      I4 => data1(28),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[28]_INST_0_i_4_n_0\
    );
\rd_value[28]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008800C0"
    )
        port map (
      I0 => alu_src_t(30),
      I1 => \rd_value[30]_INST_0_i_7_n_0\,
      I2 => alu_src_t(28),
      I3 => alu_src_t(2),
      I4 => alu_src_t(1),
      O => \rd_value[28]_INST_0_i_5_n_0\
    );
\rd_value[28]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[28]_INST_0_i_8_n_0\,
      I1 => \rd_value[31]_INST_0_i_23_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[30]_INST_0_i_12_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[31]_INST_0_i_22_n_0\,
      O => \rd_value[28]_INST_0_i_6_n_0\
    );
\rd_value[28]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(28),
      I1 => alu_src_s(28),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(28),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[28]_INST_0_i_7_n_0\
    );
\rd_value[28]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => alu_src_t(13),
      I1 => alu_src_t(3),
      I2 => alu_src_t(5),
      I3 => alu_src_t(4),
      I4 => alu_src_t(21),
      O => \rd_value[28]_INST_0_i_8_n_0\
    );
\rd_value[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[29]_INST_0_i_1_n_0\,
      I2 => \rd_value[29]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(13),
      I5 => \rd_value[29]_INST_0_i_4_n_0\,
      O => rd_value(29)
    );
\rd_value[29]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[29]_INST_0_i_5_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[30]_INST_0_i_10_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[29]_INST_0_i_1_n_0\
    );
\rd_value[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800080008000"
    )
        port map (
      I0 => \rd_value[30]_INST_0_i_5_n_0\,
      I1 => alu_src_t(30),
      I2 => \rd_value[30]_INST_0_i_7_n_0\,
      I3 => \rd_value[30]_INST_0_i_9_n_0\,
      I4 => \rd_value[29]_INST_0_i_6_n_0\,
      I5 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[29]_INST_0_i_2_n_0\
    );
\rd_value[29]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[13]\,
      I1 => alu_src,
      I2 => \^write_data\(13),
      O => alu_src_t(13)
    );
\rd_value[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[29]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(29),
      I4 => data1(29),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[29]_INST_0_i_4_n_0\
    );
\rd_value[29]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008800C0"
    )
        port map (
      I0 => \alu_src_t__95\(31),
      I1 => \rd_value[30]_INST_0_i_7_n_0\,
      I2 => alu_src_t(29),
      I3 => alu_src_t(2),
      I4 => alu_src_t(1),
      O => \rd_value[29]_INST_0_i_5_n_0\
    );
\rd_value[29]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[29]_INST_0_i_8_n_0\,
      I1 => \rd_value[31]_INST_0_i_26_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[31]_INST_0_i_27_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[31]_INST_0_i_28_n_0\,
      O => \rd_value[29]_INST_0_i_6_n_0\
    );
\rd_value[29]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(29),
      I1 => alu_src_s(29),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(29),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[29]_INST_0_i_7_n_0\
    );
\rd_value[29]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => alu_src_t(14),
      I1 => alu_src_t(3),
      I2 => alu_src_t(6),
      I3 => alu_src_t(4),
      I4 => alu_src_t(22),
      O => \rd_value[29]_INST_0_i_8_n_0\
    );
\rd_value[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(2),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[2]_INST_0_i_1_n_0\,
      I4 => \rd_value[2]_INST_0_i_2_n_0\,
      I5 => \rd_value[2]_INST_0_i_3_n_0\,
      O => rd_value(2)
    );
\rd_value[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[2]_INST_0_i_4_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[3]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[2]_INST_0_i_1_n_0\
    );
\rd_value[2]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rd_value[3]_INST_0_i_4_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      O => \rd_value[2]_INST_0_i_2_n_0\
    );
\rd_value[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[2]_INST_0_i_5_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(2),
      I4 => data1(2),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[2]_INST_0_i_3_n_0\
    );
\rd_value[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[8]_INST_0_i_7_n_0\,
      I1 => \rd_value[4]_INST_0_i_6_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[6]_INST_0_i_7_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[2]_INST_0_i_6_n_0\,
      O => \rd_value[2]_INST_0_i_4_n_0\
    );
\rd_value[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(2),
      I1 => alu_src_s(2),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(2),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[2]_INST_0_i_5_n_0\
    );
\rd_value[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => alu_src_t(2),
      I1 => alu_src_t(18),
      I2 => alu_src_t(3),
      I3 => alu_src_t(26),
      I4 => alu_src_t(4),
      I5 => alu_src_t(10),
      O => \rd_value[2]_INST_0_i_6_n_0\
    );
\rd_value[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFA8A8A8"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[30]_INST_0_i_1_n_0\,
      I2 => \rd_value[30]_INST_0_i_2_n_0\,
      I3 => \rd_value[31]_INST_0_i_3_n_0\,
      I4 => alu_src_t(14),
      I5 => \rd_value[30]_INST_0_i_4_n_0\,
      O => rd_value(30)
    );
\rd_value[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800080008000"
    )
        port map (
      I0 => \rd_value[30]_INST_0_i_5_n_0\,
      I1 => alu_src_t(30),
      I2 => \rd_value[30]_INST_0_i_7_n_0\,
      I3 => \rd_value[31]_INST_0_i_8_n_0\,
      I4 => \rd_value[31]_INST_0_i_10_n_0\,
      I5 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[30]_INST_0_i_1_n_0\
    );
\rd_value[30]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[30]_INST_0_i_12_n_0\,
      I1 => \rd_value[31]_INST_0_i_22_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[31]_INST_0_i_23_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[31]_INST_0_i_24_n_0\,
      O => \rd_value[30]_INST_0_i_10_n_0\
    );
\rd_value[30]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(30),
      I1 => alu_src_s(30),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(30),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[30]_INST_0_i_11_n_0\
    );
\rd_value[30]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => alu_src_t(15),
      I1 => alu_src_t(3),
      I2 => alu_src_t(7),
      I3 => alu_src_t(4),
      I4 => alu_src_t(23),
      O => \rd_value[30]_INST_0_i_12_n_0\
    );
\rd_value[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800080008000"
    )
        port map (
      I0 => \rd_value[30]_INST_0_i_5_n_0\,
      I1 => \alu_src_t__95\(31),
      I2 => \rd_value[30]_INST_0_i_7_n_0\,
      I3 => \rd_value[30]_INST_0_i_9_n_0\,
      I4 => \rd_value[30]_INST_0_i_10_n_0\,
      I5 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[30]_INST_0_i_2_n_0\
    );
\rd_value[30]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[14]\,
      I1 => alu_src,
      I2 => \^write_data\(14),
      O => alu_src_t(14)
    );
\rd_value[30]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[30]_INST_0_i_11_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(30),
      I4 => data1(30),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[30]_INST_0_i_4_n_0\
    );
\rd_value[30]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => alu_src_t(2),
      I1 => alu_src_t(1),
      O => \rd_value[30]_INST_0_i_5_n_0\
    );
\rd_value[30]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[30]\,
      I1 => alu_src,
      I2 => \^write_data\(30),
      O => alu_src_t(30)
    );
\rd_value[30]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \^write_data\(4),
      I1 => \imm_reg_n_0_[4]\,
      I2 => \^write_data\(3),
      I3 => alu_src,
      I4 => \imm_reg_n_0_[3]\,
      O => \rd_value[30]_INST_0_i_7_n_0\
    );
\rd_value[30]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[31]\,
      I1 => alu_src,
      I2 => \^write_data\(31),
      O => \alu_src_t__95\(31)
    );
\rd_value[30]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => alu_src_t(0),
      I1 => \rd_value[31]_INST_0_i_17_n_0\,
      I2 => \rd_value[31]_INST_0_i_18_n_0\,
      I3 => \rd_value[31]_INST_0_i_19_n_0\,
      I4 => \rd_value[31]_INST_0_i_20_n_0\,
      I5 => \rd_value[0]_INST_0_i_10_n_0\,
      O => \rd_value[30]_INST_0_i_9_n_0\
    );
\rd_value[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_1_n_0\,
      I1 => \rd_value[31]_INST_0_i_2_n_0\,
      I2 => \rd_value[31]_INST_0_i_3_n_0\,
      I3 => alu_src_t(15),
      I4 => \rd_value[31]_INST_0_i_5_n_0\,
      O => rd_value(31)
    );
\rd_value[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000030000"
    )
        port map (
      I0 => \alu_op_reg_n_0_[0]\,
      I1 => alu_op(5),
      I2 => \alu_op_reg_n_0_[4]\,
      I3 => \alu_op_reg_n_0_[3]\,
      I4 => \alu_op_reg_n_0_[2]\,
      I5 => \alu_op_reg_n_0_[1]\,
      O => \rd_value[31]_INST_0_i_1_n_0\
    );
\rd_value[31]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_25_n_0\,
      I1 => \rd_value[31]_INST_0_i_26_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[31]_INST_0_i_27_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[31]_INST_0_i_28_n_0\,
      O => \rd_value[31]_INST_0_i_10_n_0\
    );
\rd_value[31]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => alu_src_t(0),
      I1 => \rd_value[31]_INST_0_i_17_n_0\,
      I2 => \rd_value[31]_INST_0_i_18_n_0\,
      I3 => \rd_value[31]_INST_0_i_19_n_0\,
      I4 => \rd_value[31]_INST_0_i_20_n_0\,
      I5 => \rd_value[0]_INST_0_i_10_n_0\,
      O => \rd_value[31]_INST_0_i_11_n_0\
    );
\rd_value[31]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0102333003300300"
    )
        port map (
      I0 => \alu_op_reg_n_0_[0]\,
      I1 => alu_op(5),
      I2 => \alu_op_reg_n_0_[4]\,
      I3 => \alu_op_reg_n_0_[3]\,
      I4 => \alu_op_reg_n_0_[2]\,
      I5 => \alu_op_reg_n_0_[1]\,
      O => \rd_value[31]_INST_0_i_12_n_0\
    );
\rd_value[31]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F3CAAAAF330AAAA"
    )
        port map (
      I0 => data0(31),
      I1 => \rd_value[0]_INST_0_i_10_n_0\,
      I2 => \alu_src_t__95\(31),
      I3 => \alu_src_s__96\(31),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[31]_INST_0_i_13_n_0\
    );
\rd_value[31]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001F38000097B0"
    )
        port map (
      I0 => \alu_op_reg_n_0_[1]\,
      I1 => \alu_op_reg_n_0_[4]\,
      I2 => \alu_op_reg_n_0_[3]\,
      I3 => \alu_op_reg_n_0_[2]\,
      I4 => alu_op(5),
      I5 => \alu_op_reg_n_0_[0]\,
      O => \rd_value[31]_INST_0_i_14_n_0\
    );
\rd_value[31]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rs(31),
      I1 => write_back_data(31),
      I2 => alu_result_back(31),
      I3 => rs_forward(1),
      I4 => rs_forward(0),
      O => \alu_src_s__96\(31)
    );
\rd_value[31]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010007898F00"
    )
        port map (
      I0 => \alu_op_reg_n_0_[2]\,
      I1 => \alu_op_reg_n_0_[1]\,
      I2 => \alu_op_reg_n_0_[4]\,
      I3 => \alu_op_reg_n_0_[3]\,
      I4 => \alu_op_reg_n_0_[0]\,
      I5 => alu_op(5),
      O => \rd_value[31]_INST_0_i_16_n_0\
    );
\rd_value[31]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_29_n_0\,
      I1 => \rd_value[31]_INST_0_i_30_n_0\,
      I2 => alu_src_t(12),
      I3 => alu_src_t(11),
      I4 => alu_src_t(10),
      I5 => alu_src_t(9),
      O => \rd_value[31]_INST_0_i_17_n_0\
    );
\rd_value[31]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_31_n_0\,
      I1 => \rd_value[31]_INST_0_i_32_n_0\,
      I2 => alu_src_t(16),
      I3 => alu_src_t(15),
      I4 => alu_src_t(14),
      I5 => alu_src_t(13),
      O => \rd_value[31]_INST_0_i_18_n_0\
    );
\rd_value[31]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => alu_src_t(24),
      I1 => alu_src_t(21),
      I2 => alu_src_t(26),
      I3 => alu_src_t(23),
      O => \rd_value[31]_INST_0_i_19_n_0\
    );
\rd_value[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_6_n_0\,
      I1 => \rd_value[31]_INST_0_i_7_n_0\,
      I2 => \rd_value[31]_INST_0_i_8_n_0\,
      I3 => \rd_value[31]_INST_0_i_9_n_0\,
      I4 => \rd_value[31]_INST_0_i_10_n_0\,
      I5 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[31]_INST_0_i_2_n_0\
    );
\rd_value[31]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => alu_src_t(27),
      I1 => \alu_src_t__95\(31),
      I2 => alu_src_t(25),
      I3 => alu_src_t(28),
      I4 => alu_src_t(22),
      I5 => \rd_value[31]_INST_0_i_33_n_0\,
      O => \rd_value[31]_INST_0_i_20_n_0\
    );
\rd_value[31]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \alu_src_t__95\(31),
      I1 => alu_src_t(15),
      I2 => alu_src_t(3),
      I3 => alu_src_t(7),
      I4 => alu_src_t(4),
      I5 => alu_src_t(23),
      O => \rd_value[31]_INST_0_i_21_n_0\
    );
\rd_value[31]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFAFC0A"
    )
        port map (
      I0 => alu_src_t(27),
      I1 => alu_src_t(11),
      I2 => alu_src_t(3),
      I3 => alu_src_t(4),
      I4 => alu_src_t(19),
      O => \rd_value[31]_INST_0_i_22_n_0\
    );
\rd_value[31]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => alu_src_t(25),
      I1 => alu_src_t(9),
      I2 => alu_src_t(3),
      I3 => alu_src_t(1),
      I4 => alu_src_t(4),
      I5 => alu_src_t(17),
      O => \rd_value[31]_INST_0_i_23_n_0\
    );
\rd_value[31]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => alu_src_t(29),
      I1 => alu_src_t(13),
      I2 => alu_src_t(3),
      I3 => alu_src_t(5),
      I4 => alu_src_t(4),
      I5 => alu_src_t(21),
      O => \rd_value[31]_INST_0_i_24_n_0\
    );
\rd_value[31]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => alu_src_t(30),
      I1 => alu_src_t(14),
      I2 => alu_src_t(3),
      I3 => alu_src_t(6),
      I4 => alu_src_t(4),
      I5 => alu_src_t(22),
      O => \rd_value[31]_INST_0_i_25_n_0\
    );
\rd_value[31]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => alu_src_t(26),
      I1 => alu_src_t(10),
      I2 => alu_src_t(3),
      I3 => alu_src_t(2),
      I4 => alu_src_t(4),
      I5 => alu_src_t(18),
      O => \rd_value[31]_INST_0_i_26_n_0\
    );
\rd_value[31]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => alu_src_t(24),
      I1 => alu_src_t(8),
      I2 => alu_src_t(3),
      I3 => alu_src_t(0),
      I4 => alu_src_t(4),
      I5 => alu_src_t(16),
      O => \rd_value[31]_INST_0_i_27_n_0\
    );
\rd_value[31]_INST_0_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFAFC0A"
    )
        port map (
      I0 => alu_src_t(28),
      I1 => alu_src_t(12),
      I2 => alu_src_t(3),
      I3 => alu_src_t(4),
      I4 => alu_src_t(20),
      O => \rd_value[31]_INST_0_i_28_n_0\
    );
\rd_value[31]_INST_0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \^write_data\(8),
      I1 => \imm_reg_n_0_[8]\,
      I2 => \^write_data\(7),
      I3 => alu_src,
      I4 => \imm_reg_n_0_[7]\,
      O => \rd_value[31]_INST_0_i_29_n_0\
    );
\rd_value[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \alu_op_reg_n_0_[0]\,
      I1 => alu_op(5),
      I2 => \alu_op_reg_n_0_[4]\,
      I3 => \alu_op_reg_n_0_[3]\,
      I4 => \alu_op_reg_n_0_[2]\,
      I5 => \alu_op_reg_n_0_[1]\,
      O => \rd_value[31]_INST_0_i_3_n_0\
    );
\rd_value[31]_INST_0_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \^write_data\(6),
      I1 => \imm_reg_n_0_[6]\,
      I2 => \^write_data\(5),
      I3 => alu_src,
      I4 => \imm_reg_n_0_[5]\,
      O => \rd_value[31]_INST_0_i_30_n_0\
    );
\rd_value[31]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \^write_data\(18),
      I1 => \imm_reg_n_0_[18]\,
      I2 => \^write_data\(17),
      I3 => alu_src,
      I4 => \imm_reg_n_0_[17]\,
      O => \rd_value[31]_INST_0_i_31_n_0\
    );
\rd_value[31]_INST_0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \^write_data\(20),
      I1 => \imm_reg_n_0_[20]\,
      I2 => \^write_data\(19),
      I3 => alu_src,
      I4 => \imm_reg_n_0_[19]\,
      O => \rd_value[31]_INST_0_i_32_n_0\
    );
\rd_value[31]_INST_0_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \^write_data\(30),
      I1 => \imm_reg_n_0_[30]\,
      I2 => \^write_data\(29),
      I3 => alu_src,
      I4 => \imm_reg_n_0_[29]\,
      O => \rd_value[31]_INST_0_i_33_n_0\
    );
\rd_value[31]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \imm_reg_n_0_[15]\,
      I1 => alu_src,
      I2 => \^write_data\(15),
      O => alu_src_t(15)
    );
\rd_value[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[31]_INST_0_i_13_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => \alu_src_s__96\(31),
      I4 => data1(31),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[31]_INST_0_i_5_n_0\
    );
\rd_value[31]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => alu_src_t(0),
      I1 => \rd_value[31]_INST_0_i_17_n_0\,
      I2 => \rd_value[31]_INST_0_i_18_n_0\,
      I3 => \rd_value[31]_INST_0_i_19_n_0\,
      I4 => \rd_value[31]_INST_0_i_20_n_0\,
      I5 => \rd_value[0]_INST_0_i_10_n_0\,
      O => \rd_value[31]_INST_0_i_6_n_0\
    );
\rd_value[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_21_n_0\,
      I1 => \rd_value[31]_INST_0_i_22_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[31]_INST_0_i_23_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[31]_INST_0_i_24_n_0\,
      O => \rd_value[31]_INST_0_i_7_n_0\
    );
\rd_value[31]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => alu_src_t(0),
      I1 => \rd_value[31]_INST_0_i_17_n_0\,
      I2 => \rd_value[31]_INST_0_i_18_n_0\,
      I3 => \rd_value[31]_INST_0_i_19_n_0\,
      I4 => \rd_value[31]_INST_0_i_20_n_0\,
      I5 => \rd_value[0]_INST_0_i_10_n_0\,
      O => \rd_value[31]_INST_0_i_8_n_0\
    );
\rd_value[31]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => alu_src_t(1),
      I1 => alu_src_t(2),
      I2 => \alu_src_t__95\(31),
      I3 => \rd_value[30]_INST_0_i_7_n_0\,
      O => \rd_value[31]_INST_0_i_9_n_0\
    );
\rd_value[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(3),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[3]_INST_0_i_1_n_0\,
      I4 => \rd_value[3]_INST_0_i_2_n_0\,
      I5 => \rd_value[3]_INST_0_i_3_n_0\,
      O => rd_value(3)
    );
\rd_value[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88888888888888"
    )
        port map (
      I0 => \rd_value[3]_INST_0_i_4_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => alu_src_t(2),
      I3 => alu_src_t(1),
      I4 => \rd_value[30]_INST_0_i_7_n_0\,
      I5 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[3]_INST_0_i_1_n_0\
    );
\rd_value[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[4]_INST_0_i_4_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[3]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[3]_INST_0_i_2_n_0\
    );
\rd_value[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[3]_INST_0_i_6_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(3),
      I4 => data1(3),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[3]_INST_0_i_3_n_0\
    );
\rd_value[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCFC0AFA0CFC0"
    )
        port map (
      I0 => \rd_value[9]_INST_0_i_7_n_0\,
      I1 => \rd_value[5]_INST_0_i_7_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[3]_INST_0_i_7_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[7]_INST_0_i_7_n_0\,
      O => \rd_value[3]_INST_0_i_4_n_0\
    );
\rd_value[3]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => alu_src_t(0),
      I1 => \rd_value[30]_INST_0_i_7_n_0\,
      I2 => alu_src_t(2),
      I3 => alu_src_t(1),
      O => \rd_value[3]_INST_0_i_5_n_0\
    );
\rd_value[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(3),
      I1 => alu_src_s(3),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(3),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[3]_INST_0_i_6_n_0\
    );
\rd_value[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ACF0AC00"
    )
        port map (
      I0 => alu_src_t(27),
      I1 => alu_src_t(11),
      I2 => alu_src_t(4),
      I3 => alu_src_t(3),
      I4 => alu_src_t(19),
      I5 => alu_src_t(2),
      O => \rd_value[3]_INST_0_i_7_n_0\
    );
\rd_value[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(4),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[4]_INST_0_i_1_n_0\,
      I4 => \rd_value[4]_INST_0_i_2_n_0\,
      I5 => \rd_value[4]_INST_0_i_3_n_0\,
      O => rd_value(4)
    );
\rd_value[4]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[4]_INST_0_i_4_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[5]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[4]_INST_0_i_1_n_0\
    );
\rd_value[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88888888888888"
    )
        port map (
      I0 => \rd_value[5]_INST_0_i_4_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => alu_src_t(2),
      I3 => alu_src_t(1),
      I4 => \rd_value[30]_INST_0_i_7_n_0\,
      I5 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[4]_INST_0_i_2_n_0\
    );
\rd_value[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[4]_INST_0_i_5_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(4),
      I4 => data1(4),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[4]_INST_0_i_3_n_0\
    );
\rd_value[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[10]_INST_0_i_7_n_0\,
      I1 => \rd_value[6]_INST_0_i_7_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[8]_INST_0_i_7_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[4]_INST_0_i_6_n_0\,
      O => \rd_value[4]_INST_0_i_4_n_0\
    );
\rd_value[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(4),
      I1 => alu_src_s(4),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(4),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[4]_INST_0_i_5_n_0\
    );
\rd_value[4]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACCF000"
    )
        port map (
      I0 => alu_src_t(28),
      I1 => alu_src_t(12),
      I2 => alu_src_t(20),
      I3 => alu_src_t(4),
      I4 => alu_src_t(3),
      O => \rd_value[4]_INST_0_i_6_n_0\
    );
\rd_value[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(5),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[5]_INST_0_i_1_n_0\,
      I4 => \rd_value[5]_INST_0_i_2_n_0\,
      I5 => \rd_value[5]_INST_0_i_3_n_0\,
      O => rd_value(5)
    );
\rd_value[5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[5]_INST_0_i_4_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[31]_INST_0_i_6_n_0\,
      I3 => \rd_value[6]_INST_0_i_5_n_0\,
      O => \rd_value[5]_INST_0_i_1_n_0\
    );
\rd_value[5]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[6]_INST_0_i_4_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[5]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[5]_INST_0_i_2_n_0\
    );
\rd_value[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[5]_INST_0_i_6_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(5),
      I4 => data1(5),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[5]_INST_0_i_3_n_0\
    );
\rd_value[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[11]_INST_0_i_7_n_0\,
      I1 => \rd_value[7]_INST_0_i_7_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[9]_INST_0_i_7_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[5]_INST_0_i_7_n_0\,
      O => \rd_value[5]_INST_0_i_4_n_0\
    );
\rd_value[5]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => alu_src_t(0),
      I1 => \rd_value[30]_INST_0_i_7_n_0\,
      I2 => alu_src_t(2),
      I3 => alu_src_t(1),
      O => \rd_value[5]_INST_0_i_5_n_0\
    );
\rd_value[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(5),
      I1 => alu_src_s(5),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(5),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[5]_INST_0_i_6_n_0\
    );
\rd_value[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => alu_src_t(5),
      I1 => alu_src_t(21),
      I2 => alu_src_t(3),
      I3 => alu_src_t(29),
      I4 => alu_src_t(4),
      I5 => alu_src_t(13),
      O => \rd_value[5]_INST_0_i_7_n_0\
    );
\rd_value[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(6),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[6]_INST_0_i_1_n_0\,
      I4 => \rd_value[6]_INST_0_i_2_n_0\,
      I5 => \rd_value[6]_INST_0_i_3_n_0\,
      O => rd_value(6)
    );
\rd_value[6]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[6]_INST_0_i_4_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[7]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[6]_INST_0_i_1_n_0\
    );
\rd_value[6]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[7]_INST_0_i_4_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[31]_INST_0_i_11_n_0\,
      I3 => \rd_value[6]_INST_0_i_5_n_0\,
      O => \rd_value[6]_INST_0_i_2_n_0\
    );
\rd_value[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[6]_INST_0_i_6_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(6),
      I4 => data1(6),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[6]_INST_0_i_3_n_0\
    );
\rd_value[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[12]_INST_0_i_8_n_0\,
      I1 => \rd_value[8]_INST_0_i_7_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[10]_INST_0_i_7_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[6]_INST_0_i_7_n_0\,
      O => \rd_value[6]_INST_0_i_4_n_0\
    );
\rd_value[6]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => alu_src_t(5),
      I1 => \rd_value[30]_INST_0_i_7_n_0\,
      I2 => alu_src_t(2),
      I3 => alu_src_t(1),
      O => \rd_value[6]_INST_0_i_5_n_0\
    );
\rd_value[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(6),
      I1 => alu_src_s(6),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(6),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[6]_INST_0_i_6_n_0\
    );
\rd_value[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => alu_src_t(6),
      I1 => alu_src_t(22),
      I2 => alu_src_t(3),
      I3 => alu_src_t(30),
      I4 => alu_src_t(4),
      I5 => alu_src_t(14),
      O => \rd_value[6]_INST_0_i_7_n_0\
    );
\rd_value[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(7),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[7]_INST_0_i_1_n_0\,
      I4 => \rd_value[7]_INST_0_i_2_n_0\,
      I5 => \rd_value[7]_INST_0_i_3_n_0\,
      O => rd_value(7)
    );
\rd_value[7]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[7]_INST_0_i_4_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[8]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[7]_INST_0_i_1_n_0\
    );
\rd_value[7]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[8]_INST_0_i_4_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[7]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[7]_INST_0_i_2_n_0\
    );
\rd_value[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[7]_INST_0_i_6_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(7),
      I4 => data1(7),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[7]_INST_0_i_3_n_0\
    );
\rd_value[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[13]_INST_0_i_7_n_0\,
      I1 => \rd_value[9]_INST_0_i_7_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[11]_INST_0_i_7_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[7]_INST_0_i_7_n_0\,
      O => \rd_value[7]_INST_0_i_4_n_0\
    );
\rd_value[7]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B300B000"
    )
        port map (
      I0 => alu_src_t(0),
      I1 => alu_src_t(1),
      I2 => alu_src_t(2),
      I3 => \rd_value[30]_INST_0_i_7_n_0\,
      I4 => alu_src_t(6),
      O => \rd_value[7]_INST_0_i_5_n_0\
    );
\rd_value[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(7),
      I1 => alu_src_s(7),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(7),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[7]_INST_0_i_6_n_0\
    );
\rd_value[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0CFAFAFC0C0A0A"
    )
        port map (
      I0 => alu_src_t(7),
      I1 => alu_src_t(23),
      I2 => alu_src_t(3),
      I3 => \alu_src_t__95\(31),
      I4 => alu_src_t(4),
      I5 => alu_src_t(15),
      O => \rd_value[7]_INST_0_i_7_n_0\
    );
\rd_value[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(8),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[8]_INST_0_i_1_n_0\,
      I4 => \rd_value[8]_INST_0_i_2_n_0\,
      I5 => \rd_value[8]_INST_0_i_3_n_0\,
      O => rd_value(8)
    );
\rd_value[8]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[8]_INST_0_i_4_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[9]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[8]_INST_0_i_1_n_0\
    );
\rd_value[8]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[9]_INST_0_i_4_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[8]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[8]_INST_0_i_2_n_0\
    );
\rd_value[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[8]_INST_0_i_6_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(8),
      I4 => data1(8),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[8]_INST_0_i_3_n_0\
    );
\rd_value[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[14]_INST_0_i_7_n_0\,
      I1 => \rd_value[10]_INST_0_i_7_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[12]_INST_0_i_8_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[8]_INST_0_i_7_n_0\,
      O => \rd_value[8]_INST_0_i_4_n_0\
    );
\rd_value[8]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC8800C0"
    )
        port map (
      I0 => alu_src_t(5),
      I1 => \rd_value[30]_INST_0_i_7_n_0\,
      I2 => alu_src_t(7),
      I3 => alu_src_t(2),
      I4 => alu_src_t(1),
      O => \rd_value[8]_INST_0_i_5_n_0\
    );
\rd_value[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(8),
      I1 => alu_src_s(8),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(8),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[8]_INST_0_i_6_n_0\
    );
\rd_value[8]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => alu_src_t(16),
      I1 => alu_src_t(3),
      I2 => alu_src_t(24),
      I3 => alu_src_t(4),
      I4 => alu_src_t(8),
      O => \rd_value[8]_INST_0_i_7_n_0\
    );
\rd_value[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8F8F888"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_1_n_0\,
      I1 => alu_src_t(9),
      I2 => \rd_value[31]_INST_0_i_1_n_0\,
      I3 => \rd_value[9]_INST_0_i_1_n_0\,
      I4 => \rd_value[9]_INST_0_i_2_n_0\,
      I5 => \rd_value[9]_INST_0_i_3_n_0\,
      O => rd_value(9)
    );
\rd_value[9]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[9]_INST_0_i_4_n_0\,
      I1 => \rd_value[31]_INST_0_i_8_n_0\,
      I2 => \rd_value[10]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_6_n_0\,
      O => \rd_value[9]_INST_0_i_1_n_0\
    );
\rd_value[9]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \rd_value[10]_INST_0_i_4_n_0\,
      I1 => \rd_value[30]_INST_0_i_9_n_0\,
      I2 => \rd_value[9]_INST_0_i_5_n_0\,
      I3 => \rd_value[31]_INST_0_i_11_n_0\,
      O => \rd_value[9]_INST_0_i_2_n_0\
    );
\rd_value[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A8A8A8080"
    )
        port map (
      I0 => \rd_value[31]_INST_0_i_12_n_0\,
      I1 => \rd_value[9]_INST_0_i_6_n_0\,
      I2 => \rd_value[31]_INST_0_i_14_n_0\,
      I3 => alu_src_s(9),
      I4 => data1(9),
      I5 => \rd_value[31]_INST_0_i_16_n_0\,
      O => \rd_value[9]_INST_0_i_3_n_0\
    );
\rd_value[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \rd_value[15]_INST_0_i_8_n_0\,
      I1 => \rd_value[11]_INST_0_i_7_n_0\,
      I2 => alu_src_t(1),
      I3 => \rd_value[13]_INST_0_i_7_n_0\,
      I4 => alu_src_t(2),
      I5 => \rd_value[9]_INST_0_i_7_n_0\,
      O => \rd_value[9]_INST_0_i_4_n_0\
    );
\rd_value[9]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8800F0"
    )
        port map (
      I0 => \rd_value[30]_INST_0_i_7_n_0\,
      I1 => alu_src_t(6),
      I2 => \rd_value[15]_INST_0_i_9_n_0\,
      I3 => alu_src_t(2),
      I4 => alu_src_t(1),
      O => \rd_value[9]_INST_0_i_5_n_0\
    );
\rd_value[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FCAAAACF0CAAAA"
    )
        port map (
      I0 => data0(9),
      I1 => alu_src_s(9),
      I2 => \rd_value[0]_INST_0_i_10_n_0\,
      I3 => alu_src_t(9),
      I4 => \rd_value[31]_INST_0_i_16_n_0\,
      I5 => \rd_value[0]_INST_0_i_11_n_0\,
      O => \rd_value[9]_INST_0_i_6_n_0\
    );
\rd_value[9]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => alu_src_t(17),
      I1 => alu_src_t(3),
      I2 => alu_src_t(25),
      I3 => alu_src_t(4),
      I4 => alu_src_t(9),
      O => \rd_value[9]_INST_0_i_7_n_0\
    );
reg_write_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => read_write_rst,
      D => reg_write_inw,
      Q => reg_write
    );
\rs_forward_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_forward_inw(0),
      Q => rs_forward(0)
    );
\rs_forward_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_forward_inw(1),
      Q => rs_forward(1)
    );
\rs_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(0),
      Q => rs(0)
    );
\rs_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(10),
      Q => rs(10)
    );
\rs_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(11),
      Q => rs(11)
    );
\rs_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(12),
      Q => rs(12)
    );
\rs_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(13),
      Q => rs(13)
    );
\rs_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(14),
      Q => rs(14)
    );
\rs_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(15),
      Q => rs(15)
    );
\rs_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(16),
      Q => rs(16)
    );
\rs_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(17),
      Q => rs(17)
    );
\rs_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(18),
      Q => rs(18)
    );
\rs_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(19),
      Q => rs(19)
    );
\rs_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(1),
      Q => rs(1)
    );
\rs_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(20),
      Q => rs(20)
    );
\rs_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(21),
      Q => rs(21)
    );
\rs_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(22),
      Q => rs(22)
    );
\rs_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(23),
      Q => rs(23)
    );
\rs_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(24),
      Q => rs(24)
    );
\rs_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(25),
      Q => rs(25)
    );
\rs_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(26),
      Q => rs(26)
    );
\rs_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(27),
      Q => rs(27)
    );
\rs_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(28),
      Q => rs(28)
    );
\rs_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(29),
      Q => rs(29)
    );
\rs_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(2),
      Q => rs(2)
    );
\rs_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(30),
      Q => rs(30)
    );
\rs_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(31),
      Q => rs(31)
    );
\rs_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(3),
      Q => rs(3)
    );
\rs_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(4),
      Q => rs(4)
    );
\rs_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(5),
      Q => rs(5)
    );
\rs_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(6),
      Q => rs(6)
    );
\rs_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(7),
      Q => rs(7)
    );
\rs_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(8),
      Q => rs(8)
    );
\rs_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rs_inw(9),
      Q => rs(9)
    );
\rt_forward_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_forward_inw(0),
      Q => rt_forward(0)
    );
\rt_forward_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_forward_inw(1),
      Q => rt_forward(1)
    );
\rt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(0),
      Q => rt(0)
    );
\rt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(10),
      Q => rt(10)
    );
\rt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(11),
      Q => rt(11)
    );
\rt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(12),
      Q => rt(12)
    );
\rt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(13),
      Q => rt(13)
    );
\rt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(14),
      Q => rt(14)
    );
\rt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(15),
      Q => rt(15)
    );
\rt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(16),
      Q => rt(16)
    );
\rt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(17),
      Q => rt(17)
    );
\rt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(18),
      Q => rt(18)
    );
\rt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(19),
      Q => rt(19)
    );
\rt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(1),
      Q => rt(1)
    );
\rt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(20),
      Q => rt(20)
    );
\rt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(21),
      Q => rt(21)
    );
\rt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(22),
      Q => rt(22)
    );
\rt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(23),
      Q => rt(23)
    );
\rt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(24),
      Q => rt(24)
    );
\rt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(25),
      Q => rt(25)
    );
\rt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(26),
      Q => rt(26)
    );
\rt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(27),
      Q => rt(27)
    );
\rt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(28),
      Q => rt(28)
    );
\rt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(29),
      Q => rt(29)
    );
\rt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(2),
      Q => rt(2)
    );
\rt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(30),
      Q => rt(30)
    );
\rt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(31),
      Q => rt(31)
    );
\rt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(3),
      Q => rt(3)
    );
\rt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(4),
      Q => rt(4)
    );
\rt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(5),
      Q => rt(5)
    );
\rt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(6),
      Q => rt(6)
    );
\rt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(7),
      Q => rt(7)
    );
\rt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(8),
      Q => rt(8)
    );
\rt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => rst,
      D => rt_inw(9),
      Q => rt(9)
    );
\write_data[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(0),
      I1 => write_back_data(0),
      I2 => alu_result_back(0),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(0)
    );
\write_data[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(10),
      I1 => write_back_data(10),
      I2 => alu_result_back(10),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(10)
    );
\write_data[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(11),
      I1 => write_back_data(11),
      I2 => alu_result_back(11),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(11)
    );
\write_data[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(12),
      I1 => write_back_data(12),
      I2 => alu_result_back(12),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(12)
    );
\write_data[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(13),
      I1 => write_back_data(13),
      I2 => alu_result_back(13),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(13)
    );
\write_data[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(14),
      I1 => write_back_data(14),
      I2 => alu_result_back(14),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(14)
    );
\write_data[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(15),
      I1 => write_back_data(15),
      I2 => alu_result_back(15),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(15)
    );
\write_data[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(16),
      I1 => write_back_data(16),
      I2 => alu_result_back(16),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(16)
    );
\write_data[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(17),
      I1 => write_back_data(17),
      I2 => alu_result_back(17),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(17)
    );
\write_data[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(18),
      I1 => write_back_data(18),
      I2 => alu_result_back(18),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(18)
    );
\write_data[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(19),
      I1 => write_back_data(19),
      I2 => alu_result_back(19),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(19)
    );
\write_data[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(1),
      I1 => write_back_data(1),
      I2 => alu_result_back(1),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(1)
    );
\write_data[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(20),
      I1 => write_back_data(20),
      I2 => alu_result_back(20),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(20)
    );
\write_data[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(21),
      I1 => write_back_data(21),
      I2 => alu_result_back(21),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(21)
    );
\write_data[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(22),
      I1 => write_back_data(22),
      I2 => alu_result_back(22),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(22)
    );
\write_data[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(23),
      I1 => write_back_data(23),
      I2 => alu_result_back(23),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(23)
    );
\write_data[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(24),
      I1 => write_back_data(24),
      I2 => alu_result_back(24),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(24)
    );
\write_data[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(25),
      I1 => write_back_data(25),
      I2 => alu_result_back(25),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(25)
    );
\write_data[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(26),
      I1 => write_back_data(26),
      I2 => alu_result_back(26),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(26)
    );
\write_data[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(27),
      I1 => write_back_data(27),
      I2 => alu_result_back(27),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(27)
    );
\write_data[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(28),
      I1 => write_back_data(28),
      I2 => alu_result_back(28),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(28)
    );
\write_data[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(29),
      I1 => write_back_data(29),
      I2 => alu_result_back(29),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(29)
    );
\write_data[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(2),
      I1 => write_back_data(2),
      I2 => alu_result_back(2),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(2)
    );
\write_data[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(30),
      I1 => write_back_data(30),
      I2 => alu_result_back(30),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(30)
    );
\write_data[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(31),
      I1 => write_back_data(31),
      I2 => alu_result_back(31),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(31)
    );
\write_data[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(3),
      I1 => write_back_data(3),
      I2 => alu_result_back(3),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(3)
    );
\write_data[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(4),
      I1 => write_back_data(4),
      I2 => alu_result_back(4),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(4)
    );
\write_data[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(5),
      I1 => write_back_data(5),
      I2 => alu_result_back(5),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(5)
    );
\write_data[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(6),
      I1 => write_back_data(6),
      I2 => alu_result_back(6),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(6)
    );
\write_data[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(7),
      I1 => write_back_data(7),
      I2 => alu_result_back(7),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(7)
    );
\write_data[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(8),
      I1 => write_back_data(8),
      I2 => alu_result_back(8),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(8)
    );
\write_data[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
        port map (
      I0 => rt(9),
      I1 => write_back_data(9),
      I2 => alu_result_back(9),
      I3 => rt_forward(1),
      I4 => rt_forward(0),
      O => \^write_data\(9)
    );
\write_reg_addr_out[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => flush,
      I1 => rst,
      O => read_write_rst
    );
\write_reg_addr_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => read_write_rst,
      D => write_reg_addr_in_inw(0),
      Q => write_reg_addr_out(0)
    );
\write_reg_addr_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => read_write_rst,
      D => write_reg_addr_in_inw(1),
      Q => write_reg_addr_out(1)
    );
\write_reg_addr_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => read_write_rst,
      D => write_reg_addr_in_inw(2),
      Q => write_reg_addr_out(2)
    );
\write_reg_addr_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => read_write_rst,
      D => write_reg_addr_in_inw(3),
      Q => write_reg_addr_out(3)
    );
\write_reg_addr_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => enable_CPU,
      CLR => read_write_rst,
      D => write_reg_addr_in_inw(4),
      Q => write_reg_addr_out(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    enable_CPU : in STD_LOGIC;
    flush : in STD_LOGIC;
    rs_inw : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rt_inw : in STD_LOGIC_VECTOR ( 31 downto 0 );
    imm_inw : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_back_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_result_back : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_op_inw : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rs_forward_inw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rt_forward_inw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    alu_src_inw : in STD_LOGIC;
    memory_write_inw : in STD_LOGIC;
    memory_to_reg_inw : in STD_LOGIC;
    reg_write_inw : in STD_LOGIC;
    branch_isc_flag_inw : in STD_LOGIC;
    pc_next_inw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    write_reg_addr_in_inw : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_value : out STD_LOGIC_VECTOR ( 31 downto 0 );
    write_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    branch_jump_flag : out STD_LOGIC;
    branch_PC : out STD_LOGIC;
    branch_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    write_reg_addr_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    memory_write : out STD_LOGIC;
    memory_to_reg : out STD_LOGIC;
    reg_write : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bluex_alu_ex_0_0,alu_ex,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "alu_ex,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^branch_jump_flag\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:user:lcd:1.0 user_lcd CLK";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  branch_PC <= \^branch_jump_flag\;
  branch_jump_flag <= \^branch_jump_flag\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu_ex
     port map (
      alu_op_inw(5 downto 0) => alu_op_inw(5 downto 0),
      alu_result_back(31 downto 0) => alu_result_back(31 downto 0),
      alu_src_inw => alu_src_inw,
      branch_addr(15 downto 0) => branch_addr(15 downto 0),
      branch_isc_flag_inw => branch_isc_flag_inw,
      branch_jump_flag => \^branch_jump_flag\,
      clk => clk,
      enable_CPU => enable_CPU,
      flush => flush,
      imm_inw(31 downto 0) => imm_inw(31 downto 0),
      memory_to_reg => memory_to_reg,
      memory_to_reg_inw => memory_to_reg_inw,
      memory_write => memory_write,
      memory_write_inw => memory_write_inw,
      pc_next_inw(15 downto 0) => pc_next_inw(15 downto 0),
      rd_value(31 downto 0) => rd_value(31 downto 0),
      reg_write => reg_write,
      reg_write_inw => reg_write_inw,
      rs_forward_inw(1 downto 0) => rs_forward_inw(1 downto 0),
      rs_inw(31 downto 0) => rs_inw(31 downto 0),
      rst => rst,
      rt_forward_inw(1 downto 0) => rt_forward_inw(1 downto 0),
      rt_inw(31 downto 0) => rt_inw(31 downto 0),
      write_back_data(31 downto 0) => write_back_data(31 downto 0),
      write_data(31 downto 0) => write_data(31 downto 0),
      write_reg_addr_in_inw(4 downto 0) => write_reg_addr_in_inw(4 downto 0),
      write_reg_addr_out(4 downto 0) => write_reg_addr_out(4 downto 0)
    );
end STRUCTURE;
