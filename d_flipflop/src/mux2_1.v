module mux2_1 (
    out,a,b,sel
);
output out;
input a,b,sel;

assign out = sel?b:a;
    
endmodule

module mux4_1 (
    out,a0,a1,a2,a3,sel
);
output out;
input a0,a1,a2,a3,sel;
wire [1:0] sel;
wire o1,o2;

mux2_1 u1(o1,a0,a1,sel[0]);
mux2_1 u2(o2,a2,a3,sel[0]);
mux2_1 u3(out,o1,o2,sel[1]);
    
endmodule