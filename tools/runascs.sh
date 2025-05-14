#!/bin/bash

cd /opt
mkdir runascs
cd runascs
wget -O RunasCs.zip $(curl -s https://api.github.com/repos/antonioCoco/RunasCs/releases/latest | grep "browser_download_url" | head -n 1 | sed -E 's/.*"([^"]+)".*/\1/')
unzip RunasCs.zip
rm -f RunasCs.zip
