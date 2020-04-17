--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Fri Apr 17 11:17:24 2020
--Host        : DESKTOP-8CKUBRS running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    LED1_0 : out STD_LOGIC;
    keyIn_0 : in STD_LOGIC;
    keyIn_1 : in STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    LED1_0 : out STD_LOGIC;
    keyIn_0 : in STD_LOGIC;
    keyIn_1 : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    reset_rtl : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      LED1_0 => LED1_0,
      keyIn_0 => keyIn_0,
      keyIn_1 => keyIn_1,
      reset_rtl => reset_rtl,
      sys_clock => sys_clock
    );
end STRUCTURE;
