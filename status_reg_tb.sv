module status_reg_tb;
    reg clk, reset;
    reg zero_in, carry_in, overflow_in, sign_in;
    wire zero, carry, overflow, sign;

    status_reg uut(
        .clk(clk),
        .reset(reset),
        .zero_in(zero_in),
        .carry_in(carry_in),
        .overflow_in(overflow_in),
        .sign_in(sign_in),
        .zero(zero),
        .carry(carry),
        .overflow(overflow),
        .sign(sign)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk; // Clock generation
    end

    initial begin
        reset = 1; #20;
        reset = 0; // Release reset
        
        // Test scenario
        zero_in = 0; carry_in = 1; overflow_in = 0; sign_in = 1; #20;
        zero_in = 1; carry_in = 0; overflow_in = 1; sign_in = 0; #20;
        
        $finish;
    end
    
    initial begin
        $monitor("Time=%t, Zero=%b, Carry=%b, Overflow=%b, Sign=%b", $time, zero, carry, overflow, sign);
    end
endmodule
