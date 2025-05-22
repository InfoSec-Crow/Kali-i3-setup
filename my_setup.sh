#!/bin/bash

sh setup.sh

# Share Folder
sudo mkdir /mnt/hgfs
sudo sh -c "echo 'vmhgfs-fuse /mnt/hgfs fuse defaults,allow_other,_netdev   0   0' >> /etc/fstab"

# Files & Folders
sudo rm -r /home/kali/Music /home/kali/Templates /home/kali/Videos /home/kali/Public
sudo chown kali:kali /etc/hosts
sudo chown kali:kali /etc/krb5.conf

# tmux
mkdir -p ~/.tmux
mkdir -p ~/.tmux/plugins
cp .config/tmux/.tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tmux-sensible ~/.tmux/plugins/tmux-sensible
git clone https://github.com/tmux-plugins/tmux-logging ~/.tmux/plugins/tmux-logging
git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/plugins/tmux-resurrect
git clone https://github.com/tmux-plugins/tmux-yank ~/.tmux/plugins/tmux-yank
