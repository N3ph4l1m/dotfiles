#!/bin/bash

if grep open /proc/acpi/button/lid/LID0/state; then
    hyprctl keyword monitor "eDP-1,2256x1504@59,3904x720,1.5"
else
    if [[ `hyprctl monitors | grep "Monitor" | wc -l` != 1 ]]; then
        hyprctl keyword monitor "eDP-1, disable"
    fi
fi
