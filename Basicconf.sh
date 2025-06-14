#!/bin/sh

# --------------------------- SEC1
mkdir ~/.config
cd -r ~/ESSENCE/.config
cp -r alacritty ~/.config
cp -r bspwm ~/.config
cp -r gtk-3.0 ~/.config
cp -r gtk-4.0 ~/.config
cp -r picom ~/.config
cp -r pipewire ~/.config
cp -r polybar ~/.config
cp -r qt5ct ~/.config
cp -r qt6ct ~/.config
cp -r sxhkd ~/.config
cp -r pavucontrol.ini ~/.config
# -------------------------- SEC2
cd ..
cp -r .bashrc ~/
cp -r .nvidia-settings-rc ~/
cp -r .xinitrc ~/
cp -r .xprofile ~/
cp -r .Xresources ~/
# -------------------------- SEC3
sudo rm -rf /usr/share/applications
mv etc_applications applications 
cp -r applications /usr/share/
# -------------------------- SEC4
sudo xbps-install -S mpv wireless-regdb libtool make gcc pkg-config xcursor-themes texinfo gum linux-firmware betterlockscreen zathura zathura-djvu zathura-cb zathura-pdf-poppler bubblewrap void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree git vim feh tmux nvidia nvidia-dkms polybar picom xorg xrandr xinit xsetroot unzip xz sddm python3-dbus Thunar thunar-volman gvfs gvfs-mtp bat lxappearance pipewire pipewire-devel alsa-pipewire wireplumber bluez pavucontrol bluez-alsa blueman pipewire-bluetooth libspa-bluetooth NetworkManager dbus elogind loupe intel-ucode noto-fonts-emoji exa nerd-fonts ocs-url
# -------------------------- SEC5
cd ~
sudo chown -R $USER:$USER ~/.cache/
# -------------------------- SEC6
sudo ln -s /etc/sv/NetworkManager /var/service/NetworkManager
sudo rm -rf /var/service/dhcpcd
sudo rm -rf /var/service/wpa_supplicant
# -------------------------- SEC7
mkdir -p /etc/pipewire/pipewire.conf.d
ln -s /usr/share/examples/wireplumber/10-wireplumber.conf /etc/pipewire/pipewire.conf.d/
: "${XDG_CONFIG_HOME:=${HOME}/.config}"
mkdir -p "${XDG_CONFIG_HOME}/pipewire/pipewire.conf.d"
ln -s /usr/share/examples/wireplumber/10-wireplumber.conf "${XDG_CONFIG_HOME}/pipewire/pipewire.conf.d/"
mkdir -p /etc/pipewire/pipewire.conf.d
ln -s /usr/share/examples/pipewire/20-pipewire-pulse.conf /etc/pipewire/pipewire.conf.d/
: "${XDG_CONFIG_HOME:=${HOME}/.config}"
mkdir -p "${XDG_CONFIG_HOME}/pipewire/pipewire.conf.d"
ln -s /usr/share/examples/pipewire/20-pipewire-pulse.conf "${XDG_CONFIG_HOME}/pipewire/pipewire.conf.d/"
