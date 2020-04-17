// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Apr 17 11:18:30 2020
// Host        : DESKTOP-8CKUBRS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Dennis/Vivado/simple_FSM_vhdl/simple_FSM_vhdl.srcs/sources_1/bd/design_1/ip/design_1_Debouncer_0_1/design_1_Debouncer_0_1_sim_netlist.v
// Design      : design_1_Debouncer_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Debouncer_0_1,Debouncer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Debouncer,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_Debouncer_0_1
   (clk,
    keyIn,
    keyOut);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  input keyIn;
  output keyOut;

  wire clk;
  wire keyIn;
  wire keyOut;

  design_1_Debouncer_0_1_Debouncer U0
       (.clk(clk),
        .keyIn(keyIn),
        .keyOut(keyOut));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module design_1_Debouncer_0_1_Debouncer
   (keyOut,
    clk,
    keyIn);
  output keyOut;
  input clk;
  input keyIn;

  wire clear;
  wire clk;
  wire \debcnt[6]_i_3_n_0 ;
  wire [6:0]debcnt_reg;
  wire keyDebounce_i_1_n_0;
  wire keyDebounce_i_2_n_0;
  wire keyIn;
  wire keyOut;
  wire [6:0]p_0_in;

  LUT1 #(
    .INIT(2'h1)) 
    \debcnt[0]_i_1 
       (.I0(debcnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \debcnt[1]_i_1 
       (.I0(debcnt_reg[0]),
        .I1(debcnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \debcnt[2]_i_1 
       (.I0(debcnt_reg[0]),
        .I1(debcnt_reg[1]),
        .I2(debcnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \debcnt[3]_i_1 
       (.I0(debcnt_reg[1]),
        .I1(debcnt_reg[0]),
        .I2(debcnt_reg[2]),
        .I3(debcnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \debcnt[4]_i_1 
       (.I0(debcnt_reg[2]),
        .I1(debcnt_reg[0]),
        .I2(debcnt_reg[1]),
        .I3(debcnt_reg[3]),
        .I4(debcnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \debcnt[5]_i_1 
       (.I0(debcnt_reg[3]),
        .I1(debcnt_reg[1]),
        .I2(debcnt_reg[0]),
        .I3(debcnt_reg[2]),
        .I4(debcnt_reg[4]),
        .I5(debcnt_reg[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \debcnt[6]_i_1 
       (.I0(keyOut),
        .I1(keyIn),
        .O(clear));
  LUT3 #(
    .INIT(8'h78)) 
    \debcnt[6]_i_2 
       (.I0(\debcnt[6]_i_3_n_0 ),
        .I1(debcnt_reg[5]),
        .I2(debcnt_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \debcnt[6]_i_3 
       (.I0(debcnt_reg[4]),
        .I1(debcnt_reg[2]),
        .I2(debcnt_reg[0]),
        .I3(debcnt_reg[1]),
        .I4(debcnt_reg[3]),
        .O(\debcnt[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \debcnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(debcnt_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \debcnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(debcnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \debcnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(debcnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \debcnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(debcnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \debcnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(debcnt_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \debcnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(debcnt_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \debcnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(debcnt_reg[6]),
        .R(clear));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    keyDebounce_i_1
       (.I0(keyIn),
        .I1(debcnt_reg[5]),
        .I2(debcnt_reg[0]),
        .I3(debcnt_reg[2]),
        .I4(keyDebounce_i_2_n_0),
        .I5(keyOut),
        .O(keyDebounce_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    keyDebounce_i_2
       (.I0(debcnt_reg[3]),
        .I1(debcnt_reg[4]),
        .I2(debcnt_reg[1]),
        .I3(debcnt_reg[6]),
        .O(keyDebounce_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    keyDebounce_reg
       (.C(clk),
        .CE(1'b1),
        .D(keyDebounce_i_1_n_0),
        .Q(keyOut),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
