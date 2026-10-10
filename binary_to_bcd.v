// binary_to_bcd.v
// A combinational 4-bit Binary to BCD Converter module.
// Converts values from 4'b0000 (0) to 4'b1111 (15) into separated Tens and Ones columns.

module binary_to_bcd (
    input  [3:0] binary_in, // 4-bit incoming raw binary value (0 to 15)
    output reg [3:0] bcd_tens,  // 4-bit BCD output representing the Tens place (0 or 1)
    output reg [3:0] bcd_ones   // 4-bit BCD output representing the Ones place (0 to 9)
);

    always @(*) begin
        // Combinational conversion logic based on binary value thresholds
        if (binary_in < 4'd10) begin
            bcd_tens = 4'd0;
            bcd_ones = binary_in;
        end else begin
            bcd_tens = 4'd1;
            bcd_ones = binary_in - 4'd10; // Subtract out the tens column baseline
        end
    end

endmodule
