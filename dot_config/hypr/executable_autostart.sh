#!/bin/sh

~/.config/hypr/xdg-desktop-portal.sh &
mako &
gentoo-pipewire-launcher restart &
setxkbmap -model apple -layout us -variant alt-intl &
~/.config/waybar/waybar_start.sh &
hyprpaper &

