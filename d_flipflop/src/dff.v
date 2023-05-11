module dff_pos (
    data,clk,q
);
input data,clk;
output q;
reg q;
always @(posedge clk)
    q = data;
endmodule