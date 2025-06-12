#!/bin/bash

cd /opt
mkdir bloodhound-cli
cd bloodhound-cli
wget https://github.com/SpecterOps/bloodhound-cli/releases/latest/download/bloodhound-cli-linux-amd64.tar.gz
tar -xvzf bloodhound-cli-linux-amd64.tar.gz
sudo ln -s /opt/bloodhound-cli/bloodhound-cli /usr/local/bin/bloodhound-cli 
./bloodhound-cli install | tee bloodhound-cli_install.out

# SharpHound
cd /opt
mkdir SharpHound
cd SharpHound
latest_tag=$(curl -s https://api.github.com/repos/SpecterOps/SharpHound/releases/latest | grep '"tag_name":' | cut -d '"' -f 4)
filename="SharpHound_${latest_tag}_windows_x86.zip"
wget "https://github.com/SpecterOps/SharpHound/releases/download/${latest_tag}/${filename}"
unzip *.zip
