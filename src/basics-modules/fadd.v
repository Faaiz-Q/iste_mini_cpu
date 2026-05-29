module fadd(input a, input b, input cin, output cout, output sum);
    assign sum = a^b^cin;
    assign cout= (a&b) | (a&cin) | (b&cin);

endmodule

module ripple(input[3:0] a,b, input cin, output cout, output [3:0] sum);
    

    wire c1,c2,c3;

    fadd i1(.a(a[0]), .b(b[0]), .cin(cin),.cout(c1) , .sum(sum[0]));
    fadd i2(.a(a[1]), .b(b[1]), .cin(c1),.cout(c2) , .sum(sum[1]));
    fadd i3(.a(a[2]), .b(b[2]), .cin(c2),.cout(c3) , .sum(sum[2]));
    fadd i4(.a(a[3]), .b(b[3]), .cin(c3),.cout(cout) , .sum(sum[3]));
endmodule