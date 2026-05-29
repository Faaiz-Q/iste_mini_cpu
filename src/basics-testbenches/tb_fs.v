`timescale 1ns/1ps


module tb_fs;
    reg[3:0]a,b;
    reg bin;

    wire[3:0]diff;
    wire bout;


    fss uut(.a(a), .b(b), .bin(bin), .diff(diff), .bout(bout));


    initial begin
        $dumpfile("wave1.vcd");
        $dumpvars(0, tb_fs);

        a = 0;b= 1;bin = 0; #10;
        a = 3;b= 10;bin = 1; #10;
        a = 10;b= 3;bin = 0; #10;
        a = 15;b= 0;bin = 1; #10;

        $finish;
    end
endmodule
