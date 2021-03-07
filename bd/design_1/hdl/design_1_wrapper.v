//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Nov  3 13:21:12 2020
//Host        : DESKTOP-V20AOH2 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (RST_N,
    clk_102M3,
    clk_n,
    clk_p,
    dds_wave);
  input RST_N;
  output [0:0]clk_102M3;
  input clk_n;
  input clk_p;
  output [31:0]dds_wave;

  wire RST_N;
  wire [0:0]clk_102M3;
  wire clk_n;
  wire clk_p;
  wire [31:0]dds_wave;

  design_1 design_1_i
       (.RST_N(RST_N),
        .clk_102M3(clk_102M3),
        .clk_n(clk_n),
        .clk_p(clk_p),
        .dds_wave(dds_wave));
endmodule
