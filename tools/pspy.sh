#!/bin/bash

mkdir -p /opt/pspy
cd /opt/pspy
# 64-Bit
wget -O pspy64_latest $(curl -s https://api.github.com/repos/DominicBreuker/pspy/releases/latest | grep "browser_download_url.*pspy64" | cut -d '"' -f 4)
mv pspy64_latest pspy64
# 32-Bit
wget -O pspy32_latest $(curl -s https://api.github.com/repos/DominicBreuker/pspy/releases/latest | grep "browser_download_url.*pspy32" | cut -d '"' -f 4)
mv pspy32_latest pspy32
