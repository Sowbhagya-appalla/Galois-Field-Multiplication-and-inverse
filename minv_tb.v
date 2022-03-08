`include "minv.v"

module minv_tb;

reg [7:0]a,p,d,s0;
wire [7:0]out15;

minv mod1(a,d,p,s0,out15);
initial 
begin

$dumpfile("assi5.vcd");
$dumpvars(0,minv_tb);

a=8'b01010111;
p=8'b00011011;
d=8'b11111110;
s0=8'b00000001;

#2
a=8'b11010111;

#4
a=8'b11000011;

#6
a=8'b01110111;

end 
always
begin
#20 $finish;
end 
initial
$monitor($time,"a=%b,p=%b,d=%b,out15=%b",a,p,d,out15);
endmodule
