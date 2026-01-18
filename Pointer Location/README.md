# Pointer Location Finder

This script helps you find the X and Y coordinates of any tap on your Android device's screen.

## Description

The `get_tap_coordinates.sh` script uses the Android Debug Bridge (adb) to listen for touch events on your connected Android device. It then prints the decimal X and Y coordinates for each tap detected. This can be useful for developers who need to script interactions with an Android device.

## Prerequisites

Before you can use this script, you must have the following installed and configured:

*   **Android Debug Bridge (`adb`)**: This is a command-line tool that lets you communicate with an Android device. It's part of the Android SDK Platform-Tools. You can download it from the Android developer website.
*   **USB Debugging Enabled**: You must enable USB debugging on your Android device. This option is found in the "Developer options" menu.
*   **Device Connection**: Your Android device must be connected to your computer via a USB cable.

## Usage

1.  **Make the script executable:**
    ```bash
    chmod +x get_tap_coordinates.sh
    ```

2.  **Run the script:**
    ```bash
    ./get_tap_coordinates.sh
    ```

3.  **Tap your screen:**
    Once the script is running, tap anywhere on your device's screen. The coordinates of the tap will be displayed in your terminal.

4.  **Stop the script:**
    Press `Ctrl+C` to stop the script.

## Example Output

```
Starting Coordinate Finder...
Tap anywhere on your device screen to see its coordinates.
Press Ctrl+C when you are finished.

Tap detected at: x=480   y=1234
Tap detected at: x=567   y=890
Tap detected at: x=123   y=456
```
