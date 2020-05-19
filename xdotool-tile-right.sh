#!/bin/bash

# Tile window to the right side of the screen

windowid="$(xdotool getwindowfocus)"
windowclass=$(xprop -id `xdotool getactivewindow` | awk '/WM_CLASS/{print $4}')
iridiumclass='"Iridium-browser"'
if [ $windowclass = $iridiumclass ]; then
    xdotool windowsize ${windowid} 48% 95%
    xdotool windowmove ${windowid} 984 37
else
    xdotool windowsize ${windowid} 48% 92%
    xdotool windowmove ${windowid} 984 37
fi
