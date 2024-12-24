module up_counter (
    output reg [7:0] out,  // Output of the counter
    input enable,           // Enable for counter
    input clk,              // Clock Input
    input reset             // Reset Input
);

//-------------Code Starts Here-------
always @(posedge clk or posedge reset) begin
    if (reset) begin
        out <= 8'b0;       // Reset the counter to 0
    end else if (enable) begin
        out <= out + 1;    // Increment the counter when enabled
    end
end

endmodule
