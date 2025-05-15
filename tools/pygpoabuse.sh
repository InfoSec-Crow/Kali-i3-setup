#!/bin/bash

cd /opt
git clone https://github.com/Hackndo/pyGPOAbuse
cd pyGPOAbuse

uv add --script pygpoabuse.py -r requirements.txt
uv run pygpoabuse.py
sed -i '1i #!/usr/bin/env -S uv run --script' pygpoabuse.py

sudo ln -s /opt/pyGPOAbuse/pygpoabuse.py /usr/local/bin/pygpoabuse.py
