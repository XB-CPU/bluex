-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Dec 21 22:40:47 2023
-- Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bluex_demux_id_0_0_stub.vhdl
-- Design      : bluex_demux_id_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    ena_n : in STD_LOGIC;
    isc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_next_inw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    op : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rs : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rt : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rd : out STD_LOGIC_VECTOR ( 4 downto 0 );
    shamt : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rfunct : out STD_LOGIC_VECTOR ( 5 downto 0 );
    imm : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    real_op : out STD_LOGIC_VECTOR ( 5 downto 0 );
    pc_next : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,ena_n,isc[31:0],pc_next_inw[15:0],op[5:0],rs[4:0],rt[4:0],rd[4:0],shamt[4:0],rfunct[5:0],imm[15:0],addr[15:0],real_op[5:0],pc_next[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "demux_id,Vivado 2023.2";
begin
end;