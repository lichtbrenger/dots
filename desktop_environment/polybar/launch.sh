#!/bin/bash

killall -q polybar
# polybar --config=/etc/polybar/config.ini > /tmp/polybar.log 2>&1 & disown
polybar --config=$HOME/dotfiles/desktop_environment/polybar/config.ini > /tmp/polybar.log 2>&1 & disown
