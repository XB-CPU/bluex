-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Fri Dec 22 10:10:07 2023
-- Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bluex_reg_wb_0_0_stub.vhdl
-- Design      : bluex_reg_wb_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    alu_result_inw : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_rd_inw : in STD_LOGIC_VECTOR ( 31 downto 0 );
    write_reg_addr_inw : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reg_write_inw : in STD_LOGIC;
    memory_to_reg_inw : in STD_LOGIC;
    write_back_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    write_reg_addr : out STD_LOGIC_VECTOR ( 4 downto 0 );
    reg_write : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,alu_result_inw[31:0],mem_rd_inw[31:0],write_reg_addr_inw[4:0],reg_write_inw,memory_to_reg_inw,write_back_data[31:0],write_reg_addr[4:0],reg_write";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "reg_wb,Vivado 2023.2";
begin
end;
