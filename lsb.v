module lsbfirst(a,b,f,g,k3,k6);
input [7:0]a,g,b,f;
output [7:0]k3,k6;

wire [7:0]k1,k2,k4,k5;

assign k1[7:0]={a[7]&g[7],a[7]&g[6],a[7]&g[5],a[7]&g[4],a[7]&g[3],a[7]&g[2],a[7]&g[1],a[7]&g[0]};
assign k2[7:0]={a[6],a[5],a[4],a[3],a[2],a[1],a[0],1'b0};
assign k3[7:0]=(k1[7:0])^(k2[7:0]);

assign k4[7:0]={a[7]&b[0],a[6]&b[0],a[5]&b[0],a[4]&b[0],a[3]&b[0],a[2]&b[0],a[1]&b[0],a[0]&b[0]};
assign k5[7:0]=f[7:0];
assign k6[7:0]=k4^k5;

endmodule

module lsb2(a1,b1,f1,g1,k37,k67);
input [7:0]a1,g1,b1,f1;
output [7:0]k37,k67;   


wire [7:0]k30,k31,k32,k33,k34,k35,k36,k37,k60,k61,k62,k63,k64,k65,k66;

lsbfirst mod0(a1,b1,f1,g1,k30,k60); 
lsbfirst mod1(k30,{1'b0,b1[7:1]},k60,g1,k31,k61);
lsbfirst mod2(k31,{2'b0,b1[7:2]},k61,g1,k32,k62);
lsbfirst mod3(k32,{3'b0,b1[7:3]},k62,g1,k33,k63);
lsbfirst mod4(k33,{4'b0,b1[7:4]},k63,g1,k34,k64);
lsbfirst mod5(k34,{5'b0,b1[7:5]},k64,g1,k35,k65);
lsbfirst mod6(k35,{6'b0,b1[7:6]},k65,g1,k36,k66);
lsbfirst mod7(k36,{7'b0,b1[7]},k66,g1,k37,k67);  


endmodule