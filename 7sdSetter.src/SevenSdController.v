////////////////////////////////////////////////////////////////////////////////
// File: SevenSdController.v
// Author: BlackIsDevin (https://github.com/BlackIsDevin)
// Origin Location: https://github.com/BlackIsDevin/MimasA7-7SD-Tester/blob/master/7sdSetter.src/SevenSdController.v
//
// Creation Date: 3/6/2021
// Current Revision Date:‏‎ 3/11/2021
// Target Devices: Mimas A7 Revision V3 Development Board 
// Description: Top Module, implements a simple circuit for the Mimas A7R3
//     DevBoard that allows the user to modify the output of the seven
//     segment display using the onboard DIP switches and buttons. Use the
//     dip switches to set the desired output, and then push the top, left,
//     botton, and right buttons to set the 1st, 2nd, 3rd, and 4th digit of
//     the seven segment display respectively. Use the reset button to set
//     all of the digits to the default state.
//
// Dependencies:
//     ButtonDebouncer.v   used for button debouncing
//     SevenSDSignalGen.v  used for generating seven seg display signals
// Revision: 1.2 - Added reset/clear button
////////////////////////////////////////////////////////////////////////////////
module SevenSdController(
    input clk,
    input [7:0] dips,
    input btnUp,
    input btnDown,
    input btnLeft,
    input btnRight,
    input btnReset,

    output [7:0] displayOut,
    output [3:0] enableOut,
    output [7:0] leds 
);

    reg [31:0] value; // value to output
    SevenSdSignalGen ssdSignalGen(clk, value, displayOut, enableOut);

    wire [7:0] alignedDips = {dips[4:2], dips[7], dips[1:0], dips[5], dips[6]};
    assign leds = ~dips;

    wire btnUpPulse;
    wire btnDownPulse;
    wire btnLeftPulse;
    wire btnRightPulse;
    wire btnResetPulse;
    
    ButtonDebouncer btnUpDebouncer(.clk(clk), .buttonState(btnUp), .debouncedPosedgePulse(btnUpPulse));
    ButtonDebouncer btnDownDebouncer(.clk(clk), .buttonState(btnDown), .debouncedPosedgePulse(btnDownPulse));
    ButtonDebouncer btnLeftDebouncer(.clk(clk), .buttonState(btnLeft), .debouncedPosedgePulse(btnLeftPulse));
    ButtonDebouncer btnRightDebouncer(.clk(clk), .buttonState(btnRight), .debouncedPosedgePulse(btnRightPulse));
    ButtonDebouncer btnResetDebouncer(.clk(clk), .buttonState(btnReset), .debouncedNegedgePulse(btnResetPulse));
    
    initial begin
        // this output equates to "hi;)"
        value = 32'b01111111111001111001001101011100;
    end

    always @(posedge clk) begin
        if (btnResetPulse) // if pressed, set all digits to initial state
            value <= 32'b01111111111001111001001101011100;

        if (btnUpPulse) // if pressed, append 1st digit
            value <= {value[31:8], alignedDips};

        if (btnLeftPulse) // if pressed, append 2nd digit
            value <= {alignedDips, value[23:0]};

        if (btnDownPulse) // if pressed, append 3rd digit
            value <= {value[31:24], alignedDips, value[15:0]};

        if (btnRightPulse) // if pressed, append 4th digit
            value <= {value[31:16], alignedDips, value[7:0]}; 

    end

endmodule