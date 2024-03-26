module rtl_16bit_adder(
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout
);
    // Internal variables to generate carry
    wire [15:0] carry;  // Carry for each bit

    // Generate sum and carry for each bit
    assign {carry[0], sum[0]} = a[0] + b[0] + cin;
    genvar i;
    generate
        for (i = 1; i < 16; i = i + 1) begin : adder_loop
            assign {carry[i], sum[i]} = a[i] + b[i] + carry[i-1];
        end
    endgenerate

    // Output the final carry
    assign cout = carry[15];
endmodule
