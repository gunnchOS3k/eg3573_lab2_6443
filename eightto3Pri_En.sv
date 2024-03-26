module eightto3Pri_En(
    input [7:0] in, // 8-bit input
    output reg [2:0] out, // 3-bit output
    output reg valid // Indicates if the output is valid
);
    always @(*) begin
        valid = |in; // Valid if any input is high
        casez(in)
            8'b1???????: out = 3'b111;
            8'b01??????: out = 3'b110;
            8'b001?????: out = 3'b101;
            8'b0001????: out = 3'b100;
            8'b00001???: out = 3'b011;
            8'b000001??: out = 3'b010;
            8'b0000001?: out = 3'b001;
            8'b00000001: out = 3'b000;
            default: out = 3'bxxx;
        endcase
    end
endmodule
