#!/bin/bash

echo "Starting Coordinate Finder..."
echo "Tap anywhere on your device screen to see its coordinates."
echo "Press Ctrl+C when you are finished."
echo ""

# Continuously listen for touch events and process them.
# The 'awk' script looks for a pair of X and Y touch events,
# converts their hexadecimal values to decimal, and prints them.
adb shell getevent -l | awk '
    /ABS_MT_POSITION_X/ { x = $NF }
    /ABS_MT_POSITION_Y/ {
        y = $NF;
        x_dec = sprintf("%d", strtonum("0x" x));
        y_dec = sprintf("%d", strtonum("0x" y));
        printf "Tap detected at: x=%-5d y=%-5d\n", x_dec, y_dec;
        fflush(); # Ensure the output is printed immediately
    }
'
