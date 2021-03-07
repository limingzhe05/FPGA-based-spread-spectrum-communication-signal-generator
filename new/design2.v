`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/03 14:14:49
// Design Name: 
// Module Name: design2
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


module design2(
input clk_s,
input [2:0]add,
output [7:0]data);

blk_mem_gen_1 wtt (
  .clka(clk_s),    // input wire clka
  .addra(add),  // input wire [2 : 0] addra
  .douta(dout)  // output wire [7 : 0] douta
);
endmodule
