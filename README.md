# Tiling with Gaps
This is a collection of scripts which uses xdotool to allow tiling-style (with gaps) window placement in traditional WMs on Linux machines.

Once they've been added to your WM's keybinds, each puts windows in a part of your screen and resizes them so they have a little room between each other and the sides of your monitor.

Each script is named either `maximize` for, y'know, maximizing or describes the half/quarter of the screen which it will tile a focused window to.

## Limitations
These scripts are designed for very general use when I'm in a WM that doesn't feature tiling with gaps. (For that, I really like [i3-gaps](https://github.com/Airblader/i3))

They're currently explicitly written for a 1920x1080 monitor and window decorations (especially in browsers) tend to tile the size of some windows a little short. 

This issue is addressed with hard coding for Iridium browser, but feel free to make a pull request if you'd like to make them more general either in terms of resolution or application decor!

## Use
* Ensure `xdotool` is installed on your machine
* `$ git clone` this repo
* From the cloned folder, make the scripts executable with `$ chmod +x xdotool-*`
* Open your WM's keybind tool (or script):
   * Create a new keybind (name it appropriately)
   * Have the keybind execute `<repo>/xdotool-tile-<direction>.sh`

# FAQ

> Why gaps? They waste screen space.

I like to let my wallpapers breathe -- they're usually landscapes. Makes me feel cozier.

> Why this and not something more robust?

[Other](https://github.com/gTile/gTile) [extensions](https://github.com/pkkid/pygrid) were way more than I needed. I just wanted windows to go where I wanted them and some WMs don't feature gaps/margins (openbox and xfwm do, if you're curious).

> Wait... are some of the gaps bigger than others?

So, admittedly, it's all magic numbers from eyeballing proportions on a laptop in a dark room at 2am. Window decorations were throwing off hard calculations (especially when trying to keep gaps), and aren't always consistent between programs. I got them Good Enough&trade; and moved on to other projects. Again, pull requests would absolutely be appreciated!
