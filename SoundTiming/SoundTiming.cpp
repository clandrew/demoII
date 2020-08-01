// SoundTiming.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include "pch.h"
#include <iostream>

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
    int y = 0;
    int x = 0;

    // TONE	LDX $07
    x = duration;

DUR:
    // LDX $06
    y = pitch;
    cycleCount += 3;

    // LDA CHIRP
    cycleCount += 4;

PCH:
    // DEY
    y--;
    cycleCount += 2;

    // BNE PCH
    if (y > 0)
    {
        cycleCount += 3;
        goto PCH;
    }
    else
    {
        cycleCount += 2;
    }

    //DEX
    x--;
    cycleCount += 2;

    // BNE DUR
    if (x > 0)
    {
        cycleCount += 3;
        goto DUR;
    }
    else
    {
        cycleCount += 2;
    }

    return cycleCount;

}

int FindRecommendedNoteDuration(int pitch, int targetCycleCount)
{
    // Target cycle count, calibrated around PITCH=138, DURATION=144, is: 100814

    // Brute force for DURATION of the other notes to get the same cycle count.
    int smallestDelta = 100000;
    int bestDuration = 0;

    for (int i = 0; i < 255; ++i)
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
    int standardPitch = 138;
    int standardPitchDuration = 144;

    int targetCycleCount = MeasureClockCycles(standardPitch, standardPitchDuration);

    int pitches[] = { 188, 168, 148, 124, 112, 94 };

    for (int i = 0; i < _countof(pitches); ++i)
    {
        int duration = FindRecommendedNoteDuration(pitches[i], targetCycleCount);
        std::cout << " Duration for " << pitches[i] << ": " << duration << "\n";
    }
}
