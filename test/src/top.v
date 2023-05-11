module top (
    input clk,
    input rst_n,
    output reg [3:0] led
);
    
always @(posedge clk) begin
    if(~rst_n)
        led <= 4'b0001;
    else
        led <= {led[2:0],led[3]};
end
endmodule