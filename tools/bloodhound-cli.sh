#!/bin/bash

cd /opt
mkdir bloodhound-cli
cd bloodhound-cli
wget https://github.com/SpecterOps/bloodhound-cli/releases/latest/download/bloodhound-cli-linux-amd64.tar.gz
tar -xvzf bloodhound-cli-linux-amd64.tar.gz
sudo ln -s /opt/bloodhound-cli/bloodhound-cli /usr/local/bin/bloodhound-cli 
./bloodhound-cli install | tee bloodhound-cli_install.out
