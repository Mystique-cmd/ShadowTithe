#!/bin/bash
#
# This script enables all media auto-downloads in WhatsApp.
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

# --- Enable auto-download for Mobile Data ---
echo "Enabling for Mobile Data..."
# 4. Tap "When using mobile data"
adb shell input tap <x> <y>
sleep 1

# 5. Check all boxes (Photos, Audio, Videos, Documents)
#    You will need to find the coordinates for each checkbox.
#    This script assumes they are all unchecked to start with.
adb shell input tap <photo_x> <photo_y>
adb shell input tap <audio_x> <audio_y>
adb shell input tap <video_x> <video_y>
adb shell input tap <docs_x> <docs_y>
sleep 1

# 6. Tap "OK"
adb shell input tap <ok_x> <ok_y>
sleep 1


# --- Enable auto-download for Wi-Fi ---
echo "Enabling for Wi-Fi..."
# 7. Tap "When connected on Wi-Fi"
adb shell input tap <x> <y>
sleep 1

# 8. Check all boxes
adb shell input tap <photo_x> <photo_y>
adb shell input tap <audio_x> <audio_y>
adb shell input tap <video_x> <video_y>
adb shell input tap <docs_x> <docs_y>
sleep 1

# 9. Tap "OK"
adb shell input tap <ok_x> <ok_y>
sleep 1


# --- Enable auto-download for Roaming ---
echo "Enabling for Roaming..."
# 10. Tap "When roaming"
adb shell input tap <x> <y>
sleep 1

# 11. Check all boxes
adb shell input tap <photo_x> <photo_y>
adb shell input tap <audio_x> <audio_y>
adb shell input tap <video_x> <video_y>
adb shell input tap <docs_x> <docs_y>
sleep 1

# 12. Tap "OK"
adb shell input tap <ok_x> <ok_y>
sleep 1

echo "WhatsApp auto-download has been enabled."
echo "Going back to home screen..."
adb shell input keyevent 3

exit 0
