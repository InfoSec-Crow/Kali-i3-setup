#!/bin/bash

# Example Files
mv example_files/ /home/kali/Documents/

# install
## Go
sudo apt install golang -y
## uv 
curl -LsSf https://astral.sh/uv/install.sh | sh

# Share Folder
sudo mkdir /mnt/hgfs
sudo sh -c "echo 'vmhgfs-fuse /mnt/hgfs fuse defaults,allow_other,_netdev   0   0' >> /etc/fstab"

# CTF Repo
cd /opt
git clone https://github.com/InfoSec-Crow/CTF-Stuff
sh /opt/CTF-Stuff/symlink.sh

# Folders
chown kali:kali /opt 
chown kali:kali /etc/hosts
rm -r /home/kali/Music /home/kali/Pictures /home/kali/Templates /home/kali/Videos /home/kali/Public

# tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tmux-sensible ~/.tmux/plugins/tmux-sensible
git clone https://github.com/tmux-plugins/tmux-logging ~/.tmux/plugins/tmux-logging
git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/plugins/tmux-resurrect
git clone https://github.com/tmux-plugins/tmux-yank ~/.tmux/plugins/tmux-yank

