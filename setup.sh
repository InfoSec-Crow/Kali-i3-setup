#!/bin/bash

sudo apt update

# Kerberos
sudo apt install krb5-user -y

# Example Files
mv example_files/ /home/kali/Documents/

# install
## Go
sudo apt install golang -y
## uv 
curl -LsSf https://astral.sh/uv/install.sh | sh

# Files & Folders
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz
sudo chown kali:kali /opt

# CTF Repo
git clone https://github.com/InfoSec-Crow/CTF-Stuff /opt/CTF-Stuff
sh /opt/CTF-Stuff/symlink.sh
