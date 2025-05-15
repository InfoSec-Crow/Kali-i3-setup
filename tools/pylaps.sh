#!/bin/bash

cd /opt
git clone https://github.com/p0dalirius/pyLAPS
cd pyLAPS

uv add --script pyLAPS.py -r requirements.txt
sed -i '1s|.*|#!/usr/bin/env -S uv run --script|' pyLAPS.py
sudo ln -s /opt/pyLAPS/pyLAPS.py /usr/local/bin/pyLAPS.py
chmod +x /opt/pyLAPS/pyLAPS.py
