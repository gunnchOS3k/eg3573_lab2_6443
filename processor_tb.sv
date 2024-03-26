module processor_tb;
    reg clk, reset;
    wire [31:0] pc, alu_result;

    processor uut(
        .clk(clk),
        .reset(reset),
        .pc(pc),
        .alu_result(alu_result)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Generate clock signal
    end

    initial begin
        reset = 1; #10;
        reset = 0; // Release reset
        // Apply test cases
        // Monitor and verify outputs
        #100;
        $finish;
    end
endmodule
