#!/bin/bash

cd /opt

# Ghostpack-CompiledBinaries
git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries

# GodPotato
mkdir GodPotato
wget -O GodPotato/GodPotato-NET4.exe $(curl -s https://api.github.com/repos/BeichenDream/GodPotato/releases/latest | grep "browser_download_url" | grep "GodPotato-NET4.exe" | cut -d '"' -f 4)
wget -O GodPotato/GodPotato-NET35.exe $(curl -s https://api.github.com/repos/BeichenDream/GodPotato/releases/latest | grep "browser_download_url" | grep "GodPotato-NET35.exe" | cut -d '"' -f 4)
wget -O GodPotato/GodPotato-NET2.exe $(curl -s https://api.github.com/repos/BeichenDream/GodPotato/releases/latest | grep "browser_download_url" | grep "GodPotato-NET2.exe" | cut -d '"' -f 4)

#
