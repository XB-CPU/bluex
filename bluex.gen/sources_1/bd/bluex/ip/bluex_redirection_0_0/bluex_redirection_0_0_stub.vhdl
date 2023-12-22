-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Fri Dec 22 12:14:37 2023
-- Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/MyWorks/Programs/Verilog/vivado/bluex/bluex.gen/sources_1/bd/bluex/ip/bluex_redirection_0_0/bluex_redirection_0_0_stub.vhdl
-- Design      : bluex_redirection_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bluex_redirection_0_0 is
  Port ( 
    rs : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rt : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reg_write_ex : in STD_LOGIC;
    write_reg_addr_ex : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mem_rd_ex : in STD_LOGIC;
    branch_taken_ex : in STD_LOGIC;
    reg_write_mem : in STD_LOGIC;
    write_reg_addr_mem : in STD_LOGIC_VECTOR ( 4 downto 0 );
    real_op : in STD_LOGIC_VECTOR ( 5 downto 0 );
    flush : out STD_LOGIC;
    stall : out STD_LOGIC;
    rs_forward : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rt_forward : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end bluex_redirection_0_0;

architecture stub of bluex_redirection_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rs[4:0],rt[4:0],reg_write_ex,write_reg_addr_ex[4:0],mem_rd_ex,branch_taken_ex,reg_write_mem,write_reg_addr_mem[4:0],real_op[5:0],flush,stall,rs_forward[1:0],rt_forward[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "redirection,Vivado 2023.2";
begin
end;
