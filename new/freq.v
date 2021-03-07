`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/02/16 16:47:10
// Design Name: 
// Module Name: freq
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


module freq(
input clk_p,
input clk_n,
input rst_n,
output [15:0]dds_cos,
output clk_100,
output clk_baifen,
output clk_babaifen
    );
//wire clk_100;
reg [9:0]cnt_1;
reg [9:0]cnt_bit;
reg clk_1;
reg clk_bit;
assign clk_baifen = clk_1;
assign clk_babaifen = clk_bit;
design1 utt
       (
        clk_n,
        clk_p,
        rst_n,
        clk_100,        
        dds_cos
        );

always@(posedge clk_100 or negedge rst_n)
begin
    if(!rst_n)
        begin 
        clk_1<=0;
        cnt_1<=0;
        end
    else
        if(cnt_1==10'd49)
            begin 
            clk_1<=~clk_1;
            cnt_1<=0;
        end
        else
            cnt_1=cnt_1+1;
end

always@(posedge clk_100 or negedge rst_n)
begin
    if(!rst_n)
        begin 
        clk_bit<=0;
        cnt_bit=0;
        end
    else
        if(cnt_bit==10'd399)
            begin 
            clk_bit<=~clk_bit;
            cnt_bit<=0;
        end
        else
            cnt_bit=cnt_bit+1;
end


endmodule
