// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov  3 13:54:57 2020
// Host        : DESKTOP-V20AOH2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/FPGA/shitmountain/BPSK/BPSK.srcs/sources_1/ip/clk_wiz_0_1/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_out1, resetn, locked, clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,resetn,locked,clk_in1_p,clk_in1_n" */;
  output clk_out1;
  input resetn;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
