module shift (
    dataout,datain,clr,clk
);
output [7:0] dataout;
input datain,clr,clk;
reg [7:0] dataout;

always @(posedge clk) begin
    if(!clr)dataout=8'b0;
    else
        begin
            dataout = dataout<<1;
            dataout[0] = datain;
        end
end
    
endmodule