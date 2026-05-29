module s(input a, input b, input bin, output diff, output bout );
    assign diff = a^b^bin;
    assign bout = ~a&b | (~(a^b)&bin); 
endmodule

module fss(input[3:0] a,b, input bin, output[3:0]diff, output bout );

    wire w1,w2,w3;
    s i1(.a(a[0]), .b(b[0]), .bin(bin), .diff(diff[0]), .bout(w1));
    s i2(.a(a[1]), .b(b[1]), .bin(w1), .diff(diff[1]), .bout(w2));
    s i3(.a(a[2]), .b(b[2]), .bin(w2), .diff(diff[2]), .bout(w3));
    s i4(.a(a[3]), .b(b[3]), .bin(w3), .diff(diff[3]), .bout(bout));
    
endmodule