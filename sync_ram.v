module sync_ram #(parameter DATA_WIDTH = 8, ADDR_WIDTH = 4)(
    input clk,                                // Clock
    input we,                                 // Write Enable
    input [ADDR_WIDTH-1:0] addr,              // Address input
    input [DATA_WIDTH-1:0] din,               // Data input (write)
    output reg [DATA_WIDTH-1:0] dout          // Data output (read)
);

    // Declare RAM array
    reg [DATA_WIDTH-1:0] ram [0:(1<<ADDR_WIDTH)-1];

    always @(posedge clk) begin
        if (we)
            ram[addr] <= din;                 // Write operation
        dout <= ram[addr];                    // Read operation
    end
endmodule
