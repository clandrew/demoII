// SoundTiming.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include <iostream>
#include <assert.h>

int MeasureClockCycles(int pitch, int duration)
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

    int cycleCount = 0;

    int dur = duration;
    int pch = pitch;
    int est = 0;
    est += dur * 3;
    est += dur * 4;
    est += pch * dur * 2;
    est += (pch * dur * 3) - (dur * 3);
    est += dur * 2;
    est += dur * 2;
    est += (dur * 3) - 3;
    est += 2;

    return est;

}

int FindRecommendedNoteDuration(int pitch, int targetCycleCount)
{
    // Target cycle count, calibrated around PITCH=138, DURATION=144, is: 100814

    // Brute force for DURATION of the other notes to get the same cycle count.
    int smallestDelta = 100000;
    int bestDuration = 0;

    for (int i = 1; i < 255; ++i)
    {
        int cycleCount = MeasureClockCycles(pitch, i);

        int delta = abs(cycleCount - targetCycleCount);

        if (delta < smallestDelta)
        {
            smallestDelta = delta;
            bestDuration = i;
        }
    }
    return bestDuration;
}

int main()
{
    int pch = 138;
    int dur = 144;

    int targetCycleCount = MeasureClockCycles(pch, dur);

    int pitches[] = { 188, 168, 148, 124, 112, 94 };
        
    for (int i = 0; i < _countof(pitches); ++i)
    {
        int duration = FindRecommendedNoteDuration(pitches[i], targetCycleCount);
        std::cout << " Duration for " << pitches[i] << ": " << duration << "\n";
    }
}
