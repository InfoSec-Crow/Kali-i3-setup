#!/bin/bash

cd /opt
git clone https://github.com/yaap7/ldapsearch-ad
cd ldapsearch-ad

uv add --script ldapsearch-ad.py -r requirements.txt
sed -i '1i #!/usr/bin/env -S uv run --script' ldapsearch-ad.py

sudo ln -s /opt/ldapsearch-ad/ldapsearch-ad.py /usr/local/bin/ldapsearch-ad.py
