`include "lsb.v"
module lsb_tb;  
reg [7:0] a1,b1,g1,f1;
wire [7:0]k37,k67;  
//wire [15:0]r;
lsb2 mod8(a1,b1,f1,g1,k37,k67);
initial
begin

$dumpfile("assi3.vcd");
$dumpvars(0,lsb_tb);
                                  
                                  
a1=8'b01010111;
b1=8'b10000011;
g1=8'b00011011;
f1=8'b00000000;

#2
a1= 8'b11010111;

#4
b1=8'b11000011;

#6
a1=8'b01110111;
b1=8'b11100011;



end
always
begin

#20 $finish;
end 
initial
$monitor($time,"a1=%b,b1=%b,g1=%b,f1=%b,k37=%b,k67=%b",a1,b1,g1,f1,k37,k67);

endmodule