#!/bin/bash

[ -f "$1" ] && cp "$1" ~/wall/wallpaper.png && notify-send -i "$HOME/.wall/wallpaper.png" "Wallpaper changed."


[ -d "$1" ] && mv "$(find "$1"/*.{jpg,jpeg,png} -type f | shuf -n 1)" ~/wall/wallpaper.png && notify-send -i "$HOME/wall/wallpaper.png" "Random wallpaper  choosen."

feh --bg-scale ~/wall/wallpaper.png
