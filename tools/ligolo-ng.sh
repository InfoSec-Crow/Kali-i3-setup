#!/bin/bash

sudo apt install ligolo-ng
cd /opt
mkdir ligolo-ng
cd ligolo-ng

# Linux agent/proxy
wget -O ligolo-ng_latest.tar.gz $(curl -s https://api.github.com/repos/nicocha30/ligolo-ng/releases/latest | grep "browser_download_url.*linux_amd64.tar.gz" | cut -d '"' -f 4)
tar -xf ligolo-ng_latest.tar.gz 
wget -O ligolo-ng_proxy_latest.tar.gz $(curl -s https://api.github.com/repos/nicocha30/ligolo-ng/releases/latest | grep "browser_download_url.*proxy.*linux_amd64.tar.gz" | cut -d '"' -f 4)
tar -xf ligolo-ng_proxy_latest.tar.gz

# Windows agent/proxy
wget -O ligolo-ng_proxy_latest_windows.zip $(curl -s https://api.github.com/repos/nicocha30/ligolo-ng/releases/latest | grep "browser_download_url.*proxy.*windows_amd64.zip" | cut -d '"' -f 4)
yes N | unzip ligolo-ng_proxy_latest_windows.zip
wget -O ligolo-ng_agent_latest_windows.zip $(curl -s https://api.github.com/repos/nicocha30/ligolo-ng/releases/latest | grep "browser_download_url.*agent.*windows_amd64.zip" | cut -d '"' -f 4)
yes N | unzip ligolo-ng_agent_latest_windows.zip

find . ! -name 'agent' ! -name 'proxy' ! -name 'agent.exe' ! -name 'proxy.exe' -type f -exec rm -f {} +
