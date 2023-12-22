-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Fri Dec 22 12:14:37 2023
-- Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bluex_redirection_0_0_sim_netlist.vhdl
-- Design      : bluex_redirection_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bluex_redirection_0_0,redirection,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "redirection,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal flush_INST_0_i_1_n_0 : STD_LOGIC;
  signal flush_INST_0_i_2_n_0 : STD_LOGIC;
  signal flush_INST_0_i_3_n_0 : STD_LOGIC;
  signal flush_INST_0_i_4_n_0 : STD_LOGIC;
  signal flush_INST_0_i_5_n_0 : STD_LOGIC;
  signal flush_INST_0_i_6_n_0 : STD_LOGIC;
  signal flush_INST_0_i_7_n_0 : STD_LOGIC;
  signal \rs_forward[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rs_forward[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \rs_forward[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \rt_forward[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \rt_forward[0]_INST_0_i_2_n_0\ : STD_LOGIC;
begin
flush_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFABABABAAAAAAAA"
    )
        port map (
      I0 => branch_taken_ex,
      I1 => flush_INST_0_i_1_n_0,
      I2 => flush_INST_0_i_2_n_0,
      I3 => flush_INST_0_i_3_n_0,
      I4 => flush_INST_0_i_4_n_0,
      I5 => mem_rd_ex,
      O => flush
    );
flush_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A08000000000200"
    )
        port map (
      I0 => real_op(1),
      I1 => real_op(0),
      I2 => real_op(5),
      I3 => real_op(3),
      I4 => real_op(4),
      I5 => real_op(2),
      O => flush_INST_0_i_1_n_0
    );
flush_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFFFEFFE"
    )
        port map (
      I0 => flush_INST_0_i_5_n_0,
      I1 => flush_INST_0_i_6_n_0,
      I2 => rs(0),
      I3 => write_reg_addr_ex(0),
      I4 => rs(2),
      I5 => write_reg_addr_ex(2),
      O => flush_INST_0_i_2_n_0
    );
flush_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFEBFBFBBBAEFFE"
    )
        port map (
      I0 => real_op(5),
      I1 => real_op(1),
      I2 => real_op(2),
      I3 => real_op(4),
      I4 => real_op(3),
      I5 => real_op(0),
      O => flush_INST_0_i_3_n_0
    );
flush_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041000041"
    )
        port map (
      I0 => flush_INST_0_i_5_n_0,
      I1 => rt(2),
      I2 => write_reg_addr_ex(2),
      I3 => rt(1),
      I4 => write_reg_addr_ex(1),
      I5 => flush_INST_0_i_7_n_0,
      O => flush_INST_0_i_4_n_0
    );
flush_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => write_reg_addr_ex(4),
      I1 => write_reg_addr_ex(3),
      I2 => write_reg_addr_ex(1),
      I3 => write_reg_addr_ex(0),
      I4 => write_reg_addr_ex(2),
      O => flush_INST_0_i_5_n_0
    );
flush_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => rs(1),
      I1 => write_reg_addr_ex(1),
      I2 => write_reg_addr_ex(4),
      I3 => rs(4),
      I4 => write_reg_addr_ex(3),
      I5 => rs(3),
      O => flush_INST_0_i_6_n_0
    );
flush_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => rt(4),
      I1 => write_reg_addr_ex(4),
      I2 => write_reg_addr_ex(0),
      I3 => rt(0),
      I4 => write_reg_addr_ex(3),
      I5 => rt(3),
      O => flush_INST_0_i_7_n_0
    );
\rs_forward[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => flush_INST_0_i_2_n_0,
      I1 => flush_INST_0_i_1_n_0,
      I2 => \rs_forward[0]_INST_0_i_1_n_0\,
      I3 => \rs_forward[0]_INST_0_i_2_n_0\,
      O => rs_forward(0)
    );
\rs_forward[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555557"
    )
        port map (
      I0 => reg_write_mem,
      I1 => write_reg_addr_mem(0),
      I2 => write_reg_addr_mem(3),
      I3 => write_reg_addr_mem(2),
      I4 => write_reg_addr_mem(4),
      I5 => write_reg_addr_mem(1),
      O => \rs_forward[0]_INST_0_i_1_n_0\
    );
\rs_forward[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => write_reg_addr_mem(2),
      I1 => rs(2),
      I2 => write_reg_addr_mem(0),
      I3 => rs(0),
      I4 => \rs_forward[0]_INST_0_i_3_n_0\,
      O => \rs_forward[0]_INST_0_i_2_n_0\
    );
\rs_forward[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => rs(3),
      I1 => write_reg_addr_mem(3),
      I2 => write_reg_addr_mem(4),
      I3 => rs(4),
      I4 => write_reg_addr_mem(1),
      I5 => rs(1),
      O => \rs_forward[0]_INST_0_i_3_n_0\
    );
\rs_forward[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => reg_write_ex,
      I1 => flush_INST_0_i_1_n_0,
      I2 => flush_INST_0_i_2_n_0,
      O => rs_forward(1)
    );
\rt_forward[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => flush_INST_0_i_3_n_0,
      I1 => \rt_forward[0]_INST_0_i_1_n_0\,
      I2 => flush_INST_0_i_4_n_0,
      O => rt_forward(0)
    );
\rt_forward[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFFFEFFE"
    )
        port map (
      I0 => \rs_forward[0]_INST_0_i_1_n_0\,
      I1 => \rt_forward[0]_INST_0_i_2_n_0\,
      I2 => rt(0),
      I3 => write_reg_addr_mem(0),
      I4 => rt(1),
      I5 => write_reg_addr_mem(1),
      O => \rt_forward[0]_INST_0_i_1_n_0\
    );
\rt_forward[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => rt(2),
      I1 => write_reg_addr_mem(2),
      I2 => write_reg_addr_mem(4),
      I3 => rt(4),
      I4 => write_reg_addr_mem(3),
      I5 => rt(3),
      O => \rt_forward[0]_INST_0_i_2_n_0\
    );
\rt_forward[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => reg_write_ex,
      I1 => flush_INST_0_i_3_n_0,
      I2 => flush_INST_0_i_4_n_0,
      O => rt_forward(1)
    );
stall_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808080AA"
    )
        port map (
      I0 => mem_rd_ex,
      I1 => flush_INST_0_i_4_n_0,
      I2 => flush_INST_0_i_3_n_0,
      I3 => flush_INST_0_i_2_n_0,
      I4 => flush_INST_0_i_1_n_0,
      O => stall
    );
end STRUCTURE;
