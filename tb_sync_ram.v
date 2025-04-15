`timescale 1ns/1ps
module tb_sync_ram;

    reg clk;
    reg we;
    reg [3:0] addr;
    reg [7:0] din;
    wire [7:0] dout;

    // Instantiate the RAM module
    sync_ram uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    // Generate clock: 10ns period
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("sync_ram.vcd");
        $dumpvars(0, tb_sync_ram);

        // Initialize values
        we = 1;

        // Write data
        addr = 4'b0001; din = 8'hA5; #10;
        addr = 4'b0010; din = 8'h5A; #10;
        addr = 4'b0011; din = 8'h3C; #10;

        // Disable write and read values
        we = 0;
        addr = 4'b0001; #10;
        addr = 4'b0010; #10;
        addr = 4'b0011; #10;

        $finish;
    end
endmodule
