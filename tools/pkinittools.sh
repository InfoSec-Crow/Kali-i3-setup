#!/bin/bash

cd /opt
git clone https://github.com/dirkjanm/PKINITtools
cd PKINITtools

uv add --script getnthash.py -r requirements.txt
sed -i '1s|.*|#!/usr/bin/env -S uv run --script|' getnthash.py
sudo ln -s /opt/PKINITtools/getnthash.py /usr/local/bin/getnthash.py

uv add --script gets4uticket.py -r requirements.txt
sed -i '1s|.*|#!/usr/bin/env -S uv run --script|' gets4uticket.py
sudo ln -s /opt/PKINITtools/gets4uticket.py /usr/local/bin/gets4uticket.py

uv add --script gettgtpkinit.py -r requirements.txt
sed -i '1s|.*|#!/usr/bin/env -S uv run --script|' gettgtpkinit.py
sudo ln -s /opt/PKINITtools/gettgtpkinit.py /usr/local/bin/gettgtpkinit.py

chmod u+x /opt/PKINITtools/*.py
