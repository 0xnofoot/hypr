#!/usr/bin/env sh

mainMod="SUPER"

hyprctl keyword bind "$mainMod, 1, workspace, 1"
hyprctl keyword bind "$mainMod, 2, workspace, 2"
hyprctl keyword bind "$mainMod, 3, workspace, 3"
hyprctl keyword bind "$mainMod, 4, workspace, 4"
hyprctl keyword bind "$mainMod, 5, workspace, 5"
hyprctl keyword bind "$mainMod, 6, workspace, 6"
hyprctl keyword bind "$mainMod, 7, workspace, 7"
hyprctl keyword bind "$mainMod, 8, workspace, 8"
hyprctl keyword bind "$mainMod, 9, workspace, 9"
hyprctl keyword bind "$mainMod, tab, workspace, previous"

hyprctl keyword bind "$mainMod, mouse_down, workspace, e+1"
hyprctl keyword bind "$mainMod, mouse_up, workspace, e-1"

hyprctl keyword bind "$mainMod, W, togglespecialworkspace, magic"
hyprctl keyword bind "$mainMod SHIFT, W, movetoworkspace, special:magic"

hyprctl keyword bind "$mainMod, h, movefocus, l"
hyprctl keyword bind "$mainMod, j, movefocus, d"
hyprctl keyword bind "$mainMod, k, movefocus, u"
hyprctl keyword bind "$mainMod, l, movefocus, r"
hyprctl keyword bind "$mainMod, slash, cyclenext"

hyprctl keyword bind "$mainMod SHIFT, h, swapwindow, l"
hyprctl keyword bind "$mainMod SHIFT, j, swapwindow, d"
hyprctl keyword bind "$mainMod SHIFT, k, swapwindow, u"
hyprctl keyword bind "$mainMod SHIFT, l, swapwindow, r"
hyprctl keyword bind "$mainMod SHIFT, slash, swapnext"

hyprctl keyword bind "$mainMod SHIFT, n, resizeactive, -20 0"
hyprctl keyword bind "$mainMod SHIFT, m, resizeactive, 0 20"
hyprctl keyword bind "$mainMod SHIFT, comma, resizeactive, 0 -20"
hyprctl keyword bind "$mainMod SHIFT, period, resizeactive, 20 0"

hyprctl keyword bind "$mainMod, semicolon, fullscreen"
hyprctl keyword bind "$mainMod SHIFT, f, togglefloating"
hyprctl keyword bind "$mainMod CTRL SHIFT, p, pin"

hyprctl keyword bind "$mainMod SHIFT, 1, movetoworkspace, 1"
hyprctl keyword bind "$mainMod SHIFT, 2, movetoworkspace, 2"
hyprctl keyword bind "$mainMod SHIFT, 3, movetoworkspace, 3"
hyprctl keyword bind "$mainMod SHIFT, 4, movetoworkspace, 4"
hyprctl keyword bind "$mainMod SHIFT, 5, movetoworkspace, 5"
hyprctl keyword bind "$mainMod SHIFT, 6, movetoworkspace, 6"
hyprctl keyword bind "$mainMod SHIFT, 7, movetoworkspace, 7"
hyprctl keyword bind "$mainMod SHIFT, 8, movetoworkspace, 8"
hyprctl keyword bind "$mainMod SHIFT, 9, movetoworkspace, 9"

hyprctl keyword bind "$mainMod, Q, killactive"

hyprctl keyword bind "$mainMod, apostrophe, exec, pkill -x rofi || ~/.config/hypr/hyprland/scripts/cliphist.sh c"

hyprctl keyword bind "$mainMod, P, exec, ~/.config/hypr/hyprland/scripts/screenshot.sh s"
hyprctl keyword bind "$mainMod SHIFT, P, exec, ~/.config/hypr/hyprland/scripts/screenshot.sh sf"

hyprctl keyword bind "$mainMod SHIFT, Q, exec, swaylock"
hyprctl keyword bind "$mainMod CTRL SHIFT, Q, exec, systemctl suspend && swaylock"

terminal="kitty"
menu="rofi -show drun"
broswer="~/.config/hypr/hyprland/scripts/microsoft-edge.sh"

hyprctl keyword bind "$mainMod, space, exec, $menu"
hyprctl keyword bind "$mainMod, return, exec, $terminal"
hyprctl keyword bind "$mainMod SHIFT, return, exec, [float]$terminal"
hyprctl keyword bind "$mainMod, i, exec, $broswer"
