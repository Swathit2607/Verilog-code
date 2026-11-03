module logic_gates_tb;
    reg a, b;
    wire y_and, y_or, y_xor;
    and_gate_level u1 (a, b, y_and);
    or_gate_level  u2 (a, b, y_or);
    xor_gate_level u3 (a, b, y_xor);
    integer i;
    initial begin
        $dumpfile("logic_gates.vcd");
        $dumpvars(0, logic_gates_tb);
        $monitor("t=%0t a=%b b=%b AND=%b OR=%b XOR=%b", $time, a, b, y_and, y_or, y_xor);
        for (i = 0; i < 4; i = i + 1) begin
            {a, b} = i; #10;
        end
        $finish;
    end
endmodule
