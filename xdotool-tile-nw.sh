#!/bin/bash

# Tile window to the northwest quarter of screen 

windowid="$(xdotool getwindowfocus)"
windowclass=$(xprop -id `xdotool getactivewindow` | awk '/WM_CLASS/{print $4}')
iridiumclass='"Iridium-browser"'
if [ $windowclass = $iridiumclass ]; then
    xdotool windowsize ${windowid} 49% 95%
    xdotool windowmove ${windowid} 20 37
else
    xdotool windowsize ${windowid} 49% 44%
    xdotool windowmove ${windowid} 20 37
fi
