#!/bin/bash

# Define the menu options
entries="⇠ Logout\n⏾ Sleep\n⭮ Reboot\n⏻ Shutdown"

# Show menu and get user selection
selected=$(echo -e $entries | wofi --dmenu --cache-file=/dev/null --prompt="Power Menu" --width=400 --height=200 --style=$HOME/.config/wofi/style.css)

# Execute the selected option
case $selected in
    "⇠  Logout")
        swaymsg exit
        ;;
    "⏾  Sleep")
        systemctl suspend
        ;;
    "⭮  Reboot")
        systemctl reboot
        ;;
    "⏻  Shutdown")
        systemctl poweroff
        ;;
esac
