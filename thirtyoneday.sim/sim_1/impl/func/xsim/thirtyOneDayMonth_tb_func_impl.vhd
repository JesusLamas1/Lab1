-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Feb 11 20:29:03 2025
-- Host        : C26-5CG2151JFR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Jesus.Lamas/Desktop/ECE281/ece281-lab1/thirtyoneday.sim/sim_1/impl/func/xsim/thirtyOneDayMonth_tb_func_impl.vhd
-- Design      : thirtyOneDayMonth
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity thirtyOneDayMonth is
  port (
    i_A : in STD_LOGIC;
    i_B : in STD_LOGIC;
    i_C : in STD_LOGIC;
    i_D : in STD_LOGIC;
    o_Y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of thirtyOneDayMonth : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of thirtyOneDayMonth : entity is "f90e80ce";
end thirtyOneDayMonth;

architecture STRUCTURE of thirtyOneDayMonth is
  signal i_A_IBUF : STD_LOGIC;
  signal i_C_IBUF : STD_LOGIC;
  signal o_Y_OBUF : STD_LOGIC;
begin
i_A_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_A,
      O => i_A_IBUF
    );
i_C_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_C,
      O => i_C_IBUF
    );
o_Y_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_Y_OBUF,
      O => o_Y
    );
o_Y_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_C_IBUF,
      I1 => i_A_IBUF,
      O => o_Y_OBUF
    );
end STRUCTURE;
