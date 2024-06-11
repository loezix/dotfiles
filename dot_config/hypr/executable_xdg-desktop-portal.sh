#!/bin/sh

killall -e xdg-desktop-portal-hyprland
killall -e xdg-desktop-portal-wlr
killall -e xdg-desktop-portal

/usr/libexec/xdg-desktop-portal-hyprland &
/usr/libexec/xdg-desktop-portal-gtk &
/usr/libexec/xdg-dektop-portal &
