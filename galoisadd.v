module galoisadd(a,b,i,out);

input [7:0] a,b,i;
output [7:0] out;
wire [7:0] p0;
wire [7:0] p1;
wire [7:0] p2;
wire [7:0] p3;
wire [7:0] p4;
wire [7:0] p5;
wire [7:0] p6;                                                                                               
wire [7:0] p7;
wire [7:0] pp0;
wire [7:0] pp4;
wire [7:0] pp1;
wire [7:0] pp5;
wire [7:0] pp2;
wire [7:0] pp3;
wire [7:0] pp6;
wire [7:0] pp7;
wire [7:0] pp8;
wire [8:0] r1;
wire [7:0] r2;
wire [8:0] r3;
wire [7:0] r4;
wire [8:0] r5;
wire [7:0] r6;
wire [8:0] r7;
wire [7:0]  r8;
wire [8:0] r9;
wire [7:0] r10;
wire [8:0] r11;
wire [7:0] r12;
wire [8:0] r13;
wire [7:0] r14;
wire [7:0] r15;
wire [7:0] r16;
wire [7:0] r17;
wire [7:0] r18;
wire [7:0] r19;
wire [7:0] r20;
wire [7:0] r21; 
wire [7:0] r22;
wire [7:0] r23;
wire [7:0] r24;
wire [7:0] r25;
wire [7:0] r26;
wire [7:0] r27;
wire [7:0] r28;
wire [7:0] r29;
wire [7:0] r30;
wire [7:0] r31;
wire [7:0] r32;
wire [7:0] r33;
wire [7:0] r34;
wire [7:0] r35;
wire [7:0] r36;
wire [7:0] r37;
wire [7:0] r38;
wire [7:0] r39;
wire [7:0] r40;
wire [7:0] r41;
wire [7:0] r42;
wire [15:0] r;

assign p0 = {a[7]&b[0],a[6]&b[0],a[5]&b[0],a[4]&b[0],a[3]&b[0],a[2]&b[0],a[1]&b[0],a[0]&b[0]};
assign p1 = {a[7]&b[1],a[6]&b[1],a[5]&b[1],a[4]&b[1],a[3]&b[1],a[2]&b[1],a[1]&b[1],a[0]&b[1]};
assign p2 = {a[7]&b[2],a[6]&b[2],a[5]&b[2],a[4]&b[2],a[3]&b[2],a[2]&b[2],a[1]&b[2],a[0]&b[2]};
assign p3 = {a[7]&b[3],a[6]&b[3],a[5]&b[3],a[4]&b[3],a[3]&b[3],a[2]&b[3],a[1]&b[3],a[0]&b[3]};
assign p4 = {a[7]&b[4],a[6]&b[4],a[5]&b[4],a[4]&b[4],a[3]&b[4],a[2]&b[4],a[1]&b[4],a[0]&b[4]};
assign p5 = {a[7]&b[5],a[6]&b[5],a[5]&b[5],a[4]&b[5],a[3]&b[5],a[2]&b[5],a[1]&b[5],a[0]&b[5]};
assign p6 = {a[7]&b[6],a[6]&b[6],a[5]&b[6],a[4]&b[6],a[3]&b[6],a[2]&b[6],a[1]&b[6],a[0]&b[6]};
assign p7 = {a[7]&b[7],a[6]&b[7],a[5]&b[7],a[4]&b[7],a[3]&b[7],a[2]&b[7],a[1]&b[7],a[0]&b[7]};

assign r = {8'd0,p0} ^ {7'd0,p1,1'b0} ^ {6'd0,p2,2'd0} ^ {5'd0,p3,3'd0} ^ {4'd0,p4,4'd0} ^ {3'd0,p5,5'd0} ^ {2'd0,p6,6'd0} ^ {1'b0,p7,7'd0};

assign pp0 = {r[8]&i[7],r[8]&i[6],r[8]&i[5],r[8]&i[4],r[8]&i[3],r[8]&i[2],r[8]&i[1],r[8]&i[0]};

assign r1 = {i,1'b0}; //9bit number
assign r2 ={r1[8]&i[7],r1[8]&i[6],r1[8]&i[5],r1[8]&i[4],r1[8]&i[3],r1[8]&i[2],r1[8]&i[1],r1[8]&i[0]};//8bit number
assign r15 = r2 ^ r1[7:0]; 
assign pp1 = {r[9]&r15[7],r[9]&r15[6],r[9]&r15[5],r[9]&r15[4],r[9]&r15[3],r[9]&r15[2],r[9]&r15[1],r[9]&r15[0]}; //8bit number


assign r3 = {r15,1'd0};//10bit number
//assign r4 ={r3[9]&i[7],r3[9]&i[6],r3[9]&i[5],r3[9]&i[4],r3[9]&i[3],r3[9]&i[2],r3[9]&i[1],r3[9]&i[0]};//8bit number
assign r22 ={r3[8]&i[7],r3[8]&i[6],r3[8]&i[5],r3[8]&i[4],r3[8]&i[3],r3[8]&i[2],r3[8]&i[1],r3[8]&i[0]};//8bit number
assign r16 = r22 ^ r3[7:0];
assign pp2 = {r[10]&r16[7],r[10]&r16[6],r[10]&r16[5],r[10]&r16[4],r[10]&r16[3],r[10]&r16[2],r[10]&r16[1],r[10]&r16[0]}; //8bit number 


assign r5 = {r16,1'd0};//11bit number
assign r24 ={r5[8]&i[7],r5[8]&i[6],r5[8]&i[5],r5[8]&i[4],r5[8]&i[3],r5[8]&i[2],r5[8]&i[1],r5[8]&i[0]};
assign r17 = r24 ^ r5[7:0];
assign pp3 = {r[11]&r17[7],r[11]&r17[6],r[11]&r17[5],r[11]&r17[4],r[11]&r17[3],r[11]&r17[2],r[11]&r17[1],r[11]&r17[0]}; //8bit number


assign r7 = {r17,1'd0};//12bit number

assign r27 ={r7[8]&i[7],r7[8]&i[6],r7[8]&i[5],r7[8]&i[4],r7[8]&i[3],r7[8]&i[2],r7[8]&i[1],r7[8]&i[0]}; 
assign r18 = r27 ^ r7[7:0];
assign pp4 = {r[12]&r18[7],r[12]&r18[6],r[12]&r18[5],r[12]&r18[4],r[12]&r18[3],r[12]&r18[2],r[12]&r18[1],r[12]&r18[0]}; //8bit number
 

assign r9 = {r18,1'd0};//13bit number

assign r31 ={r9[8]&i[7],r9[8]&i[6],r9[8]&i[5],r9[8]&i[4],r9[8]&i[3],r9[8]&i[2],r9[8]&i[1],r9[8]&i[0]};
assign r19 = r31 ^ r9[7:0] ;
assign pp5 = {r[13]&r19[7],r[13]&r19[6],r[13]&r19[5],r[13]&r19[4],r[13]&r19[3],r[13]&r19[2],r[13]&r19[1],r[13]&r19[0]}; //8bit number
assign pp8 = pp5 ^ r[7:0];



assign r11 = {r19,1'd0};//14bit number

assign r36 ={r11[8]&i[7],r11[8]&i[6],r11[8]&i[5],r11[8]&i[4],r11[8]&i[3],r11[8]&i[2],r11[8]&i[1],r11[8]&i[0]}; 
assign r20 = r36 ^ r11[7:0];
assign pp6 = {r[14]&r20[7],r[14]&r20[6],r[14]&r20[5],r[14]&r20[4],r[14]&r20[3],r[14]&r20[2],r[14]&r20[1],r[14]&r20[0]}; //8bit number


assign r13 = {r20,1'd0};//15bit number

assign r42 ={r13[8]&i[7],r13[8]&i[6],r13[8]&i[5],r13[8]&i[4],r13[8]&i[3],r13[8]&i[2],r13[8]&i[1],r13[8]&i[0]};
assign r21 = r42 ^ r13[7:0];
assign pp7 = {r[15]&r21[7],r[15]&r21[6],r[15]&r21[5],r[15]&r21[4],r[15]&r21[3],r[15]&r21[2],r[15]&r21[1],r[15]&r21[0]}; //8bit number



assign out = r[7:0] ^ pp0 ^ pp1 ^ pp2 ^ pp3 ^ pp4 ^ pp5 ^ pp6 ^ pp7; 


endmodule