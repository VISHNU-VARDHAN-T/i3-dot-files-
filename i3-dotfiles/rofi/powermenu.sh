#!/bin/bash

chosen=$(printf "Shutdown\nReboot\nLogout\nLock" | rofi -dmenu -i -p "Power")

case "$chosen" in
    Shutdown) shutdown now ;;
    Reboot) reboot ;;
    Logout) i3-msg exit ;;
    Lock) i3lock ;;
esac
