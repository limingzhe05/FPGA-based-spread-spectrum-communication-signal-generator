`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/02/16 19:39:26
// Design Name: 
// Module Name: top
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


module top(
    input clk_p,
    input clk_n,
    input rst_n,
    output reg [11:0]wav,
    output clkk
    );


wire [15:0]cos;
wire clk_f;
wire clk_s;
wire [7:0]data;
wire bit;
wire random;
reg [2:0]add;
wire value;

wire [11:0]wav_p;
freq  m1(clk_p,clk_n,rst_n,cos,clkk,clk_f,clk_s);


blk_mem_gen_1 m2 (
  .clka(clk_s),    // input wire clka
  .addra(add),  // input wire [2 : 0] addra
  .douta(data)  // output wire [7 : 0] douta
);


always@(negedge clkk or negedge rst_n)
begin
    if(!rst_n)
    wav <= 12'b0;
    else
    wav <= wav_p;
end

always@(negedge rst_n or negedge clk_s)
    begin
        if(!rst_n)
        add<=0;
        else if(add!=7)
        add<=add+1;
        else
        add<=0;
    end

shift  m3(
data,
clk_f,
rst_n,
bit);

m_series m4(
clk_f,
random
 );



assign value = random + bit;

assign wav_p = value?{~cos[15],cos[14:4]}:{cos[15],~cos[14:4]};



endmodule
