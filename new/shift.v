`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/02/16 18:36:51
// Design Name: 
// Module Name: shift
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


module shift(
input  [7:0]data,
input clk_1m,
input rst_n,
output bit);
reg [7:0]save;
reg [3:0]cnt;
always@(posedge clk_1m or negedge rst_n)
begin
    if(!rst_n)
    begin
    save<=8'bz;
    cnt<=8;
    end
    else 
        begin 
            if(cnt!=8)
            begin
            cnt<=cnt+1;
            save<=save<<1;
            end
            else
            begin
            save<=data;
            cnt<=1;
            end
        end
end
assign bit=save[7];
endmodule
