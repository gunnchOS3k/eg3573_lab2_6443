module mux32_tb;
    reg [31:0] in;
    reg [4:0] select;
    wire out;

    // Instantiate the mux32
    mux32 uut(
        .in(in),
        .select(select),
        .out(out)
    );

    initial begin
        // Test case 1
        in = 32'b10101010101010101010101010101010; // Example input pattern
        select = 5'd0; // Select first input
        #10; // Wait for 10 units of time

        // Test case 2
        select = 5'd31; // Select last input
        #10; // Wait for 10 units of time

        // Continue with more test cases as needed
        // Each test case changes the 'select' to check different inputs
    end

    initial begin
        $monitor("Time=%t | Select=%d | Output=%b", $time, select, out);
    end
endmodule
