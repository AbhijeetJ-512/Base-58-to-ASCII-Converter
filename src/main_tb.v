`timescale 1ns / 1ps

module main_tb;
    // Inputs
    reg [7:0] base10_num;

    // Outputs
    wire [7:0] output_1;
    wire [7:0] output_2;
    wire [7:0] output_3;

    // Instantiate the Unit Under Test (UUT)
    main uut (
        .base10_num(base10_num),
        .output_1(output_1),
        .output_2(output_2),
        .output_3(output_3)
    );

    initial begin
        // Enable VCD file generation
        $dumpfile("simulations/simulation.vcd");
        $dumpvars(0, main_tb);

        // Apply test cases
        $display("Time\tInput\tOutput_1\tOutput_2\tOutput_3");
        base10_num = 123; #100; $display("%0t\t%0d\t%0c\t%0c\t%0c", $time, base10_num, output_1, output_2, output_3);
        base10_num = 128; #100; $display("%0t\t%0d\t%0c\t%0c\t%0c", $time, base10_num, output_1, output_2, output_3);
        base10_num = 245; #100; $display("%0t\t%0d\t%0c\t%0c\t%0c", $time, base10_num, output_1, output_2, output_3);
        base10_num = 12;  #100; $display("%0t\t%0d\t%0c\t%0c\t%0c", $time, base10_num, output_1, output_2, output_3);
        $finish;
    end
endmodule
