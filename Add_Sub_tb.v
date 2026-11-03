module Add_Sub_tb;
    reg [3:0] a, b;
    reg m;
    wire [4:0] c;
    Add_Sub uut (a, b, m, c);
    initial begin
        $dumpfile("Add_Sub.vcd");
        $dumpvars(0, Add_Sub_tb);
        $monitor("t=%0t m=%b a=%d b=%d c=%b (%0d)", $time, m, a, b, c, c);
        m=0; a=4'd5;  b=4'd3;  #10;
        m=0; a=4'd9;  b=4'd7;  #10;
        m=0; a=4'd15; b=4'd15; #10;
        m=1; a=4'd9;  b=4'd4;  #10;
        m=1; a=4'd7;  b=4'd7;  #10;
        m=1; a=4'd3;  b=4'd5;  #10;   // negative: MSB = 1
        $finish;
    end
endmodule
