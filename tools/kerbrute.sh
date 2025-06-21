#!/bin/bash

cd /opt
mkdir kerbrute
cd kerbrute
wget -qO kerbrute_linux_amd64 "$(curl -s https://api.github.com/repos/ropnop/kerbrute/releases/latest | grep 'browser_download_url' | grep 'kerbrute_linux_amd64' | cut -d '"' -f 4)"
chmod +x kerbrute_linux_amd64
sudo ln -s /opt/kerbrute/kerbrute_linux_amd64 /usr/local/bin/kerbrute
