#!/bin/sh
killall waybar
waybar -c $HOME/.config/waybar/config -s $HOME/.config/waybar/style.css &
