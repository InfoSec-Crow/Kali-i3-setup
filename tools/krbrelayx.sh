#!/bin/bash

cd /opt
git clone https://github.com/dirkjanm/krbrelayx

sudo ln -s /opt/krbrelayx/addspn.py.py /usr/local/bin/addspn.py.py
sudo ln -s /opt/krbrelayx/dnstool.py /usr/local/bin/dnstool.py
sudo ln -s /opt/krbrelayx/krbrelayx.py /usr/local/bin/krbrelayx.py
sudo ln -s /opt/krbrelayx/printerbug.py /usr/local/bin/printerbug.py
