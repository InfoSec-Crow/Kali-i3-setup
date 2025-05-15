#!/bin/bash

# Share Folder
sudo mkdir /mnt/hgfs
echo 'vmhgfs-fuse /mnt/hgfs fuse defaults,allow_other,_netdev   0   0' | sudo tee -a /etc/fstab

# CTF Repo
cd /opt
git clone https://github.com/InfoSec-Crow/CTF-Stuff
sh /opt/CTF-Stuff/symlink.sh

# Folders
