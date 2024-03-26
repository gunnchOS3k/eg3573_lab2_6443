module mux32(
    input [31:0] in,  // 32 1-bit inputs combined into a single 32-bit vector
    input [4:0] select, // 5-bit select signal
    output out // 1-bit output
);
    assign out = in[select]; // Select one of the 32 inputs based on the select signal
endmodule
