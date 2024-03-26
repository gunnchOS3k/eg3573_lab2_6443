module eightto3Pri_En_tb;
    reg [7:0] in;
    wire [2:0] out;
    wire valid;

    8to3Pri_En uut(
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin
        in = 8'b00000000; #20;
        in = 8'b00000001; #20;
        in = 8'b00000110; #20;
        in = 8'b01000000; #20;
        in = 8'b10000000; #20;
        in = 8'b11111111; #20;
        $finish;
    end
    
    initial begin
        $monitor("Time=%t, in=%b, out=%b, valid=%b", $time, in, out, valid);
    end
endmodule
