`include "galoisadd.v"
module galoisadd_tb; 
reg [7:0] a,b,i;
wire [7:0] out,pp0,pp1,pp2,pp3; 
wire [15:0]r;
galoisadd mod1(a,b,i,out);
initial
begin
$dumpfile("assi2.vcd");
$dumpvars(0,galoisadd_tb);
 
 
a=8'b01010111;
b=8'b10000011;
i=8'b00011011;
#2
a=8'b11010111;
#4
b=8'b11000011;
#6
a=8'b01110111;
b=8'b11100011;
end
always
begin
#20 $finish;
end 
initial
$monitor($time,"a=%d,b=%d,i=%d,out=%d",a,b,i,out);
endmodule
