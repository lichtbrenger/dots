#!/bin/sh
# Disable screen blanking
xset s off

# Disable the screen saver
xset s noblank

# Disable Energy Star (DPMS) features
xset -dpms

# Start your window manager or desktop environment
exec i3

