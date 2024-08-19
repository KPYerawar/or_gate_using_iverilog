module testbench;
    reg a, b;
    wire c;

    // Instantiate the OR gate module
    orgate uut (
        .a(a),
        .b(b),
        .c(c)
    );

    initial begin
        // Initialize the VCD file
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        // Test sequence
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        
        $finish;
    end
endmodule
