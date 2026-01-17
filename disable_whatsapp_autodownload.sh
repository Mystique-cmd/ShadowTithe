#!/bin/bash
#
# This script disables all media auto-downloads in WhatsApp.
#
# IMPORTANT: You must replace the placeholder <x> and <y> coordinates
# with the correct values for your specific device.
# Use the "Pointer location" feature in Android's Developer Options
# to find the coordinates for each tap.
#

echo "Starting WhatsApp..."
adb shell am start -n com.whatsapp/com.whatsapp.HomeActivity
sleep 2

# 1. Tap the three-dots menu in the top right corner
echo "Opening menu..."
adb shell input tap <x> <y>
sleep 1

# 2. Tap "Settings"
echo "Opening Settings..."
adb shell input tap <x> <y>
sleep 1

# 3. Tap "Storage and data"
echo "Opening Storage and data..."
adb shell input tap <x> <y>
sleep 1

# --- Disable auto-download for Mobile Data ---
echo "Disabling for Mobile Data..."
# 4. Tap "When using mobile data"
adb shell input tap <x> <y>
sleep 1

# 5. Uncheck all boxes (Photos, Audio, Videos, Documents)
#    You will need to find the coordinates for each checkbox.
#    If a box is already unchecked, tapping it will check it.
#    This script assumes they are all checked to start with.
adb shell input tap <photo_x> <photo_y>
adb shell input tap <audio_x> <audio_y>
adb shell input tap <video_x> <video_y>
adb shell input tap <docs_x> <docs_y>
sleep 1

# 6. Tap "OK"
adb shell input tap <ok_x> <ok_y>
sleep 1


# --- Disable auto-download for Wi-Fi ---
echo "Disabling for Wi-Fi..."
# 7. Tap "When connected on Wi-Fi"
adb shell input tap <x> <y>
sleep 1

# 8. Uncheck all boxes
adb shell input tap <photo_x> <photo_y>
adb shell input tap <audio_x> <audio_y>
adb shell input tap <video_x> <video_y>
adb shell input tap <docs_x> <docs_y>
sleep 1

# 9. Tap "OK"
adb shell input tap <ok_x> <ok_y>
sleep 1


# --- Disable auto-download for Roaming ---
echo "Disabling for Roaming..."
# 10. Tap "When roaming"
adb shell input tap <x> <y>
sleep 1

# 11. Uncheck all boxes
adb shell input tap <photo_x> <photo_y>
adb shell input tap <audio_x> <audio_y>
adb shell input tap <video_x> <video_y>
adb shell input tap <docs_x> <docs_y>
sleep 1

# 12. Tap "OK"
adb shell input tap <ok_x> <ok_y>
sleep 1

echo "WhatsApp auto-download has been disabled."
echo "Going back to home screen..."
adb shell input keyevent 3

exit 0
