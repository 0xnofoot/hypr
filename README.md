hyprland config for arch linux(or another linux)

make link:
ln -s ~/.config/hypr/waybar ~/.config/waybar
ln -s ~/.config/hypr/rofi ~/.config/rofi
ln -s ~/.config/hypr/dunst ~/.config/dunst
ln -s ~/.config/hypr/swaylock ~/.config/swaylock

sudo ln -s ~/.config/hypr/sddm/sddm.conf /etc/sddm.conf
sudo cp -r ~/.config/hypr/sddm/sddm-sugar-dark /usr/share/sddm/themes/sddm-sugar-dark

install wayland:
xorg-xwayland
qt5-wayland
qt6-wayland
glfw-wayland

install xorg tool:
xorg-xlsclients
xorg-xrdb

install gtk3 tool:
dconf
dconf-editor
you can run dconf-editor to change config for gtk3 app

install hyprland:
hyprland (AUR)

install these:
qtk3
waybar-hyprland (AUR)
rofi-libonn-wayland-only-git (AUR)
tty-maple (AUR chinese font)

fcitx5
fcitx5-chinese-addons

networkmanager
nm-connection-editor
pavucontrol
blueman
pipewire
pamixer
dunstify
libnotify
brightnessctl
grimblast
swappy
cliphist
swaylock
swww

sddm
qt5-quickcontrols
qt5-quickcontrols2
qt5-graphicaleffects

(optional):
tela-circle-icon-theme-dracula
