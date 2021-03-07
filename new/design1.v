`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/03 14:02:59
// Design Name: 
// Module Name: design1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module design1(
input clkn,
input clkp,
input rstn,
output clk_100,           
output [15:0] dds_wav);

wire clk_out1;
wire locked;

 clk_wiz_0 www
   (
    // Clock out ports
    .clk_out1(clk_out1),     // output clk_out1
    // Status and control signals
    .resetn(rstn), // input resetn
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1_p(clkp),    // input clk_in1_p
    .clk_in1_n(clkn));    // input clk_in1_n


assign clk_100 = locked&clk_out1;

wire valid;
wire [15:0] tdata;
dds_compiler_0 wwt (
  .aclk(clk_100),                                // input wire aclk
  .m_axis_data_tvalid(valid),    // output wire m_axis_data_tvalid
  .m_axis_data_tdata(tdata),      // output wire [15 : 0] m_axis_data_tdata
  .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
  .m_axis_phase_tdata()    // output wire [15 : 0] m_axis_phase_tdata
);
assign dds_wav = valid?tdata:16'bz;
endmodule
