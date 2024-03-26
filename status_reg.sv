module status_reg(
    input clk,
    input reset,
    input zero_in, // Zero flag input
    input carry_in, // Carry flag input
    input overflow_in, // Overflow flag input
    input sign_in, // Sign flag input
    output reg zero, // Zero flag output
    output reg carry, // Carry flag output
    output reg overflow, // Overflow flag output
    output reg sign // Sign flag output
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            zero <= 0;
            carry <= 0;
            overflow <= 0;
            sign <= 0;
        end else begin
            zero <= zero_in;
            carry <= carry_in;
            overflow <= overflow_in;
            sign <= sign_in;
        end
    end
endmodule
