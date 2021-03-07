# MimasA7-7SD-Tester
This repo contains a set of modules that allows the user to easily set the output of the seven segment display on the Mimas A7 Revision 3 Development Board.

## Usage
To set the output of a digit, the user specifies the bits they would like to output using the DIP switches.
The user then pushes one of the four buttons on the board to push the values on the DIP switches to a digit on the seven segment display.
The top, left, down, and right buttons correlate to the 1st, 2nd, 3rd, and 4th digit respectively.

## RTL Analysis Circuits 
Circuit of top module SevenSdController

![img](https://cdn.discordapp.com/attachments/601895458453061655/818044549133369384/unknown.png)

Circuit of Button Debouncers

![img](https://cdn.discordapp.com/attachments/601895458453061655/818044700132769802/unknown.png)

Circuit of Signal Generator for seven segment display

![img](https://media.discordapp.net/attachments/601895458453061655/818044887077224478/unknown.png)
