--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu Apr 16 21:59:21 2020
--Host        : DESKTOP-8CKUBRS running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    LED1_0 : out STD_LOGIC;
    keyIn_0 : in STD_LOGIC;
    keyIn_1 : in STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    sys_clock : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_clk_wiz_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0;
  component design_1_StateMachine_0_0 is
  port (
    clk : in STD_LOGIC;
    Btn0 : in STD_LOGIC;
    Btn1 : in STD_LOGIC;
    LED1 : out STD_LOGIC
  );
  end component design_1_StateMachine_0_0;
  component design_1_Debouncer_0_0 is
  port (
    clk : in STD_LOGIC;
    keyIn : in STD_LOGIC;
    keyOut : out STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  end component design_1_Debouncer_0_0;
  component design_1_Debouncer_0_1 is
  port (
    clk : in STD_LOGIC;
    keyIn : in STD_LOGIC;
    keyOut : out STD_LOGIC;
    interrupt : out STD_LOGIC
  );
  end component design_1_Debouncer_0_1;
  signal Debouncer_0_keyOut : STD_LOGIC;
  signal Debouncer_1_keyOut : STD_LOGIC;
  signal StateMachine_0_LED1 : STD_LOGIC;
  signal clk_wiz_clk_out1 : STD_LOGIC;
  signal keyIn_0_1 : STD_LOGIC;
  signal keyIn_1_1 : STD_LOGIC;
  signal reset_rtl_1 : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal NLW_Debouncer_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_Debouncer_1_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_wiz_locked_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_rtl : signal is "xilinx.com:signal:reset:1.0 RST.RESET_RTL RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_rtl : signal is "XIL_INTERFACENAME RST.RESET_RTL, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000";
begin
  LED1_0 <= StateMachine_0_LED1;
  keyIn_0_1 <= keyIn_0;
  keyIn_1_1 <= keyIn_1;
  reset_rtl_1 <= reset_rtl;
  sys_clock_1 <= sys_clock;
Debouncer_0: component design_1_Debouncer_0_0
     port map (
      clk => clk_wiz_clk_out1,
      interrupt => NLW_Debouncer_0_interrupt_UNCONNECTED,
      keyIn => keyIn_0_1,
      keyOut => Debouncer_0_keyOut
    );
Debouncer_1: component design_1_Debouncer_0_1
     port map (
      clk => clk_wiz_clk_out1,
      interrupt => NLW_Debouncer_1_interrupt_UNCONNECTED,
      keyIn => keyIn_1_1,
      keyOut => Debouncer_1_keyOut
    );
StateMachine_0: component design_1_StateMachine_0_0
     port map (
      Btn0 => Debouncer_0_keyOut,
      Btn1 => Debouncer_1_keyOut,
      LED1 => StateMachine_0_LED1,
      clk => clk_wiz_clk_out1
    );
clk_wiz: component design_1_clk_wiz_0
     port map (
      clk_in1 => sys_clock_1,
      clk_out1 => clk_wiz_clk_out1,
      locked => NLW_clk_wiz_locked_UNCONNECTED,
      reset => reset_rtl_1
    );
end STRUCTURE;
