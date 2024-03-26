module rtl_4bit_adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);
    // Internal carry signals
    wire [2:0] carry;

    // Sum and carry computations
    assign {carry[0], sum[0]} = a[0] + b[0] + cin;
    assign {carry[1], sum[1]} = a[1] + b[1] + carry[0];
    assign {carry[2], sum[2]} = a[2] + b[2] + carry[1];
    assign {cout, sum[3]} = a[3] + b[3] + carry[2];
endmodule
