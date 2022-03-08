`include "galoisadd.v"

module minv(a,d,p,s0,out15);   
input [7:0]a,p,d,s0;
output [7:0]out15;
      
wire [7:0]out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out16;
galoisadd mod1(s0,a,p,out1);
galoisadd mod2(out1,out1,p,out2);    

galoisadd mod3(out2,a,p,out3);
galoisadd mod4(out3,out3,p,out4);

galoisadd mod5(out4,a,p,out5);
galoisadd mod6(out5,out5,p,out6);

galoisadd mod7(out6,a,p,out7);
galoisadd mod8(out7,out7,p,out8);

galoisadd mod9(out8,a,p,out9);
galoisadd mod10(out9,out9,p,out10);

galoisadd mod11(out10,a,p,out11);
galoisadd mod12(out11,out11,p,out12);

galoisadd mod13(out12,a,p,out13);
galoisadd mod14(out13,out13,p,out14);

galoisadd mod15(out14,s0,p,out15);
galoisadd mod16(out15,out15,p,out16);

endmodule