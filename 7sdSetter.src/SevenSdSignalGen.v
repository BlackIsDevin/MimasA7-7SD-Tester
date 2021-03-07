module SevenSdSignalGen(
    input clk,
    input [31:0] signals,

    output reg [7:0] displayOut,
    output reg [3:0] enableOut
);

    reg [1:0] enableCounter;
    reg [17:0] accessCounter;

    initial begin
        displayOut = 8'b11111111;
        enableOut = 4'b1111;
        accessCounter = 0;
    end

    always @(posedge clk) begin
        accessCounter <= accessCounter + 1;
        if(accessCounter == 0)
        begin
            enableCounter <= enableCounter + 1;
            case(enableCounter)
                2'b00: begin
                    enableOut <= 4'b0111;
                    activeValue <= signals[7:0];
                end
                2'b01: begin
                    enableOut <= 4'b1110;
                    activeValue <= signals[15:8];
                end
                2'b10: begin
                    enableOut <= 4'b1101;
                    activeValue <= value[23:16];
                end
                2'b11: begin
                    enableOut <= 4'b1011;
                    activeValue <= value[31:24];
                end
            endcase
        end
    end

    

endmodule