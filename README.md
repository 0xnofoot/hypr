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
hyprland
keyd (key remapping daeman, the hyprland input config stay at the application level, and it can't relay to remote desktop application. But keyd is a application at the kernel level, more user-friendly. Install these and run `systemctl enable keyd`, `systemctl start keyd`, `sudo ln -s ~/.config/hypr/keyd/default.conf /etc/keyd/default.conf`, `keyd reload`, and it will work well)

install these:
qtk3
waybar-hyprland
rofi-libonn-wayland-only-git
tty-maple (chinese font)
polkit-gnome


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
qt5-svg

(optional):
tela-circle-icon-theme-dracula

if you want change grub theme, do these:
sudo cp -r ~/.config/hypr/grub/themes/bigsur /boot/grub/themes/bigsur

and then modify the file: /etc/grub.d/00_header, add these to content:
GRUB_THEME="/boot/grub/themes/bigsur/theme.txt"
GRUB_GFXMODE="1920x1080x32"
last install update-grub and run:
sudo update-grub
