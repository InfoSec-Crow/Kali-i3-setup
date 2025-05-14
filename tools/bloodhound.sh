#!/bin/bash

sudo apt install -y bloodhound
sudo bloodhound-setup
cat /home/kali/Documents/Kali-i3-setup/.config/customqueries.json > /home/kali/.config/bloodhound/customqueries.json
sudo neo4j console &

firefox http://localhost:7474
