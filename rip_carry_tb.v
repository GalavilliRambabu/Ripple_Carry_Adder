/////Testbench
module rip_carry_tb();
reg [3:0]a_tb,b_tb;
reg ci_tb;
wire [3:0]s_tb;
wire co_tb;
integer i,j;
rip_carry DUT(a_tb,b_tb,cin_tb,s_tb,co_tb);
initial
begin
 ci_tb=1'b0;
 for(i=0;i<16;i=i+1)
 begin
 a_tb=i;
 for(j=0;j<16;j=j+1)
 begin
 b_tb=j;
 #10;
 end

 end
 end
 initial
 $monitor("Input A=%b,Input B= %b,Sum = %b, Carry= %b",a_tb,b_tb,s_tb,co_tb);
 initial
 #1000 $finish;
endmodule