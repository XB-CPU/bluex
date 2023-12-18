-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Dec 18 14:34:05 2023
-- Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/MyWorks/Programs/Verilog/vivado/bluex/bluex.gen/sources_1/bd/bluex/ip/bluex_PC_0_0/bluex_PC_0_0_stub.vhdl
-- Design      : bluex_PC_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bluex_PC_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    ena_n : in STD_LOGIC;
    next_addr_branch : in STD_LOGIC_VECTOR ( 15 downto 0 );
    branch_taken_ex : in STD_LOGIC;
    current_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    next_addr_output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end bluex_PC_0_0;

architecture stub of bluex_PC_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,ena_n,next_addr_branch[15:0],branch_taken_ex,current_addr[15:0],next_addr_output[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "PC,Vivado 2023.2";
begin
end;
