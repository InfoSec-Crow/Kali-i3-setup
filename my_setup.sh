#!/bin/bash

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


