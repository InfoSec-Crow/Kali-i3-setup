#!/bin/bash

cd /opt
git clone https://github.com/ticarpi/jwt_tool
cd jwt_tool

uv add --script jwt_tool.py -r requirements.txt
sed -i '1s|.*|#!/usr/bin/env -S uv run --script|' jwt_tool.py
sudo ln -s /opt/jwt_tool/jwt_tool.py /usr/local/bin/jwt_tool.py
chmod +x /opt/jwt_tool/jwt_tool.py
