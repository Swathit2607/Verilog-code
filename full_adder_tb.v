module full_adder_tb;
    reg A, B, Cin;
    wire Sum, Cout;
    full_adder uut (A, B, Cin, Sum, Cout);
    integer i;
    initial begin
        $dumpfile("full_adder.vcd");
        $dumpvars(0, full_adder_tb);
        $monitor("t=%0t A=%b B=%b Cin=%b Sum=%b Cout=%b", $time, A, B, Cin, Sum, Cout);
        for (i = 0; i < 8; i = i + 1) begin
            {A, B, Cin} = i; #10;
        end
        $finish;
    end
endmodule
