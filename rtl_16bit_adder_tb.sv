module rtl_16bit_adder_tb;
    reg [15:0] a, b;
    reg cin;
    wire [15:0] sum;
    wire cout;

    rtl_16bit_adder adder_instance(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        // Test cases
        a = 16'h0000; b = 16'h0001; cin = 0; #10;
        a = 16'hFFFF; b = 16'h0001; cin = 1; #10;
        a = 16'h1234; b = 16'h8765; cin = 0; #10;
        // Add more test cases as needed

        $finish;
    end

    initial begin
        $monitor("At time %t, a = %h, b = %h, cin = %b, sum = %h, cout = %b",
                 $time, a, b, cin, sum, cout);
    end
endmodule
