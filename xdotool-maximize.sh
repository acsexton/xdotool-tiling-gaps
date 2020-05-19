#!/bin/bash

# Maximize the current focused window with gaps

windowid="$(xdotool getwindowfocus)"
windowclass=$(xprop -id `xdotool getactivewindow` | awk '/WM_CLASS/{print $4}')
iridiumclass='"Iridium-browser"'
if [ $windowclass = $iridiumclass ]; then
    xdotool windowsize ${windowid} 98% 95%
    xdotool windowmove ${windowid} 20 37
else
    xdotool windowsize ${windowid} 98% 92%
    xdotool windowmove ${windowid} 20 37
fi
