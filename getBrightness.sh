#!/bin/bash
sleep 0.2
# Get the brightness percentage:
MAX_BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/max_brightness);
BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/actual_brightness);
PCT=$(echo $BRIGHTNESS $MAX_BRIGHTNESS  | awk '{printf "%4.0f\n",($1/$2)*100}')
notify-send `echo BRIGHTNESS: $PCT `
