#!/usr/bin/env sh

HYPR_UNBINDKEY=~/.config/hypr/.unbindkey
icodir="~/.config/hypr/dunst/icons"

if [ ! -e "$HYPR_UNBINDKEY" ]; then
	mainMod="SUPER"

    hyprctl keyword unbind "$mainMod, 1"
    hyprctl keyword unbind "$mainMod, 2"
    hyprctl keyword unbind "$mainMod, 3"
    hyprctl keyword unbind "$mainMod, 4"
    hyprctl keyword unbind "$mainMod, 5"
    hyprctl keyword unbind "$mainMod, 6"
    hyprctl keyword unbind "$mainMod, 7"
    hyprctl keyword unbind "$mainMod, 8"
    hyprctl keyword unbind "$mainMod, 9"
    hyprctl keyword unbind "$mainMod, tab"

    hyprctl keyword unbind "$mainMod, mouse_down"
    hyprctl keyword unbind "$mainMod, mouse_up"

    hyprctl keyword unbind "$mainMod, W"
    hyprctl keyword unbind "$mainMod SHIFT, W"

    hyprctl keyword unbind "$mainMod, h"
    hyprctl keyword unbind "$mainMod, j"
    hyprctl keyword unbind "$mainMod, k"
    hyprctl keyword unbind "$mainMod, l"
    hyprctl keyword unbind "$mainMod, slash"

    hyprctl keyword unbind "$mainMod SHIFT, h"
    hyprctl keyword unbind "$mainMod SHIFT, j"
    hyprctl keyword unbind "$mainMod SHIFT, k"
    hyprctl keyword unbind "$mainMod SHIFT, l"
    hyprctl keyword unbind "$mainMod SHIFT, slash"

    hyprctl keyword unbind "$mainMod SHIFT, n"
    hyprctl keyword unbind "$mainMod SHIFT, m"
    hyprctl keyword unbind "$mainMod SHIFT, comma"
    hyprctl keyword unbind "$mainMod SHIFT, period"

    hyprctl keyword unbind "$mainMod, semicolon"
    hyprctl keyword unbind "$mainMod SHIFT, f"
    hyprctl keyword unbind "$mainMod CTRL SHIFT, p"

    hyprctl keyword unbind "$mainMod SHIFT, 1"
    hyprctl keyword unbind "$mainMod SHIFT, 2"
    hyprctl keyword unbind "$mainMod SHIFT, 3"
    hyprctl keyword unbind "$mainMod SHIFT, 4"
    hyprctl keyword unbind "$mainMod SHIFT, 5"
    hyprctl keyword unbind "$mainMod SHIFT, 6"
    hyprctl keyword unbind "$mainMod SHIFT, 7"
    hyprctl keyword unbind "$mainMod SHIFT, 8"
    hyprctl keyword unbind "$mainMod SHIFT, 9"

    hyprctl keyword unbind "$mainMod, Q"

    hyprctl keyword unbind "$mainMod, apostrophe"

    hyprctl keyword unbind "$mainMod, P"
    hyprctl keyword unbind "$mainMod SHIFT, P"

    hyprctl keyword unbind "$mainMod SHIFT, Q"
    hyprctl keyword unbind "$mainMod CTRL SHIFT, Q"

    hyprctl keyword unbind "$mainMod, space"
    hyprctl keyword unbind "$mainMod, return"
    hyprctl keyword unbind "$mainMod SHIFT, return"
    hyprctl keyword unbind "$mainMod, i"

    touch $HYPR_UNBINDKEY
    dunstify "Toggle Bind All Key" -a "unbind" -i ${icodir}/keyboard/disable.svg -r 91190 -t 800
else
	hyprctl reload
    rm $HYPR_UNBINDKEY
    dunstify "Toggle Bind All Key" -a "rebind" -i ${icodir}/keyboard/enable.svg -r 91190 -t 800
fi
