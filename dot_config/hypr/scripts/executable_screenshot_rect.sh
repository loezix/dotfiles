#!/bin/sh
grim -g "$(slurp -w 2 -c '#cba6f7')" - | wl-copy --type "image/png"
wl-paste -n > ~/Pictures/Screenshots/screenshot_$(date -Is).png 
