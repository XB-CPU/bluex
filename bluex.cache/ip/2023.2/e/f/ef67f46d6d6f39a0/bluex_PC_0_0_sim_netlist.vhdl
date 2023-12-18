-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Dec 18 13:20:58 2023
-- Host        : DESKTOP-50PL36L running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bluex_PC_0_0_sim_netlist.vhdl
-- Design      : bluex_PC_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PC is
  port (
    current_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    next_addr_output : out STD_LOGIC_VECTOR ( 15 downto 0 );
    next_addr_branch : in STD_LOGIC_VECTOR ( 15 downto 0 );
    branch_taken_ex : in STD_LOGIC;
    clk : in STD_LOGIC;
    ena_n : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PC;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PC is
  signal \^current_addr\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \current_addr[11]_i_2_n_0\ : STD_LOGIC;
  signal \current_addr[11]_i_3_n_0\ : STD_LOGIC;
  signal \current_addr[11]_i_4_n_0\ : STD_LOGIC;
  signal \current_addr[11]_i_5_n_0\ : STD_LOGIC;
  signal \current_addr[15]_i_3_n_0\ : STD_LOGIC;
  signal \current_addr[15]_i_4_n_0\ : STD_LOGIC;
  signal \current_addr[15]_i_5_n_0\ : STD_LOGIC;
  signal \current_addr[15]_i_6_n_0\ : STD_LOGIC;
  signal \current_addr[15]_i_7_n_0\ : STD_LOGIC;
  signal \current_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \current_addr[3]_i_3_n_0\ : STD_LOGIC;
  signal \current_addr[3]_i_4_n_0\ : STD_LOGIC;
  signal \current_addr[3]_i_5_n_0\ : STD_LOGIC;
  signal \current_addr[3]_i_6_n_0\ : STD_LOGIC;
  signal \current_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \current_addr[7]_i_3_n_0\ : STD_LOGIC;
  signal \current_addr[7]_i_4_n_0\ : STD_LOGIC;
  signal \current_addr[7]_i_5_n_0\ : STD_LOGIC;
  signal \current_addr_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \current_addr_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \current_addr_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \current_addr_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \current_addr_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \current_addr_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \current_addr_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \current_addr_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \current_addr_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \current_addr_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \current_addr_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \current_addr_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \current_addr_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \current_addr_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \current_addr_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \current_addr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \current_addr_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \current_addr_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \current_addr_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \current_addr_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \current_addr_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \current_addr_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \current_addr_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \current_addr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \current_addr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \current_addr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \current_addr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \current_addr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \current_addr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \current_addr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \current_addr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \next_addr_output_carry__0_n_0\ : STD_LOGIC;
  signal \next_addr_output_carry__0_n_1\ : STD_LOGIC;
  signal \next_addr_output_carry__0_n_2\ : STD_LOGIC;
  signal \next_addr_output_carry__0_n_3\ : STD_LOGIC;
  signal \next_addr_output_carry__1_n_0\ : STD_LOGIC;
  signal \next_addr_output_carry__1_n_1\ : STD_LOGIC;
  signal \next_addr_output_carry__1_n_2\ : STD_LOGIC;
  signal \next_addr_output_carry__1_n_3\ : STD_LOGIC;
  signal \next_addr_output_carry__2_n_2\ : STD_LOGIC;
  signal \next_addr_output_carry__2_n_3\ : STD_LOGIC;
  signal next_addr_output_carry_n_0 : STD_LOGIC;
  signal next_addr_output_carry_n_1 : STD_LOGIC;
  signal next_addr_output_carry_n_2 : STD_LOGIC;
  signal next_addr_output_carry_n_3 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \NLW_current_addr_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_next_addr_output_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_next_addr_output_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \current_addr_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \current_addr_reg[15]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \current_addr_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \current_addr_reg[7]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of next_addr_output_carry : label is 35;
  attribute ADDER_THRESHOLD of \next_addr_output_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \next_addr_output_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \next_addr_output_carry__2\ : label is 35;
begin
  current_addr(15 downto 0) <= \^current_addr\(15 downto 0);
\current_addr[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(11),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(11),
      O => \current_addr[11]_i_2_n_0\
    );
\current_addr[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(10),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(10),
      O => \current_addr[11]_i_3_n_0\
    );
\current_addr[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(9),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(9),
      O => \current_addr[11]_i_4_n_0\
    );
\current_addr[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(8),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(8),
      O => \current_addr[11]_i_5_n_0\
    );
\current_addr[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ena_n,
      O => sel
    );
\current_addr[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \current_addr[15]_i_3_n_0\
    );
\current_addr[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(15),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(15),
      O => \current_addr[15]_i_4_n_0\
    );
\current_addr[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(14),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(14),
      O => \current_addr[15]_i_5_n_0\
    );
\current_addr[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(13),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(13),
      O => \current_addr[15]_i_6_n_0\
    );
\current_addr[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(12),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(12),
      O => \current_addr[15]_i_7_n_0\
    );
\current_addr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(0),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(0),
      O => \current_addr[3]_i_2_n_0\
    );
\current_addr[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(3),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(3),
      O => \current_addr[3]_i_3_n_0\
    );
\current_addr[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(2),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(2),
      O => \current_addr[3]_i_4_n_0\
    );
\current_addr[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(1),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(1),
      O => \current_addr[3]_i_5_n_0\
    );
\current_addr[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^current_addr\(0),
      I1 => next_addr_branch(0),
      I2 => branch_taken_ex,
      O => \current_addr[3]_i_6_n_0\
    );
\current_addr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(7),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(7),
      O => \current_addr[7]_i_2_n_0\
    );
\current_addr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(6),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(6),
      O => \current_addr[7]_i_3_n_0\
    );
\current_addr[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(5),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(5),
      O => \current_addr[7]_i_4_n_0\
    );
\current_addr[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => next_addr_branch(4),
      I1 => branch_taken_ex,
      I2 => \^current_addr\(4),
      O => \current_addr[7]_i_5_n_0\
    );
\current_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[3]_i_1_n_7\,
      Q => \^current_addr\(0)
    );
\current_addr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[11]_i_1_n_5\,
      Q => \^current_addr\(10)
    );
\current_addr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[11]_i_1_n_4\,
      Q => \^current_addr\(11)
    );
\current_addr_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_addr_reg[7]_i_1_n_0\,
      CO(3) => \current_addr_reg[11]_i_1_n_0\,
      CO(2) => \current_addr_reg[11]_i_1_n_1\,
      CO(1) => \current_addr_reg[11]_i_1_n_2\,
      CO(0) => \current_addr_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \current_addr_reg[11]_i_1_n_4\,
      O(2) => \current_addr_reg[11]_i_1_n_5\,
      O(1) => \current_addr_reg[11]_i_1_n_6\,
      O(0) => \current_addr_reg[11]_i_1_n_7\,
      S(3) => \current_addr[11]_i_2_n_0\,
      S(2) => \current_addr[11]_i_3_n_0\,
      S(1) => \current_addr[11]_i_4_n_0\,
      S(0) => \current_addr[11]_i_5_n_0\
    );
\current_addr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[15]_i_2_n_7\,
      Q => \^current_addr\(12)
    );
\current_addr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[15]_i_2_n_6\,
      Q => \^current_addr\(13)
    );
\current_addr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[15]_i_2_n_5\,
      Q => \^current_addr\(14)
    );
\current_addr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[15]_i_2_n_4\,
      Q => \^current_addr\(15)
    );
\current_addr_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_addr_reg[11]_i_1_n_0\,
      CO(3) => \NLW_current_addr_reg[15]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \current_addr_reg[15]_i_2_n_1\,
      CO(1) => \current_addr_reg[15]_i_2_n_2\,
      CO(0) => \current_addr_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \current_addr_reg[15]_i_2_n_4\,
      O(2) => \current_addr_reg[15]_i_2_n_5\,
      O(1) => \current_addr_reg[15]_i_2_n_6\,
      O(0) => \current_addr_reg[15]_i_2_n_7\,
      S(3) => \current_addr[15]_i_4_n_0\,
      S(2) => \current_addr[15]_i_5_n_0\,
      S(1) => \current_addr[15]_i_6_n_0\,
      S(0) => \current_addr[15]_i_7_n_0\
    );
\current_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[3]_i_1_n_6\,
      Q => \^current_addr\(1)
    );
\current_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[3]_i_1_n_5\,
      Q => \^current_addr\(2)
    );
\current_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[3]_i_1_n_4\,
      Q => \^current_addr\(3)
    );
\current_addr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \current_addr_reg[3]_i_1_n_0\,
      CO(2) => \current_addr_reg[3]_i_1_n_1\,
      CO(1) => \current_addr_reg[3]_i_1_n_2\,
      CO(0) => \current_addr_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \current_addr[3]_i_2_n_0\,
      O(3) => \current_addr_reg[3]_i_1_n_4\,
      O(2) => \current_addr_reg[3]_i_1_n_5\,
      O(1) => \current_addr_reg[3]_i_1_n_6\,
      O(0) => \current_addr_reg[3]_i_1_n_7\,
      S(3) => \current_addr[3]_i_3_n_0\,
      S(2) => \current_addr[3]_i_4_n_0\,
      S(1) => \current_addr[3]_i_5_n_0\,
      S(0) => \current_addr[3]_i_6_n_0\
    );
\current_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[7]_i_1_n_7\,
      Q => \^current_addr\(4)
    );
\current_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[7]_i_1_n_6\,
      Q => \^current_addr\(5)
    );
\current_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[7]_i_1_n_5\,
      Q => \^current_addr\(6)
    );
\current_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[7]_i_1_n_4\,
      Q => \^current_addr\(7)
    );
\current_addr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \current_addr_reg[3]_i_1_n_0\,
      CO(3) => \current_addr_reg[7]_i_1_n_0\,
      CO(2) => \current_addr_reg[7]_i_1_n_1\,
      CO(1) => \current_addr_reg[7]_i_1_n_2\,
      CO(0) => \current_addr_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \current_addr_reg[7]_i_1_n_4\,
      O(2) => \current_addr_reg[7]_i_1_n_5\,
      O(1) => \current_addr_reg[7]_i_1_n_6\,
      O(0) => \current_addr_reg[7]_i_1_n_7\,
      S(3) => \current_addr[7]_i_2_n_0\,
      S(2) => \current_addr[7]_i_3_n_0\,
      S(1) => \current_addr[7]_i_4_n_0\,
      S(0) => \current_addr[7]_i_5_n_0\
    );
\current_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[11]_i_1_n_7\,
      Q => \^current_addr\(8)
    );
\current_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sel,
      CLR => \current_addr[15]_i_3_n_0\,
      D => \current_addr_reg[11]_i_1_n_6\,
      Q => \^current_addr\(9)
    );
\next_addr_output[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^current_addr\(0),
      O => next_addr_output(0)
    );
next_addr_output_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_addr_output_carry_n_0,
      CO(2) => next_addr_output_carry_n_1,
      CO(1) => next_addr_output_carry_n_2,
      CO(0) => next_addr_output_carry_n_3,
      CYINIT => \^current_addr\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => next_addr_output(4 downto 1),
      S(3 downto 0) => \^current_addr\(4 downto 1)
    );
\next_addr_output_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => next_addr_output_carry_n_0,
      CO(3) => \next_addr_output_carry__0_n_0\,
      CO(2) => \next_addr_output_carry__0_n_1\,
      CO(1) => \next_addr_output_carry__0_n_2\,
      CO(0) => \next_addr_output_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => next_addr_output(8 downto 5),
      S(3 downto 0) => \^current_addr\(8 downto 5)
    );
\next_addr_output_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_addr_output_carry__0_n_0\,
      CO(3) => \next_addr_output_carry__1_n_0\,
      CO(2) => \next_addr_output_carry__1_n_1\,
      CO(1) => \next_addr_output_carry__1_n_2\,
      CO(0) => \next_addr_output_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => next_addr_output(12 downto 9),
      S(3 downto 0) => \^current_addr\(12 downto 9)
    );
\next_addr_output_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_addr_output_carry__1_n_0\,
      CO(3 downto 2) => \NLW_next_addr_output_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \next_addr_output_carry__2_n_2\,
      CO(0) => \next_addr_output_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_next_addr_output_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => next_addr_output(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => \^current_addr\(15 downto 13)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    ena_n : in STD_LOGIC;
    next_addr_branch : in STD_LOGIC_VECTOR ( 15 downto 0 );
    branch_taken_ex : in STD_LOGIC;
    current_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    next_addr_output : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bluex_PC_0_0,PC,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "PC,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bluex_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PC
     port map (
      branch_taken_ex => branch_taken_ex,
      clk => clk,
      current_addr(15 downto 0) => current_addr(15 downto 0),
      ena_n => ena_n,
      next_addr_branch(15 downto 0) => next_addr_branch(15 downto 0),
      next_addr_output(15 downto 0) => next_addr_output(15 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
