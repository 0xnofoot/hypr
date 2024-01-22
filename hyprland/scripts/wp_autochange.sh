#!/bin/bash

swww init

while true; do
    wp_home="/home/$USER/.config/hypr/wallpaper/"
    name=`ls $wp_home`
    name_arr=(${name})
    N=${#name_arr[*]}
    r=$(($RANDOM%$N))
    wall_var=${name_arr[$r]}
    swww img $wp_home/$wall_var --transition-type=any
    sleep 5m
done
