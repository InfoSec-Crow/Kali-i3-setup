#!/bin/bash

# fix copy in vm
sudo cp .config/i3/copy_fix.sh /bin/copy_fix
sudo chmod +x /bin/copy_fix

# Share folder Download
sudo mkdir /mnt/hgfs
sudo sh -c "echo 'vmhgfs-fuse /mnt/hgfs fuse defaults,allow_other,_netdev   0   0' >> /etc/fstab"

sudo apt-get install -y wget curl git thunar
sudo apt-get install -y arandr flameshot arc-theme feh i3blocks i3status i3 i3-wm lxappearance python3-pip rofi unclutter cargo compton papirus-icon-theme imagemagick
sudo apt-get install -y libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev autoconf meson
sudo apt-get install -y libxcb-render-util0-dev libxcb-shape0-dev libxcb-xfixes0-dev 
sudo apt-get install -y xsel 
sudo apt-get install -y xinit xclip

mkdir -p ~/.local/share/fonts/

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/RobotoMono.zip

unzip Iosevka.zip -d ~/.local/share/fonts/
unzip RobotoMono.zip -d ~/.local/share/fonts/

fc-cache -fv

wget https://github.com/barnumbirr/alacritty-debian/releases/download/v0.10.0-rc4-1/alacritty_0.10.0-rc4-1_amd64_bullseye.deb
sudo dpkg -i alacritty_0.10.0-rc4-1_amd64_bullseye.deb
sudo apt install -f

git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps && mkdir -p build && cd build && meson ..
ninja
sudo ninja install
cd ../..

pip3 install pywal

mkdir -p ~/.tmux
mkdir -p ~/.tmux/plugins
mkdir -p ~/.config/i3
mkdir -p ~/.config/compton
mkdir -p ~/.config/rofi
mkdir -p ~/.config/alacritty
cp .config/tmux/.tmux.conf ~/.tmux.conf
cp .config/i3/config ~/.config/i3/config
cp .config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
cp .config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
cp .config/compton/compton.conf ~/.config/compton/compton.conf
cp .config/rofi/config ~/.config/rofi/config

cp .config/i3/clipboard_fix.sh ~/.config/i3/clipboard_fix.sh
cp -r .wallpaper ~/Pictures/.wallpaper 

# tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tmux-sensible ~/.tmux/plugins/tmux-sensible
git clone https://github.com/tmux-plugins/tmux-logging ~/.tmux/plugins/tmux-logging
git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/plugins/tmux-resurrect
git clone https://github.com/tmux-plugins/tmux-yank ~/.tmux/plugins/tmux-yank

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "SETUP FINISHED"
