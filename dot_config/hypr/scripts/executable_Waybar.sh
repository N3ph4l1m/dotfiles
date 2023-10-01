#!/bin/bash

CONFIG="$HOME/.config/hypr/waybar/config"
STYLE="$HOME/.config/hypr/waybar/style.css"

if [[ ! $(pidof waybar) ]]; then
	waybar --bar main-bar --log-level debug --config ${CONFIG} --style ${STYLE}
fi
