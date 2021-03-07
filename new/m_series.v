`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/02/16 19:27:02
// Design Name: 
// Module Name: m_series
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


module m_series(
input clk_1m,
output data
    );
reg [4:0] shift_register;
initial shift_register='h1f;
always@(posedge clk_1m)
begin
    shift_register[0]<=shift_register[1]^shift_register[4];//f(x)=1+x2+x5
    shift_register[4:1]<=shift_register[3:0];

end
assign data=shift_register[4];
endmodule
