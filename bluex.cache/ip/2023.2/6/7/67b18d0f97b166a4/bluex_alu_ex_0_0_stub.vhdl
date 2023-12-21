-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Dec 21 22:38:39 2023
-- Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bluex_alu_ex_0_0_stub.vhdl
-- Design      : bluex_alu_ex_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
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
    branch_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    write_reg_addr_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    memory_write : out STD_LOGIC;
    memory_to_reg : out STD_LOGIC;
    reg_write : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,rs_inw[31:0],rt_inw[31:0],imm_inw[31:0],write_back_data[31:0],alu_result_back[31:0],alu_op_inw[5:0],rs_forward_inw[1:0],rt_forward_inw[1:0],alu_src_inw,memory_write_inw,memory_to_reg_inw,reg_write_inw,branch_isc_flag_inw,pc_next_inw[15:0],write_reg_addr_in_inw[4:0],rd_value[31:0],write_data[31:0],branch_jump_flag,branch_addr[15:0],write_reg_addr_out[4:0],memory_write,memory_to_reg,reg_write";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "alu_ex,Vivado 2023.2";
begin
end;
