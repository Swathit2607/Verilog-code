module half_adder_tb;
    reg A, B;
    wire Sum, Carry;
    half_adder uut (A, B, Sum, Carry);
    integer i;
    initial begin
        $dumpfile("half_adder.vcd");
        $dumpvars(0, half_adder_tb);
        $monitor("t=%0t A=%b B=%b Sum=%b Carry=%b", $time, A, B, Sum, Carry);
        for (i = 0; i < 4; i = i + 1) begin
            {A, B} = i; #10;
        end
        $finish;
    end
endmodule
