module SevenSdController(
    input clk,
    input [7:0] dips,
    input btnUp,
    input btnDown,
    input btnLeft,
    input btnRight,

    output [7:0] displayOut,
    output [3:0] enableOut,
    output [7:0] leds 
);

    reg [31:0] value; // value to output
    SevenSdSignalGen ssdSignalGen(clk, value, displayOut, enableOut);

    wire [7:0] alignedDips = {dips[4:2], dips[7], dips[1:0], dips[5], dips[6]};
    assign leds = ~dips;
    
    reg [24:0] btnUpDebouncer;
    reg [24:0] btnDownDebouncer;
    reg [24:0] btnLeftDebouncer;
    reg [24:0] btnRightDebouncer;

    reg btnUpState;
    reg btnDownState;
    reg btnLeftState;
    reg btnRightState;
    
    always @(posedge clk) begin
        // increment debouncers
        if (|btnUpDebouncer) btnUpDebouncer <= btnUpDebouncer + 1;
        if (|btnDownDebouncer) btnDownDebouncer <= btnDownDebouncer + 1;
        if (|btnLeftDebouncer) btnLeftDebouncer <= btnLeftDebouncer + 1;
        if (|btnRightDebouncer) btnRightDebouncer <= btnRightDebouncer + 1;

        if (btnUp != btnUpState && ~|btnUpDebouncer)
        begin
            btnUpDebouncer <= btnUpDebouncer + 1;
            btnUpState <= btnUp;
            if (!btnUpState) // if pressed, append left digit
                value <= {value[31:8], alignedDips};
        end

        if (btnLeft != btnLeftState && ~|btnLeftDebouncer)
        begin
            btnLeftDebouncer <= btnLeftDebouncer + 1;
            btnLeftState <= btnLeft;
            if (!btnLeftState) // if pressed, append left digit
                value <= {value[31:16], alignedDips, value[7:0]};
        end

        if (btnDown != btnDownState && ~|btnDownDebouncer)
        begin
            btnDownDebouncer <= btnDownDebouncer + 1;
            btnDownState <= btnDown;
            if (!btnDownState) // if pressed, append left digit
                value <= {value[31:24], alignedDips, value[15:0]};
        end

        if (btnRight != btnRightState && ~|btnRightDebouncer)
        begin
            btnRightDebouncer <= btnRightDebouncer + 1;
            btnRightState <= btnRight;
            if (!btnRightState) // if pressed, append left digit
                value <= {alignedDips, value[23:0]};
        end
        
    end

endmodule