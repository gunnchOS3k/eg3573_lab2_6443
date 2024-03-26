module rtl_4bit_adder_tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    // Instantiate the module
    rtl_4bit_adder uut(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        // Test vectors
        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        a = 4'b0001; b = 4'b0010; cin = 0; #10;
        a = 4'b0101; b = 4'b0011; cin = 1; #10;
        a = 4'b1111; b = 4'b1111; cin = 0; #10;
        a = 4'b1010; b = 4'b0101; cin = 1; #10;

        // Finish the simulation
        $finish;
    end

    initial begin
        $monitor("Time=%t | a=%b | b=%b | cin=%b | sum=%b | cout=%b", $time, a, b, cin, sum, cout);
    end
endmodule
