#!/bin/bash
a=xbacklight -get | awk '{printf "%.0f",$1}'
notify-send "Brightness: "+$a
