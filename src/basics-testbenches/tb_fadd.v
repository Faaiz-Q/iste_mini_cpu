`timescale 1ns/1ps

module tb_fadd;

    reg [3:0] a, b;
    reg cin;

    wire [3:0] sum;
    wire cout;

    ripple uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_fadd);

        a = 0; b = 0; cin = 0; #10;
        a = 3; b = 5; cin = 0; #10;
        a = 15; b = 1; cin = 0; #10;
        a = 10; b = 5; cin = 1; #10;

        $finish;
    end

endmodule