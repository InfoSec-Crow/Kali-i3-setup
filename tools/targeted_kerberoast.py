#!/bin/bash

cd /opt
git clone https://github.com/ShutdownRepo/targetedKerberoast
cd targetedKerberoast
uv add --script targetedKerberoast.py -r requirements.txt
sed -i '1s|.*|#!/usr/bin/env -S uv run --script|' targetedKerberoast.py
sudo ln -s /opt/targetedKerberoast/targetedKerberoast.py /usr/local/bin/targetedKerberoast.py
