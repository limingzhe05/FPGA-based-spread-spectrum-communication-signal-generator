//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Nov  3 11:36:27 2020
//Host        : DESKTOP-V20AOH2 running 64-bit major release  (build 9200)
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   (CLK_127K8,
    add,
    data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_127K8 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_127K8, CLK_DOMAIN design_2_CLK_127K8, FREQ_HZ 127874, INSERT_VIP 0, PHASE 0.000" *) input CLK_127K8;
  input [2:0]add;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DATA DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DATA, LAYERED_METADATA undef" *) output [7:0]data;

  wire CLK_127K8_1;
  wire [2:0]add_1;
  wire [7:0]blk_mem_gen_0_douta;

  assign CLK_127K8_1 = CLK_127K8;
  assign add_1 = add[2:0];
  assign data[7:0] = blk_mem_gen_0_douta;
  design_2_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(add_1),
        .clka(CLK_127K8_1),
        .douta(blk_mem_gen_0_douta));
endmodule
