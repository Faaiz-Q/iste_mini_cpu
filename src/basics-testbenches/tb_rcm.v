module tb_comp4;

    reg [3:0] a,b;

    wire gt,lt,eq;

    comp4 uut(
        .a(a),
        .b(b),
        .gt(gt),
        .lt(lt),
        .eq(eq)
    );

    initial begin

        $dumpfile("wave2.vcd");
        $dumpvars(0, tb_comp4);


        a = 4'd3;
        b = 4'd5;
        #10;


        a = 4'd10;
        b = 4'd2;
        #10;


        a = 4'd7;
        b = 4'd7;
        #10;
        a = 4'd1;
        b = 4'd15;
        #10;

        $finish;

    end

endmodule