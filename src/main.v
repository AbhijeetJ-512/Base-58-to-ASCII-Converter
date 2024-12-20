`timescale 1ns / 1ps
module main(
    input [7:0] base10_num, // 8-bit input
    output reg [7:0] output_1, // 8-bit output
    output reg [7:0] output_2, // 8-bit output
    output reg [7:0] output_3  // 8-bit output
);
    // Internal registers
    reg [7:0] a1; // Intermediate result register
    reg [7:0] a2; // Remainder register

    always @(base10_num) begin
        // Initialize registers
        a1 = base10_num; 
        output_1 = 0;
        output_2 = 0;
        output_3 = 0;

        // Compute first remainder
        a2 = a1 % 8'd58;
        output_1 = a2;
        if (output_1 < 10) begin
            output_1 = output_1 + 8'd48; // ASCII for '0'
        end else if (output_1 < 36) begin
            output_1 = output_1 + 8'd55; // ASCII for 'A'-10
        end else if (output_1 < 58) begin
            output_1 = output_1 + 8'd61; // ASCII for 'a'-36
        end

        // Compute second remainder
        a1 = a1 / 8'd58;
        a2 = a1 % 8'd58;
        output_2 = a2;
        if (output_2 < 10) begin
            output_2 = output_2 + 8'd48; // ASCII for '0'
        end else if (output_2 < 36) begin
            output_2 = output_2 + 8'd55; // ASCII for 'A'-10
        end else if (output_2 < 58) begin
            output_2 = output_2 + 8'd61; // ASCII for 'a'-36
        end

        // Compute third remainder
        a1 = a1 / 8'd58;
        a2 = a1 % 8'd58;
        output_3 = a2;
        if (output_3 < 10) begin
            output_3 = output_3 + 8'd48; // ASCII for '0'
        end else if (output_3 < 36) begin
            output_3 = output_3 + 8'd55; // ASCII for 'A'-10
        end else if (output_3 < 58) begin
            output_3 = output_3 + 8'd61; // ASCII for 'a'-36
        end
    end
endmodule
