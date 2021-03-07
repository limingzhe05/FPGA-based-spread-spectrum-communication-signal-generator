//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Nov  3 11:36:27 2020
//Host        : DESKTOP-V20AOH2 running 64-bit major release  (build 9200)
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (CLK_127K8,
    add,
    data);
  input CLK_127K8;
  input [2:0]add;
  output [7:0]data;

  wire CLK_127K8;
  wire [2:0]add;
  wire [7:0]data;

  design_2 design_2_i
       (.CLK_127K8(CLK_127K8),
        .add(add),
        .data(data));
endmodule
