///7. Write a verilog design  and testbench and testbench for a 1 bit Ripple carry adder using 1 bit full adder
module rip_carry(input a,b,cin, output s,cout);
assign s = a^b^cin;
assign cout = a&b | b&cin | cin&a ;
endmodule
module ripple_ca(a,b,cin,s,co);
//wire [2:0]c;
input [3:0]a,b;
input cin;
output [3:0]s;
output co;
wire w1,w2,w3;
//input [3:0]a,[3:0]b;
//output [3:0]c,[3:0]s;
full_adder_df
fa1(.a(a[0]),.b(b[0]),.cin(1'b0),.s(s[0]),.cout(w1));
full_adder_df
fa2(.a(a[1]),.b(b[1]),.cin(w1),.s(s[1]),.cout(w2));
full_adder_df
fa3(.a(a[2]),.b(b[2]),.cin(w2),.s(s[2]),.cout(w3));
full_adder_df
fa4(.a(a[3]),.b(b[3]),.cin(w3),.s(s[3]),.cout(co));
endmodule