// binary_to_bcd_tb.v
// Testbench to verify data conversion boundaries across edge numbers

`timescale 1ns / 1ps

module binary_to_bcd_tb;

    reg [3:0] binary_in;
    wire [3:0] bcd_tens;
    wire [3:0] bcd_ones;

    // Instantiate the Unit Under Test (UUT)
    binary_to_bcd uut (
        .binary_in(binary_in),
        .bcd_tens(bcd_tens),
        .bcd_ones(bcd_ones)
    );

    initial begin
        // Monitor conversion variables in the console logs
        $monitor("Time=%0dns | Binary In=%d | BCD Output = [Tens: %d , Ones: %d]", 
                 $time, binary_in, bcd_tens, bcd_ones);

        // Test Case 1: Single digit boundary (Value = 7)
        binary_in = 4'd7; #10;
        
        // Test Case 2: Lower double-digit value (Value = 10)
        binary_in = 4'd10; #10;

        // Test Case 3: Mid double-digit value (Value = 13)
        binary_in = 4'd13; #10;

        // Test Case 4: Maximum 4-bit value limit (Value = 15)
        binary_in = 4'd15; #10;

        $finish;
    end
      
endmodule
