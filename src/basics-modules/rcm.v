module comp1(
    input a,
    input b,

    input gt_in,
    input lt_in,
    input eq_in,

    output gt_out,
    output lt_out,
    output eq_out
);

    assign gt_out = gt_in | (eq_in & (a & ~b));

    assign lt_out = lt_in | (eq_in & (~a & b));

    assign eq_out = eq_in & ~(a ^ b);

endmodule



module comp4(
    input [3:0] a,
    input [3:0] b,

    output gt,
    output lt,
    output eq
);

    wire g1,g2,g3;
    wire l1,l2,l3;
    wire e1,e2,e3;


    comp1 c1(
        .a(a[3]),
        .b(b[3]),

        .gt_in(0),
        .lt_in(0),
        .eq_in(1),

        .gt_out(g1),
        .lt_out(l1),
        .eq_out(e1)
    );

    comp1 c2(
        .a(a[2]),
        .b(b[2]),

        .gt_in(g1),
        .lt_in(l1),
        .eq_in(e1),

        .gt_out(g2),
        .lt_out(l2),
        .eq_out(e2)
    );

    comp1 c3(
        .a(a[1]),
        .b(b[1]),

        .gt_in(g2),
        .lt_in(l2),
        .eq_in(e2),

        .gt_out(g3),
        .lt_out(l3),
        .eq_out(e3)
    );

    comp1 c4(
        .a(a[0]),
        .b(b[0]),

        .gt_in(g3),
        .lt_in(l3),
        .eq_in(e3),

        .gt_out(gt),
        .lt_out(lt),
        .eq_out(eq)
    );

endmodule