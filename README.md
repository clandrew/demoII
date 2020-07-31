# Demo][

## What is it?
It is definitely a computer program. A program that runs on the computer. Specifically an Apple II computer. A bunch of ones and zeroes. You could think of it as a port of Crysis for the Apple II computer family.

## Release
Find [here](https://github.com/clandrew/demoII/releases) a binary file which can be copied to a compatible Apple II disk. 

The file suffix "#066000" is meant to indicate that it the Aux type file attribute should be kept as 066000 when copied to e.g., a ProDOS compatible environment with [Ciderpress](https://a2ciderpress.com). Ciderpress understands suffixes of this format and should pick up the attribute automatically, but you might need to set it manually otherwise.

## Build
This is assembled using Merlin Pro assembler version 2.43. The source is all in one file, T.GR.asm.
For example, from the main screen, you
* Press 'D' as needed to switch to the disk drive where the file is stored
* Press 'R' to choose the 'Read text file' menu option. This will take a few seconds.
* Press 'E' to enter the editor.
* Type 'ASM' and hit enter. It will output the assembled result.
* Type 'Q' and hit enter to return to the menu. Press 'O' to save the resulting binary. You may also want to save the source file using 'S'.
* Type 'Q' to quite back to Basic, assuming Basic environment is available.
* Run the program using BRUN GR (or replace 'GR' with the name you gave to the object file).

![Example image](https://raw.githubusercontent.com/clandrew/gfx2/master/Images/Fanart.png "Example image")

This was borne out of a personal desire to learn more about programming 6502-on-Apple II. Ages ago I wrote Logo and Basic code for that platform but never in 6502 directly. This was made in a few days and tested using an emulator. I gave my disk image to a friend to run on real hardware. I expected this would shake out some inconsistencies between running on hardware and running on emulator, but it worked as expected the first time.
