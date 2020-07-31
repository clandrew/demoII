// SoundTiming.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include <iostream>
#include <assert.h>


int main()
{
    /*
    TONE						            CLOCK
    A6 07		    TONE	LDX $07			3
    A4 06		    DUR	LDY $06			    3
    AD 30 C0		LDA CHIRP		        4
    88		        PCH	DEY			        2
    D0 FD			BNE PCH			        Branch taken: 3. Not taken: 2
    CA			    DEX			            2
    D0 F5			BNE DUR			        Branch taken: 3. Not taken: 2
    60  	        RTS			            6

    Example of "Tone" usage. All the callers of TONE have the same overhead so not worth worrying about too much.

    A9 BC           LDA #188                2
    85 06           STA $06                 3
    A9 6A           LDA #106                2
    85 07           STA $07                 3
    20 26 66        JSR TONE                6
    60              RTS                     6

    */

    // The idea here is to standardize all the note lengths around note 138 which I initially had set to duration 144 arbitrarily. 
    // I chose 138 because it falls in the middle of the range of notes needed.

    /*
    Working through the above we can determine that the number of clock cycles can be expressed as

    clk = 0
    clk += dur * 3;
    clk += dur * 4;
    clk += pch * dur * 2;
    clk += (pch * dur * 3) - (dur * 3);
    clk += dur * 2;
    clk += dur * 2;
    clk += (dur * 3) - 3;
    clk += 2;

    which simplifies down to

    clk = dur * (11 + 5 * pch) - 1;

    To solve for dur, we have

    clk + 1 = dur * (11 + 5 * pch)

    dur = (clk + 1) / (11 + 5 * pch)

    */

    int standardPitch = 138;
    int standardDuration = 144;
    int clk = standardDuration * (11 + 5 * standardPitch) - 1;

    int pitches[] = { 188, 168, 148, 124, 112, 94 };
        
    for (int i = 0; i < _countof(pitches); ++i)
    {
        float durationF = float(clk + 1) / float(11 + 5 * pitches[i]);
        int duration = round(durationF);
        std::cout << " Duration for " << pitches[i] << ": " << duration << "\n";
    }
}
