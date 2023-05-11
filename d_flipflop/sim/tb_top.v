`timescale 1ns/1ps

module tb_top;

reg [3:0] a = 4'b0;
reg [1:0] sel = 2'b0;
wire out;

mux4_1 u1(out,a[0],a[1],a[2],a[3],sel);

initial
begin
    repeat(1000)
        #1 a=a+1'b1;
end

initial 
begin
    repeat(100)
        #10 sel = sel+1'b1;
end

endmodule